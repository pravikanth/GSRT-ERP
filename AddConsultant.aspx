<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="AddConsultant.aspx.cs" Inherits="AddConsultant" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
    <asp:Panel ID="Panel1" runat="server" Style="z-index: 1; left: 10px; top: 156px; position: absolute; height: 357px; width: 100%">
        <asp:Panel ID="Panel2" runat="server" Style="z-index: 1; left: 457px; top: 52px; position: absolute; height: 507px; width: 421px">

            <asp:Label ID="Label1" runat="server" Text="Add Consultant" Style="z-index: 1; left: 155px; top: 24px; position: absolute" Font-Bold="True" Font-Size="Large" Font-Underline="True" Font-Names="Segoe UI" ForeColor="#000066"></asp:Label>

            <asp:Label ID="lblFirstName" runat="server" Style="z-index: 1; left: 22px; top: 80px; position: absolute" Font-Bold="False" Font-Size="Medium" Font-Underline="False">First name:</asp:Label>
            <asp:TextBox ID="txtFirstName" runat="server" Style="z-index: 1; left: 154px; top: 80px; position: absolute; width: 223px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="First Name is required" style="z-index: 1; left: 391px; top: 80px; position: absolute; width: 9px; height: 18px;" ControlToValidate="txtFirstName" InitialValue="" validationgroup="AddConsultantGroup" ForeColor="Red" >*</asp:RequiredFieldValidator>

            <asp:Label ID="lblLastName" runat="server" Style="z-index: 1; left: 22px; top: 110px; position: absolute" Font-Bold="False" Font-Size="Medium" Font-Underline="False">Last name:</asp:Label>
            <asp:TextBox ID="txtLastName" runat="server" Style="z-index: 1; left: 154px; top: 110px; position: absolute; width: 223px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Last Name is required" style="z-index: 1; left: 391px; top: 110px; position: absolute; width: 9px; height: 18px;" ControlToValidate="txtLastName" InitialValue="" validationgroup="AddConsultantGroup" ForeColor="Red" >*</asp:RequiredFieldValidator>

            <asp:Label ID="lblClient" runat="server" Style="z-index: 1; left: 22px; top: 140px; position: absolute" Font-Bold="False" Font-Size="Medium" Font-Underline="False">Client:</asp:Label>
            <asp:TextBox ID="txtClient" runat="server" Style="z-index: 1; left: 154px; top: 140px; position: absolute; width: 223px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Client Name is required" style="z-index: 1; left: 391px; top: 140px; position: absolute; width: 9px; height: 18px;" ControlToValidate="txtClient" InitialValue="" validationgroup="AddConsultantGroup" ForeColor="Red" >*</asp:RequiredFieldValidator>

            <asp:Label ID="lblPhone" runat="server" Style="z-index: 1; left: 22px; top: 170px; position: absolute" Font-Bold="False" Font-Size="Medium" Font-Underline="False">Mobile:</asp:Label>
            <asp:TextBox ID="txtPhone" runat="server" Style="z-index: 1; left: 154px; top: 170px; position: absolute; width: 223px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Phone Number is required" style="z-index: 1; left: 391px; top: 170px; position: absolute; height: 18px;" ControlToValidate="txtPhone" InitialValue="" validationgroup="AddConsultantGroup" ForeColor="Red" >*</asp:RequiredFieldValidator>

            <asp:Label ID="lblLocation" runat="server" Style="z-index: 1; left: 22px; top: 200px; position: absolute" Font-Bold="False" Font-Size="Medium" Font-Underline="False">Location:</asp:Label>
            <asp:TextBox ID="txtLocation" runat="server" Style="z-index: 1; left: 154px; top: 200px; position: absolute; width: 223px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Location is required" style="z-index: 1; left: 391px; top: 200px; position: absolute; width: 9px; height: 18px;" ControlToValidate="txtLocation" InitialValue="" validationgroup="AddConsultantGroup" ForeColor="Red" >*</asp:RequiredFieldValidator>

            <asp:Label ID="lblEmail" runat="server" Style="z-index: 1; left: 22px; top: 230px; position: absolute" Font-Bold="False" Font-Size="Medium" Font-Underline="False">Email:</asp:Label>
            <asp:TextBox ID="txtEmail" runat="server" Style="z-index: 1; left: 154px; top: 230px; position: absolute; width: 223px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Email is required" style="z-index: 1; left: 391px; top: 230px; position: absolute; width: 9px; height: 18px;" ControlToValidate="txtEmail" InitialValue="" validationgroup="AddConsultantGroup" ForeColor="Red" >*</asp:RequiredFieldValidator>

            <asp:Label ID="lblSkillSet" runat="server" Style="z-index: 1; left: 22px; top: 260px; position: absolute" Font-Bold="False" Font-Size="Medium" Font-Underline="False">SkillSet:</asp:Label>
            <asp:TextBox ID="txtSkillSet" runat="server" Style="z-index: 1; left: 154px; top: 260px; position: absolute; width: 223px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="Skill Set is required" style="z-index: 1; left: 391px; top: 260px; position: absolute; width: 9px; height: 18px;" ControlToValidate="txtSkillSet" InitialValue="" validationgroup="AddConsultantGroup" ForeColor="Red" >*</asp:RequiredFieldValidator>

            <asp:Label ID="lblResume" runat="server" Style="z-index: 1; left: 22px; top: 290px; position: absolute; height: 23px; width: 95px;" Font-Bold="False" Font-Size="Medium" Font-Underline="False">File name:</asp:Label>
            <asp:FileUpload ID="FileUpload1" runat="server" Style="z-index: 1; left: 154px; top: 290px; position: absolute;  width: 223px" />

            <asp:Button ID="btnCreateUser" runat="server" Style="z-index: 1; left: 277px; top: 327px; position: absolute; width: 104px" Text="Add Consultant" OnClick="btnCreateUser_Click" validationgroup="AddConsultantGroup" />
            <asp:Label ID="lblErrorMessage" runat="server" Style="z-index: 1; left: 25px; top: 371px; position: absolute; height: 77px; width: 357px;" Font-Bold="False" Font-Size="Medium" Font-Underline="False" ForeColor="Red"></asp:Label>
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" validationgroup="AddConsultantGroup" ForeColor="Red" Height="53px" style="z-index: 1; left: 433px; top: 59px; position: absolute; height: 53px; width: 330px" Width="330px"/>
        </asp:Panel>
    </asp:Panel>
</asp:Content>

