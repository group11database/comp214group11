<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Details.aspx.cs" Inherits="RecipeBookGroup11.Details" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="370px" CellPadding="4" ForeColor="#333333" GridLines="None" AutoGenerateRows="False">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <CommandRowStyle BackColor="#E2DED6" Font-Bold="True" />
        <EditRowStyle BackColor="#999999" />
        <FieldHeaderStyle BackColor="#E9ECF1" Font-Bold="True" />
        <Fields>
            <asp:BoundField DataField="RecipeName" HeaderText="Recipe Name" />
            <asp:BoundField DataField="SubmittedBy" HeaderText="Submitted By" />
            <asp:BoundField DataField="Category" HeaderText="Category" />
            <asp:BoundField DataField="CookingTime" HeaderText="Cooking Time" />
            <asp:BoundField DataField="NumberOfServing" HeaderText="Number Of Servings" />
            <asp:BoundField DataField="NameOfIngredient1" HeaderText="Name Of Ingredient" />
            <asp:BoundField DataField="NameOfIngredient2" HeaderText="Name Of Ingredient" />
            <asp:BoundField DataField="NameOfIngredient3" HeaderText="Name Of Ingredient" />
            <asp:BoundField DataField="NameOfIngredient4" HeaderText="Name Of Ingredient" />
            <asp:BoundField DataField="NameOfIngredient5" HeaderText="Name Of Ingredient" />
            <asp:BoundField DataField="NameOfIngredient6" HeaderText="Name Of Ingredient" />
            <asp:BoundField DataField="NameOfIngredient7" HeaderText="Name Of Ingredient" />
            <asp:BoundField DataField="NameOfIngredient8" HeaderText="Name Of Ingredient" />
            <asp:BoundField DataField="NameOfIngredient9" HeaderText="Name Of Ingredient" />
            <asp:BoundField DataField="NameOfIngredient10" HeaderText="Name Of Ingredient" />
            <asp:BoundField DataField="NameOfIngredient11" HeaderText="Name Of Ingredient" />
        </Fields>
        <%--Name: Darshit Desai
        Student Number: 300910840--%>
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <FooterTemplate>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Delete" />
            &nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnEdit" runat="server" OnClick="btnEdit_Click" Text="Edit" />
        </FooterTemplate>
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />


    </asp:DetailsView>

</asp:Content>
