<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registro.aspx.cs" Inherits="SistemaTurismoReal.Registro" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Registro</title>
    <link href="css/Estilo.css" rel="stylesheet" type="text/css"/>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Didact+Gothic&family=Lobster&display=swap" rel="stylesheet">
    <script src="https://kit.fontawesome.com/a076d05399.js"></script>
    <style type="text/css">
        .auto-style1 {
            justify-content: flex-start;
            font-size: 22px;
            width: 185px;
        }
    </style>
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
                    <a href="#">Servicios</a>
                </li>
                <li>
                    <a href="#">Reservar</a>
                </li><li>
                    <a href="/Login">Log in</a>
                </li>
            </ul>
        </nav>
            </div>
            <div class="row" >
                <form id="form1" runat="server">
                    <div class="container-main" style="margin-top:0px;">
                        <div class="card" style="margin: 20px;">
                            <h5>Regístrate</h5>
                            <table class="tabla" >
                                <tr>
                                    <td class="auto-style1">Primer nombre</td>
                                    <td>
                                        <asp:TextBox runat="server" placeholder="Ingresa tu nombre" class="form-control" type="texbox" ID="TxtNombre" />
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TxtNombre" Display="Dynamic" ErrorMessage="Olvidaste ingresar tu nombre" ForeColor="#A2D9CE" ValidationGroup="Validador"></asp:RequiredFieldValidator>
                                        <asp:RegularExpressionValidator  runat="server" ErrorMessage="No se permiten carácteres especiales" 
                                        ValidationExpression="^[a-z A-Z ñÑ]*$" ControlToValidate="TxtNombre" Display="Dynamic" ForeColor="#A2D9CE" 
                                        ValidationGroup="Validador1"></asp:RegularExpressionValidator>
                                        
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style1">Apellido paterno</td>
                                    <td>
                                        <asp:TextBox runat="server" placeholder="Ingresa tu apellido paterno" class="form-control" type="texbox" ID="TxtApellidoP" />
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TxtApellidoP" Display="Dynamic" ErrorMessage="Olvidaste ingresar tu apellido paterno" ForeColor="#A2D9CE" ValidationGroup="Validador"></asp:RequiredFieldValidator>
                                        <asp:RegularExpressionValidator  runat="server" ErrorMessage="No se permiten carácteres especiales" 
                                        ValidationExpression="^[a-z A-Z ñÑ]*$" ControlToValidate="TxtApellidoP" Display="Dynamic" ForeColor="#A2D9CE" 
                                        ValidationGroup="Validador1"></asp:RegularExpressionValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style1">Apellido materno</td>
                                    <td>
                                        <asp:TextBox runat="server" placeholder="Ingresa tu apellido materno" class="form-control" type="texbox" ID="TxtApellidoM" />
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TxtApellidoM" Display="Dynamic" ErrorMessage="Olvidaste ingresar tu apellido materno" ForeColor="#A2D9CE" ValidationGroup="Validador"></asp:RequiredFieldValidator>
                                        <asp:RegularExpressionValidator  runat="server" ErrorMessage="No se permiten carácteres especiales" 
                                        ValidationExpression="^[a-z A-Z ñÑ]*$" ControlToValidate="TxtApellidoM" Display="Dynamic" ForeColor="#A2D9CE" 
                                        ValidationGroup="Validador1"></asp:RegularExpressionValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style1">Nacionalidad</td>
                                    <td>
                                        <asp:DropDownList ID="CmbNacionalidad" CssClass="form-control" runat="server">
                                        </asp:DropDownList>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="CmbNacionalidad" Display="Dynamic" ErrorMessage="Olvidaste ingresar tu nacionalidad" ForeColor="#A2D9CE" ValidationGroup="Validador"></asp:RequiredFieldValidator>
                                        
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style1">Rut</td>
                                    <td>
                                        <asp:TextBox runat="server" placeholder="Ej: 12.345.678-9" class="form-control" type="texbox" ID="TxtRut" />
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TxtRut" Display="Dynamic" ErrorMessage="Olvidaste ingresar tu rut" ForeColor="#A2D9CE" ValidationGroup="Validador"></asp:RequiredFieldValidator>
                                       <asp:RegularExpressionValidator  runat="server" ErrorMessage="Olidaste puntos y guión" ValidationExpression="^(\d{1,3}(\.?\d{3}){2})\-?([\dkK])$" ControlToValidate="TxtRut" Display="Dynamic" ForeColor="#A2D9CE" ValidationGroup="Validador1"></asp:RegularExpressionValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style1">Teléfono</td>
                                    <td>
                                        <asp:TextBox runat="server" placeholder="Ingresa tu telefono" class="form-control" TextMode="Phone" ID="TxtTelefono" />
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="TxtTelefono" Display="Dynamic" ErrorMessage="Olvidaste ingresar tu telefono" ForeColor="#A2D9CE" ValidationGroup="Validador"></asp:RequiredFieldValidator>
                                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server"
                                                                    ControlToValidate="TxtTelefono" ErrorMessage="Ingrese sólo números"
                                                                    ForeColor="#A2D9CE"
                                                                    ValidationExpression="^[0-9]*">
                                        </asp:RegularExpressionValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style1">Correo</td>
                                    <td>
                                        <asp:TextBox runat="server" placeholder="Ingresa tu correo" class="form-control" TextMode="Email" ID="TxtCorreo" />
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TxtCorreo" Display="Dynamic" ErrorMessage="Olvidaste ingresar tu correo" ForeColor="#A2D9CE" ValidationGroup="Validador"></asp:RequiredFieldValidator>
                                       <asp:RegularExpressionValidator  runat="server" ErrorMessage="No se permiten carácteres especiales" 
                                        ValidationExpression="^[a-z A-Z ñÑ]*$" ControlToValidate="TxtCorreo" Display="Dynamic" ForeColor="#A2D9CE" 
                                        ValidationGroup="Validador1"></asp:RegularExpressionValidator>
                                        <br />
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style1">Contraseña</td>
                                    <td>
                                        <asp:TextBox runat="server" placeholder="Ingresa tu contraseña" type="password" class="form-control" ID="TxtClave" />
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TxtClave" Display="Dynamic" ErrorMessage="Olvidaste ingresar tu contraseña" ForeColor="#A2D9CE" ValidationGroup="Validador"></asp:RequiredFieldValidator>
                                        
                                        
                                        <br />
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style1">Contraseña</td>
                                    <td>
                                        <asp:TextBox runat="server" placeholder="Ingresa tu contraseña de nuevo" type="password" class="form-control" ID="TxtClave2" />
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="TxtClave2" Display="Dynamic" ErrorMessage="Olvidaste ingresar tu contraseña" ForeColor="#A2D9CE" ValidationGroup="Validador"></asp:RequiredFieldValidator>
                                        <asp:CompareValidator ID="CompareValidator2" runat="server" ErrorMessage="Las contraseñas no coinciden" Display="Dynamic" ControlToValidate="TxtClave"></asp:CompareValidator>
                                        
                                        <br />
                                        
                                    </td>
                                </tr>
                                
                            </table>
                            <asp:Button type="button" class="btn" BorderColor="cornflowerblue" ID="Button1" runat="server" Text="Registrarme"  ValidationGroup="Validador"/>
                            <br />
                            <div class="footer">
                                <div class="row" style="border-top: 2px white solid; margin-top: 20px;">
                                    <p class="line">¿Ya tienes cuenta?</p>
                                    <a class="line" href="/Login" style="color:#A2D9CE">Inicia Sesión</a>
                                </div>
                              
                              
                      </div>
                        </div>
                    </div>
            </form>
            </div>
            
        </div>
</body>
</html>
