<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="AlumniTracking1.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="style1.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style1 {
            font-size: xx-large;
            text-align: center;
            margin-top: 105px;
        }
        .auto-style2 {
            width: 100%;
            height: 199px;
            margin-top: 47px;
        }
        .auto-style3 {
            font-size: large;
        }
        .auto-style4 {
            font-size: large;
            width: 678px;
            text-align: right;
        }
        .auto-style5 {
            font-size: large;
            width: 352px;
        }
        .auto-style6 {
            margin-left: 13px;
        }
        .auto-style7 {
            margin-left: 18px;
        }
        .auto-style9 {
            width: 100%;
            height: 39px;
            margin-top: 33px;
        }
        .auto-style10 {
            text-align: center;
        }
        .auto-style11 {
            text-align: center;
            margin-top: 72px;
        }
        .auto-style12 {
            margin-left: 40px;
        }
        .auto-style16 {
            margin-left: 625px;
            color: #FFFFFF;
            font-size: large;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
       <div class="auto-style1">
            <strong>Login Here!!!</strong></div>
        <asp:Panel ID="Panel1" runat="server" CssClass="auto-style11" Height="65px">
            <div class="auto-style12">
                <strong>
                <asp:RadioButtonList ID="RadioButtonList1" runat="server" CssClass="auto-style16" RepeatDirection="Horizontal" Width="192px">
                    <asp:ListItem Text="Admin" Value="1"></asp:ListItem>
                    <asp:ListItem Text="Alumni" Value="2"></asp:ListItem>
                </asp:RadioButtonList>
                </strong>
            </div>
        </asp:Panel>
        <table class="auto-style2">
            <tr>
                <td class="auto-style4"><strong>Username</strong></td>
                <td class="auto-style5">
                    <asp:TextBox ID="TextBoxUname" runat="server" placeholder="Email" CssClass="auto-style6" Height="30px"  Width="314px"></asp:TextBox>
                </td>
                <td class="auto-style3">
                    <asp:Label ID="Lblusername" runat="server" ForeColor="Red"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style4"><strong>Password</strong></td>
                <td class="auto-style5">
                    <asp:TextBox ID="TextBoxPwd" runat="server" CssClass="auto-style6" Height="30px" Width="314px" TextMode="Password"></asp:TextBox>
                </td>
                <td class="auto-style3">
                    <asp:Label ID="lblpwd" runat="server" ForeColor="Red"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style5">
                    <asp:Button ID="btnsubmit" runat="server" CssClass="auto-style7" OnClick="btnsubmit_Click" Text="Submit" Width="113px" Height="37px" />
                </td>
                <td class="auto-style3"><strong></strong></td>
            </tr>
        </table>
        <table class="auto-style9">
            <tr>
                <td class="auto-style10">
                    <asp:Label ID="lblValidity" runat="server" ForeColor="Red"></asp:Label>
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
