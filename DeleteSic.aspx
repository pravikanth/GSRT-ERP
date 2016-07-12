<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="DeleteSic.aspx.cs" Inherits="DeleteSic" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
    <asp:Panel ID="Panel1" runat="server" Style="z-index: 1; left: 10px; top: 156px; position: absolute; height: 357px; width: 100%">
        <asp:Panel ID="Panel2" runat="server" Style="z-index: 1; left: 505px; top: 41px; position: absolute; height: 343px; width: 319px">
            <asp:Label ID="lblHeading" runat="server" Font-Bold="True" Style="z-index: 1; left: 66px; top: 40px; position: absolute" Visible="true" Text="Delete SIC Information"></asp:Label>

            <asp:TextBox ID="tbSic" runat="server" Style="z-index: 1; left: 114px; top: 92px; position: absolute; width: 120px;"></asp:TextBox>
            <asp:Button ID="btnGo" runat="server" OnClick="btnGo_Click" Style="z-index: 1; left: 252px; top: 91px; position: absolute; width: 35px;" Text="Go" />
            <asp:Label ID="lblSicCodes" runat="server" Style="z-index: 1; left: 14px; top: 130px; position: absolute" Text="Select SIC:"></asp:Label>
            <asp:Label ID="lblSelectedSic" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="#0066FF" Style="z-index: 1; left: 14px; top: 167px; position: absolute; height: 21px; width: 428px;" Text="Label" Visible="False"></asp:Label>
            <asp:Button ID="btnDelete" runat="server" OnClick="btnDelete_Click" Style="z-index: 1; left: 116px; top: 202px; position: absolute; width: 82px" Text="Delete" />
            <asp:DropDownList ID="ddlSicCodes" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlSicCodes_SelectedIndexChanged" Style="z-index: 1; left: 115px; top: 130px; position: absolute; width: 120px;">
            </asp:DropDownList>

            <asp:Button ID="btnReset" runat="server" OnClick="btnReset_Click" Style="z-index: 1; left: 209px; top: 203px; position: absolute; width: 77px;" Text="Reset" />

            <asp:Label ID="lblSearch" runat="server" Style="z-index: 1; left: 13px; top: 90px; position: absolute" Text="Search:"></asp:Label>
        </asp:Panel>
    </asp:Panel>
</asp:Content>

