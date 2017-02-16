using System;
using System.Drawing;
using System.Drawing.Drawing2D;
using System.Windows.Forms;
using System.Collections.Generic;


// This is our own implementation of the graphing
// facility, which does not use any third-party
// graphing library.

class InstrumentGraph : Control
{
    PlotSurface plot;

        // Specifies placement of the PlotSurface within the InstrumentGraph
        // control.  The following are margins around the PlotSurface.
    int topMargin = 30;
    int leftMargin = 60;
    int rightMargin = 20;
    int bottomMargin = 40;
            
    Brush textBrush;
    Font titleFont;
    Font axisFont;

    public double MinimumY
    {
        get { return plot.MinimumY; }
        set {
            plot.MinimumY = value;
            updateGrid();
        }
    }

    public double MaximumY
    {
        get { return plot.MaximumY; }
        set {
            plot.MaximumY = value;
        }
    }


    public double YScaleFactor
    {
        get { return plot.YScaleFactor; }
        set { plot.YScaleFactor = value; Refresh(); }
    }


    void updateGrid()
    {
        plot.getGridX(out gridX);
        plot.getGridY(out gridY);
        Refresh();
    }

    public void SetRangeY(double minY, double maxY)
    {
        plot.MinimumY = minY;
        plot.MaximumY = maxY;
        updateGrid();
    }

    GridLines gridX, gridY;

    public void SetRangeX(double lowX, double highX)
    {
        plot.SetRangeX(lowX, highX);
        updateGrid();
    }


    void onInstrumentResize(object sender, EventArgs e)
    {
        plot.Width = Width - rightMargin - leftMargin; 
        plot.Height = Height - topMargin - bottomMargin;
        updateGrid();
    }

    public InstrumentGraph()
    {
        Size = new Size(740, 400);
        DoubleBuffered = true;
        TabStop = false;
        BackColor = Color.FromArgb(64, 64, 64);
        plot = new PlotSurface();

        plot.Width -= (leftMargin + rightMargin);
        plot.Height -= (topMargin + bottomMargin);
        plot.Left += leftMargin;
        plot.Top += topMargin;

        MinimumY = -3e-13;
        MaximumY = 3 * 2.5e-12;
        Controls.Add(plot);

        textBrush = new SolidBrush(Color.White);
        titleFont = new Font( "Arial", 14);
        axisFont = new Font( "Arial", 8);

        Resize += new EventHandler(onInstrumentResize);

        // just to get some initial axis labels
        SetRangeX(0, 100);
    }

    string graphTitle = "";
    string xAxisTitle = "";
    string yAxisTitle = "";

    public string YAxisTitle
    {
        get { return yAxisTitle; }
        set { yAxisTitle = value; Refresh(); }
    }

    public string XAxisTitle
    {
        get { return xAxisTitle; }
        set { xAxisTitle = value; Refresh(); }
    }

    public string GraphTitle
    {
        get { return graphTitle; }
        set { graphTitle = value; Refresh(); }
    }


    protected override void OnPaint( PaintEventArgs e )
    {
        Graphics g = e.Graphics;

        // Draw the graph title.
        SizeF titleSize = g.MeasureString(graphTitle, titleFont);
        float left = leftMargin + (plot.Width - titleSize.Width) / 2;
        float top = (topMargin - titleSize.Height) / 2;
        g.DrawString(graphTitle, titleFont, textBrush, left, top);

        // Draw the x-axis title.
        SizeF size = g.MeasureString(xAxisTitle, axisFont);
        left = leftMargin + (plot.Width - size.Width) / 2;
        top = Height - 1.5f * size.Height;
        g.DrawString(xAxisTitle, axisFont, textBrush, left, top); 

        // Draw the y-axis title.
        size = g.MeasureString(yAxisTitle, axisFont);
        float deg = -90.0f;
//        g.TranslateTransform(size.Height, topMargin + plot.Height - size.Width );
        g.TranslateTransform( size.Height / 2, topMargin + (plot.Height + size.Width) / 2);


        g.RotateTransform(deg);
        g.DrawString(yAxisTitle, axisFont, textBrush, 0, 0);
        g.ResetTransform();

        // Draw the x-axis labels.
        for (int i = 0; i < gridX.number; i++){
            float y = plot.Bottom + 2;
            float x = plot.Left + (float) (gridX.firstCoord + (i *  gridX.deltaCoord) );
            double val = gridX.firstValue + (i * gridX.deltaValue);
            string s = String.Format("{0}", val );
            SizeF labelSize = g.MeasureString(s, axisFont);
            x -= labelSize.Width / 2;
            g.DrawString(s, axisFont, textBrush, x, y);
        }

        // Draw the y-axis labels.
        for (int i = 0; i < gridY.number; i++){
            double val = gridY.firstValue + (i * gridY.deltaValue);
            string s = String.Format("{0}", val );
            SizeF labelSize = g.MeasureString(s, axisFont);

            float x = plot.Left - labelSize.Width;
            float y = plot.Top + (float) (gridY.firstCoord + (i *  gridY.deltaCoord) );
            y -= labelSize.Height / 2;
            g.DrawString(s, axisFont, textBrush, x, y);
        }

    }


