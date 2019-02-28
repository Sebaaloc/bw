using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebDevelopmentBankW
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            

        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {
            
        }

        protected void txbMotivo_TextChanged(object sender, EventArgs e)
        {

        }


        

        protected void Clear_fields()
        {

            //Invisitems.InnerText = "";

            lblNoCre.Text = "";
            lblfechmod.Text = "";
            lblMarcaAnt.Text = "";
            lblSaldoC.Text = "";
            lbltasInt.Text = "";
            lblPlazomes.Text = "";
            lblcuotAnt.Text = "";
            lblFechaPro.Text = "";
            lblNoMod.Text = "";
            txbMotivo.Text = "";
        }

        protected void Hide_fields()
        {
            //Invisitems.Visible = false;
            //invisipanel.Visible = false;
            lblfechmodti.Visible = false;
            lblMarcaAntti.Visible = false;
            lblSaldoCTi.Visible = false;
            lblDiasMoraTi.Visible = false;
            lblTasIntTi.Visible = false;
            lblPlazomesti.Visible = false;
            lblcuotAntTi.Visible = false;
            lblFechaProti.Visible = false;
            lblNoModTi.Visible = false;
            //pnlModMarca.Visible = false;
            lblMotivoTi.Visible = false;

            

            txbMotivo.Visible = false;
            btnmodmarca.Visible = false;
            btnCancelar.Visible = false;

        }

        protected void Show_fields()
        {
            //Invisitems.Visible = true;
            //invisipanel.Visible = true;
            

        }

        protected void btnConsultar_Click(object sender, EventArgs e)
        {
            //Show_fields();          
            //lblfechmodti.Visible = true;
            //lblMarcaAntti.Visible = true;
            //lblSaldoCTi.Visible = true;
            //lblDiasMoraTi.Visible = true;
            //lblTasIntTi.Visible = true;
            //lblPlazomesti.Visible = true;
            //lblcuotAntTi.Visible = true;
            //lblFechaProti.Visible = true;
            //lblNoModTi.Visible = true;
            //pnlModMarca.Visible = true;
            //lblMotivoTi.Visible = true;
            //txbMotivo.Visible = true;
            //btnmodmarca.Visible = true;
            //btnCancelar.Visible = true;

            invisipanel.Visible = true;
            invisitems.Visible = true;

            lblNoCre.Text = tbxNoCred.Text;
            lblfechmod.Text = tbxNoCred.Text;
            lblMarcaAnt.Text = tbxNoCred.Text;
            lblSaldoC.Text = tbxNoCred.Text;
            lbltasInt.Text = tbxNoCred.Text;
            lblPlazomes.Text = tbxNoCred.Text;
            lblcuotAnt.Text = tbxNoCred.Text;
            lblFechaPro.Text = tbxNoCred.Text;
            lblNoMod.Text = tbxNoCred.Text;



        }

        protected void btnmodmarca_Click(object sender, EventArgs e)
        {
            lblPrueba_borrar.Text = txbMotivo.Text;
            txbMotivo.Text = "";
        }

        protected void btnCancelar_Click(object sender, EventArgs e)
        {
            Clear_fields();
            Hide_fields();
            tbxNoCred.Text = "";

        }

        protected void btnTest_Click(object sender, EventArgs e)
        {

        }
    }
}