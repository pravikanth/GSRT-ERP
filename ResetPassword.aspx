<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="ResetPassword.aspx.cs" Inherits="ResetPassword" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
    <asp:Panel ID="Panel1" runat="server" Style="z-index: 1; left: 10px; top: 156px; position: absolute; height: 499px; width: 100%">
        <asp:Panel ID="Panel2" runat="server" Style="z-index: 1; left: 480px; top: 52px; position: absolute; height: 349px; width: 458px">

            <asp:Label ID="Label1" runat="server" Text="Reset Password" Style="z-index: 1; left: 155px; top: 20px; position: absolute" Font-Bold="True" Font-Size="Large" Font-Underline="True" Font-Names="Segoe UI" ForeColor="#000066"></asp:Label>

            <asp:Label ID="lblUserName" runat="server" Style="z-index: 1; left: 22px; top: 79px; position: absolute" Font-Bold="False" Font-Size="Medium" Font-Underline="False">Username:</asp:Label>
            <asp:DropDownList ID="ddlUsers" runat="server" style="z-index: 1; left: 153px; top: 76px;  width: 230px; position: absolute; height: 22px;">
            </asp:DropDownList>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Select User Name" Style="z-index: 1; left: 391px; top: 79px; position: absolute; width: 9px; height: 18px;" ControlToValidate="ddlUsers" InitialValue="--Select--" ValidationGroup="ResetPasswordGroup" ForeColor="Red">*</asp:RequiredFieldValidator>

            <asp:Label ID="lblPassword" runat="server" Style="z-index: 1; left: 22px; top: 116px; position: absolute" Font-Bold="False" Font-Size="Medium" Font-Underline="False">Password:</asp:Label>
            <asp:TextBox ID="txtPassword" runat="server" Style="z-index: 1; left: 154px; top: 116px; position: absolute; width: 224px" TextMode="Password"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="password is required" Style="z-index: 1; left: 391px; top: 116px; position: absolute; width: 9px; height: 18px;" ControlToValidate="txtPassword" InitialValue="" ValidationGroup="ResetPasswordGroup" ForeColor="Red">*</asp:RequiredFieldValidator>

            <asp:Label ID="lblConfirmPassword" runat="server" Style="z-index: 1; left: 21px; top: 155px; position: absolute" Font-Bold="False" Font-Size="Medium" Font-Underline="False"> Confirm Password:</asp:Label>
            <asp:TextBox ID="txtConfirmPassword" runat="server" Style="z-index: 1; left: 154px; top: 151px; position: absolute; width: 224px" TextMode="Password"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="confirm password is required" Style="z-index: 1; left: 391px; top: 155px; position: absolute; width: 9px; height: 18px;" ControlToValidate="txtConfirmPassword" InitialValue="" ValidationGroup="ResetPasswordGroup" ForeColor="Red">*</asp:RequiredFieldValidator>
            <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Passwords doesn't match" ForeColor="Red" style="z-index: 1; left: 391px; top: 155px; position: absolute" validationgroup="ResetPasswordGroup" ControlToCompare="txtPassword" ControlToValidate="txtConfirmPassword" >*</asp:CompareValidator>

            <asp:Button ID="btnResetPassword" runat="server" Style="z-index: 1; left: 271px; top: 188px; position: absolute; width: 110px" ValidationGroup="ResetPasswordGroup" Text="Reset Password" OnClick="btnResetPassword_Click" />
            <asp:Label ID="lblErrorMessage" runat="server" Style="z-index: 1; left: 25px; top: 233px; position: absolute; height: 88px; width: 355px;" Font-Bold="False" Font-Size="Medium" Font-Underline="False" ForeColor="Red"></asp:Label>
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" validationgroup="ResetPasswordGroup" ForeColor="Red" Height="53px" style="z-index: 1; left: 403px; top: 60px; position: absolute; height: 53px; width: 330px" Width="330px"/>

        </asp:Panel>
    </asp:Panel>
</asp:Content>

