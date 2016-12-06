<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="RecipeBookGroup11.Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <p  style="text-align:justify">Welcome to Recipe Book, the on-line pool of simple recipes for new beginners. Who can be more disappointed than a hungry man who is on diet with mouth-watering fancy food on his table? 
    A Spanish proverb says “The belly rules the mind”. Well, good news is, mouth-watering food can be simple enough for anyone to make it.
    That's the whole idea of this website. In addition, this website contains simple, delicious and healthy dishes that can be made at your home.
    We have added number of recipes including Indian recipes, International recipes, sweet and snacks, diet recipes, chicken recipes and of course desserts too.
    </p>
    <%--Name: Darshit Desai
    Student Number: 300910840--%>
    <img src="Styles/6.jpg" style="height: 164px; width: 254px" runat="server" class="imgleft"/>
    <p  style="text-align:justify">
        Indian Cuisine:<br />
        Indian Cuisine is a huge collection of regional variations which can be broadly categorized by its states. Each state in India has its own style, taste and flavour of food. Each regional cuisine is very different from each other. This diversity in Indian food culture is because of the difference in climatic condition, terrain, soil nutrition, and diverse ethnic traditions. For example, the staple food of people from northern part of India is wheat whereas it's rice in the southern part. In the desert state like Rajasthan availability of fresh vegetables is scarce, so the Rajasthani cuisine includes gram flour, milk and ghee as its staple food ingredients. Thus each region or state in India has its unique cuisine.
    </p>
    <br />
    <img src="Styles/5.jpg" style="height: 124px; width: 254px; margin-right: 0px"  runat="server" class="imgright"/>
    <p style="text-align:justify">
        Chicken Dishes:<br />
        Chicken is the most widely used poultry used for countless number of dishes around the world. It is eaten by all non-vegetarians and does not have any religious restrictions. In India, chicken is often cut into medium sized pieces and is used to make curries, dry dishes and biryani. Also chicken drumstick and thighs are sold separately which are used to make roast, tandoori chicken etc. 
    </p>
    <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Total number of Recipes on website:</asp:LinkButton>

</asp:Content>
