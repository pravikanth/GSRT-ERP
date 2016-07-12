<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="DeleteIndustry.aspx.cs" Inherits="DeleteIndustry" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
    <asp:Panel ID="Panel1" runat="server" Style="z-index: 1; left: 10px; top: 156px; position: absolute; height: 357px; width: 100%">
        <asp:Panel ID="Panel2" runat="server" Style="z-index: 1; left: 322px; top: 52px; position: absolute; height: 466px; width: 765px">

            <asp:Label ID="lblHeading" runat="server" Text="Delete Industry" Style="z-index: 1; left: 296px; top: 36px; position: absolute" Font-Bold="True" Font-Size="Large" Font-Underline="True" Font-Names="Segoe UI" ForeColor="#000066"></asp:Label>

            <asp:Label ID="lblIndustry" runat="server" Style="z-index: 1; left: 58px; top: 103px; position: absolute" Text="Search Industry: "></asp:Label>
            <asp:TextBox ID="tbIndustry" runat="server" Style="z-index: 1; left: 184px; top: 104px; position: absolute; width: 350px;"></asp:TextBox>
            <asp:Label ID="lblSelectIndustry" runat="server" Style="z-index: 1; left: 59px; top: 142px; position: absolute" Text="Select Industry: "></asp:Label>

            <asp:DropDownList ID="ddlIndustries" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlIndustries_SelectedIndexChanged" Style="z-index: 1; left: 186px; top: 140px; position: absolute; width: 347px;">
            </asp:DropDownList>
            <asp:Label ID="lblSelectedIndustry" runat="server" Font-Bold="True" Font-Size="Large" Style="z-index: 1; left: 59px; top: 177px; position: absolute; height: 70px; width: 615px;" Visible="False"></asp:Label>
            <asp:Button ID="btnGo" runat="server" OnClick="btnGo_Click" Style="z-index: 1; left: 552px; top: 102px; position: absolute; width: 33px; height: 27px;" Text="Go" />

            <asp:Button ID="btnDelete" runat="server" OnClick="btnDelete_Click" Style="z-index: 1; left: 556px; top: 140px; position: absolute" Text="Delete" />
            <asp:Button ID="btnReset" runat="server" OnClick="btnReset_Click" Style="z-index: 1; left: 621px; top: 140px; position: absolute" Text="Reset" />
        </asp:Panel>
    </asp:Panel>
</asp:Content>
