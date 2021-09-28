<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Cuenta-Clave.aspx.cs" Inherits="SistemaTurismoReal.Cuenta_Clave" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Cambiar contraseña</title>
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
                    <a href="/MiCuenta" class="active">Mi cuenta</a>
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
                            <asp:Button ID="Btn_Servicio_Extra" CssClass="btn" Text="Servicios Extra" runat="server" OnClick="Btn_Servicio_Extra_Click"/>
                        </div>
                        <div class="row-1">
                            <asp:Button ID="Btn_Cambiar_Clave" CssClass="btn-active" Text="Cambiar contraseña" runat="server" OnClick="Btn_Cambiar_Clave_Click"/>
                        </div>
                    </div>
                    <div class="container-3">
                        <div class="row" style="text-align:center;">
                            <h5 style="font-size:20px; margin-bottom:10px;">Cambiar contraseña</h5>
                        </div>
                        <div class="row" style="text-align:center;">
                            <div class="container-blanco" style="border:3px solid white;">
                            <div class="fila">
                                <div class="columna-1" style="width:50%;">
                                    Contraseña antigua:
                                </div>
                                <div class="columna-2" style="width:50%;">
                                    <asp:TextBox CssClass="form-control"  runat="server" />
                                </div>
                            </div>
                            <div class="fila">
                                <div class="columna-1" style="width:50%;">
                                    Contraseña nueva:
                                </div>
                                <div class="columna-2" style="width:50%;">
                                    <asp:TextBox CssClass="form-control"  runat="server" />
                                </div>
                            </div>
                            <div class="fila">
                                <div class="columna-1" style=" padding:5px; width:100%;">
                                    <asp:Button CssClass="btn" Text="Cambiar contraseña" runat="server" />
                                </div>

                            </div>
                        </div>
                        </div>
                        
                        
                    </div>
                </div>
                
            </form>
            </div>
</body>
</html>
