<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="DeletePOC.aspx.cs" Inherits="DeletePOC" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
    <asp:Panel ID="Panel1" runat="server" Style="z-index: 1; left: 10px; top: 156px; position: absolute; height: 357px; width: 100%">
        <asp:Panel ID="Panel2" runat="server" Style="z-index: 1; left: 457px; top: 52px; position: absolute; height: 507px; width: 421px">
            <asp:Label ID="lblHeading" runat="server" Text="Delete POC" Style="z-index: 1; left: 136px; top: 24px; position: absolute; width: 163px;" Font-Bold="True" Font-Size="Large" Font-Underline="True" Font-Names="Segoe UI" ForeColor="#000066"></asp:Label>
            <asp:Label ID="lblSelectPoc" runat="server" Style="z-index: 1; left: 19px; top: 119px; position: absolute; bottom: 368px; width: 84px;" Text="Select POC: "></asp:Label>
            <asp:DropDownList ID="ddlSelectPoc" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlSelectPoc_SelectedIndexChanged" Style="z-index: 1; left: 117px; top: 118px; position: absolute; width: 135px;">
            </asp:DropDownList>
            <asp:TextBox ID="tbPoc" runat="server" Style="z-index: 1; left: 116px; top: 83px; position: absolute; width: 135px;"></asp:TextBox>
            <asp:Label ID="lblSelectedPOC" runat="server" Font-Bold="True" Font-Size="Large" Style="z-index: 1; left: 20px; top: 148px; position: absolute; height: 22px; width: 507px;" Text="Label" Visible="False"></asp:Label>
            <asp:Button ID="btnReset" runat="server" OnClick="btnReset_Click" Style="z-index: 1; left: 207px; top: 175px; position: absolute" Text="Reset" />
            <asp:Button ID="btnDelete" runat="server" OnClick="btnDelete_Click" Style="z-index: 1; left: 120px; top: 175px; position: absolute; width: 74px" Text="Delete" />

            <asp:Button ID="btnGo" runat="server" OnClick="btnGo_Click" Style="z-index: 1; left: 262px; top: 80px; position: absolute" Text="Go" />

            <asp:Label ID="lblSearchPoc" runat="server" Style="z-index: 1; left: 19px; top: 83px; position: absolute" Text="Search POC: "></asp:Label>
        </asp:Panel>
    </asp:Panel>
</asp:Content>

