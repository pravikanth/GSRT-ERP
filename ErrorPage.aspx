<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="ErrorPage.aspx.cs" Inherits="ErrorPages" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
    <asp:Label ID="Label1" runat="server" style="z-index: 1; left: 25px; top: 163px; position: absolute; height: 28px; width: 275px; right: 739px;" Text="Page not found" Font-Bold="True" Font-Size="X-Large" ForeColor="Red"></asp:Label>
    <asp:Label ID="Label2" runat="server" style="z-index: 1; left: 26px; top: 196px; position: absolute; height: 16px">Please check the URL</asp:Label>
    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/AdminHome.aspx" style="z-index: 1; left: 25px; top: 223px; position: absolute">Back to Home page</asp:HyperLink>
</asp:Content>

