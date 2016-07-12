<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="CreateUsers.aspx.cs" Inherits="CreateUsers" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
    <asp:Panel ID="Panel1" runat="server" Style="z-index: 1; left: 10px; top: 156px; position: absolute; height: 499px; width: 100%">
        <asp:Panel ID="Panel2" runat="server" Style="z-index: 1; left: 457px; top: 52px; position: absolute; height: 375px; width: 421px">

            <asp:Label ID="Label1" runat="server" Text="Create User" Style="z-index: 1; left: 155px; top: 24px; position: absolute" Font-Bold="True" Font-Size="Large" Font-Underline="True" Font-Names="Segoe UI" ForeColor="#000066"></asp:Label>

            <asp:Label ID="lblUserName" runat="server" Style="z-index: 1; left: 22px; top: 79px; position: absolute" Font-Bold="False" Font-Size="Medium" Font-Underline="False">Username:</asp:Label>
            <asp:TextBox ID="txtUserName" runat="server" Style="z-index: 1; left: 154px; top: 79px; position: absolute; width: 223px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="UserName is required" style="z-index: 1; left: 391px; top: 80px; position: absolute; width: 9px; height: 18px;" ControlToValidate="txtUserName" InitialValue="" validationgroup="CreateUserGroup" ForeColor="Red" >*</asp:RequiredFieldValidator>

            <asp:Label ID="lblPassword" runat="server" Style="z-index: 1; left: 22px; top: 116px; position: absolute" Font-Bold="False" Font-Size="Medium" Font-Underline="False">Password:</asp:Label>
            <asp:TextBox ID="txtPassword" runat="server" Style="z-index: 1; left: 154px; top: 116px; position: absolute; width: 224px" TextMode="Password"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Password is required" style="z-index: 1; left: 391px; top: 116px; position: absolute; width: 9px; height: 18px;" ControlToValidate="txtPassword" InitialValue="" validationgroup="CreateUserGroup" ForeColor="Red" >*</asp:RequiredFieldValidator>

            <asp:Label ID="lblConfirmPassword0" runat="server" Style="z-index: 1; left: 21px; top: 155px; position: absolute" Font-Bold="False" Font-Size="Medium" Font-Underline="False"> Confirm Password:</asp:Label>
            <asp:TextBox ID="txtConfirmPassword" runat="server" Style="z-index: 1; left: 154px; top: 155px; position: absolute; width: 224px" TextMode="Password"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Confirm Password is required" style="z-index: 1; left: 391px; top: 155px; position: absolute; width: 9px; height: 18px;" ControlToValidate="txtConfirmPassword" InitialValue="" validationgroup="CreateUserGroup" ForeColor="Red" >*</asp:RequiredFieldValidator>
            <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Passwords doesn't match" ForeColor="Red" style="z-index: 1; left: 391px; top: 155px; position: absolute" validationgroup="CreateUserGroup" ControlToCompare="txtPassword" ControlToValidate="txtConfirmPassword">*</asp:CompareValidator>

            <asp:Label ID="UserType" runat="server" Style="z-index: 1; left: 22px; top: 191px; position: absolute" Font-Bold="False" Font-Size="Medium" Font-Underline="False"> User Type:</asp:Label>
            <asp:DropDownList ID="ddlUserType" runat="server" Style="z-index: 1; left: 155px; top: 189px; width:224px; position: absolute">
                <asp:ListItem>Employee</asp:ListItem>
                <asp:ListItem>Sales</asp:ListItem>
                <asp:ListItem Value="PLM">Siemens</asp:ListItem>
                <asp:ListItem Value="Mgmt">Management</asp:ListItem>
            </asp:DropDownList>

            <asp:Button ID="btnCreateUser" runat="server" Style="z-index: 1; left: 294px; top: 222px; position: absolute; width: 87px" Text="Create User" OnClick="btnCreateUser_Click" validationgroup="CreateUserGroup"/>
            <asp:Label ID="lblErrorMessage" runat="server" Style="z-index: 1; left: 25px; top: 264px; position: absolute; height: 77px; width: 357px;" Font-Bold="False" Font-Size="Medium" Font-Underline="False" ForeColor="Red"></asp:Label>
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" validationgroup="CreateUserGroup" ForeColor="Red" Height="53px" style="z-index: 1; left: 433px; top: 63px; position: absolute; height: 53px; width: 330px" Width="330px"/>
        </asp:Panel>
    </asp:Panel>
</asp:Content>

