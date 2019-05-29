using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
//using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using Tekla.Structures.Model;
using Tekla.Structures.Geometry3d;

namespace ExportIFC
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            // Model mod = new Model();
            string[] Phases = new string[] { "IFC_10", "IFC_20", "IFC_30", "IFC_31", "IFC_32", "IFC_40", "IFC_41", "IFC_50", "IFC_60", "IFC_70", "IFC_80", "IFC_90" };


            foreach (string phase in Phases)
            {
                ComponentInput ComponentInput = new ComponentInput();
                ComponentInput.AddOneInputPosition(new Point(0, 0, 0));
                var exportPlugin = new Tekla.Structures.Model.Component(ComponentInput)
                {
                    Name = "ExportIFC",
                    Number = BaseComponent.PLUGIN_OBJECT_NUMBER
                };
                exportPlugin.LoadAttributesFromFile("standard");
                exportPlugin.SetAttribute("OutputFile", phase);
                exportPlugin.Insert();
            }

        }

        private void button2_Click(object sender, EventArgs e)
        {
            Model _model = new Model();

            Tekla.Structures.Model.UI.ModelObjectSelector mos = new Tekla.Structures.Model.UI.ModelObjectSelector();

            ModelObjectEnumerator moe = mos.GetSelectedObjects();


            while (moe.MoveNext())
            {
                ModelObject mo = moe.Current as ModelObject;
              //  mo.

            }

            }
    }
}
