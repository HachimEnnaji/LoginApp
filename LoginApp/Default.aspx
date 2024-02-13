<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="LoginApp._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <main>
        <input type="text" placeholder="Inserisci Username" CssClass="form-control" id="Username" runat="server" required/>
        <input type="password" placeholder="Inserisci Password" CssClass="form-control" id="Password" runat="server" required />
       <asp:Button text="Login" runat="server" ID="LoginButton"  CssClass="btn btn-secondary" OnClick="LoginButton_Click"/>
    </main>

</asp:Content>
