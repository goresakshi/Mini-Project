<%@ Page Title="" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="ContactUs.aspx.cs" Inherits="AlumniTracking1.AboutUs" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style4 {
            margin-top: 50px;
        }
        .auto-style8 {
            text-align: center;
        }
        .auto-style9 {
            font-weight: bold;
            color: #FFFFFF;
            background-color: #0033CC;
        }
        .auto-style10 {
            color: #000000;
            font-size: large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="body" runat="server">
    <div class="auto-style8">
        <asp:Panel ID="Panel1" runat="server" CssClass="auto-style4" Height="161px">
            <p>
            </p>
        </asp:Panel>
        <strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label1" runat="server" CssClass="auto-style10" Text="Email"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </strong>
        <asp:TextBox ID="TextBox1" runat="server" Height="35px" Width="300px"></asp:TextBox>
        <br />
        <br />
        <strong>
        <asp:Label ID="Label2" runat="server" CssClass="auto-style10" Text="Contact Us"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </strong>
        <asp:TextBox ID="TextBox2" runat="server" Height="35px" Width="300px"></asp:TextBox>
        <br />
        <br />
        <br />
        <br />
&nbsp; <strong>
        <asp:Button ID="Button1" runat="server" CssClass="auto-style9" Height="40px" OnClick="Button1_Click" Text="Update and Save" Width="176px" />
        <br />
        <br />
        <br />
        </strong>
        <asp:Label ID="lblSuccess" runat="server"></asp:Label>
    </div>
</asp:Content>
