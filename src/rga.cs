using System;
using System.Drawing;
using System.Windows.Forms;
using System.Threading;
using System.IO;
using System.IO.Ports;
using System.Collections.Generic;
using System.Collections;

partial class RgaWindow : Form {
    /*
     * Top-level tab controls.
     */
    TabControl tabControl;
    TabPage tabSweep;
    TabPage tabOutputs;
    TabPage tabOperating;
    TabPage tabCalibration;

    /*
     * Controls that appear on the Output Tab.
     */

    OutputNumBox degasCurrentBox = new OutputNumBox("Degas current", "mA");
    OutputNumBox elecTempBox = new OutputNumBox("Electronics temperature", String.Format("{0}C", "\x00B0"));
    OutputNumBox powerSupplyBox = new OutputNumBox("Power supply", "volts");
    OutputNumBox filamentVoltageBox = new OutputNumBox("Filament voltage", "volts");
    OutputNumBox filamentResistanceBox = new OutputNumBox("Filament resistance", "ohms");
    OutputNumBox sensorTempBox = new OutputNumBox("Sensor temperature", String.Format("{0}C", "\x00B0") );

    OutputNumBox source1Box = new OutputNumBox("Source1 current", "mA");
    OutputNumBox source2Box = new OutputNumBox("Source2 current", "mA");
    OutputNumBox rfAmpBox = new OutputNumBox("RF Amp (0 to 20.0)", "volts");
    OutputNumBox piraniTempBox = new OutputNumBox("Pirani temp (-0.1 to -1.0)", "volts");
    OutputNumBox piraniCorrBox = new OutputNumBox("Pirani Corr (-0.1 to -1.0)", "volts");
    OutputNumBox piraniVoltsBox = new OutputNumBox("Pirani pressure", "volts");
    OutputNumBoxSci piraniTorrBox = new OutputNumBoxSci("Pirani pressure", "torr");
    OutputNumBox plusFbBox = new OutputNumBox("+FB (2.25 to 2.5)", "volts");
    OutputNumBox minusFbBox = new OutputNumBox("-FB (2.25 to 2.5)", "volts");

    OutputNumBox referenceBox = new OutputNumBox("Reference (2.45 to 2.55)", "volts");
    OutputNumBox groundBox = new OutputNumBox("Ground ref (+/- 0.2)", "volts");
    OutputNumBox focus1FbBox = new OutputNumBox("Focus1 FB (Focus1)", "volts");
    OutputNumBox repellerBox = new OutputNumBox("Repeller (2.0 - Elec_En))", "volts");
    OutputNumBox filamentPwrBox = new OutputNumBox("Filament Power", "%");
    OutputNumBox filamentDacCoarseBox = new OutputNumBox("Filament DAC Coarse", "");
    OutputNumBox filamentDacFineBox = new OutputNumBox("Filament DAC Fine", "");
    OutputNumBox filamentStatusBox = new OutputNumBox("Filament Status", "");
    OutputNumBoxSci pressureAmpsBox = new OutputNumBoxSci("Total Pressure", "amps");
    OutputNumBoxSci pressureTorrBox = new OutputNumBoxSci("Total Pressure", "torr");

    OutputNumBox firstSweepBox = new OutputNumBox("First Sweep", "");
    OutputNumBox lastSweepBox =  new OutputNumBox("Last Sweep", "");


    /*
     * Controls that appear on the Calibration Tab.
     */
    InputIntNumBox lowCalMassBox = new InputIntNumBox("Mass", "amu");
    InputIntNumBox lowCalResolutionBox = new InputIntNumBox("Resolution", "");
    InputIntNumBox lowCalIonEnergyBox = new InputIntNumBox("Ion Energy", "");
    InputNumBox lowCalPositionBox = new InputNumBox("Position", "");

    InputIntNumBox highCalMassBox = new InputIntNumBox("Mass", "amu");
    InputIntNumBox highCalResolutionBox = new InputIntNumBox("Resolution", "");
    InputIntNumBox highCalIonEnergyBox = new InputIntNumBox("Ion Energy", "");
    InputNumBox highCalPositionBox = new InputNumBox("Position", "");

    InputNumBox totalCapBox = new InputNumBox("Total Integrating Cap", "pF");
    InputNumBox partialCapBox = new InputNumBox("Partial Integrating Cap", "pF");
    InputNumBox totalSensitivityBox = new InputNumBox("Total Sensitivity", "(A/A)/torr");
    InputNumBox partialSensitivityBox = new InputNumBox("Partial Sensitivity", "mA/torr");


    OutputNumBox modelBox = new OutputNumBox("Model", "");
    OutputNumBox serialBox = new OutputNumBox("S/N ", "");

    OutputNumBox versionMajorBox = new OutputNumBox("Major", "");
    OutputNumBox versionMinorBox = new OutputNumBox("Minor", "");

    InputNumBox piraniOneAtmBox = new InputNumBox("1ATM", "");
    InputNumBox piraniZeroAtmBox = new InputNumBox("Zero", "");


