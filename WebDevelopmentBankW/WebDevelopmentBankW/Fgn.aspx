<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Fgn.aspx.cs" Inherits="WebDevelopmentBankW.Fgn" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <script type="text/javascript">
        $(document).ready(function () {
            $("#btnCargar").click(function (event) {
                var files = $("#fuparchivo")[0].files;
                if (files.length > 0) {
                    var formData = new FormData();
                    for (var i = 0; i < files.length; i++) {
                        formData.append(files[i].name, files[i]);
                    }

                    var progressbarLabel = $('#progressbar_lbl');
                    var progressbarDiv = $('#progressbar');

                    $.ajax({
                        url: 'ProcesarRespuesat.ashx.cs',
                        method: 'post',
                        data: formData,
                        contentType: false,
                        processData: false,
                        success: function () {
                            progressbarLabel.text('Completado');
                            progressbarDiv.fadeOut(2000);
                        },
                        error: function (err) {
                            alert(err.statusText);
                        }
                    });

                    progressbarLabel.text('Cargando...');
                    progressbarDiv.progressbar({
                        value: false
                    }).fadeIn(500);
                }
            });
        });

    </script>
    
    <p>
        <br />
    </p>
    <p>
    </p>
    <p>
        <asp:Label ID="Label1" runat="server" Text="Archivo"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:FileUpload ID="fuparchivo" runat="server" AllowMultiple="true"/>

    </p>
    <p>
        <asp:Button ID="btnUpload" runat="server" Text="Subir" />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnCargar" runat="server" Text="Cargar" />
    </p>
    <div style="width:300px">
        <div id="progressbar" style="position:relative; display:none">
            <span id="progressbar_lbl" style="position:absolute; left:25%; top: 20%"> Cargando...

            </span>
        </div> 
    </div>
        <p>
        <asp:Label runat="server" id="lblEstado" />
    </p>
    <p>
        <asp:Label ID="lblmostrar" runat="server"></asp:Label>
    </p>
    <p>
    </p>
    <p>
    </p>
</asp:Content>
