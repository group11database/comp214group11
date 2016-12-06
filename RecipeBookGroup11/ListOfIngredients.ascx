<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ListOfIngredients.ascx.cs" Inherits="RecipeBookGroup11.ListOfIngredients" %>


<div>
    <asp:Label ID="Label1" runat="server" Text="Name of Ingredient:" Width="150px"></asp:Label>
    <asp:TextBox ID="txtNameOfIngre" runat="server"></asp:TextBox>
    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtNameOfIngre" ValidationExpression="[a-zA-z]*$" ErrorMessage="*Valid characters: Alphabets and space." ForeColor="Red"></asp:RegularExpressionValidator>
    <br /><br />
    <%--Name: Darshit Desai
    Student Number: 300910840--%>
    <asp:Label ID="Label2" runat="server" Text="Quantity:" Width="150px"></asp:Label>
    <asp:TextBox ID="txtQuantity" runat="server"></asp:TextBox>
    <asp:CompareValidator ID="CompareValidatorQuantity" runat="server" ControlToValidate="txtQuantity" ErrorMessage="Please Enter Number!!"  Operator="DataTypeCheck" Type="Integer" ForeColor="Red" Display="Dynamic"></asp:CompareValidator>
    <br /><br />

    <asp:Label ID="Label3" runat="server" Text="Unit of Measure:" Width="150px"></asp:Label>
    <asp:TextBox ID="txtMesure" runat="server"></asp:TextBox><br /><br />
    <br /><br />
</div>