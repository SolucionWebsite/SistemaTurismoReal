<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Cuenta-Datos.aspx.cs" Inherits="SistemaTurismoReal.MiCuenta" %>

<!DOCTYPE html>
<meta http-equiv="Content-Security-Policy" 
      content="default-src: 'https:'
                            'self';
               script-src https://kit.fontawesome.com/a076d05399.js 
                          'self' 
                          'sha256-v8v3RKRPmN4odZ1CWM5gw80QKPCCWMcpNeOmimNL2AA=' 
                          'unsafe-eval';
               style-src https://fonts.googleapis.com/css2?family=Didact+Gothic&family=Lobster&display=swap
                         'self'
                         'unsafe-inline';">

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
                    <asp:Label ID="Comuna" Text="[Nombre]" runat="server" />
                </div>
            </div>
                <div class="row">
                    <div class="container-2">
                        <div class="row-1" style="margin-top:14px;">
                            <asp:Button ID="Btn_Mis_Datos" CssClass="btn-active" Text="Mis datos" runat="server"/>
                        </div>
                        <div class="row-1">
                            <asp:Button ID="Btn_Mis_Reservas" CssClass="btn" Text="Mis reservas" runat="server" OnClick="Btn_Mis_Reservas_Click" />
                        </div>
                        <div class="row-1">
                            <asp:Button ID="Btn_Servicio_Extra" CssClass="btn" Text="Servicios Extra" runat="server" OnClick="Btn_Servicio_Extra_Click" />
                        </div>
                        <div class="row-1">
                            <asp:Button ID="Btn_Cambiar_Clave" CssClass="btn" Text="Cambiar contraseña" runat="server" OnClick="Btn_Cambiar_Clave_Click"/>
                        </div>
                    </div>
                    <div class="container-3">
                        <div class="row">
                            <h5 style="font-size:20px; float: left; margin-bottom:30px;">Información cliente</h5>
                        </div>
                        <div style="margin-top: 30px; border: 3px solid white; padding:10px;">
                            <div class="fila">
                                <div class="columna-1">
                                    Nombre:
                                </div>
                                <div class="columna-2">
                                    <asp:TextBox ID="Txt_Nombre" Enabled="false" CssClass="form-control"  runat="server" />
                                    <asp:RegularExpressionValidator  runat="server" ErrorMessage="No se permiten carácteres especiales" 
                                    ValidationExpression="^[a-z A-Z ñÑ]*$" ControlToValidate="Txt_Nombre" Display="Dynamic" ForeColor="#A2D9CE" 
                                    ValidationGroup="Validador1"></asp:RegularExpressionValidator>
                                    <asp:RequiredFieldValidator runat="server" ErrorMessage="Olvidaste ingresar tu nombre" 
                                    ControlToValidate="Txt_Nombre" Display="Dynamic" ForeColor="#A2D9CE" ValidationGroup="Validador1">

                                    </asp:RequiredFieldValidator>
                                
                                    </div>
                                <div class="columna-1">
                                    Apellido Paterno:
                                </div>
                                <div class="columna-2">
                                    <asp:TextBox ID="Txt_Apellido_P" Enabled="false" CssClass="form-control"  runat="server" />
                                    <asp:RegularExpressionValidator  runat="server" ErrorMessage="No se permiten carácteres especiales" ValidationExpression="^[a-z A-Z ñÑ]*$" ControlToValidate="Txt_Apellido_P" Display="Dynamic" ForeColor="#A2D9CE" ValidationGroup="Validador1"></asp:RegularExpressionValidator>
                                    <asp:RequiredFieldValidator runat="server" ErrorMessage="Olvidaste ingresar tu apellido" ControlToValidate="Txt_Apellido_P" Display="Dynamic" ForeColor="#A2D9CE" ValidationGroup="Validador1"></asp:RequiredFieldValidator>
                                
                                </div>
                            </div>
                            <div class="fila">
                                <div class="columna-1">
                                    Apellido materno:
                                </div>
                                <div class="columna-2">
                                    <asp:TextBox ID="Txt_Apellido_M" Enabled="false" CssClass="form-control"  runat="server" />
                                    <asp:RegularExpressionValidator  runat="server" ErrorMessage="No se permiten carácteres especiales" ValidationExpression="^[a-z A-Z ñÑ]*$" ControlToValidate="Txt_Apellido_M" Display="Dynamic" ForeColor="#A2D9CE" ValidationGroup="Validador1"></asp:RegularExpressionValidator>
                                    <asp:RequiredFieldValidator runat="server" ErrorMessage="Olvidaste ingresar tu apellido" ControlToValidate="Txt_Apellido_M" Display="Dynamic" ForeColor="#A2D9CE" ValidationGroup="Validador1"></asp:RequiredFieldValidator>
                                
                                </div>
                                <div class="columna-1">
                                    Correo:
                                </div>
                                <div class="columna-2">
                                    <asp:TextBox ID="Txt_Correo"  Text="" TextMode="Email" Enabled="false"  CssClass="form-control"  runat="server" />
                                    <asp:RequiredFieldValidator runat="server" ErrorMessage="Olvidaste ingresar tu correo" ControlToValidate="Txt_Correo" Display="Dynamic" ForeColor="#A2D9CE" ValidationGroup="Validador1"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator  runat="server" ErrorMessage="Ingresa un correo válido" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="Txt_Apellido_M" Display="Dynamic" ForeColor="#A2D9CE" ValidationGroup="Validador1"></asp:RegularExpressionValidator>
                                    
                                </div>
                            </div>
                            <div class="fila">
                                <div class="columna-1">
                                    Rut:
                                </div>
                                <div class="columna-2">
                                    <asp:TextBox ID="Txt_Rut" Enabled="false"  CssClass="form-control"  runat="server" />
                                    <asp:RegularExpressionValidator  runat="server" ErrorMessage="Olidaste puntos y guión" ValidationExpression="^(\d{1,3}(\.?\d{3}){2})\-?([\dkK])$" ControlToValidate="Txt_Rut" Display="Dynamic" ForeColor="#A2D9CE" ValidationGroup="Validador1"></asp:RegularExpressionValidator>
                                    <asp:RequiredFieldValidator runat="server" ErrorMessage="Olvidaste ingresar tu rut" ControlToValidate="Txt_Rut" Display="Dynamic" ForeColor="#A2D9CE" ValidationGroup="Validador1"></asp:RequiredFieldValidator>
                                
                                </div>
                                <div class="columna-1">
                                    Género:
                                </div>
                                <div class="columna-2">
                                    <asp:DropDownList ID="Cmb_Genero" Enabled="false" CssClass="form-control" runat="server">
                                        <asp:ListItem Text="text1" />
                                        <asp:ListItem Text="text2" />
                                    </asp:DropDownList>
                                </div>
                            </div>
                            <div class="fila">
                                <div class="columna-1">
                                    Teléfono:
                                </div>
                                <div class="columna-2">
                                    <asp:TextBox TextMode="Number" MaxLength="9" ID="Txt_Telefono" Enabled="false"  CssClass="form-control"  runat="server" />
                                </div>
                                <div class="columna-1">
                                    Nacionalidad:
                                </div>
                                <div class="columna-2">
                                    <asp:DropDownList ID="Cmb_Nacionalidad" Enabled="false" CssClass="form-control" runat="server">
                                        <asp:ListItem Text="text1" />
                                        <asp:ListItem Text="text2" />
                                    </asp:DropDownList>
                                </div>
                            </div>
                            <div class="fila">
                                <div class="columna-1">
                                    Fecha nacimiento:
                                </div>
                                <div class="columna-2">
                                    <asp:TextBox TextMode="Date" ID="Txt_Fecha_Nacimiento" Enabled="false" CssClass="form-control"  runat="server" />
                            
                                </div>
                            </div>
                        </div>
                        <div class="fila">
                                <div class="columna-1" style=" padding:5px; width:50%;">
                                    <asp:Button ID="Btn_Editar" CssClass="btn" Text="Editar" runat="server" OnClick="Btn_Editar_Click"/>
                                </div>
                                <div class="columna-1" style="width:50%; padding:5px;">
                                    <asp:Button CssClass="btn" Text="Guardar" ValidationGroup="Validador1" runat="server" />
                                </div>

                       </div>
                    </div>
                </div>
                
            </form>
            </div>
</body>
</html>
