<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="ShowSubmissions.aspx.cs" Inherits="ShowSubmissions" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
    <asp:Panel ID="Panel1" runat="server" Style="z-index: 1; left: 10px; top: 156px; position: absolute; height: 357px; width: 100%">
            <asp:HyperLink ID="contacts" runat="server" NavigateUrl="~/ConsultantInformation.aspx" Style="z-index: 1; left: 1044px; top: 46px; position: absolute">Back to Consultants List</asp:HyperLink>
            <asp:Label ID="Label1" runat="server" Text="Submissions" Style="z-index: 1; left: 527px; top: 31px; position: absolute; width: 137px; height: 33px;" Font-Bold="True" Font-Size="X-Large" Font-Underline="True"></asp:Label>

            <asp:GridView ID="GridView1" runat="server" Style="z-index: 1; left: 60px; top: 105px; position: absolute; height: 153px; width: 1143px;" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:TemplateField HeaderText=" Prime Vendor">
                        <ItemTemplate>
                            <asp:Label ID="PrimeVendor" runat="server" Text='<%# Eval("PrimeVendor") %>' Visible="True"></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="End Client" HeaderStyle-HorizontalAlign="Left">
                        <ItemTemplate>
                            <asp:Label ID="EndClient" runat="server" Text='<%# Eval("EndClient") %>'></asp:Label>
                        </ItemTemplate>
                        <HeaderStyle HorizontalAlign="Left" />
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Log Date (PST)" HeaderStyle-HorizontalAlign="Left">
                        <ItemTemplate>
                            <asp:Label ID="LogDate" runat="server" Text='<%# Eval("SubmissionDate") %>'></asp:Label>
                        </ItemTemplate>
                        <HeaderStyle HorizontalAlign="Left" />
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Notes" HeaderStyle-HorizontalAlign="Left">
                        <ItemTemplate>
                            <asp:Label ID="Notes" runat="server" Text='<%# Eval("Notes") %>'></asp:Label>
                        </ItemTemplate>
                        <HeaderStyle HorizontalAlign="Left" />
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Notes" HeaderStyle-HorizontalAlign="Left">
                        <ItemTemplate>
                            <asp:Label ID="Notes" runat="server" Text='<%# Eval("username") %>'></asp:Label>
                        </ItemTemplate>
                        <HeaderStyle HorizontalAlign="Left" />
                    </asp:TemplateField>
                </Columns>
                <EditRowStyle BackColor="#2461BF" />
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#EFF3FB" />
                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F5F7FB" />
                <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                <SortedDescendingCellStyle BackColor="#E9EBEF" />
                <SortedDescendingHeaderStyle BackColor="#4870BE" />
            </asp:GridView>
            <asp:Label ID="lblErrorMessage" runat="server" Style="z-index: 1; left: 21px; top: 311px; position: absolute" ForeColor="Red"></asp:Label>
        </asp:Panel>
</asp:Content>

