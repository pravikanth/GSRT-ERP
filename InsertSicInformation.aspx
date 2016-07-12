<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="InsertSicInformation.aspx.cs" Inherits="InsertSicInformation" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
    <asp:Panel ID="Panel1" runat="server" Style="z-index: 1; left: 10px; top: 156px; position: absolute; height: 357px; width: 100%">
        <asp:Panel ID="Panel2" runat="server" Style="z-index: 1; left: 457px; top: 52px; position: absolute; height: 287px; width: 421px">

            <asp:Label ID="lblSicInformation" runat="server" Text="Add SIC Information" Style="z-index: 1; left: 155px; top: 24px; position: absolute" Font-Bold="True" Font-Size="Large" Font-Underline="True" Font-Names="Segoe UI" ForeColor="#000066"></asp:Label>

            <asp:Label ID="lblSicCode" runat="server" Style="z-index: 1; left: 22px; top: 80px; position: absolute" Font-Bold="False" Font-Size="Medium" Font-Underline="False">Sic Code:</asp:Label>
            <asp:TextBox ID="txtSicCode" runat="server" Style="z-index: 1; left: 154px; top: 80px; position: absolute; width: 223px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="SID Code is required" style="z-index: 1; left: 391px; top: 80px; position: absolute; width: 9px; height: 18px;" ControlToValidate="txtSicCode" InitialValue="" validationgroup="AddSicInfoGroup" ForeColor="Red" >*</asp:RequiredFieldValidator>

            <asp:Label ID="lblSicDescription" runat="server" Style="z-index: 1; left: 22px; top: 110px; position: absolute" Font-Bold="False" Font-Size="Medium" Font-Underline="False">Sic Description:</asp:Label>
            <asp:TextBox ID="txtSicDescription" runat="server" Style="z-index: 1; left: 154px; top: 110px; position: absolute; width: 223px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="SIC Description is required" style="z-index: 1; left: 391px; top: 110px; position: absolute; width: 9px; height: 18px;" ControlToValidate="txtSicDescription" InitialValue="" validationgroup="AddSicInfoGroup" ForeColor="Red" >*</asp:RequiredFieldValidator>

            <asp:Button ID="btnSicInfo" runat="server" Style="z-index: 1; left: 277px; top: 144px; position: absolute; width: 104px" Text="Add Sic Info"  validationgroup="AddSicInfoGroup" OnClick="btnSicInfo_Click"/>
            <asp:Label ID="lblErrorMessage" runat="server" Style="z-index: 1; left: 25px; top: 187px; position: absolute; height: 77px; width: 357px;" Font-Bold="False" Font-Size="Medium" Font-Underline="False" ForeColor="Red"></asp:Label>
            <asp:ValidationSummary ID="ValidationSummary3" runat="server" validationgroup="AddSicInfoGroup" ForeColor="Red" Height="53px" style="z-index: 1; left: 411px; top: 63px; position: absolute; height: 53px; width: 330px" Width="330px"/>

        </asp:Panel>
    </asp:Panel>
</asp:Content>