    public void ClearGraph()
    {
        plot.ClearGraph();
    }
    
    public void ClearTrace(int tracenum)
    {
        plot.ClearTrace(tracenum);
    }



    public void DataPoint(int tracenum, int index, double x, double y)
    {
#if false
        // for testing
        double dy = 0.3e-12;
        for (int t = 0; t < 12; t++)
            plot.DataPoint(t, index, x, t * dy + y);
#else
        plot.DataPoint(tracenum, index, x, y);
#endif
    }



}

struct GridLines
{
    public float firstCoord;
    public float deltaCoord;
    public double firstValue;
    public double deltaValue;
    public int number;
}



class PlotSurface : Panel
{
    const int  numberOfTraces = 12;

    public PlotSurface()
    {
        DoubleBuffered = true;
        BorderStyle = BorderStyle.Fixed3D;

        Size = new Size(740, 400);
        TabStop = false;
        BackColor = Color.Black;
        
        tracePen = new Pen[numberOfTraces];
        tracePen[0] = new Pen(Color.Coral);
        tracePen[1] = new Pen(Color.Yellow);
        tracePen[2] = new Pen(Color.White);
        tracePen[3] = new Pen(Color.Cyan);
        tracePen[4] = new Pen(Color.PaleVioletRed);
        tracePen[5] = new Pen(Color.PowderBlue);
        tracePen[6] = new Pen(Color.MediumVioletRed);
        tracePen[7] = new Pen(Color.PaleGreen);
        tracePen[8] = new Pen(Color.Plum);
        tracePen[9] = new Pen(Color.Salmon);
        tracePen[10] = new Pen(Color.Sienna);
        tracePen[11] = new Pen(Color.OliveDrab);


        gridPen = new Pen(Color.FromArgb(0, 128, 0));
        gridPen.DashStyle = DashStyle.Dash; // DashStyle.Dot;

        traces = new Datum[numberOfTraces][];
        for (int i = 0; i < numberOfTraces; i++){
            traces[i] = new Datum[0];
        }
        

        ClearGraph();
    }

    protected Pen[] tracePen;
    protected Pen gridPen;


    double minimumY = 0, maximumY = 100;

    public double MinimumY
    {
        get { return minimumY; }
        set { minimumY = value; }
    }

    public double MaximumY
    {
        get { return maximumY; }
        set { maximumY = value; }
    }

    double yScaleFactor = 1.0;

    public double YScaleFactor
    {
        get { return yScaleFactor; }
        set { yScaleFactor = value; }
    }


    double minimumX = 1;
    double maximumX = 100;

    public double MinimumX
    {
        get { return minimumX; }
        set { minimumX = value; }
    }

    public double MaximumX
    {
        get { return maximumX; }
        set { maximumX = value; }
    }

    float bound(float r)
    {
        if (r < -100000)
            r = -100000;
        else if (r > 100000)
            r = 100000;
        return r;
    }

    public float toGdiX(double x)
    {
        float r = (float) ( Width * (x - minimumX) / (maximumX - minimumX) );
        r = bound(r);
        return r;
    }

    public float toGdiY(double y)
    {
        float r = (float) (Height - Height * (y - minimumY) / (maximumY - minimumY) );
        r = bound(r);
        return r;
    }


    void renderTrace(Graphics g, int tracenum)
    {
        g.SmoothingMode = SmoothingMode.None;  // SmoothingMode.AntiAlias;

        Datum last = new Datum(double.NaN, double.NaN);

        foreach (Datum pt in traces[tracenum]){
            if ( (double.IsNaN(pt.X) == false) &&  (double.IsNaN(last.X) == false)  )
                g.DrawLine(tracePen[tracenum], toGdiX(last.X), toGdiY(yScaleFactor * last.Y),
                                      toGdiX(pt.X), toGdiY(yScaleFactor * pt.Y));
            last = pt;
        }
    }

