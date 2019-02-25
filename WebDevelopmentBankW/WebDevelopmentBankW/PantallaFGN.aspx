<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PantallaFGN.aspx.cs" Inherits="WebDevelopmentBankW.PantallaFGN" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Trying Out Functionality</title>
</head>
<body>

    <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>

    <form id="form1" runat="server">
        <div>
        </div>
            <p>
               <center>
               <H1> 
                
               Pagos a capital con FNG></H1></center>
                   <p> 
                
                       <asp:Label ID="lblCargar" runat="server" Text="Cargar archivo"></asp:Label>
                        &nbsp; &nbsp;
                       
                       <asp:TextBox ID="txbcarga" runat="server"></asp:TextBox>
                        &nbsp; &nbsp;

                       
                       <asp:Button ID="btnCargar" runat="server" OnClick="btnCargar_Click" Text="Cargar" />

                       
                   </p>
                   <p> 
                
                       <asp:Label ID="lblprog" runat="server" Text="Progreso"></asp:Label>
&nbsp; </p>
                   
                
            <asp:UpdateProgress ID="UpdateProgress1" runat="server">
        </asp:UpdateProgress>
                   
                
            <br />
        <br />
        <br />
        <asp:Label ID="lblaviso" runat="server" Visible="False"></asp:Label>
        <br />
        </p>
    </form>
</body>
</html>
