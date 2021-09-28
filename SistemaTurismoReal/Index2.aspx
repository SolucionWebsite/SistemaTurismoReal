<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index2.aspx.cs" Inherits="SistemaTurismoReal.Index2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Turismo Real</title>
    <link href="css/Style.css" rel="stylesheet" type="text/css" />
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Didact+Gothic&family=Lobster&display=swap" rel="stylesheet">
    <script src="https://kit.fontawesome.com/a076d05399.js"></script>
</head>
<body>
    <video class="bg-video" autoplay="autoplay" muted="muted" loop="loop" poster="assets/img/bg.jpg"><source src="assets/mp4/bg.mp4" type="video/mp4" /></video>

        <div class="container" >
            <div class="row" >
                <nav style="border-bottom: 3px solid black;">  
            <input type="checkbox" id="check"/>
            <label for="check" class="checkbtn">
                <i class="fas fa-bars">
                </i>
            </label>
            <asp:Label Text="Turismo Real" CssClass="logo" runat="server" />
            <ul>
                <li>
                    <a href="#" class="active">Home</a>
                </li>
                <li>
                    <a href="/Servicios">Servicios</a>
                </li>
                <li>
                    <a href="#">Reservar</a>
                </li><li>
                    <a href="/Cuenta-datos">Mi cuenta</a>
                </li>
            </ul>
        </nav>
            </div>
            <div class="row" >
                <form id="form1" runat="server">
            <div class="container-main" >
                <div class="card" style="margin: 20px;" >
                    <h5 style="font-family: 'Lobster'; font-size: 55px;">¿Buscas arriendo?</h5>
                    <br />
                    <p>
                        Somos una empresa dedicada al arriendo de departamentos ubicados en diferentes zonas turísticas a lo
                        largo de Chile, además, ofrecemos servicios de transporte y tours guiados para mejorar su experencia con nosotros.
                    </p>
                    <h2 style="margin-top:20px;">RESERVA AQUÍ</h2>
                    <div class="container" >
                        <table class="tabla" >
                            <tr>
                               <td>
                                   Región
                               </td>
                                  
                                <td>
                                    <asp:DropDownList  class="form-control " ID="DropDownList1" runat="server"  ToolTip="Seleccionar región">
                                    <asp:ListItem>Seleccione</asp:ListItem>
                                    <asp:ListItem>Metropolitana</asp:ListItem>
                                    <asp:ListItem>Ñuble</asp:ListItem>
                                </asp:DropDownList>
                                </td>
                            </tr>
                            <tr>
                               <td>
                                   Provincia
                               </td>
                                  
                                <td>
                                    <asp:DropDownList  class="form-control " ID="DropDownList2" runat="server"  ToolTip="Seleccionar región">
                                    <asp:ListItem>Seleccione</asp:ListItem>
                                    <asp:ListItem>Metropolitana</asp:ListItem>
                                    <asp:ListItem>Ñuble</asp:ListItem>
                                </asp:DropDownList>
                                </td>
                            </tr>
                            <tr>
                               <td>
                                   Comuna
                               </td>
                                  
                                <td>
                                    <asp:DropDownList  class="form-control " ID="DropDownList3" runat="server"  ToolTip="Seleccionar región">
                                    <asp:ListItem>Seleccione</asp:ListItem>
                                    <asp:ListItem>Metropolitana</asp:ListItem>
                                    <asp:ListItem>Ñuble</asp:ListItem>
                                </asp:DropDownList>
                                </td>
                            </tr>
                            <tr>
                               <td>
                                   Fecha llegada
                               </td>
                                  
                                <td>
                                    <asp:TextBox ID="TextBox4" CssClass="form-control" runat="server" placeholder="Llegada" ToolTip="Seleccionar fecha de llegada" Textmode="Date" ></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                               <td>
                                   Fecha salida
                               </td>
                                  
                                <td>
                                    <asp:TextBox ID="TextBox3" CssClass="form-control" runat="server" placeholder="Llegada" ToolTip="Seleccionar fecha de salida" Textmode="Date" ></asp:TextBox>
                                </td>
                            </tr>
                        </table>
                        <asp:Button CssClass="btn-disponibilidad" Text="VER DISPONIBILIDAD" runat="server" />
                        ¿Ya reservaste y necesitas contratar un servicio extra? <a href="/Login" style="color:white"> Ingresa aquí</a>
                    </div>
                </div>
                
            </div>
            </form>
            </div>
            
        </div>
    
    
    
</body>
</html>
