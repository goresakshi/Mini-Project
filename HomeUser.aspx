<%@ Page Title="" Language="C#" MasterPageFile="~/UserMaster.Master" AutoEventWireup="true" CodeBehind="HomeUser.aspx.cs" Inherits="AlumniTracking1.HomeUser" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">Home
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style4 {
            text-align: center;
        }
    .auto-style5 {
        text-align: center;
        color: #FFFFFF;
            background-color: #0033CC;
        }
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="body" runat="server">
     <div class="auto-style4">
    <asp:Panel ID="Panel1" runat="server">
        <asp:Image ID="Image1" runat="server" src="school.jpeg" Height="600px" Width="900px" />
    </asp:Panel>
    </div>
    <div>
        <h1 class="auto-style5">New English School , Miraj</h1>
    </div>
</asp:Content>
