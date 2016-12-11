<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="RecipeSearch.aspx.cs" Inherits="RecipeBookGroup11.RecipeSearch" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div style="width:auto; overflow:scroll">
    <asp:Label ID="Label1" runat="server" Text="Category: " Width="150px"></asp:Label>
    <asp:DropDownList ID="dropDownCategory" runat="server" Width="150px" >
    </asp:DropDownList>
    <br /><br /><br />
    <asp:Label ID="Label2" runat="server" Text="Ingredient: " Width="150px"></asp:Label>
    <asp:DropDownList ID="dropDownIngredient" runat="server" Width="150px">
    </asp:DropDownList>
    <br /><br /><br />
      
     
    <asp:Label ID="Label3" runat="server" Text="Submitted By: " Width="150px"></asp:Label>
    <asp:DropDownList ID="dropDownSubmittedBy" runat="server" Width="150px">
    </asp:DropDownList>
    <br /><br /><br />

    <asp:Button ID="Button1" runat="server" Text="Show" OnClick="Button1_Click" />
    <br />
    <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <EditRowStyle BackColor="#999999" />
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#E9E7E2" />
        <SortedAscendingHeaderStyle BackColor="#506C8C" />
        <SortedDescendingCellStyle BackColor="#FFFDF8" />
        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
        </asp:GridView>
        </div>

</asp:Content>
