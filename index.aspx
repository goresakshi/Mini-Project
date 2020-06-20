<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="AlumniTracking1.register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="style1.css" rel="stylesheet" />

    <style type="text/css">
        .auto-style1 {
            text-align: center;
            font-size: xx-large;
            color: #000000;
        }
        .auto-style2 {
            margin-top: 40px;
        }
        .auto-style3 {
            text-align: center;
        }
        .auto-style4 {
            color: #000000;
        }
        .auto-style5 {
            margin-left: 0px;
        }
        .auto-style6 {
            color: #FFFFFF;
        }
        .auto-style7 {
            margin-top: 40px;
            text-align: left;
        }
        .auto-style8 {
            text-align: left;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style3">
        
        <div>
        </div>
        <h1 class="auto-style1"><strong>Alumni&#39;s Register Here!!!</strong></h1>
            <table align="center" class="auto-style2">
            <tr>
                <td class="auto-style2">
                    <strong>
                    <asp:Label Text="First Name" runat="server" ForeColor="Black" CssClass="auto-style4" />
                    </strong>
                </td>
                <td class="auto-style7">
                    <asp:TextBox ID="txtFirstName" runat="server" Height="30px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <strong>
                    <asp:Label Text="Last Name" runat="server" ForeColor="Black" />
                    </strong>
                </td>
                <td class="auto-style7">
                    <asp:TextBox ID="txtLastName" runat="server" Height="30px" />
                </td>
           </tr>
            <tr>
                <td class="auto-style2">
                    <strong>
                    <asp:Label Text="Contact" runat="server" ForeColor="Black" />
                    </strong>
                </td>
                <td class="auto-style7">
                    <asp:TextBox ID="txtContact" runat="server" Height="30px" />
                </td>
           </tr>
            <tr>
                <td class="auto-style2">
                    <strong>
                    <asp:Label Text="Gender" runat="server" ForeColor="Black" />
                    </strong>
                </td>
                <td class="auto-style7">
                    <asp:DropDownList ID="ddlGender" runat="server" Height="29px" >
                        <asp:ListItem></asp:ListItem>
                        <asp:ListItem>Male</asp:ListItem>
                        <asp:ListItem>Female</asp:ListItem>
                    </asp:DropDownList>
                </td>
           </tr>
            <tr>
                <td>
                    <strong>
                    <asp:Label Text="Address" runat="server" ForeColor="Black" />
                    </strong>
                </td>
                <td class="auto-style8">
                    <asp:TextBox ID="txtAddress" runat="server" TextMode="MultiLine"/>
                </td>
           </tr>
            <tr>
                <td colspan="2" class="auto-style8">
                    <hr class="auto-style3" />
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <strong>
                    <asp:Label Text="Username" runat="server" ForeColor="Black" />
                    </strong>
                </td>
                <td class="auto-style7">
                    <asp:TextBox ID="txtUsername" runat="server" placeholder="Email" Height="30px"/>
                    <asp:Label Text="*" runat="server" ForeColor="Red" />
                </td>
           </tr>
            <tr>
                <td class="auto-style2">
                    <strong>
                    <asp:Label Text="Password" runat="server" ForeColor="Black" />
                    </strong>
                </td>
                <td class="auto-style7">
                    <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" Height="30px"/>
                    <asp:Label Text="*" runat="server" ForeColor="Red" />
                </td>
           </tr>
            <tr>
                <td class="auto-style2">
                    <strong>
                    <asp:Label Text="Confirm Password" runat="server" ForeColor="Black" />
                    </strong>
                </td>
                <td class="auto-style7">
                    <asp:TextBox ID="txtConfirmPassword" runat="server" TextMode="Password" Height="30px" CssClass="auto-style5" Width="141px"/>
                </td>
           </tr>
            <tr>
                <td class="auto-style2">

                </td>
                <td class="auto-style7">
                    <asp:Button Text="Submit" ID="btns" runat="server" Height="33px" Width="84px" OnClick="btns_Click"  />
                </td>
            </tr>
            <tr>
                <td class="auto-style2">

                </td>
                <td class="auto-style7">
                    <strong>
                    <asp:Label Text="" ID="lblSuccessMessage" runat="server" ForeColor="Green" />
                    </strong>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">

                </td>
                <td class="auto-style7">
                    <strong>
                    <asp:Label Text="" ID="lblErrorMessage" runat="server" ForeColor="Red" />
                    </strong>
                </td>
            </tr>
        </table>

            <%--<asp:HyperLink ID="HyperLinkLogin" runat="server" NavigateUrl="~/Login.aspx" CssClass="auto-style4">Login</asp:HyperLink>--%>
            <strong>
            <%--<asp:HyperLink ID="HyperLinkLogin" runat="server" NavigateUrl="~/Login.aspx" CssClass="auto-style6">Login</asp:HyperLink>--%>
            <asp:HyperLink ID="HyperLinkLogin" runat="server" NavigateUrl="~/Login.aspx" CssClass="auto-style6">Login</asp:HyperLink>
            </strong>
        </div>
    </form>
</body>
</html>
