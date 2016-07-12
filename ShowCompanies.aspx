<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="ShowCompanies.aspx.cs" Inherits="ShowCompanies" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
    <div style="z-index: 1; left: 10px; top: 110px; position: absolute; height: 394px; width: 1265px">
        <asp:Panel ID="Panel1" runat="server" Style="z-index: 1; left: 36px; top: 7px; position: absolute; height: 495px; width: 1225px">
            <asp:Label ID="Label5" runat="server" Style="z-index: 1; left: 22px; top: 298px; position: absolute" Font-Bold="False" Font-Size="Medium" Font-Underline="False"></asp:Label>
            <asp:Label ID="Label1" runat="server" Text="Companies" Style="z-index: 1; left: 495px; top: 62px; position: absolute" Font-Bold="True" Font-Size="X-Large" Font-Underline="True"></asp:Label>
            <asp:GridView ID="GridView1" runat="server" Style="z-index: 1; left: 10px; top: 106px; position: absolute; height: 20px; width: 1205px" AutoGenerateColumns="False" EmptyDataText="Data Unavailable" CellPadding="4" ForeColor="#333333" GridLines="None">
                <Columns>
                    <asp:TemplateField HeaderText="">
                        <ItemTemplate>
                            <asp:Label ID="CompanyId" runat="server" Text='<%# Eval("CompanyId") %>' Visible="false"></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Name" HeaderStyle-HorizontalAlign="Left">
                        <ItemTemplate>
                            <asp:Label ID="CompanyName" runat="server" Text='<%# Eval("CompanyName") %>'></asp:Label>
                        </ItemTemplate>
                        <HeaderStyle HorizontalAlign="Left" />
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="sizeSegment" HeaderStyle-HorizontalAlign="Left">
                        <ItemTemplate>
                            <asp:Label ID="sizeSegment" runat="server" Text='<%# Eval("sizeSegment") %>'></asp:Label>
                        </ItemTemplate>
                        <HeaderStyle HorizontalAlign="Left" />
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="accountOwner" HeaderStyle-HorizontalAlign="Left" ControlStyle-Width="120">
                        <ItemTemplate>
                            <asp:Label ID="accountOwner" runat="server" Text='<%# Eval("accountOwner") %>'></asp:Label>
                        </ItemTemplate>
                        <ControlStyle Width="120px" />
                        <HeaderStyle HorizontalAlign="Left" />
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="PhysicalCity" HeaderStyle-HorizontalAlign="Left">
                        <ItemTemplate>
                            <asp:Label ID="PhysicalCity" runat="server" Text='<%# Eval("PhysicalCity") %>'></asp:Label>
                        </ItemTemplate>
                        <HeaderStyle HorizontalAlign="Left" />
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="PhysicalState" HeaderStyle-HorizontalAlign="Left">
                        <ItemTemplate>
                            <asp:Label ID="PhysicalState" runat="server" Text='<%# Eval("PhysicalState") %>'></asp:Label>
                        </ItemTemplate>
                        <HeaderStyle HorizontalAlign="Left" />
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="PhysicalZip" HeaderStyle-HorizontalAlign="Left">
                        <ItemTemplate>
                            <asp:Label ID="PhysicalZip" runat="server" Text='<%# Eval("PhysicalZip") %>'></asp:Label>
                        </ItemTemplate>
                        <HeaderStyle HorizontalAlign="Left" />
                    </asp:TemplateField>
                </Columns>

            </asp:GridView>
        </asp:Panel>
    </div>
</asp:Content>

