<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="ContactUs.aspx.cs" Inherits="RecipeBookGroup11.ContactUs" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:Label ID="lblContactName" runat="server" Text="Name" Width="150px"></asp:Label>
    <asp:TextBox ID="txtContactName" runat="server"></asp:TextBox><br /><br /><br />

    <asp:Label ID="lblContactPhone" runat="server" Text="Phone Number" Width="150px"></asp:Label>
    <asp:TextBox ID="txtContactPhone" runat="server"></asp:TextBox><br /><br /><br />

    <asp:Label ID="lblContactDesc" runat="server" Text="Description" Width="150px"></asp:Label>
    <asp:TextBox id="txtContactDesc" runat="server" rows="2"></asp:TextBox><br /><br /><br />

    <asp:Label ID="lblContactEmail" runat="server" Text="Email" Width="150px"></asp:Label>
    <asp:TextBox ID="txtContactEmail" runat="server"></asp:TextBox><br /><br /><br /><br />

    <asp:Button ID="btnContactSubmit" runat="server" Text="Submit" OnClick="btnContactSubmit_Click" />

</asp:Content>
