<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="Update_industry.aspx.cs" Inherits="Update_industry" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
    <asp:Panel ID="Panel1" runat="server" Style="z-index: 1; left: 10px; top: 156px; position: absolute; height: 357px; width: 100%">
        <asp:Panel ID="Panel2" runat="server" Style="z-index: 1; left: 322px; top: 52px; position: absolute; height: 466px; width: 765px">

            <asp:Label ID="lblAddInterveiwSchedule" runat="server" Text="Update Industry Info" Style="z-index: 1; left: 254px; top: 27px; position: absolute" Font-Bold="True" Font-Size="Large" Font-Underline="True" Font-Names="Segoe UI" ForeColor="#000066"></asp:Label>

            <asp:Label ID="lblIndustry" runat="server" Style="z-index: 1; left: 16px; top: 85px; position: absolute" Text="Select Industry:"></asp:Label>
            <asp:DropDownList ID="ddlIndustries" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlIndustries_SelectedIndexChanged" Style="z-index: 1; left: 142px; top: 83px; position: absolute; width: 526px;">
            </asp:DropDownList>

            <asp:Label ID="lblOldDesc" runat="server" Style="z-index: 1; left: 15px; top: 121px; position: absolute" Text="Old Description:"></asp:Label>
            <asp:TextBox ID="tbOldDesc" runat="server" Enabled="False" Style="z-index: 1; left: 142px; top: 121px; position: absolute; width: 524px; height: 76px;" TextMode="MultiLine"></asp:TextBox>

            <asp:Label ID="lblNewDesc" runat="server" Style="z-index: 1; left: 18px; top: 223px; position: absolute; width: 123px;" Text="New Description: "></asp:Label>
            <asp:TextBox ID="tbNewDesc" runat="server" Style="z-index: 1; left: 144px; top: 222px; position: absolute; width: 521px; height: 81px;" TextMode="MultiLine"></asp:TextBox>

            <asp:Button ID="btnUpdate" runat="server" OnClick="btnUpdate_Click" Style="z-index: 1; left: 143px; top: 321px; position: absolute; width: 128px; right: 494px" Text="Update Industry" />
            
            <asp:Button ID="btnReset" runat="server" OnClick="btnReset_Click" Style="z-index: 1; left: 286px; top: 321px; position: absolute" Text="Reset" />


            <asp:Label ID="lblUpdateStatus" runat="server" Font-Bold="True" Font-Size="Large" Style="z-index: 1; left: 15px; top: 378px; position: absolute; height: 76px; width: 734px;" Text="Label" Visible="False"></asp:Label>
        </asp:Panel>
    </asp:Panel>
</asp:Content>

