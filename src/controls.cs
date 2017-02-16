using System;
using System.Drawing;
using System.Windows.Forms;
using System.Threading;
using System.IO;
using System.IO.Ports;

class NumBoxBase : Control
{
    protected Control rodata;
    Label leftLabel;
    Label rightLabel;

    public event StringEventHandler ValueChanged;

    string value;

    public void Disable()
    {
        rodata.Enabled = false;
    }

    public void Enable()
    {
        rodata.Enabled = true;
    }

    public void setFocus()
    {
        rodata.Focus();
    }

    public string Value
    {
        get {return value; }
    }

    protected void RaiseEvent(string val)
    {
        value = val;
        if (userSet && (ValueChanged != null))
            ValueChanged(this, new StringEventArgs(val));
    }


    protected bool userSet = true;

    protected virtual void doSetValue(double v)
    {
        userSet = false;
        rodata.Text = String.Format("{0:0.000}", v);
        userSet = true;
    }

    protected virtual void doSetValue(int v)
    {
        userSet = false;
        rodata.Text = String.Format("{0}", v);
        userSet = true;
    }

    public void setValue(double v)
    {
        if (InvokeRequired){
            EventHandler ev = new EventHandler(
                delegate (object o, EventArgs a){
                    doSetValue(v);
                }
            ); 
            this.BeginInvoke(ev);
        } else {
            doSetValue(v);
        }
    }

    public void setValue(int v)
    {
        if (InvokeRequired){
            EventHandler ev = new EventHandler(
                delegate (object o, EventArgs a){
                    doSetValue(v);
                }
            ); 
            this.BeginInvoke(ev);
        } else {
            doSetValue(v);
        }
    }


    protected override void OnMove( EventArgs e )
    {
        Parent.Controls.Add(leftLabel);
        leftLabel.Location = Location;
        leftLabel.Location -= new Size(leftLabel.Width, -3);

        Parent.Controls.Add(rodata);
        rodata.Location = Location;

        Parent.Controls.Add(rightLabel);
        rightLabel.Location = rodata.Location;
        rightLabel.Location += new Size(rodata.Width + 3, 3);
    }


    protected void setDataControl(Control ctl)
    {
        rodata = ctl;
    }

    public NumBoxBase(String lhs, String rhs)
    {
        leftLabel = new Label();
        leftLabel.AutoSize = true;
        leftLabel.Text = lhs;

        rightLabel = new Label();
        rightLabel.AutoSize = true;
        rightLabel.Text = rhs;

        TabStop = false;
    }
}

public delegate void StringEventHandler(object sender, StringEventArgs e);

public class StringEventArgs : EventArgs {
        public string StringValue;
        public StringEventArgs(string s){
                StringValue = s;
        }
}


class NumericUpDownNoBeep : NumericUpDown
{
    protected override bool ProcessDialogKey(Keys keyData)
    {
        if (keyData == Keys.Return){
            SendKeys.Send("{TAB}");
            return true;
        }
        // return the key to the base class if not used.
        return base.ProcessDialogKey(keyData);
    }
}

class TextBoxNoBeep : TextBox
{
    void onKeyPress( object sender, KeyPressEventArgs e )
    {
        switch (e.KeyChar)
        {
            case '\r':
                // perform necessary action
                e.Handled = true;
                break;
        }
    }

    public TextBoxNoBeep()
    {
        KeyPress += new KeyPressEventHandler(onKeyPress);
    }
}


class OutputNumBox : NumBoxBase
{
    TextBox data;

    public OutputNumBox(String lhs, String rhs) : base(lhs, rhs)
    {
        data = new TextBox();
        data.Width = 60;
        data.TextAlign = HorizontalAlignment.Right;
        data.ReadOnly = true;
        data.Text = "0.000";
        setDataControl(data);

    }
}

class OutputNumBoxSci : OutputNumBox
{
    protected override void doSetValue(double v)
    {
        userSet = false;
        rodata.Text = String.Format("{0:e2}", v);
        userSet = true;
    }


    public OutputNumBoxSci(String lhs, String rhs) : base(lhs, rhs)
    {
    }
}

class InputNumBox : NumBoxBase
{
    NumericUpDownNoBeep data;

    public InputNumBox(String lhs, String rhs) : base(lhs, rhs)
    {
        data = new NumericUpDownNoBeep();
        data.Width = 60;
        data.TextAlign = HorizontalAlignment.Right;
        data.Minimum = -10000;
        data.Maximum = 10000;
        data.Text = "0.000";
        data.DecimalPlaces = 3;
        data.BackColor = Color.PaleGreen;
        setDataControl(data);
        data.ValueChanged += new EventHandler(onValueChanged);
    }

    private void onValueChanged(object sender, EventArgs e)
    {
//        Console.WriteLine("new float value: {0}", data.Value);
        RaiseEvent(data.Value.ToString());
    }


}

class InputIntNumBox : NumBoxBase
{
    NumericUpDownNoBeep data;

    public InputIntNumBox(String lhs, String rhs) : base(lhs, rhs)
    {
        data = new NumericUpDownNoBeep();
        data.Width = 60;
        data.TextAlign = HorizontalAlignment.Right;
        data.Minimum = -5000;
        data.Maximum = 5000;
        data.Text = "0";
        data.DecimalPlaces = 0;
        data.BackColor = Color.PaleGreen;
        setDataControl(data);
        data.ValueChanged += new EventHandler(onValueChanged);
    }

    private void onValueChanged(object sender, EventArgs e)
    {
        RaiseEvent(data.Value.ToString());
    }
}


class QpCheckBox : NumBoxBase
{
    CheckBox data;

