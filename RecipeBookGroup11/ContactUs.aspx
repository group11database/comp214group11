<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="ContactUs.aspx.cs" Inherits="RecipeBookGroup11.ContactUs" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:Label ID="lblContactName" runat="server" Text="Name" Width="150px"></asp:Label>
    <asp:TextBox ID="txtContactName" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidatorContactName" runat="server" ControlToValidate="txtContactName" ErrorMessage="Please Enter Valid Name!!" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
    <br /><br />

    <asp:Label ID="lblContactPhone" runat="server" Text="Phone Number" Width="150px"></asp:Label>
    <asp:TextBox ID="txtContactPhone" runat="server"></asp:TextBox>
    <%--<asp:RequiredFieldValidator ID="RequiredFieldValidatorContactPhone" runat="server" ErrorMessage="Invalid Phone number!"
    Text="*" ControlToValidate="txtContactPhone" ValidationGroup="ValidPhone"></asp:RequiredFieldValidator>

    <asp:RegularExpressionValidator ID="RegularExpressionValidatorContactPhone" runat="server" 
    ErrorMessage="Number must be of 10 Digit"
    ControlToValidate="txtContactPhone" ValidationGroup="ValidPhone" Text="*" 
    ValidationExpression="\d{10}"></asp:RegularExpressionValidator>
    --%><br /><br />

    <asp:Label ID="lblContactDesc" runat="server" Text="Description" Width="150px"></asp:Label>
    <asp:TextBox id="txtContactDesc" runat="server" rows="3"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtContactDesc" ErrorMessage="Please Enter Valid Description!!" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
    <br /><br />

    <asp:Label ID="lblContactEmail" runat="server" Text="Email" Width="150px"></asp:Label>
    <asp:TextBox ID="txtContactEmail" runat="server"></asp:TextBox>
    <br /><br /><br /><br />

    <asp:Button ID="btnContactSubmit" runat="server" Text="Submit" OnClick="btnContactSubmit_Click" />

</asp:Content>
