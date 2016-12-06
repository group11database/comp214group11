<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="recipes.aspx.cs" Inherits="RecipeBookGroup11.recipes" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div id="recipedetail">
        <h1>Recipe Detail</h1>
        <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" SelectMethod="GetRecipes" TypeName="RecipeRepository"></asp:ObjectDataSource>
            <asp:ListView ID="ListView1" runat="server" DataSourceID="ObjectDataSource1">
                <AlternatingItemTemplate>
                    <tr style="background-color:#FFF8DC;">
                        <td>
                            <asp:Label ID="RecipeNameLabel" runat="server" Text='<%# Eval("RecipeName") %>' />
                        </td>
                        <td>
                            <asp:Label ID="UsernameLabel" runat="server" Text='<%# Eval("Username") %>' />
                        </td>
                        <td>
                            <asp:Label ID="CookingTimeLabel" runat="server" Text='<%# Eval("CookingTime") %>' />
                        </td>
                    </tr>
                </AlternatingItemTemplate>
                <EditItemTemplate>
                    <tr style="background-color:#008A8C;color: #FFFFFF;">
                        <td>
                            <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                        </td>
                        <td>
                            <asp:TextBox ID="RecipeNameTextBox" runat="server" Text='<%# Bind("RecipeName") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="UsernameTextBox" runat="server" Text='<%# Bind("Username") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="CookingTimeTextBox" runat="server" Text='<%# Bind("CookingTime") %>' />
                        </td>
                    </tr>
                </EditItemTemplate>
                <%--Name: Darshit Desai
                Student Number: 300910840--%>
                <EmptyDataTemplate>
                    <table runat="server" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;">
                        <tr>
                            <td>No data was returned.</td>
                        </tr>
                    </table>
                </EmptyDataTemplate>
                <InsertItemTemplate>
                    <tr style="">
                        <td>
                            <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                        </td>
                        <td>
                            <asp:TextBox ID="RecipeNameTextBox" runat="server" Text='<%# Bind("RecipeName") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="UsernameTextBox" runat="server" Text='<%# Bind("Username") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="CookingTimeTextBox" runat="server" Text='<%# Bind("CookingTime") %>' />
                        </td>
                    </tr>
                </InsertItemTemplate>
                <ItemTemplate>
                    <tr style="background-color:#DCDCDC;color: #000000;">
                        <td>
                            <asp:Label ID="RecipeNameLabel" runat="server" Text='<%# Eval("RecipeName") %>' />
                        </td>
                        <td>
                            <asp:Label ID="UsernameLabel" runat="server" Text='<%# Eval("Username") %>' />
                        </td>
                        <td>
                            <asp:Label ID="CookingTimeLabel" runat="server" Text='<%# Eval("CookingTime") %>' />
                        </td>
                    </tr>
                </ItemTemplate>
                <LayoutTemplate>
                    <table runat="server">
                        <tr runat="server">
                            <td runat="server">
                                <table id="itemPlaceholderContainer" runat="server" border="1" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;font-family: Verdana, Arial, Helvetica, sans-serif;">
                                    <tr runat="server" style="background-color:#DCDCDC;color: #000000;">
                                        <th runat="server">Recipe Name</th>
                                        <th runat="server">Submitted by</th>
                                        <th runat="server">Prep Time</th>
                                    </tr>
                                    <tr id="itemPlaceholder" runat="server">
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr runat="server">
                            <td runat="server" style="text-align: center;background-color: #CCCCCC;font-family: Verdana, Arial, Helvetica, sans-serif;color: #000000;"></td>
                        </tr>
                    </table>
                    <br />
                </LayoutTemplate>
                <SelectedItemTemplate>
                    <tr style="background-color:#008A8C;font-weight: bold;color: #FFFFFF;">
                        <td>
                            <asp:Label ID="RecipeNameLabel" runat="server" Text='<%# Eval("RecipeName") %>' />
                        </td>
                        <td>
                            <asp:Label ID="UsernameLabel" runat="server" Text='<%# Eval("Username") %>' />
                        </td>
                        <td>
                            <asp:Label ID="CookingTimeLabel" runat="server" Text='<%# Eval("CookingTime") %>' />
                        </td>
                    </tr>
                </SelectedItemTemplate>
                </asp:ListView>
        <%--<p>Recipe Name: &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="lblRecipeName" runat="server"></asp:Label></p>
        <p>Submitted By: &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="lblSubmittedBy" runat="server"></asp:Label></p>
        <p>Category: &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="lblRecipeCategory" runat="server"></asp:Label></p>
        <p>Preparation Time: &nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="lblPreparationTime" runat="server"></asp:Label></p>
        <p>Number of Servings: <asp:Label ID="lblNumberOfServings" runat="server"></asp:Label></p>
        <p>Recipe Description: &nbsp;&nbsp;<asp:Label ID="lblRecipeDesc" runat="server"></asp:Label></p>--%>
    </div>

</asp:Content>
