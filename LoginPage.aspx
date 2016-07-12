<%@ Page Language="C#" MasterPageFile="~/HomeMaster.master" AutoEventWireup="true" CodeFile="LoginPage.aspx.cs" Inherits="LoginPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div style="z-index: 1; left: 10px; top: 45px; position: absolute; height: 521px; width: 1285px">
        <asp:Panel ID="Panel1" runat="server" Style="z-index: 1; left: 476px; top: 123px; position: absolute; height: 349px; width: 280px">

            <asp:Label ID="Label1" runat="server" Text="Login" Style="z-index: 1; left: 105px; top: 19px; position: absolute" Font-Bold="False" Font-Size="X-Large" Font-Underline="False" Font-Names="Segoe UI" ForeColor="#000066"></asp:Label>

            <asp:Label ID="lblUserName" runat="server" Style="z-index: 1; left: 22px; top: 79px; position: absolute" Font-Bold="False" Font-Size="Medium" Font-Underline="False">Username:</asp:Label>
            <asp:TextBox ID="txtUserName" runat="server" Style="z-index: 1; left: 22px; top: 105px; position: absolute; width: 223px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="UserName is required" Style="z-index: 1; left: 257px; top: 105px; position: absolute; width: 185px; height: 18px;" ControlToValidate="txtUserName" InitialValue="" ValidationGroup="LoginGroup" ForeColor="Red"></asp:RequiredFieldValidator>

            <asp:Label ID="lblPassword" runat="server" Style="z-index: 1; left: 22px; top: 145px; position: absolute" Font-Bold="False" Font-Size="Medium" Font-Underline="False">Password:</asp:Label>
            <asp:TextBox ID="txtPassword" runat="server" Style="z-index: 1; left: 22px; top: 173px; position: absolute; width: 224px" TextMode="Password"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Password is required" Style="z-index: 1; left: 257px; top: 173px; position: absolute; width: 191px; height: 18px;" ControlToValidate="txtPassword" InitialValue="" ValidationGroup="LoginGroup" ForeColor="Red"></asp:RequiredFieldValidator>

            <asp:Button ID="Button1" runat="server" Style="z-index: 1; left: 186px; top: 212px; position: absolute; width: 65px" Text="Login" OnClick="Button1_Click" ValidationGroup="LoginGroup" />
            <asp:Label ID="lblErrorMessage" runat="server" Style="z-index: 1; left: 20px; top: 259px; position: absolute" Font-Bold="False" Font-Size="Medium" Font-Underline="False" ForeColor="Red"></asp:Label>
        </asp:Panel>
    </div>
</asp:Content>
