<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Cuenta-Reservas.aspx.cs" Inherits="SistemaTurismoReal.Cuenta_Reservas" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Mi cuenta</title>
    <link href="css/Estilo.css" rel="stylesheet" type="text/css"/>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Didact+Gothic&family=Lobster&display=swap" rel="stylesheet">
    <script src="https://kit.fontawesome.com/a076d05399.js"></script>
</head>
<body>
    <div class="container" >
            <div class="row" >
                <nav>  
            <input type="checkbox" id="check"/>
            <label for="check" class="checkbtn">
                <i class="fas fa-bars">
                </i>
            </label>
            <asp:Label Text="Turismo Real" CssClass="logo" runat="server" />
            <ul>
                <li>
                    <a href="/Index2">Home</a>
                </li>
                <li>
                    <a href="/Servicios">Servicios</a>
                </li>
                <li>
                    <a href="/Index2">Reservar</a>
                </li><li>
                    <a href="/Cuenta-datos" class="active">Mi cuenta</a>
                </li>
            </ul>
        </nav>
            </div>
            <form id="form1" runat="server">
            <div class="row">
                <div class="container-1">
                    <h5 style="font-size:30px; margin-bottom:10px;">¡Bienvenido!</h5>
                    <asp:Label ID="Lbl_Nombre_Usuario" Text="[Nombre]" runat="server" />
                </div>
            </div>
                <div class="row">
                    <div class="container-2">
                        <div class="row-1" style="margin-top:14px;">
                            <asp:Button ID="Btn_Mis_Datos" CssClass="btn" Text="Mis datos" runat="server" OnClick="Btn_Mis_Datos_Click"/>
                        </div>
                        <div class="row-1">
                            <asp:Button ID="Btn_Mis_Reservas" CssClass="btn-active" Text="Mis reservas" runat="server"/>
                        </div>
                        <div class="row-1">
                            <asp:Button ID="Btn_Servicio_Extra" CssClass="btn" Text="Servicios Extra" runat="server" OnClick="Btn_Servicio_Extra_Click"/>
                        </div>
                        <div class="row-1">
                            <asp:Button ID="Btn_Cambiar_Clave" CssClass="btn" Text="Cambiar contraseña" runat="server" OnClick="Btn_Cambiar_Clave_Click"/>
                        </div>
                    </div>
                    <div class="container-3">
                        <div class="row">
                            <h5 style="font-size:20px; float: left;">Mis reservas</h5>
                        </div>
                        <div style="margin-top: 10px; width:100%; border: 3px solid white; padding:10px; overflow:scroll; height:400px;" >
                            <asp:GridView ID="GridLibros" runat="server" CssClass="gridview" BackColor="#0B5345" BorderStyle="None" BorderWidth="1px" CellPadding="2" CellSpacing="2" >
                                <AlternatingRowStyle Wrap="False" />
                                <HeaderStyle BackColor="#117A65" Font-Bold="True" ForeColor="White" />
                                <PagerStyle ForeColor="#117A65" HorizontalAlign="Center" />
                                <RowStyle BackColor="white" ForeColor="black" Wrap="false" />
                                <SelectedRowStyle BackColor="#117A65" Font-Bold="True" ForeColor="White" />
                                <SortedAscendingCellStyle BackColor="#FFF1D4" />
                                <SortedAscendingHeaderStyle BackColor="#B95C30" />
                                <SortedDescendingCellStyle BackColor="#F1E5CE" />
                                <SortedDescendingHeaderStyle BackColor="#93451F" />
                            </asp:GridView>
                       </div>
                    <div class="fila">
                                <div class="columna-1" style=" padding:5px; width:50%;">
                                    <asp:Button ID="Btn_Modificar_Reserva" CssClass="btn" Text="Modificar Reserva" runat="server" OnClick="Btn_Modificar_Reserva_Click"/>
                                </div>
                                <div class="columna-1" style="width:50%; padding:5px;">
                                    <asp:Button ID="Btn_Cancelar_Reserva" CssClass="btn" Text="Cancelar Reserva" runat="server" />
                                </div>

                       </div>
                        </div>
                    </div>
                
            </form>
            </div>
</body>
</html>
