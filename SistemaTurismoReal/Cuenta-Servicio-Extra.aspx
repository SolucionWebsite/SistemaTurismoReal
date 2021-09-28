<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Cuenta-Servicio-Extra.aspx.cs" Inherits="SistemaTurismoReal.Cuenta_Servicio_Extra" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Mi cuenta</title>
    <link href="css/Estilo.css" rel="stylesheet" type="text/css"/>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Didact+Gothic&family=Lobster&display=swap" rel="stylesheet">
    <script src="https://kit.fontawesome.com/a076d05399.js"></script>
    <script src="js/sweetAlert2.js" ></script>
    <link href="//cdn.jsdelivr.net/npm/@sweetalert2/theme-minimal@4/minimal.css" rel="stylesheet">
    <script src="//cdn.jsdelivr.net/npm/sweetalert2@11/dist/sweetalert2.min.js"></script>
    <link rel="stylesheet" href="@sweetalert2/themes/minimal/minimal.css">
    <script src="sweetalert2/dist/sweetalert2.min.js"></script>
    <script>
        function Olvidar_Selecccionar_Reserva() {
            Swal.fire({
                  icon: 'warning',
                  title: 'Oops...',
                  text: 'Olvidaste seleccionar una reserva!',
                  iconColor: '#117A65',
                  confirmButtonColor: '#117A65'
                })
        }
        function Olvidar_Selecccionar_Servicio() {
            Swal.fire({
                  icon: 'warning',
                  title: 'Oops...',
                  text: 'Olvidaste seleccionar una servicio extra!',
                  iconColor: '#117A65',
                  confirmButtonColor: '#117A65'
                })
        }
    </script>
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
                    <asp:Label ID="Comuna" Text="[Nombre]" runat="server" />
                </div>
            </div>
                <div class="row">
                    <div class="container-2">
                        <div class="row-1" style="margin-top:14px;">
                            <asp:Button ID="Btn_Mis_Datos" CssClass="btn" Text="Mis datos" runat="server" OnClick="Btn_Mis_Datos_Click"/>
                        </div>
                        <div class="row-1">
                            <asp:Button ID="Btn_Mis_Reservas" CssClass="btn" Text="Mis reservas" runat="server" OnClick="Btn_Mis_Reservas_Click"/>
                        </div>
                        <div class="row-1">
                            <asp:Button ID="Btn_Servicio_Extra" CssClass="btn-active" Text="Servicios Extra" runat="server"/>
                        </div>
                        <div class="row-1">
                            <asp:Button ID="Btn_Cambiar_Clave" CssClass="btn" Text="Cambiar contraseña" runat="server" OnClick="Btn_Cambiar_Clave_Click"/>
                        </div>
                    </div>
                    <div class="container-3" style="height:100%">
                        <div class="row">
                            <h5 style="font-size:20px; float: left; margin-bottom:30px;">Servicios extra</h5>
                        </div>
                        <div style="margin-top: 30px; border: 3px solid white; padding:10px; padding-bottom:25px;">
                            <div class="fila" style="height:100%">
                                <div class="columna-1" style="width:50%; height:100%; padding:5px;">
                                    <div class="fila" style="width:100%" >
                                        <div class="columna-1" style="width:46%; padding:10px;" >
                                        Selecciona una reserva:
                                    </div>
                                    <div class="columna-2" style="width:54%; padding:0px;">
                                        <asp:DropDownList ID="Cmb_reserva" AutoPostBack="true" CssClass="form-control" runat="server">
                                        <asp:ListItem Text="Seleccionar" />
                                        <asp:ListItem Text="text2" />
                                    </asp:DropDownList>
                                    </div>
                                    </div>
                                    <div class="fila" style="height:100%">
                                        Servicios extras asociados a la reserva: 
                                    </div>
                                    <div class="fila" style="height:100%">
                                        Tour
                                    </div>
                                    <div class="fila" style="border: 5px solid green; border:3px solid white; overflow:scroll; height:100px;">
                                        <asp:GridView ID="Grid_Tour" runat="server" CssClass="gridview" BackColor="#0B5345" BorderStyle="None" BorderWidth="1px" CellPadding="2" CellSpacing="2" >
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
                                    <div class="fila" style="height:100%">
                                        Transporte
                                    </div>
                                    <div class="fila" style="border: 5px solid green; border:3px solid white; overflow:scroll; height:100px;">
                                        <asp:GridView ID="Grid_Transporte" runat="server" CssClass="gridview" BackColor="#0B5345" BorderStyle="None" BorderWidth="1px" CellPadding="2" CellSpacing="2" >
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
                                        <div class="columna-1" style="width:33.33%; padding:10px;">
                                            <asp:Button ID="Btn_Agregar" CssClass="btn" Text="Agregar" runat="server" ToolTip="Agregar servicio extra a la reserva" OnClick="Btn_Agregar_Click" />
                                        </div>
                                        <div class="columna-2" style="width:33.33%">
                                            <asp:Button ID="Btn_Modificar" CssClass="btn" Text="Modificar" runat="server" ToolTip="Modificar servicio extra seleccionado" OnClick="Btn_Modificar_Click" />
                                        </div>
                                        <div class="columna-2" style="width:33.33%">
                                          <asp:Button ID="Btn_Cancelar" CssClass="btn" Text="Cancelar" runat="server" ToolTip="Cancelar servicio extra seleccionado" />
                                        </div>
                                    </div>
                                </div>
                                <div class="columna-2" style="border: 2px solid white; width:49%; margin-left:5px;">
                                    <asp:Panel ID="Panel_Seleccionar_Servicio" Visible="false" runat="server">
                                        <div class="fila" style="width:100%;">
                                        <div class="columna-1" style="width:47%;">
                                            Seleccionar servicio extra
                                        </div>
                                        <div class="columna-2" style="width:53%;">
                                            <asp:DropDownList ID="Cmb_Servicio_Extra" AutoPostBack="true" CssClass="form-control" runat="server" OnSelectedIndexChanged="Cmb_Servicio_Extra_SelectedIndexChanged">
                                                <asp:ListItem Text="Seleccionar tipo" />
                                                <asp:ListItem Text="Tour guíado" />
                                                <asp:ListItem Text="Transporte" />
                                            </asp:DropDownList>
                                        </div>
                                    </div>
                                    </asp:Panel>
                                    
                                    <asp:Panel ID="Panel_Tour" Visible="false" runat="server">
                                        <div class="fila" style="width:100%;">
                                        <div class="columna-1" style="width:47%;">
                                            Fecha
                                        </div>
                                        <div class="columna-2" style="width:53%;">
                                            <asp:TextBox TextMode="Date" ID="Txt_Fecha" CssClass="form-control" runat="server"/>
                                        </div>
                                    </div>
                                    <div class="fila" style="width:100%;">
                                        <div class="columna-1" style="width:47%;">
                                            Cantidad asistentes
                                        </div>
                                        <div class="columna-2" style="width:53%;">
                                            <asp:TextBox TextMode="Number" ID="Txt_Asistentes_Tour" CssClass="form-control" runat="server"/>
                                        </div>
                                    </div>
                                    <div class="fila" style="width:100%;">
                                        <div class="columna-1" style="width:47%;">
                                            Valor total por día:
                                        </div>
                                        <div class="columna-2" style="width:53%; padding-top:14px;">
                                            <asp:Label style="padding-left:2px; margin-top:20px;" Text="text" runat="server" />
                                        </div>
                                    </div>
                                        <div class="fila" style="width:100%;">
                                        <div class="columna-1" style="width:47%;">
                                            Lugar a visitar:
                                        </div>
                                        <div class="columna-2" style="width:53%; padding-top:14px;">
                                            <asp:Label style="padding-left:2px; margin-top:20px;" Text="text" runat="server" />
                                        </div>
                                    </div>
                                    </asp:Panel>
                                    <asp:Panel ID="Panel_Transporte" Visible="false" runat="server">
                                        <div class="fila" style="width:100%;">
                                        <div class="columna-1" style="width:47%;">
                                            Trayecto
                                        </div>
                                        <div class="columna-2" style="width:53%;">
                                            <asp:DropDownList CssClass="form-control" ID="Cmb_Trayecto" runat="server">
                                                <asp:ListItem Text="Seleccionar" />
                                                <asp:ListItem Text="Ida" />
                                                <asp:ListItem Text="Vuelta" />
                                            </asp:DropDownList>
                                        </div>
                                    </div>
                                        <div class="fila" style="width:100%;">
                                        <div class="columna-1" style="width:47%;">
                                            Fecha
                                        </div>
                                        <div class="columna-2" style="width:53%;">
                                            <asp:TextBox TextMode="DateTime" ID="TextBox4" CssClass="form-control" runat="server" ToolTip="Seleccionar fecha de uso del tour" />
                                        </div>
                                    </div>
                                        <div class="fila" style="width:100%;">
                                        <div class="columna-1" style="width:47%;">
                                            Hora
                                        </div>
                                        <div class="columna-2" style="width:53%;">
                                            <asp:TextBox TextMode="Time"  ID="TextBox2" CssClass="form-control" runat="server" ToolTip="Seleccionar fecha de uso del tour" />
                                        </div>
                                    </div>
                                    <div class="fila" style="width:100%;">
                                        <div class="columna-1" style="width:47%;">
                                            Cantidad viajeros
                                        </div>
                                        <div class="columna-2" style="width:53%;">
                                            <asp:TextBox TextMode="Number" ID="TextBox3" CssClass="form-control" runat="server" ToolTip="Seleccionar cantidad personas que asistirán al tour" />
                                        </div>
                                    </div>
                                    <div class="fila" style="width:100%;">
                                        <div class="columna-1" style="width:47%;">
                                            Tipo de vehículo
                                        </div>
                                        <div class="columna-2" style="width:53%;">
                                            <asp:DropDownList CssClass="form-control" ID="Cmb_Tipo_Vehiculo" AutoPostBack="true" runat="server">
                                                <asp:ListItem Text="Seleccionar" />
                                                <asp:ListItem Text="Bus - 1-30 personas" />
                                                <asp:ListItem Text="Van - 1-10 personas" />
                                                <asp:ListItem Text="Auto - 1-5 personas" />
                                            </asp:DropDownList>
                                        </div>
                                    </div>
                                    <div class="fila" style="width:100%;">
                                        <div class="columna-1" style="width:47%;">
                                            Valor total por trayecto:
                                        </div>
                                        <div class="columna-2" style="width:53%; padding-top:14px;">
                                            <asp:Label style="padding-left:2px; margin-top:20px;" Text="text" runat="server" />
                                        </div>
                                    </div>
                                    </asp:Panel>
                                    <asp:Panel ID="Panel_Btn_Contratar" Visible="false" runat="server">
                                         <div class="fila">
                                            <asp:Button ID="Btn_Contratar" CssClass="btn" Text="Contratar servicio" runat="server" />
                                        </div>
                                        </asp:Panel>
                                        <asp:Panel ID="Panel_Btn_Modificar" Visible="false" runat="server">
                                         <div class="fila">
                                            <asp:Button ID="Btn_Guardar_Modificar" CssClass="btn" Text="Guardar cambios" runat="server" />
                                        </div>
                                        </asp:Panel>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                
            </form>
            </div>
</body>
</html>