    /*
     * Controls that appear on the Operating Tab.
     */
    ScanSpeedComboBox scanSpeedBox = new ScanSpeedComboBox("Scan Speed", "/sec");
    InputIntNumBox lowMassBox = new InputIntNumBox("Low Mass", "amu");
    InputIntNumBox highMassBox = new InputIntNumBox("High Mass", "amu");
    InputIntNumBox samplesPerAmuBox = new InputIntNumBox("Samples/amu", "");
    QpCheckBox autoStreamBox = new QpCheckBox("Auto Stream", "");


    InputIntNumBox focus1Box = new InputIntNumBox("Focus1", "volts");
    InputIntNumBox electronEnergyBox = new InputIntNumBox("Electron energy", "e volts");
    InputNumBox filamentEmissionBox = new InputNumBox("Filament emission", "mA");
    InputIntNumBox multiplierVoltsBox =  new InputIntNumBox("Multiplier voltage", "volts");

    QpCheckBox AutoZeroBox = new QpCheckBox("Auto Zero", "");
    QpCheckBox FilamentOnBox = new QpCheckBox("Filament On", "");



    CommSpeedComboBox commSpeedBox = new CommSpeedComboBox("Speed", "");
    CommPortComboBox commPortBox = new CommPortComboBox("Port", "");
    CommEncodingComboBox commEncodingBox = new CommEncodingComboBox("Encoding", "");
    InputIntNumBox commSamplesBox = new InputIntNumBox("Samples", "/line");
    Button commOpenCloseBtn = new Button();
    Button commBootBtn = new Button();
    CheckBox tagCheckBox = new CheckBox();
    CheckBox cksumCheckBox = new CheckBox();


    Dictionary<string, NumBoxBase> controlsTable;
    Dictionary<NumBoxBase, string> variableTable;

    void setupControlsTable()
    {
        controlsTable = new Dictionary<string, NumBoxBase>();

        controlsTable["DegasMa"] = degasCurrentBox;
        controlsTable["GroundVolts"] = groundBox;
        controlsTable["ReferenceVolts"] = referenceBox;
        controlsTable["InteriorDegC"] = elecTempBox;
        controlsTable["SupplyVolts"] = powerSupplyBox;
        controlsTable["IonizerVolts"] = filamentVoltageBox;
//      controlsTable["IonizerAmps"] = ;
        controlsTable["IonizerOhms"] = filamentResistanceBox;
        controlsTable["RfAmpVolts"] = rfAmpBox;
        controlsTable["SourceGrid1Ma"] = source1Box;
        controlsTable["SourceGrid2Ma"] = source2Box;
        controlsTable["FilamentDacCoarse"] = filamentDacCoarseBox;
        controlsTable["FilamentDacFine"] = filamentDacFineBox;
        controlsTable["FilamentStatus"] = filamentStatusBox;
        controlsTable["PressureAmps"] = pressureAmpsBox;
        controlsTable["PressureTorr"] = pressureTorrBox;
        controlsTable["LastSweep"] = lastSweepBox;
        controlsTable["FirstSweep"] = firstSweepBox;
        controlsTable["FilamentPowerPct"] = filamentPwrBox;
        controlsTable["FbPlus"] = plusFbBox;
        controlsTable["FbMinus"] = minusFbBox;
        controlsTable["Focus1FB"] = focus1FbBox;
        controlsTable["PiraniCorrVolts"] = piraniCorrBox;
        controlsTable["RepellerVolts"] = repellerBox;
        controlsTable["QuadrupoleDegC"] = sensorTempBox;
        controlsTable["PiraniTorr"] = piraniTorrBox;
        controlsTable["PiraniVolts"] = piraniVoltsBox;

        controlsTable["PiraniTempVolts"] = piraniTempBox;  // in volts
        controlsTable["SerialNumber"] = serialBox;
        controlsTable["ModelNumber"] = modelBox;
        controlsTable["PiraniZero"] = piraniZeroAtmBox;
        controlsTable["Pirani1ATM"] = piraniOneAtmBox;
        controlsTable["LowCalMass"] = lowCalMassBox;
        controlsTable["LowCalResolution"] = lowCalResolutionBox;
        controlsTable["LowCalIonEnergy"] = lowCalIonEnergyBox;
        controlsTable["LowCalPosition"] = lowCalPositionBox;
        controlsTable["HighCalMass"] = highCalMassBox;
        controlsTable["HighCalResolution"] = highCalResolutionBox;
        controlsTable["HighCalIonEnergy"] = highCalIonEnergyBox;
        controlsTable["HighCalPosition"] = highCalPositionBox;
        controlsTable["ScanSpeed"] = scanSpeedBox;
        controlsTable["LowMass"] = lowMassBox;
        controlsTable["HighMass"] = highMassBox;
        controlsTable["SamplesPerAmu"] = samplesPerAmuBox;
        controlsTable["AutoStream"] = autoStreamBox;
        controlsTable["Focus1Volts"] = focus1Box;
        controlsTable["ElectronVolts"] = electronEnergyBox;
        controlsTable["FilamentEmissionMa"] = filamentEmissionBox;
        controlsTable["MultiplierVolts"] = multiplierVoltsBox;
        controlsTable["SamplesPerLine"] = commSamplesBox;
        controlsTable["Encoding"] = commEncodingBox;
        controlsTable["Filament"] = FilamentOnBox;
        controlsTable["AutoZero"] = AutoZeroBox;

        controlsTable["TotalCapPf"] = totalCapBox;
        controlsTable["PartialCapPf"] = partialCapBox;
        controlsTable["TotalSensitivity"] = totalSensitivityBox;
        controlsTable["PartialSensitivity"] = partialSensitivityBox;
        controlsTable["VersionMajor"] = versionMajorBox;
        controlsTable["VersionMinor"] = versionMinorBox;


//      controlsTable[] = ;

        variableTable = new Dictionary<NumBoxBase, string>();
        foreach( KeyValuePair<string, NumBoxBase> p in controlsTable){
//          Console.WriteLine("variable {0}", p.Key);
            variableTable[p.Value] = p.Key;
            NumBoxBase b = p.Value;
            b.ValueChanged += new StringEventHandler(genericInputHandler);
        }
    }


