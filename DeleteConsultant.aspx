<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="DeleteConsultant.aspx.cs" Inherits="DeleteConsultant" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
        <asp:Panel ID="Panel1" runat="server" Style="z-index: 1; left: 10px; top: 156px; position: absolute; height: 357px; width: 100%">
        <asp:Panel ID="Panel2" runat="server" Style="z-index: 1; left: 457px; top: 52px; position: absolute; height: 507px; width: 421px">

            <asp:Label ID="lblHeading" runat="server" Text="Delete Consultant" Style="z-index: 1; left: 136px; top: 24px; position: absolute; width: 163px;" Font-Bold="True" Font-Size="Large" Font-Underline="True" Font-Names="Segoe UI" ForeColor="#000066"></asp:Label>

            <asp:Label ID="lblConsultantId" runat="server" Style="z-index: 1; left: 22px; top: 80px; position: absolute" Font-Bold="False" Font-Size="Medium" Font-Underline="False">Consultant:</asp:Label>
            <asp:DropDownList ID="ddlConsultantId" runat="server" Style="z-index: 1; left: 154px; top: 80px; width: 224px; position: absolute" AutoPostBack="True" OnSelectedIndexChanged="ddlConsultantId_SelectedIndexChanged">
            </asp:DropDownList>

            <asp:Label ID="lblFirstName" runat="server" Style="z-index: 1; left: 22px; top: 110px; position: absolute" Font-Bold="False" Font-Size="Medium" Font-Underline="False">First name:</asp:Label>
            <asp:TextBox ID="txtFirstName" runat="server" Style="z-index: 1; left: 154px; top: 110px; position: absolute; width: 223px"></asp:TextBox>

            <asp:Label ID="lblLastName" runat="server" Style="z-index: 1; left: 22px; top: 140px; position: absolute" Font-Bold="False" Font-Size="Medium" Font-Underline="False">Last name:</asp:Label>
            <asp:TextBox ID="txtLastName" runat="server" Style="z-index: 1; left: 154px; top: 140px; position: absolute; width: 223px"></asp:TextBox>

            <asp:Label ID="lblClient" runat="server" Style="z-index: 1; left: 22px; top: 170px; position: absolute" Font-Bold="False" Font-Size="Medium" Font-Underline="False">Client:</asp:Label>
            <asp:TextBox ID="txtClient" runat="server" Style="z-index: 1; left: 154px; top: 170px; position: absolute; width: 223px"></asp:TextBox>

            <asp:Label ID="lblPhone" runat="server" Style="z-index: 1; left: 22px; top: 200px; position: absolute" Font-Bold="False" Font-Size="Medium" Font-Underline="False">Mobile:</asp:Label>
            <asp:TextBox ID="txtPhone" runat="server" Style="z-index: 1; left: 154px; top: 200px; position: absolute; width: 223px"></asp:TextBox>

            <asp:Label ID="lblLocation" runat="server" Style="z-index: 1; left: 22px; top: 230px; position: absolute" Font-Bold="False" Font-Size="Medium" Font-Underline="False">Location:</asp:Label>
            <asp:TextBox ID="txtLocation" runat="server" Style="z-index: 1; left: 154px; top: 230px; position: absolute; width: 223px"></asp:TextBox>

            <asp:Label ID="lblEmail" runat="server" Style="z-index: 1; left: 22px; top: 260px; position: absolute" Font-Bold="False" Font-Size="Medium" Font-Underline="False">Email:</asp:Label>
            <asp:TextBox ID="txtEmail" runat="server" Style="z-index: 1; left: 154px; top: 260px; position: absolute; width: 223px"></asp:TextBox>

            <asp:Label ID="lblSkillSet" runat="server" Style="z-index: 1; left: 22px; top: 290px; position: absolute" Font-Bold="False" Font-Size="Medium" Font-Underline="False">SkillSet:</asp:Label>
            <asp:TextBox ID="txtSkillSet" runat="server" Style="z-index: 1; left: 154px; top: 290px; position: absolute; width: 223px"></asp:TextBox>

            <asp:Label ID="lblResume" runat="server" Style="z-index: 1; left: 22px; top: 320px; position: absolute; height: 21px; width: 95px;" Font-Bold="False" Font-Size="Medium" Font-Underline="False">Resume:</asp:Label>
            <asp:TextBox ID="txtResume" runat="server" Style="z-index: 1; left: 154px; top: 320px; position: absolute; width: 223px"></asp:TextBox>

            <asp:Button ID="btnDeleteUser" runat="server" Style="z-index: 1; left: 256px; top: 357px; position: absolute; width: 125px" Text="Delete Consultant" OnClick="btnDeleteUser_Click" />
            <asp:Label ID="lblErrorMessage" runat="server" Style="z-index: 1; left: 25px; top: 401px; position: absolute; height: 77px; width: 357px;" Font-Bold="False" Font-Size="Medium" Font-Underline="False" ForeColor="Red"></asp:Label>
        </asp:Panel>
    </asp:Panel>
</asp:Content>

