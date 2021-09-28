<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Cuenta-Modificar-Reserva.aspx.cs" Inherits="SistemaTurismoReal.Cuenta_Modificar_Reserva" %>

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
                    <a href="/Index1">Home</a>
                </li>
                <li>
                    <a href="/Servicios">Servicios</a>
                </li>
                <li>
                    <a href="/Index1">Reservar</a>
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
                            <asp:Button ID="Btn_Mis_Datos" CssClass="btn" Text="Mis datos" runat="server" OnClick="Btn_Mis_Datos_Click" />
                        </div>
                        <div class="row-1">
                            <asp:Button ID="Btn_Mis_Reservas" CssClass="btn-active" Text="Mis reservas" runat="server" />
                        </div>
                        <div class="row-1">
                            <asp:Button ID="Btn_Servicio_Extra" CssClass="btn" Text="Servicios Extra" runat="server" OnClick="Btn_Servicio_Extra_Click" />
                        </div>
                        <div class="row-1">
                            <asp:Button ID="Btn_Cambiar_Clave" CssClass="btn" Text="Cambiar contraseña" runat="server" OnClick="Btn_Cambiar_Clave_Click" />
                        </div>
                    </div>
                    <asp:Panel ID="Panel_Container" class="container-3" runat="server">
                        
                        <div class="row" style="text-align:center;">
                            <h5 style="font-size:20px; margin-bottom:10px;">Modificar Reserva</h5>
                        </div>
                        <div class="row" style="text-align:center;">
                            <asp:Panel runat="server">
                                <div class="container-blanco" style="border:3px solid white;">
                                <div class="row" style="text-align:center;">
                                    ¿Qué deseas modificar de la reserva?
                                </div>
                            <div class="row" style="text-align:center; margin-top:10px; margin-bottom:10px;">
                                    <asp:DropDownList class="form-control" AutoPostBack="true" ID="Cmb_Opciones" runat="server"  ToolTip="Seleccionar" OnSelectedIndexChanged="Cmb_Opciones_SelectedIndexChanged">
                                    <asp:ListItem>Seleccione</asp:ListItem>
                                    <asp:ListItem>Acompañantes</asp:ListItem>
                                    <asp:ListItem>Fecha ida/vuelta</asp:ListItem>
                                    <asp:ListItem>Departamento</asp:ListItem>
                                    </asp:DropDownList>
                            </div>
                                    <asp:Panel ID="Panel_Acompañantes" Visible="false" runat="server">
                                        <div class="fila" style="height:120px;">
                                        <div class="columna-1" style="width:50%;">
                                            Lista de acompañantes:
                                        </div>
                                        <div class="columna-2" style="width:50%;">
                                            <asp:ListBox CssClass="form-control" style=" height:100px;" runat="server">
                                                <asp:ListItem Text="" />
                                                <asp:ListItem Text="" />
                                            </asp:ListBox>
                                           </div>
                                        </div>
                                        <div class="fila">
                                        <div class="columna-1" style="width:33.33%; padding:10px;">
                                            <asp:Button ID="Btn_Eliminar" CssClass="btn" Text="Eliminar" runat="server" />
                                        </div>
                                        <div class="columna-2" style="width:33.33%;">
                                            <asp:Button ID="Btn_Añadir" CssClass="btn" Text="Añadir" runat="server" OnClick="Btn_Añadir_Click" />
                                        </div>
                                        <div class="columna-2" style="width:33.33%;">
                                            <asp:Button ID="Btn_Modificar" CssClass="btn" Text="Modificar" runat="server" />
                                        </div>
                                    </div>
                                        <asp:Panel ID="Panel_Agregar_Acompañante" Visible="false" runat="server">
                                            <div class="fila">
                                        <div class="columna-1" style="width:50%;">
                                            Nombre:
                                        </div>
                                        <div class="columna-2" style="width:50%;">
                                            <asp:TextBox  CssClass="form-control"  runat="server" />
                                        </div>
                                    </div>
                                            <div class="fila">
                                        <div class="columna-1" style="width:50%;">
                                            Apellido Paterno:
                                        </div>
                                        <div class="columna-2" style="width:50%;">
                                            <asp:TextBox CssClass="form-control"  runat="server" />
                                        </div>
                                    </div>
                                            <div class="fila">
                                        <div class="columna-1" style="width:50%;">
                                            Apellido Materno:
                                        </div>
                                        <div class="columna-2" style="width:50%;">
                                            <asp:TextBox CssClass="form-control"  runat="server" />
                                        </div>
                                    </div>
                                            <div class="fila">
                                        <div class="columna-1" style="width:50%;">
                                            Teléfono:
                                        </div>
                                        <div class="columna-2" style="width:50%;">
                                            <asp:TextBox CssClass="form-control"  runat="server" />
                                        </div>
                                    </div>
                                            <div class="fila">
                                        <div class="columna-1" style="width:50%;">
                                            Fecha de Nacimiento:
                                        </div>
                                        <div class="columna-2" style="width:50%;">
                                            <asp:TextBox CssClass="form-control"  runat="server" />
                                        </div>
                                    </div>
                                            <div class="fila">
                                        <div class="columna-1" style="width:50%;">
                                            Correo:
                                        </div>
                                        <div class="columna-2" style="width:50%;">
                                            <asp:TextBox CssClass="form-control"  runat="server" />
                                        </div>
                                    </div>
                                            <div class="fila">
                                        <div class="columna-1" style="width:50%;">
                                            Género:
                                        </div>
                                        <div class="columna-2" style="width:50%;">
                                            <asp:TextBox CssClass="form-control"  runat="server" />
                                        </div>
                                    </div>
                                            <div class="fila">
                                        <div class="columna-1" style="width:50%;">
                                            Nacionalidad:
                                        </div>
                                        <div class="columna-2" style="width:50%;">
                                            <asp:TextBox CssClass="form-control"  runat="server" />
                                        </div>
                                    </div>
                                        </asp:Panel>
                                    </asp:Panel>
                                    <asp:Panel ID="Panel_Departamento" Visible="false" runat="server">
                                        <div class="fila" style="height:120px;">
                                        <div class="columna-1" style="width:50%;">
                                            Departamentos disponibles según fecha ingresada:
                                        </div>
                                        <div class="columna-2" style="width:50%;">
                                            <asp:ListBox CssClass="form-control" style=" height:100px;" runat="server">
                                                <asp:ListItem Text="" />
                                                <asp:ListItem Text="" />
                                            </asp:ListBox>
                                           </div>
                                        </div>
                                    </asp:Panel>
                                    <asp:Panel ID="Panel_Fecha" Visible="false" runat="server">
                                        <div class="fila">
                                        <div class="columna-1" style="width:50%;">
                                            Fecha ida:
                                        </div>
                                        <div class="columna-2" style="width:50%;">
                                            <asp:TextBox Textmode="Date" style="height:40px;" CssClass="form-control"  runat="server" />
                                        </div>
                                    </div>
                                        <div class="fila">
                                        <div class="columna-1" style="width:50%;">
                                            Fecha vuelta:
                                        </div>
                                        <div class="columna-2" style="width:50%;">
                                            <asp:TextBox Textmode="Date" style="height:40px;" CssClass="form-control"  runat="server" />
                                        </div>
                                    </div>
                                    </asp:Panel>
                                    <br />
                                    <asp:Panel ID="Panel_Guardar" Visible="false" runat="server">
                                        <div class="fila">
                                            <div class="columna-1" style=" padding:5px; width:100%;">
                                                <asp:Button CssClass="btn" Text="Guardar cambios" runat="server" />
                                            </div>

                                        </div>
                                    </asp:Panel>
                            
                        </div>

                            </asp:Panel>
                        </div>
                    </asp:Panel>
                </div>
            </form>
            </div>
</body>
</html>