    NumBoxBase findControl(string name)
    {
        if (controlsTable.ContainsKey(name) == false)
            return null;
        return controlsTable[name];
    }

    string findVariable(NumBoxBase ctrl)
    {
        if (variableTable.ContainsKey(ctrl) == false)
            return null;
        return variableTable[ctrl];

    }

    Button refreshOutputBtn = new Button();
    Button refreshCalibrationBtn = new Button();
    Button refreshOperatingBtn = new Button();
    Button sweepBtn = new Button();
    PressureUnits pressureRadio = new PressureUnits();


    void OnOutputsRefresh(object sender, EventArgs e)
    {
        Console.WriteLine("refresh");
        sendToQpBox("symbols");
    }

    void OnCalibrationRefresh(object sender, EventArgs e)
    {
        Console.WriteLine("refresh");
        sendToQpBox("symbols");
    }

    void OnOperatingRefresh(object sender, EventArgs e)
    {
        Console.WriteLine("refresh");
        sendToQpBox("symbols");
    }



    string userCommPort = "";
    string userCommSpeed = "";

    void onCommOpenClose(object sender, EventArgs e)
    {
        Button btn = (Button) sender;
        if ( (userCommPort == "") || (userCommSpeed == "") )
            return;

        if (btn.Text == "Open"){
            if (serialReadThread(userCommPort, userCommSpeed) == true){
                commPortBox.Disable();
                commOpenCloseBtn.Text = "Close";
                commBootBtn.Enabled = false;
                Console.WriteLine("refresh");
                sendToQpBox("symbols");
            }
        } else if (btn.Text == "Close"){
            stopSerialReadThread();
            commBootBtn.Enabled = true;
        }
    }

    void onCommBoot(object sender, EventArgs e)
    {
        FirmwareDialog dlg = new FirmwareDialog(userCommPort);
        dlg.ShowDialog();
//      Console.WriteLine("dialog result: {0}", dlg.DialogResult);

        // tbd: retrieve the result of the dialog

    }



    void checkSpecified()
    {
// tbd: this is still not right
        commOpenCloseBtn.Enabled = ( (userCommPort.Length != 0) && (userCommSpeed.Length != 0));

        bool isOpened = (serial != null) && (serial.IsOpen);
        commBootBtn.Enabled = !isOpened && (userCommPort.Length != 0);

//      Console.WriteLine("port: '{0}'", userCommPort);
//      Console.WriteLine("speed: '{0}'", userCommSpeed);
    }

    void onCommPortChanged(object sender, StringEventArgs e)
    {
        userCommPort = e.StringValue;
        checkSpecified();
    }

    void onCommSpeedChanged(object sender, StringEventArgs e)
    {
        userCommSpeed = e.StringValue;
        int speed;
        Int32.TryParse(userCommSpeed, out speed);
//      Console.WriteLine("onCommSpeedChanged: {0}", speed);

        if ( (serial != null) && serial.IsOpen){
            sendToQpBox(String.Format("set:BaudRate:{0}", speed));
            do {
                Thread.Sleep(100);
                // sleep and allow messages to occur.
            } while (serial.BytesToWrite != 0);

        }

        if (serial != null)
            serial.BaudRate = speed;

        checkSpecified();
    }


    void genericInputHandler(object sender, StringEventArgs e)
    {
        string variable = findVariable((NumBoxBase)sender);
        if (variable == null){
            Console.WriteLine("Could not find variable");
            return;
        }
        string cmd = String.Format("set:{0}:{1}", variable, e.StringValue);
        sendToQpBox(cmd);
    }


    void OnSweep(object sender, EventArgs e)
    {
        sendToQpBox("sweep");
        if (autoStreamBox.Checked == false)
            sendToQpBox("stream");
    }

    void onTagCheckedChanged(object sender, EventArgs e)
    {
        bool isChecked = ((CheckBox) sender).Checked;
        usingTag = isChecked;
    }

