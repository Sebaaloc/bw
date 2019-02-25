<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebDevelopmentBankW.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    
    
    <p>
        <br />
    </p>
    <p>
        
        <asp:Label ID="lblNoCred" runat="server" Text="Numero de credito"></asp:Label>
        &nbsp;
        


        <asp:TextBox ID="tbxNoCred" runat="server" OnTextChanged="TextBox1_TextChanged" placeholder="Numero de credito"></asp:TextBox>
        


        
        <asp:RequiredFieldValidator runat=server 
            ControlToValidate=tbxNoCred
            ClientValidationFunction="changeColor" ForeColor="Red"
            ErrorMessage="Ingreso de numero de credito es necesario.">  *
        </asp:RequiredFieldValidator>

        &nbsp;&nbsp;
        <asp:Button ID="btnConsultar" runat="server" Text="Consultar" OnClick="btnConsultar_Click" />
        
        
      
       
        <asp:RegularExpressionValidator Display = "Dynamic" ControlToValidate = "tbxNoCred"
          ID="tbxvallength" ClientValidationFunction="changeColor" ForeColor="Red"
          ValidationExpression = "^[\s\S]{0,8}$" runat="server"
          ErrorMessage="Maximo 8 caracteres.">
        </asp:RegularExpressionValidator>

        
        <asp:RegularExpressionValidator ID="validarEspacio" runat="server" ControlToValidate="tbxNoCred"
        ClientValidationFunction="changeColor" ForeColor="Red"
        ErrorMessage="No se permiten espacios" ValidationExpression="^[^\s]+$">
        </asp:RegularExpressionValidator>        
      
        <asp:CompareValidator ID="tbxvalidinp" runat="server" ControlToValidate="tbxNoCred" Type="Integer"
        ClientValidationFunction="changeColor" ForeColor="Red"
        Operator="DataTypeCheck" ErrorMessage="Por favor solo ingrese numeros" />
      

       

    </p>

    <style>
    
        .column {
          float: left;
          width: 50%;
          padding: 10px;
        }

    </style>
        

    <div id="Invisitems" runat="server">

    <div class="row">
      <div class="column" style="background-color:#FFFF;">
        
        <p>
        <asp:Label ID="lblNoCredTi" runat="server" Text="Numero de credito:" Visible="False"></asp:Label>
        &nbsp;&nbsp;
        <asp:Label ID="lblNoCre" runat="server"></asp:Label>
        <p>

        <p>
        <asp:Label ID="lblfechmodti" runat="server" Text="Fecha de modificacion:" Visible="False"></asp:Label>
        &nbsp;&nbsp;
        <asp:Label ID="lblfechmod" runat="server"></asp:Label>
        </p>


        <p>
        <asp:Label ID="lblMarcaAntti" runat="server" Text="Marca anterior:" Visible="False"></asp:Label>
        &nbsp;&nbsp;
        <asp:Label ID="lblMarcaAnt" runat="server"></asp:Label>
        </p>

        <p>
        <asp:Label ID="lblSaldoCTi" runat="server" Text="Saldo capital e intereses:" Visible="False"></asp:Label>
        &nbsp;&nbsp;
        <asp:Label ID="lblSaldoC" runat="server"></asp:Label>
        </p>

        <p>
        <asp:Label ID="lblDiasMoraTi" runat="server" Text="Dias de mora:" Visible="False"></asp:Label>
        &nbsp;&nbsp;
        <asp:Label ID="lblDiasMora" runat="server"></asp:Label>
        </p>

      </div>
      <div class="column" style="background-color:#FFFF">
        
        <p>
        <asp:Label ID="lblTasIntTi" runat="server" Text="Tasa de interes:" Visible="False"></asp:Label>
        &nbsp;
        <asp:Label ID="lbltasInt" runat="server"></asp:Label>
        </p>

        <p>
        <asp:Label ID="lblPlazomesti" runat="server" Text="Plazo meses:" Visible="False"></asp:Label>
        &nbsp;
        <asp:Label ID="lblPlazomes" runat="server"></asp:Label>
        </p>

        <p>      
        <asp:Label ID="lblcuotAntTi" runat="server" Text="Cuota condicion:" Visible="False"></asp:Label>
        &nbsp;
            <asp:Label ID="lblcuotAnt" runat="server"></asp:Label>
        </p>

        <p>
        <asp:Label ID="lblFechaProti" runat="server" Text="Fecha proyectada:" Visible="False"></asp:Label>
        &nbsp;
        <asp:Label ID="lblFechaPro" runat="server"></asp:Label>
        </p>

        <p>
        <asp:Label ID="lblNoModTi" runat="server" Text="Numero de modificaciones:" Visible="False"></asp:Label>
        &nbsp;
        <asp:Label ID="lblNoMod" runat="server"></asp:Label>
        </p>

      </div>
    </div>
    </div>
    
    
    <p>
    </p>
    <div id="invisipanel" runat="server">
    <asp:Panel ID="pnlModMarca" runat="server" BorderColor="Black" BorderStyle="Solid" Height="185px" Width="834px" Visible="False">
        <br />
        <br />
        <br />
        <p>
        <asp:Label ID="lblMotivoTi" runat="server" Visible="False">Motivo de modificacion:</asp:Label>
        &nbsp;&nbsp;
        <asp:TextBox ID="txbMotivo" runat="server" OnTextChanged="txbMotivo_TextChanged" Visible="False"></asp:TextBox>
        </p>

        <br />
        <br />


        <style>
    
        .columnb {
          float: left;
          width: 50%;
          padding: 10px;
        }

        </style>

       <div class="row">
       <div class="columnb" style="background-color:#FFFF;">
           &nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnmodmarca" runat="server" Text="Modificar marca" OnClick="btnmodmarca_Click" Visible="False" />
       </div>
       <div class="columnb" style="background-color:#FFFF">
           &nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnCancelar" runat="server" Text="Cancelar" OnClick="btnCancelar_Click" Visible="False" />
           <br />
           <br />
           <br />
           <br />
          
       </div>
       </div>
    </asp:Panel>
    </div>
    <p>
        &nbsp;
         <asp:Label ID="lblPrueba_borrar" runat="server"></asp:Label>
    </p>

    <asp:ValidationSummary runat=server 
    ClientValidationFunction="changeColor" ForeColor="Red"
    HeaderText="Hubo errores en la pagina:" />
</asp:Content>
