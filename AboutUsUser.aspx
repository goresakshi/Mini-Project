<%@ Page Title="" Language="C#" MasterPageFile="~/UserMaster.Master" AutoEventWireup="true" CodeBehind="AboutUsUser.aspx.cs" Inherits="AlumniTracking1.AboutUsUser" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style4 {
            margin-top: 25px;
        }
        .auto-style5 {
            text-align: center;
        }
        .auto-style6 {
            font-size: large;
            color: #FFFFFF;
        }
    </style>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="body" runat="server">
    <div class="auto-style5">
    <asp:Panel ID="Panel1" runat="server" CssClass="auto-style4"><span class="auto-style6"><strong>New English School&#39;s location is at Miraj, Sangli.</strong></span><strong><br class="auto-style6" /> </strong><span class="auto-style6"><strong>22 dedicated and professional teachers ensure that the children get the maximum out of their eduaction in this State Board school.</strong></span><strong><br class="auto-style6"/><br class="auto-style6" /> </strong><span class="auto-style6"><strong>New English School was launched in 1961. The primary medium of instruction is Marathi and the student teacher ratio is 32:1. </strong></span><strong>
        <br class="auto-style6"/>
        <br class="auto-style6" />
        </strong><span class="auto-style6"><strong>The school tries to provide best learning environment.</strong></span><strong><br class="auto-style6"/> </strong><span class="auto-style6"><strong>Classes from 6 to 12 run in this school. 712 is approximately the current student strength of this school.</strong></span><strong><br class="auto-style6" />
        <br class="auto-style6"/>
        </strong><span class="auto-style6"><strong>It has a library as well with over 7370 books.</strong></span><strong><br class="auto-style6" /><br class="auto-style6"/> </strong><span class="auto-style6"><strong>&nbsp;&nbsp;&nbsp; The school has given exceptional results in the academic sphere and its students have excelled in extra co-curricular activities too. </strong></span><strong>
        <br class="auto-style6"/>
        </strong><span class="auto-style6"><strong>100% from this school qualified the examination.</strong></span></asp:Panel>
    </div>
    <div class="auto-style5">
        <asp:Panel ID="Panel2" runat="server" BorderColor="Black">
            <asp:Image ID="Image1" src="school2.jpeg" runat="server" Height="500px" Width="700px" BorderColor="White" BorderStyle="Groove" />
        </asp:Panel>
    </div>
</asp:Content>