    void onCksumCheckedChanged(object sender, EventArgs e)
    {
        bool isChecked = ((CheckBox) sender).Checked;
        usingChecksum = isChecked;
    }

    void onCommandBoxKey(object sender, KeyEventArgs e)
    {
        if ((e.KeyCode == Keys.Enter) && (commandBox.Text.Length != 0) ){
            string command = commandBox.Text;
            commandBox.Text = "";
            sendToQpBox(command);
        }

    }

    void setupOutputTab()
    {

        GroupBox topGroup = new GroupBox();
        topGroup.Location = new Point(20, 30);
        topGroup.Size = new Size(525, 110);
        tabOutputs.Controls.Add(topGroup);

        topGroup.Controls.Add(degasCurrentBox);
        topGroup.Controls.Add(elecTempBox);
        topGroup.Controls.Add(powerSupplyBox);
        topGroup.Controls.Add(filamentVoltageBox);
        topGroup.Controls.Add(filamentResistanceBox);
        topGroup.Controls.Add(sensorTempBox);

        GroupBox bottomGroup = new GroupBox();
        tabOutputs.Controls.Add(bottomGroup);
        bottomGroup.Size = new Size(525, 280);
        bottomGroup.Location = topGroup.Location;
        bottomGroup.Top += (topGroup.Height + 10);

        bottomGroup.Controls.Add(source1Box);
        bottomGroup.Controls.Add(source2Box);
        bottomGroup.Controls.Add(rfAmpBox);
        bottomGroup.Controls.Add(piraniTempBox);
        bottomGroup.Controls.Add(piraniCorrBox);
        bottomGroup.Controls.Add(piraniTorrBox);
        bottomGroup.Controls.Add(piraniVoltsBox);
        bottomGroup.Controls.Add(plusFbBox);
        bottomGroup.Controls.Add(minusFbBox);

        bottomGroup.Controls.Add(referenceBox);
        bottomGroup.Controls.Add(groundBox);
        bottomGroup.Controls.Add(focus1FbBox);
        bottomGroup.Controls.Add(repellerBox);
        bottomGroup.Controls.Add(filamentPwrBox);
        bottomGroup.Controls.Add(filamentDacCoarseBox);
        bottomGroup.Controls.Add(filamentDacFineBox);
        bottomGroup.Controls.Add(filamentStatusBox);
        bottomGroup.Controls.Add(pressureAmpsBox);
        bottomGroup.Controls.Add(pressureTorrBox);
        bottomGroup.Controls.Add(lastSweepBox);
        bottomGroup.Controls.Add(firstSweepBox);


        int tmargin = 20, lmargin = 150;
        int vdelta = 23, i = 0;

        // First column, top, of Output tab.
        degasCurrentBox.Location = new Point(lmargin, tmargin +  vdelta * i++);
        elecTempBox.Location = new Point(lmargin, tmargin +  vdelta * i++);
        powerSupplyBox.Location = new Point(lmargin, tmargin +  vdelta * i++);

        // Second column, top, of Output tab.
        lmargin = 400;
        i = 0;
        filamentVoltageBox.Location = new Point(lmargin, tmargin +  vdelta * i++);
        filamentResistanceBox.Location = new Point(lmargin, tmargin +  vdelta * i++);
        sensorTempBox.Location = new Point(lmargin, tmargin +  vdelta * i++);


        // First column, bottom, of Output tab.
        tmargin = 20;
        lmargin = 150;
        i = 0;
        source1Box.Location = new Point(lmargin, tmargin +  vdelta * i++);
        source2Box.Location = new Point(lmargin, tmargin +  vdelta * i++);
        rfAmpBox.Location =   new Point(lmargin, tmargin + vdelta * i++);
        piraniTempBox.Location = new Point(lmargin, tmargin + vdelta * i++);
        piraniCorrBox.Location =  new Point(lmargin, tmargin + vdelta * i++);
        piraniVoltsBox.Location = new Point(lmargin, tmargin + vdelta * i++);
        piraniTorrBox.Location = new Point(lmargin, tmargin + vdelta * i++);
        pressureAmpsBox.Location = new Point(lmargin, tmargin +  vdelta * i++);
        pressureTorrBox.Location = new Point(lmargin, tmargin +  vdelta * i++);
        firstSweepBox.Location = new Point(lmargin, tmargin +  vdelta * i++);
        lastSweepBox.Location = new Point(lmargin, tmargin +  vdelta * i++);




        // Second column, bottom, of Output tab.
        lmargin = 400;
        i = 0;

        referenceBox.Location = new Point(lmargin, tmargin +  vdelta * i++);
        groundBox.Location = new Point(lmargin, tmargin +  vdelta * i++);
        focus1FbBox.Location = new Point(lmargin, tmargin +  vdelta * i++);
        repellerBox.Location = new Point(lmargin, tmargin +  vdelta * i++);
        plusFbBox.Location =  new Point(lmargin, tmargin + vdelta * i++);
        minusFbBox.Location = new Point(lmargin, tmargin + vdelta * i++);
        filamentPwrBox.Location = new Point(lmargin, tmargin +  vdelta * i++);
        filamentDacCoarseBox.Location = new Point(lmargin, tmargin +  vdelta * i++);
        filamentDacFineBox.Location = new Point(lmargin, tmargin +  vdelta * i++);
        filamentStatusBox.Location = new Point(lmargin, tmargin +  vdelta * i++);



        tabOutputs.Controls.Add(refreshOutputBtn);
        refreshOutputBtn.Text = "Refresh";
        refreshOutputBtn.Location = bottomGroup.Location;
        refreshOutputBtn.Top += (bottomGroup.Height + 10);

        refreshOutputBtn.Click += new EventHandler(OnOutputsRefresh);
    }

