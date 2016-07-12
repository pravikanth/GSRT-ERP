<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="UpdateSic.aspx.cs" Inherits="UpdateSic" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
    <asp:Panel ID="Panel1" runat="server" Style="z-index: 1; left: 10px; top: 156px; position: absolute; height: 357px; width: 100%">
        <asp:Panel ID="Panel2" runat="server" Style="z-index: 1; left: 457px; top: 52px; position: absolute; height: 383px; width: 421px">
            <asp:Label ID="lblHeading" runat="server" Font-Bold="True" Style="z-index: 1; left: 126px; top: 14px; position: absolute" Visible="true" Text="Update SIC Information"></asp:Label>

            <asp:Label ID="lblSic" runat="server" Style="z-index: 1; left: 18px; top: 62px; position: absolute" Text="Select SIC Code:"></asp:Label>
            <asp:DropDownList ID="ddlSicCodes" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlSicCodes_SelectedIndexChanged" Style="z-index: 1; left: 137px; top: 61px; position: absolute; width: 116px;">
            </asp:DropDownList>
            <asp:Button ID="btnReset" runat="server" Style="z-index: 1; left: 265px; top: 63px; position: absolute; height: 20px; width: 52px" Text="Reset" OnClick="btnReset_Click" />

            <asp:Label ID="lblSicCode" runat="server" Style="z-index: 1; left: 18px; top: 94px; position: absolute" Text="SIC Code:"></asp:Label>
            <asp:TextBox ID="tbSicCode" runat="server" Style="z-index: 1; left: 136px; top: 96px; position: absolute; width: 105px;"></asp:TextBox>
            
            <asp:Label ID="lblSicDesc" runat="server" Style="z-index: 1; left: 20px; top: 132px; position: absolute; height: 16px" Text="SIC Description:"></asp:Label>
            <asp:TextBox ID="tbSicDesc" runat="server" Style="z-index: 1; left: 138px; top: 135px; position: absolute; height: 67px; width: 226px;" TextMode="MultiLine"></asp:TextBox>

            <asp:Button ID="btnUpdateSIC" runat="server" Style="z-index: 1; left: 140px; top: 215px; position: absolute; width: 85px" Text="Update SIC" OnClick="btnUpdateSIC_Click" />
            <asp:Label ID="lblUpdateStatus" runat="server" Font-Bold="True" Style="z-index: 1; left: 17px; top: 258px; position: absolute" Visible="true" Text=""></asp:Label>
        </asp:Panel>
    </asp:Panel>
</asp:Content>

