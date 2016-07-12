<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="DeleteComp.aspx.cs" Inherits="DeleteComp" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
    <asp:Panel ID="Panel1" runat="server" Style="z-index: 1; left: 10px; top: 156px; position: absolute; height: 357px; width: 100%">
        <asp:Panel ID="Panel2" runat="server" Style="z-index: 1; left: 96px; top: 46px; position: absolute; height: 466px; width: 912px">

            <asp:Label ID="lblHeading" runat="server" Text="Delete Company" Style="z-index: 1; left: 296px; top: 36px; position: absolute" Font-Bold="True" Font-Size="Large" Font-Underline="True" Font-Names="Segoe UI" ForeColor="#000066"></asp:Label>

            <asp:Label ID="lblSearch" runat="server" Text="Search:" Style="z-index: 1; left: 189px; top: 82px; position: absolute"></asp:Label>

            <asp:TextBox ID="tbCompName" runat="server" Style="z-index: 1; left: 246px; top: 81px; position: absolute; width: 188px;"></asp:TextBox>

            <asp:Label ID="lblAnd" runat="server" Style="z-index: 1; left: 499px; top: 82px; position: absolute; height: 19px" Text="AND/ OR"></asp:Label>

            <asp:Button ID="btnGo" runat="server" OnClick="btnGo_Click" Style="z-index: 1; left: 452px; top: 81px; position: absolute; height: 21px;" Text="Go" />

            <asp:Label ID="lblSelectComp" runat="server" Style="z-index: 1; left: 191px; top: 115px; position: absolute" Text="Select: "></asp:Label>

            <asp:DropDownList ID="ddlCompanies" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlCompanies_SelectedIndexChanged" Style="z-index: 1; left: 248px; top: 114px; position: absolute; height: 22px; bottom: 330px; width: 192px;">
            </asp:DropDownList>

            <asp:Label ID="lblSelected" runat="server" Visible="False" Font-Bold="True" Font-Size="Large" ForeColor="#FF3300" Style="z-index: 1; left: 198px; top: 157px; position: absolute; width: 846px;"></asp:Label>
            <asp:Button ID="btnReset" runat="server" OnClick="btnReset_Click" Style="z-index: 1; left: 329px; top: 179px; position: absolute" Text="Reset" />

            <asp:Button ID="btnDelete" runat="server" OnClick="btnDelete_Click" Style="z-index: 1; left: 246px; top: 180px; position: absolute" Text="Delete" />
        </asp:Panel>
    </asp:Panel>
</asp:Content>