    void setupCalibrationTab()
    {
        GroupBox lowCalGroup = new GroupBox();
        lowCalGroup.Text = "Low Cal";
        lowCalGroup.Location = new Point(20, 30);
        lowCalGroup.Size = new Size(200, 130);

        GroupBox highCalGroup = new GroupBox();
        highCalGroup.Text = "High Cal";
        highCalGroup.Location = lowCalGroup.Location;
        highCalGroup.Left += (lowCalGroup.Width + 20);
        highCalGroup.Size = lowCalGroup.Size;

        lowCalGroup.Controls.Add(lowCalMassBox);
        lowCalGroup.Controls.Add(lowCalResolutionBox);
        lowCalGroup.Controls.Add(lowCalIonEnergyBox);
        lowCalGroup.Controls.Add(lowCalPositionBox);

        highCalGroup.Controls.Add(highCalMassBox);
        highCalGroup.Controls.Add(highCalResolutionBox);
        highCalGroup.Controls.Add(highCalIonEnergyBox);
        highCalGroup.Controls.Add(highCalPositionBox);


        GroupBox detectorGroup = new GroupBox();
        detectorGroup.Text = "Detector";
        detectorGroup.Size = highCalGroup.Size;
        detectorGroup.Width += 50;
        detectorGroup.Location = highCalGroup.Location;
        detectorGroup.Left += (highCalGroup.Width + 20);

        detectorGroup.Controls.Add(totalCapBox);
        detectorGroup.Controls.Add(partialCapBox);
        detectorGroup.Controls.Add(totalSensitivityBox);
        detectorGroup.Controls.Add(partialSensitivityBox);

        GroupBox unitGroup = new GroupBox();
        unitGroup.Text = "Unit";
        unitGroup.Size = new Size(200, 85);
        unitGroup.Location = lowCalGroup.Location;
        unitGroup.Top += lowCalGroup.Height + 20;
        unitGroup.Controls.Add(modelBox);
        unitGroup.Controls.Add(serialBox);

        GroupBox versionGroup = new GroupBox();
        versionGroup.Text = "Firmware Version";
        versionGroup.Size = unitGroup.Size;
        versionGroup.Left = highCalGroup.Left;
        versionGroup.Top = unitGroup.Top;
        versionGroup.Controls.Add(versionMajorBox);
        versionGroup.Controls.Add(versionMinorBox);

        GroupBox piraniGroup = new GroupBox();
        piraniGroup.Text = "Pirani Calibration";
        piraniGroup.Size = unitGroup.Size;
        piraniGroup.Left = detectorGroup.Left;
        piraniGroup.Top = unitGroup.Top;
        piraniGroup.Controls.Add(piraniOneAtmBox);
        piraniGroup.Controls.Add(piraniZeroAtmBox);

        tabCalibration.Controls.Add(lowCalGroup);
        tabCalibration.Controls.Add(highCalGroup);
        tabCalibration.Controls.Add(unitGroup);
        tabCalibration.Controls.Add(piraniGroup);
        tabCalibration.Controls.Add(versionGroup);
        tabCalibration.Controls.Add(detectorGroup);

        int tmargin = 25, lmargin = 70;
        int vdelta = 23, i = 0;

        lowCalMassBox.Location = new Point(lmargin, tmargin +  vdelta * i++);
        lowCalResolutionBox.Location = new Point(lmargin, tmargin +  vdelta * i++);
        lowCalIonEnergyBox.Location = new Point(lmargin, tmargin +  vdelta * i++);
        lowCalPositionBox.Location = new Point(lmargin, tmargin +  vdelta * i++);

        i = 0;
        highCalMassBox.Location = new Point(lmargin, tmargin +  vdelta * i++);
        highCalResolutionBox.Location = new Point(lmargin, tmargin +  vdelta * i++);
        highCalIonEnergyBox.Location = new Point(lmargin, tmargin +  vdelta * i++);
        highCalPositionBox.Location = new Point(lmargin, tmargin +  vdelta * i++);

        i = 0;
        modelBox.Location = new Point(lmargin, tmargin +  vdelta * i++);
        serialBox.Location = new Point(lmargin, tmargin +  vdelta * i++);

        i = 0;
        piraniOneAtmBox.Location = new Point(lmargin, tmargin +  vdelta * i++);
        piraniZeroAtmBox.Location = new Point(lmargin, tmargin +  vdelta * i++);

        i = 0;
        versionMajorBox.Location = new Point(lmargin, tmargin +  vdelta * i++);
        versionMinorBox.Location = new Point(lmargin, tmargin +  vdelta * i++);

        i = 0;
        lmargin += 50;
        partialCapBox.Location = new Point(lmargin, tmargin +  vdelta * i++);
        partialSensitivityBox.Location = new Point(lmargin, tmargin +  vdelta * i++);
        totalCapBox.Location = new Point(lmargin, tmargin +  vdelta * i++);
        totalSensitivityBox.Location = new Point(lmargin, tmargin +  vdelta * i++);


        tabCalibration.Controls.Add(refreshCalibrationBtn);
        refreshCalibrationBtn.Text = "Refresh";
        refreshCalibrationBtn.Location = unitGroup.Location;
        refreshCalibrationBtn.Top += (unitGroup.Height + 10);

        refreshCalibrationBtn.Click += new EventHandler(OnCalibrationRefresh);
    }



