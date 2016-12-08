<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="RecipeUpdate.aspx.cs" Inherits="RecipeBookGroup11.RecipeUpdate" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <p>
        <asp:Label ID="lblName" runat="server" Text="Name of Recipe: " Width="150px"></asp:Label>
        <asp:TextBox ID="txtNameUpdate" runat="server"></asp:TextBox>
    </p>
    <p>

    <asp:Label ID="lblSubBy" runat="server" Text="Submitted By: " Width="150px"></asp:Label>
        <asp:Label ID="lblSubByUpdate" runat="server" Text=""></asp:Label>
    </p>
    <p>

    <asp:Label ID="lblCategory" runat="server" Text="Category: " Width="150px"></asp:Label>
        <asp:TextBox ID="txtCategoryUpdate" runat="server"></asp:TextBox>
    </p>
    <p>

    <asp:Label ID="lblTime" runat="server" Text="Cooking Time: " Width="150px"></asp:Label>
        <asp:TextBox ID="txtTimeUpdate" runat="server"></asp:TextBox>
    </p>
    <p>

    <asp:Label ID="lblServingNum" runat="server" Text="Number of Servings: " Width="150px"></asp:Label>
        <asp:TextBox ID="txtSurvingNumberUpdate" runat="server"></asp:TextBox>
    </p>

    <%--<p>
    <asp:Label ID="lblResDesc" runat="server" Text="Recipe Description: " Width="150px"></asp:Label>
        <asp:TextBox ID="txtResDescUpdate" runat="server"></asp:TextBox>
    </p>--%>
    <p>
        Ingredients:</p>
    <p>
        <asp:TextBox ID="txtNameOfIngre1Update" runat="server" Width="150px"></asp:TextBox>
        <asp:TextBox ID="txtNameOfIngre2Update" runat="server" Width="150px"></asp:TextBox>
    </p>
    <p>
        <asp:TextBox ID="txtNameOfIngre3Update" runat="server" Width="150px"></asp:TextBox>
        <asp:TextBox ID="txtNameOfIngre4Update" runat="server" Width="150px"></asp:TextBox>
    </p>
    <p>
        <asp:TextBox ID="txtNameOfIngre5Update" runat="server" Width="150px"></asp:TextBox>
        <asp:TextBox ID="txtNameOfIngre6Update" runat="server" Width="150px"></asp:TextBox>
    </p>
    <p>
        <asp:TextBox ID="txtNameOfIngre7Update" runat="server" Width="150px"></asp:TextBox>

        <asp:TextBox ID="txtNameOfIngre8Update" runat="server" Width="150px"></asp:TextBox>
    </p>
    <p>
        <asp:TextBox ID="txtNameOfIngre9Update" runat="server" Width="150px"></asp:TextBox>
        <asp:TextBox ID="txtNameOfIngre10Update" runat="server" Width="150px"></asp:TextBox>
    </p>
    <p>
        <asp:TextBox ID="txtNameOfIngre11Update" runat="server" Width="150px"></asp:TextBox>
        <asp:TextBox ID="txtNameOfIngre12Update" runat="server" Width="150px"></asp:TextBox>
    </p>
    <p>
        <asp:TextBox ID="txtNameOfIngre13Update" runat="server" Width="150px"></asp:TextBox>
        <asp:TextBox ID="txtNameOfIngre14Update" runat="server" Width="150px"></asp:TextBox>
    </p>
    <p>
        <asp:TextBox ID="txtNameOfIngre15Update" runat="server" Width="150px"></asp:TextBox>
    </p>
    <p>
        &nbsp;</p>
    <p>
        <asp:Button ID="btnUpdate" runat="server" Text="Update" OnClick="btnUpdate_Click" />
    </p>
    <p>
        <asp:Label ID="lblError" runat="server"></asp:Label>
    </p>

</asp:Content>
