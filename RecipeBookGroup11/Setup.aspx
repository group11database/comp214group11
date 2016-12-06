<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Setup.aspx.cs" Inherits="RecipeBookGroup11.Setup" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    Please choose Theme:<br />
    <asp:Button ID="btntheme1" runat="server" Text="Dark" OnClick="btntheme1_Click" />
    <asp:Button ID="btntheme2" runat="server" Text="Light" OnClick="btntheme2_Click" />

</asp:Content>