    private void onTabOperatingResize(object sender, EventArgs e)
    {
        consoleBox.Left = sweepGroup.Left;
        consoleBox.Width = refreshOperatingBtn.Left - sweepGroup.Left - 20;
        consoleBox.Top = operatingGroup.Bottom + 20;

        commandBox.Top = tabOperating.Height - commandBox.Height - 20;
        commandBox.Left = consoleBox.Left;
        commandBox.Width = consoleBox.Width;
        commandBox.BackColor = Color.Cornsilk;

        consoleBox.Height = commandBox.Top - consoleBox.Top;

        commandLabel.Location = commandBox.Location;
        commandLabel.Top += 5;
        commandBox.Left += 60;
        commandBox.Width -= 60;

    }


    TextBox consoleBox = new TextBox();
    TextBoxNoBeep commandBox = new TextBoxNoBeep();

    GroupBox sweepGroup = new GroupBox();
    GroupBox operatingGroup = new GroupBox();
    GroupBox commGroup = new GroupBox();
    Label commandLabel = new Label();

    void setupOperatingTab()
    {
//        GroupBox sweepGroup = new GroupBox();
        sweepGroup.Text = "Sweep Parameters";
        sweepGroup.Location = new Point(20, 30);
        sweepGroup.Size = new Size(200, 180);

//        GroupBox operatingGroup = new GroupBox();
        operatingGroup.Text = "Operating Parameters";
        operatingGroup.Size = sweepGroup.Size;
//        operatingGroup.Height += 50;
        operatingGroup.Width += 20;
        operatingGroup.Location = sweepGroup.Location;
        operatingGroup.Left += sweepGroup.Width + 20;
//        FilamentOnBox.Text = "Filament On";
//        AutoZeroBox.Text = "Auto Zero";



        commGroup.Text = "Communications";
        commGroup.Size = operatingGroup.Size;
        commGroup.Location = operatingGroup.Location;
        commGroup.Left += operatingGroup.Width + 20;

        commOpenCloseBtn.Text = "Open";
        commOpenCloseBtn.Size = new Size(60, 20); // commPortBox.Size;
        commOpenCloseBtn.Enabled = false;

        commBootBtn.Enabled = false;

        sweepGroup.Controls.Add(scanSpeedBox);
        sweepGroup.Controls.Add(lowMassBox);
        sweepGroup.Controls.Add(highMassBox);
        sweepGroup.Controls.Add(samplesPerAmuBox);
        sweepGroup.Controls.Add(autoStreamBox);

        operatingGroup.Controls.Add(focus1Box);
        operatingGroup.Controls.Add(electronEnergyBox);
        operatingGroup.Controls.Add(filamentEmissionBox);
        operatingGroup.Controls.Add(multiplierVoltsBox);
        operatingGroup.Controls.Add(AutoZeroBox);
        operatingGroup.Controls.Add(FilamentOnBox);

        commGroup.Controls.Add(commPortBox);
        commGroup.Controls.Add(commSpeedBox);
        commGroup.Controls.Add(commOpenCloseBtn);
        commGroup.Controls.Add(commBootBtn);
        commGroup.Controls.Add(commEncodingBox);
        commGroup.Controls.Add(commSamplesBox);
        commGroup.Controls.Add(tagCheckBox);
        commGroup.Controls.Add(cksumCheckBox);

        tagCheckBox.Text = "Tags";
        tagCheckBox.CheckedChanged += new EventHandler(onTagCheckedChanged);
        cksumCheckBox.Text = "Checksums";
        cksumCheckBox.CheckedChanged += new EventHandler(onCksumCheckedChanged);

        int tmargin = 25, lmargin = 80;
        int vdelta = 23, i = 0;

        scanSpeedBox.Location = new Point(lmargin, tmargin +  vdelta * i++);
        lowMassBox.Location = new Point(lmargin, tmargin +  vdelta * i++);
        highMassBox.Location = new Point(lmargin, tmargin +  vdelta * i++);
        samplesPerAmuBox.Location = new Point(lmargin, tmargin +  vdelta * i++);
        autoStreamBox.Location = new Point(lmargin, tmargin +  vdelta * i++);

        i = 0; lmargin = 105;
        focus1Box.Location = new Point(lmargin, tmargin +  vdelta * i++);
        electronEnergyBox.Location = new Point(lmargin, tmargin +  vdelta * i++);
        filamentEmissionBox.Location = new Point(lmargin, tmargin +  vdelta * i++);
        multiplierVoltsBox.Location = new Point(lmargin, tmargin +  vdelta * i++);
        AutoZeroBox.Location = new Point(lmargin, tmargin +  vdelta * i++);
        FilamentOnBox.Location = new Point(lmargin, tmargin +  vdelta * i++);


        i = 0; lmargin = 55;
        commPortBox.Location =  new Point(lmargin, tmargin +  vdelta * i++);
        commSpeedBox.Location =  new Point(lmargin, tmargin +  vdelta * i++);
        commEncodingBox.Location = new Point(lmargin, tmargin +  vdelta * i++);
        commSamplesBox.Location = new Point(lmargin, tmargin +  vdelta * i++);
        tagCheckBox.Location = new Point(lmargin, tmargin +  vdelta * i++);
        cksumCheckBox.Location = new Point(lmargin, tmargin +  vdelta * i++);

        commOpenCloseBtn.Location = commPortBox.Location;
        commOpenCloseBtn.Left += 70;

        commBootBtn.Location = commSpeedBox.Location;
        commBootBtn.Text = "Boot";
        commBootBtn.Size = commOpenCloseBtn.Size;
        commBootBtn.Left += 70;

        commOpenCloseBtn.Click += new EventHandler(onCommOpenClose);
        commBootBtn.Click += new EventHandler(onCommBoot);
        commPortBox.ValueChanged += new StringEventHandler(onCommPortChanged);
        commSpeedBox.ValueChanged += new StringEventHandler(onCommSpeedChanged);

        refreshOperatingBtn.Text = "Refresh";
        refreshOperatingBtn.Left = commGroup.Right - refreshOperatingBtn.Width;
        refreshOperatingBtn.Top = commGroup.Bottom + 20;

        refreshOperatingBtn.Click += new EventHandler(OnOperatingRefresh);

        consoleBox.Name = "console";
        consoleBox.Font = new Font("Courier New", 8.25f);
        consoleBox.Multiline = true;
        consoleBox.WordWrap = false;
        consoleBox.ReadOnly = true;
        consoleBox.BackColor = Color.Cornsilk;
        consoleBox.ScrollBars = ScrollBars.Both;

        commandLabel.AutoSize = true;
        commandLabel.Text = "Command:";

        commandBox.KeyDown += new KeyEventHandler(onCommandBoxKey);

        tabOperating.Resize += new EventHandler(onTabOperatingResize);
        tabOperating.Controls.Add(refreshOperatingBtn);
        tabOperating.Controls.Add(sweepGroup);
        tabOperating.Controls.Add(operatingGroup);
        tabOperating.Controls.Add(commGroup);
        tabOperating.Controls.Add(consoleBox);
        tabOperating.Controls.Add(commandBox);
        tabOperating.Controls.Add(commandLabel);
    }

