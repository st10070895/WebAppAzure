<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="Test2.Registration" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <p>
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
        Registration:</p>
    <p>
        Username:<asp:TextBox ID="TxtUsername" runat="server"></asp:TextBox>
    </p>
    <p>
        Password:<asp:TextBox ID="TxtPassword" runat="server" OnTextChanged="TextBox2_TextChanged"></asp:TextBox>
    </p>
</asp:Content>
