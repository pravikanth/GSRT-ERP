<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="AddInterviewSchedule.aspx.cs" Inherits="AddInterviewSchedule" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <asp:Panel ID="Panel1" runat="server" Style="z-index: 1; left: 10px; top: 156px; position: absolute; height: 357px; width: 100%">
        <asp:Panel ID="Panel2" runat="server" Style="z-index: 1; left: 457px; top: 52px; position: absolute; height: 437px; width: 406px">

            <asp:Label ID="lblAddInterveiwSchedule" runat="server" Text="Add Submission Information" Style="z-index: 1; left: 91px; top: 25px; position: absolute" Font-Bold="True" Font-Size="Large" Font-Underline="True" Font-Names="Segoe UI" ForeColor="#000066"></asp:Label>

            <asp:Label ID="lblConsultantId" runat="server" Style="z-index: 1; left: 22px; top: 80px; position: absolute; margin-bottom: 0px;" Font-Bold="False" Font-Size="Medium" Font-Underline="False">Consultant ID:</asp:Label>
            <asp:DropDownList ID="ddlConsultantId" runat="server" Style="z-index: 1; left: 154px; top: 80px; width: 224px; position: absolute">
            </asp:DropDownList>

            <asp:Label ID="lblPrimeVendor" runat="server" Style="z-index: 1; left: 22px; top: 110px; position: absolute" Font-Bold="False" Font-Size="Medium" Font-Underline="False">Prime Vendor:</asp:Label>
            <asp:TextBox ID="txtPrimeVendor" runat="server" Style="z-index: 1; left: 154px; top: 110px; position: absolute; width: 223px"></asp:TextBox>

            <asp:Label ID="lblEndClient" runat="server" Style="z-index: 1; left: 22px; top: 140px; position: absolute" Font-Bold="False" Font-Size="Medium" Font-Underline="False">End Client:</asp:Label>
            <asp:TextBox ID="txtEndClient" runat="server" Style="z-index: 1; left: 154px; top: 140px; position: absolute; width: 223px"></asp:TextBox>

            <asp:Label ID="lblSubmissionDate" runat="server" Style="z-index: 1; left: 22px; top: 170px; position: absolute" Font-Bold="False" Font-Size="Medium" Font-Underline="False">Submission Date:</asp:Label>
            <asp:TextBox ID="txtSubmissionDate" runat="server" Style="z-index: 1; left: 154px; top: 170px; position: absolute; width: 223px" ReadOnly="true"></asp:TextBox>

            <asp:Label ID="lblNotes" runat="server" Style="z-index: 1; left: 22px; top: 200px; position: absolute" Font-Bold="False" Font-Size="Medium" Font-Underline="False">Notes:</asp:Label>
            <asp:TextBox ID="txtNotes" runat="server" Style="z-index: 1; left: 154px; top: 200px; position: absolute; width: 223px; height: 68px;" TextMode="MultiLine"></asp:TextBox>

            <asp:Button ID="btnAddSubmissionInfo" runat="server" Style="z-index: 1; left: 249px; top: 290px; position: absolute; width: 132px" Text="Add Submission Info" OnClick="btnAddPoc_Click" />
            <asp:Label ID="lblErrorMessage" runat="server" Style="z-index: 1; left: 25px; top: 330px; position: absolute; height: 77px; width: 357px;" Font-Bold="False" Font-Size="Medium" Font-Underline="False" ForeColor="Red"></asp:Label>
        </asp:Panel>
    </asp:Panel>
</asp:Content>