    System.Windows.Forms.Timer timer;

    private void onTick(object sender, System.EventArgs e)
    {
        // consider simplifying this through the use of a queue,
        // as is done for qpBoxLines, below.
        if (newDataToPlot == true){

            while (graphPoints.Count > 0){
                GraphPoint pt = graphPoints.Dequeue();
                if (instrumentMode != pt.mode){
                    if (pt.mode == InstrumentMode.Sweep){
                        instrument.SetRangeX(streamLowMass - 0.6, streamHighMass + 0.6);
                        instrument.GraphTitle = "Sweep";
                        instrument.XAxisTitle = "AMU";
                    } else if (pt.mode == InstrumentMode.Trend){
                        instrument.SetRangeX(0, trendDisplaySamples);
                        instrument.GraphTitle = "Trend";
                        instrument.XAxisTitle = "SAMPLE";
                    }
                    instrumentMode = pt.mode;
                }

                if ( (instrumentMode == InstrumentMode.Sweep) && sweepParametersChanged() ){
                    instrument.ClearGraph();
                    instrument.SetRangeX(streamLowMass - 0.6, streamHighMass + 0.6);
                }

                if ( (Double.IsNaN(pt.x) == false) && (Double.IsNaN(pt.y) == false) )
                    instrument.DataPoint(pt.trace, pt.index, pt.x, pt.y);
            }
            newDataToPlot = false;
            instrument.Refresh();
        }

        lock (qpBoxLines.SyncRoot){
            while (qpBoxLines.Count > 0){
                string s = (string) qpBoxLines.Dequeue();
                consoleBox.AppendText(s + Environment.NewLine);
            }
        }

    }



