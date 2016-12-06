<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="AddRecipe.aspx.cs" Inherits="RecipeBookGroup11.AddRecipe" %>

<%@ Register TagName="ListOfIngredients" TagPrefix="Li" Src="~/ListOfIngredients.ascx" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <br /><br />
    <asp:Label ID="lblName" runat="server" Text="Name of Recipe: "  Width="150px"></asp:Label>
    <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
    <asp:Label ID="lblAstr1" runat="server" Text="*" ForeColor="Red"></asp:Label>
    <asp:RequiredFieldValidator ID="RequiredFieldValidatorName" runat="server" ControlToValidate="txtName" ErrorMessage="Please Enter Valid Recipe Name!!" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
    <br /><br />

    <asp:Label ID="lblSubBy" runat="server" Text="Submitted By: " Width="150px"></asp:Label>
    <asp:TextBox ID="txtSubBy" runat="server"></asp:TextBox>
    <asp:Label ID="lblAstr2" runat="server" Text="*" ForeColor="Red"></asp:Label>
    <asp:RequiredFieldValidator ID="RequiredFieldValidatorSubBy" runat="server" ControlToValidate="txtSubBy" ErrorMessage="Enter Valid Name!!" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
    <br /><br />

    <asp:Label ID="lblCategory" runat="server" Text="Category: " Width="150px"></asp:Label>
    <asp:TextBox ID="txtCategory" runat="server"></asp:TextBox>
    <br /><br />

    <asp:Label ID="lblTime" runat="server" Text="Cooking Time: " Width="150px"></asp:Label>
    <asp:TextBox ID="txtTime" runat="server"></asp:TextBox>
    <br /><br />

    <asp:Label ID="lblServingNum" runat="server" Text="Number of Servings: " Width="150px"></asp:Label>
    <asp:TextBox ID="txtServingNum" runat="server"></asp:TextBox>
    <asp:Label ID="lblAstr3" runat="server" Text="*" ForeColor="Red"></asp:Label>
    <asp:CompareValidator ID="CompareValidatorServingNum" runat="server" ControlToValidate="txtServingNum" ErrorMessage="Please Enter Number!!"  Operator="DataTypeCheck" Type="Integer" ForeColor="Red" Display="Dynamic"></asp:CompareValidator>
    <br /><br />
    <%--Name: Darshit Desai
    Student Number: 300910840--%>
    <asp:Label ID="lblResDesc" runat="server" Text="Recipe Description: " Width="150px"></asp:Label>
    <asp:TextBox ID="txtResDesc" runat="server" TextMode="MultiLine" ></asp:TextBox>
    <asp:Label ID="lblAstr4" runat="server" Text="*" ForeColor="Red"></asp:Label>
    <asp:RequiredFieldValidator ID="RequiredFieldValidatorResDesc" runat="server" ControlToValidate="txtResDesc" ErrorMessage="Enter Description of Recipe!!" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
    <br /><br />

    <Li:ListOfIngredients ID="ListOfIngredients1" runat="server"/><br />
    <Li:ListOfIngredients ID="ListOfIngredients2" runat="server"/><br />
    <Li:ListOfIngredients ID="ListOfIngredients3" runat="server"/><br />
    <Li:ListOfIngredients ID="ListOfIngredients4" runat="server"/><br />
    <Li:ListOfIngredients ID="ListOfIngredients5" runat="server"/><br />
    <Li:ListOfIngredients ID="ListOfIngredients6" runat="server"/><br />
    <Li:ListOfIngredients ID="ListOfIngredients7" runat="server"/><br />
    <Li:ListOfIngredients ID="ListOfIngredients8" runat="server"/><br />
    <Li:ListOfIngredients ID="ListOfIngredients9" runat="server"/><br />
    <Li:ListOfIngredients ID="ListOfIngredients10" runat="server"/><br />
    <Li:ListOfIngredients ID="ListOfIngredients11" runat="server"/><br />
    <Li:ListOfIngredients ID="ListOfIngredients12" runat="server"/><br />
    <Li:ListOfIngredients ID="ListOfIngredients13" runat="server"/><br />
    <Li:ListOfIngredients ID="ListOfIngredients14" runat="server"/><br />
    <Li:ListOfIngredients ID="ListOfIngredients15" runat="server"/><br />

    <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="btnCamcel" runat="server" Text="Cancel" OnClick="btnCancel_Click" />

</asp:Content>