    public QpCheckBox(String lhs, String rhs) : base(lhs, rhs)
    {
        data = new CheckBox();
        data.Text = ""; 
        data.CheckedChanged += new EventHandler(onCheckedChanged);
        setDataControl(data);
    }
    
    void onCheckedChanged(object sender, EventArgs e)
    {
        bool checkedState = ((CheckBox) sender).Checked;
        if (checkedState == true)
            RaiseEvent("1");
        else
            RaiseEvent("0");
    }
    


    protected override void doSetValue(int v)
    {
        userSet = false;
        data.Checked = (v != 0);
        userSet = true;
    }

    public bool Checked {
        get { return data.Checked; }
    }


}


class ScanSpeedComboBox : NumBoxBase
{
    ComboBox data;

    public ScanSpeedComboBox(String lhs, String rhs) : base(lhs, rhs)
    {
        data = new ComboBox();
        data.Width = 60;
        data.Items.AddRange(new object[] {
                        "1000", "500", "288", "144", "72", "48", "24",
                        "20", "12", "10", "6", "5", "3", "2", "1",
                        "0.5", "0.2", "0.1"}
        );

        data.SelectedIndexChanged += new EventHandler(onSelectionChanged);
        data.MaxDropDownItems = 18;
        data.DropDownStyle = ComboBoxStyle.DropDown;  // DropDownList

        data.BackColor = Color.PaleGreen;
        setDataControl(data);
    }

    void onSelectionChanged(object sender, EventArgs e)
    {
        RaiseEvent(data.Text);
    }

    protected override void doSetValue(double v)
    {
        userSet = false;
        rodata.Text = String.Format("{0:0.0}", v);
        userSet = true;
    }

}


class CommSpeedComboBox : NumBoxBase
{
    ComboBox data;

    public CommSpeedComboBox(String lhs, String rhs) : base(lhs, rhs)
    {
        data = new ComboBox();
        data.Width = 60;
        data.Items.AddRange(new object[] {
                        "9600", "19200", "38400", "57600", "115200"
                        }
        );

        data.SelectedIndexChanged += new EventHandler(onSelectionChanged);
        data.DropDownStyle = ComboBoxStyle.DropDownList;  // DropDown

        data.BackColor = Color.PaleGreen;
        setDataControl(data);
    }

    void onSelectionChanged(object sender, EventArgs e)
    {
        RaiseEvent(data.Text);
    }

}

class CommEncodingComboBox : NumBoxBase
{
    ComboBox data;

    public CommEncodingComboBox(String lhs, String rhs) : base(lhs, rhs)
    {
        data = new ComboBox();
        data.Width = 60;
        data.Items.AddRange(new object[] {
                        "Base10", "Base16", "Base64"
                        }
        );

        data.SelectedIndexChanged += new EventHandler(onSelectionChanged);
        data.DropDownStyle = ComboBoxStyle.DropDownList;  // DropDown

        data.BackColor = Color.PaleGreen;
        setDataControl(data);
    }

    void onSelectionChanged(object sender, EventArgs e)
    {
        int v = 0;
        if (data.Text == "Base10")
            v = 10;
        else if (data.Text == "Base16")
            v = 16;
        else if (data.Text == "Base64")
            v = 64;
        RaiseEvent(v.ToString());
    }


    protected override void doSetValue(int v)
    {
        userSet = false;
        rodata.Text = String.Format("Base{0}", v);
        userSet = true;
    }


}



class CommPortComboBox : NumBoxBase
{
    ComboBox data;

    void enumeratePorts()
    {
        string[] ports = SerialPort.GetPortNames();
        foreach(string port in ports)
            data.Items.Add(port);
    }

    public CommPortComboBox(String lhs, String rhs) : base(lhs, rhs)
    {
        data = new ComboBox();
        data.Width = 60;

        data.Items.Clear();
        enumeratePorts();

        data.SelectedIndexChanged += new EventHandler(onSelectionChanged);
        data.DropDown += new EventHandler(onDropDown);
        data.DropDownStyle = ComboBoxStyle.DropDownList;  // DropDown

        data.BackColor = Color.PaleGreen;

        setDataControl(data);
    }

    void onSelectionChanged(object sender, EventArgs e)
    {
        RaiseEvent(data.Text);
    }

    void onDropDown(object sender, EventArgs e)
    {
        string[] ports = SerialPort.GetPortNames();
        data.Items.Clear();
        enumeratePorts();
    }
}

/* 
 * Control which selects pressure units for the sweep display.
 */

// in process...
class PressureUnits : GroupBox
{
    RadioButton ampsButton = new RadioButton();
    RadioButton torrButton = new RadioButton();

    public event EventHandler AmpsSelected;
    public event EventHandler TorrSelected;


    void onButtonClicked(object sender, EventArgs e)
    {
        RadioButton b = (RadioButton) sender;
        if (b == ampsButton){
            if (AmpsSelected != null)
                AmpsSelected(this, null);
        } else if (b == torrButton){
            if (TorrSelected != null)
                TorrSelected(this, null);
        }
    }
   


    public PressureUnits()
    {
        Text = "Pressure Units";
        Width = 100;
        Height = 65;

        ampsButton.AutoSize = true;
        ampsButton.Text = "Amps";
        ampsButton.Location = new Point(20, ampsButton.Height - 6);

        torrButton.Location = ampsButton.Location;
        torrButton.AutoSize = true;
        torrButton.Text = "Torr";
        torrButton.Top += ampsButton.Height - 5;

        ampsButton.Click += new EventHandler(onButtonClicked);
        torrButton.Click += new EventHandler(onButtonClicked);

        Controls.Add(ampsButton);
        Controls.Add(torrButton);

        ampsButton.PerformClick();


    }

}