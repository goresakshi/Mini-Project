<%@ Page Title="" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="ManageEvents.aspx.cs" Inherits="AlumniTracking1.ManageEvents" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style4 {
            text-align: center;
            margin-left: 342px;
        }
        .auto-style5 {
            text-align: center;
        }
        </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="body" runat="server">
    
    <div class="auto-style5">
        <asp:Panel ID="Panel1" runat="server" CssClass="auto-style4" Height="358px" Width="833px">
            <br />
            <strong>
            <asp:Label ID="lblformlink" runat="server" Text="FormLink"></asp:Label>
            </strong>&nbsp;
            <asp:TextBox ID="FormLink" runat="server" Height="33px"></asp:TextBox>
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong><asp:Label ID="lbldesc" runat="server" Text="description"></asp:Label>
            </strong>&nbsp;&nbsp;<asp:TextBox ID="Description" runat="server" TextMode="MultiLine"></asp:TextBox>
            &nbsp;<br />&nbsp;&nbsp;<br />&nbsp;<asp:Label ID="lblcheck" runat="server" ForeColor="Red"></asp:Label>
            <br />
            <br />
            <br />
            <asp:Button ID="btnupload" runat="server" OnClick="btnupload_Click" Text="Upload" />
            <br />
            <br />
            <br />
            <br />
            <br />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="FormLink" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Height="179px"  Width="594px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowSelectButton="True" />
                    <asp:BoundField DataField="FormLink" HeaderText="FormLink" ReadOnly="True" SortExpression="FormLink" />
                    <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
                </Columns>
                <EditRowStyle BackColor="#2461BF" />
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#EFF3FB" />
                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F5F7FB" />
                <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                <SortedDescendingCellStyle BackColor="#E9EBEF" />
                <SortedDescendingHeaderStyle BackColor="#4870BE" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:AlumnidataConnection %>" DeleteCommand="DELETE FROM [event] WHERE [FormLink] = @FormLink" InsertCommand="INSERT INTO [event] ([FormLink], [Description]) VALUES (@FormLink, @Description)" SelectCommand="SELECT * FROM [event]" UpdateCommand="UPDATE [event] SET [Description] = @Description WHERE [FormLink] = @FormLink">
                <DeleteParameters>
                    <asp:Parameter Name="FormLink" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="FormLink" Type="String" />
                    <asp:Parameter Name="Description" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Description" Type="String" />
                    <asp:Parameter Name="FormLink" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <br />
        </asp:Panel>
    </div>
    
</asp:Content>
