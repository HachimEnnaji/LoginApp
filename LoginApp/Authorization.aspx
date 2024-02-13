<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="Authorization.aspx.cs" Inherits="LoginApp.Authorization" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head >
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>

        <div>
            <p runat="server" cssClass="display-1 fs-2" id="authentication"></p>   
            <asp:Button text="Logout" CssClass="btn btn-danger" runat="server" ID="Logout" OnClick="Logout_Click"/>
        </div>

</body>
</html>
   </asp:Content>