     private void onSweepResize(object sender, EventArgs e)
     {
         instrument.Width = tabSweep.Width;
         instrument.Height = tabSweep.Height - 100;

         pressureRadio.Top = instrument.Bottom + 5;
         pressureRadio.Left = 5;

         sweepBtn.Left = tabSweep.Width - sweepBtn.Width - 5;
         sweepBtn.Top = tabSweep.Height - sweepBtn.Height - 5;


         scaleBar.Top = instrument.Bottom + 10;
         scaleBar.Left = tabSweep.Width - scaleBar.Width;
         scaleBarLabel.Location = scaleBar.Location;
         scaleBarLabel.Left -= (scaleBarLabel.Width - 4);
         scaleBarLabel.Top += 2;
     }

     private void onScaleChanged(object sender, EventArgs e)
     {
         double portion =  scaleBar.Value / (1.0 * (scaleBar.Maximum - scaleBar.Minimum));
         double maxZoomPower10 = -15;
         double minZoomPower10 = +3;
         double delta = maxZoomPower10 - minZoomPower10;
         double v = (portion * delta) + minZoomPower10;
         double maxY = Math.Pow(10, v);
         double minY = -(maxY / 10);
         instrument.SetRangeY(minY, maxY);
     }

    InstrumentGraph instrument;
    TrackBar scaleBar;
    Label scaleBarLabel;

    void setupSweepTab()
    {
        instrument = new InstrumentGraph();

        instrument.YAxisTitle = "AMPS";
        instrument.XAxisTitle = "AMU";
        instrument.GraphTitle = "Mass Sweep";

        scaleBar = new TrackBar();
        scaleBar.Width = 200;
        scaleBar.Minimum = 0;
        scaleBar.Maximum = 100;
        scaleBar.TickStyle = TickStyle.None;
        scaleBar.Orientation = Orientation.Horizontal;

        scaleBar.ValueChanged += new EventHandler(onScaleChanged);
        scaleBar.Value = 80;

        scaleBarLabel = new Label();
        scaleBarLabel.AutoSize= true;
        scaleBarLabel.Text = "Y Scale";

        timer = new System.Windows.Forms.Timer();
        timer.Interval = 25;
        timer.Tick += new System.EventHandler(onTick);
        timer.Enabled = true;

        sweepBtn.Text = "Sweep";
        sweepBtn.Location = new Point(10, 450);
        sweepBtn.Click += new EventHandler(OnSweep);
        tabSweep.Resize += new EventHandler(onSweepResize);

        pressureRadio.AmpsSelected += onAmpsSelected;
        pressureRadio.TorrSelected += onTorrSelected;

        tabSweep.Controls.Add(instrument);
        tabSweep.Controls.Add(sweepBtn);
        tabSweep.Controls.Add(scaleBar);
        tabSweep.Controls.Add(scaleBarLabel);
        tabSweep.Controls.Add(pressureRadio);
    }

    void onAmpsSelected(object sender, EventArgs e)
    {
        instrument.YScaleFactor = 1.0;
        instrument.YAxisTitle = "AMPS";
    }


    void onTorrSelected(object sender, EventArgs e)
    {
        string sval = partialSensitivityBox.Value;
        double partialSensitivity;
        if (Double.TryParse(sval, out partialSensitivity) == false){
            // Use this reasonable default value if none has been
            // retrieved from the QpBox.
            partialSensitivity = 0.6;  // mA/torr
        }
        partialSensitivity /= 1000;  // convert from mA/torr to A/torr
        instrument.YScaleFactor = 1 / partialSensitivity;
        instrument.YAxisTitle = "TORR";
    }


    void onRgaResize(object sender, EventArgs e)
    {
        int margin = 25;
        tabControl.Location = new Point(margin, margin);
        tabControl.Size = new Size(Width - 2 * margin, Height - 3 * margin);
    }


	public RgaWindow()
	{
		Text = "Extorr RGA & Mass Spectrometer";
		Size = new Size(800, 600);

        tabControl = new TabControl();

        tabSweep = new TabPage(" Plot");
        tabOutputs = new TabPage("Outputs");
        tabOperating = new TabPage("Operating");
        tabCalibration = new TabPage("Calibration");

        tabControl.TabPages.Add(tabSweep);
        tabControl.TabPages.Add(tabOperating);
        tabControl.TabPages.Add(tabOutputs);
        tabControl.TabPages.Add(tabCalibration);

        Resize += new EventHandler(onRgaResize);

        int margin = 25;
        tabControl.Location = new Point(margin, margin);
        tabControl.Size = new Size(Width - 2 * margin, Height - 3 * margin);

        Controls.Add(tabControl);

        setupOutputTab();
        setupCalibrationTab();
        setupOperatingTab();
        setupSweepTab();
        setupControlsTable();

        FormClosing += new FormClosingEventHandler(onClose);

	}


    bool shuttingDown = false;

    void onClose(object sender, System.EventArgs e)
    {
        shuttingDown = true;
        stopSerialReadThread();
    }


}

class app
{
    // [STAThreadAttribute]
	public static void Main()
	{
    Console.WriteLine("Jello");
		Application.Run(new RgaWindow());
	}
}