    // Returns a reasonable grid spacing based on the range of data to
    // be plotted. The spacing will always be either 1*10^x, 2*10^x, or
    // 5*10^x, where x is some integer.  It attempts to choose the
    // increment so there are approximately 8 grid points in the range
    // using: range/(n*10^x)~=8 where n is 1, 2, or 5.
    double gridSpacing(double range)
    {
        int gridPoints = 8;
        double x1 = Math.Log10(range / gridPoints);
        double x2 = Math.Log10(range / (2 * gridPoints));
        double x5 = Math.Log10(range / (5 * gridPoints));
        double xBest;
        int n;
        if (Math.Abs(x1 - Math.Round(x1)) < Math.Abs(x2 - Math.Round(x2))) {
            xBest = x1;
            n = 1;
        } else {
            xBest = x2;
            n = 2;
        }
        if (Math.Abs(xBest - Math.Round(xBest)) > Math.Abs(x5 - Math.Round(x5))) {
            xBest = x5;
            n = 5;
        }
        xBest = Math.Round(xBest);
        return n * Math.Pow(10.0, xBest);
    }

    // Compute point where first grid line will be drawn (greater than
    // or equal to leftOrBottom). Based on the fact that our choice of
    // spacing in gridSpacing will always produce a grid line at
    // zero (whether or not such line is actually drawn).
    double firstGridPoint(double leftOrBottom, double spacing)
    {
        // -offset to include points that are very close to meeting the criterion
        double nFirst = Math.Ceiling(leftOrBottom / spacing - .000001f);
        //             return (float)Math.Round(nFirst*spacing, 2);
        return nFirst * spacing;
    }




    void autoGrid(out double spacing, out double first, double min, double max)
    {
        spacing = gridSpacing(max - min);
        first = firstGridPoint(min, spacing);
    }


    public void getGridX(out GridLines g)
    {
        double spacing, first;
        autoGrid(out spacing, out first, minimumX, maximumX);

        g.firstCoord = (float) toGdiX(first);
        g.deltaCoord = toGdiX(first + spacing) - toGdiX(first);
        g.firstValue = first;
        g.deltaValue = spacing;
        g.number = (int) ((maximumX - first) / spacing) + 1;
    }

    public void getGridY(out GridLines g)
    {
        double spacing, first;
        autoGrid(out spacing, out first, minimumY, maximumY);

        g.firstCoord = (float) toGdiY(first);
        g.deltaCoord = toGdiY(first + spacing) - toGdiY(first);
        g.firstValue = first;
        g.deltaValue = spacing;
        g.number = (int) ((maximumY - first) / spacing) + 1;
    }


    void renderGrid(Graphics g)
    {
        double spacing, first;

        autoGrid(out spacing, out first, minimumX, maximumX);
        for (double x = first; x <= maximumX; x += spacing){
            float gdiX = toGdiX(x);
            g.DrawLine(gridPen, gdiX, 0, gdiX, Height);
        }

        autoGrid(out spacing, out first, minimumY, maximumY);
        for (double y = first; y <= maximumY; y += spacing){
            float gdiY = toGdiY(y);
            g.DrawLine(gridPen, 0, gdiY, Width, gdiY);
        }
    }

    protected override void OnPaint( PaintEventArgs e )
    {
        e.Graphics.SmoothingMode = SmoothingMode.None; // SmoothingMode.AntiAlias;

        Graphics g = e.Graphics;
        renderGrid(g);
        for (int t = 0; t < numberOfTraces; t++)
            renderTrace(g, t);
    }


    public void ClearTrace(int tracenum)
    {
        if (tracenum >= numberOfTraces)
            return;
        traces[tracenum] = new Datum[0];
    }

    public void ClearGraph()
    {
        for (int t = 0; t < numberOfTraces; t++)
            ClearTrace(t);
    }

    struct Datum {
        public double X;
        public double Y;
        public Datum(double x, double y){
            X = x;
            Y = y;
        }            
    }

    Datum[][] traces;

    public void DataPoint(int tracenum, int index, double x, double y)
    {
        if ( (tracenum < 0) || (tracenum >= numberOfTraces) )
            return;
        Datum[] vertices = traces[tracenum];
        int oldsize = vertices.Length;
        if (index >= oldsize){
            int newsize = index + 100;
            Array.Resize(ref vertices, newsize);
            traces[tracenum] = vertices;
            for (int j = oldsize; j < newsize; j++){
                vertices[j] = new Datum(double.NaN, double.NaN);
            }
        }
        vertices[index] = new Datum(x, y);
    }

    public void SetRangeX(double lowX, double highX)
    {
        if ( (lowX != minimumX) || (highX != maximumX)  ){
            ClearGraph();
        }
        minimumX = lowX;
        maximumX = highX;
    }
}




