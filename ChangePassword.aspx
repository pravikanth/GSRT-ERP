<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="ChangePassword.aspx.cs" Inherits="ChangePassword" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
    <div style="z-index: 1; left: 10px; top: 45px; position: absolute; height: 521px; width: 1285px">
        <asp:Panel ID="Panel1" runat="server" Style="z-index: 1; left: 476px; top: 123px; position: absolute; height: 349px; width: 280px">
            <asp:Label ID="lblHeading" runat="server" Text="Change Password" Style="z-index: 1; left: 47px; top: 21px; position: absolute; height: 31px; width: 190px;" Font-Bold="False" Font-Size="X-Large" Font-Underline="False" Font-Names="Segoe UI" ForeColor="#000066"></asp:Label>

            <asp:Label ID="lblOldPassword" runat="server" Style="z-index: 1; left: 22px; top: 79px; position: absolute" Font-Bold="False" Font-Size="Medium" Font-Underline="False">Old Password:</asp:Label>
            <asp:TextBox ID="txtOldPassword" runat="server" Style="z-index: 1; left: 22px; top: 103px; position: absolute; width: 223px" TextMode="Password"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Old password is required" Style="z-index: 1; left: 262px; top: 103px; position: absolute; width: 9px; height: 18px;" ControlToValidate="txtOldPassword" InitialValue="" ValidationGroup="ChangePasswordGroup" ForeColor="Red">*</asp:RequiredFieldValidator>

            <asp:Label ID="lblNewPassword" runat="server" Style="z-index: 1; left: 22px; top: 141px; position: absolute" Font-Bold="False" Font-Size="Medium" Font-Underline="False">New Password:</asp:Label>
            <asp:TextBox ID="txtNewPassword" runat="server" Style="z-index: 1; left: 22px; top: 166px; position: absolute; width: 224px" TextMode="Password"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="New password is required" Style="z-index: 1; left: 262px; top: 166px; position: absolute; width: 9px; height: 18px;" ControlToValidate="txtNewPassword" InitialValue="" ValidationGroup="ChangePasswordGroup" ForeColor="Red">*</asp:RequiredFieldValidator>

            <asp:Label ID="lblConfirmPassword" runat="server" Style="z-index: 1; left: 25px; top: 205px; position: absolute" Font-Bold="False" Font-Size="Medium" Font-Underline="False">Confirm Password:</asp:Label>
            <asp:TextBox ID="txtConfirmPassword" runat="server" Style="z-index: 1; left: 22px; top: 233px; position: absolute; width: 224px" TextMode="Password"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Confirm password is required" Style="z-index: 1; left: 262px; top: 233px; position: absolute; width: 9px; height: 18px;" ControlToValidate="txtConfirmPassword" InitialValue="" ValidationGroup="ChangePasswordGroup" ForeColor="Red">*</asp:RequiredFieldValidator>
            <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Passwords doesn't match" ForeColor="Red" style="z-index: 1; left: 262px; top: 233px; position: absolute" validationgroup="ChangePasswordGroup" ControlToCompare="txtNewPassword" ControlToValidate="txtConfirmPassword" >*</asp:CompareValidator>

            <asp:Button ID="btnChangePassword" runat="server" Style="z-index: 1; left: 135px; top: 275px; position: absolute; width: 119px; height: 26px;" Text="Change Password" OnClick="Button1_Click" validationgroup="ChangePasswordGroup"/>

            <asp:Label ID="lblErrorMessage" runat="server" Style="z-index: 1; left: 25px; top: 319px; position: absolute" Font-Bold="False" Font-Size="Medium" Font-Underline="False" ForeColor="Red"></asp:Label>

            <asp:ValidationSummary ID="ValidationSummary1" runat="server" validationgroup="ChangePasswordGroup" ForeColor="Red" Height="53px" style="z-index: 1; left: 302px; top: 82px; position: absolute; height: 53px; width: 330px" Width="330px"/>

        </asp:Panel>
    </div>
</asp:Content>

