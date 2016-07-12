<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="ViewCompanies.aspx.cs" Inherits="ViewCompanies" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
    <asp:Panel ID="Panel1" runat="server" Style="z-index: 1; left: 11px; top: 163px; position: absolute; height: 164px; width: 870px">
        <asp:DropDownList ID="cities" runat="server" Style="z-index: 1; left: 87px; top: 36px; position: absolute; width: 169px;">
        </asp:DropDownList>

        <asp:Label ID="lblSic" runat="server" Text="Sic Codes: " Style="z-index: 1; left: 297px; top: 38px; position: absolute"></asp:Label>
        <asp:DropDownList ID="sicCodes" runat="server" Style="z-index: 1; left: 383px; top: 36px; position: absolute; width: 169px;">
        </asp:DropDownList>

        <asp:Button ID="btnView" runat="server" Text="View Companies" Style="z-index: 1; left: 571px; top: 34px; position: absolute; width: 130px;" OnClick="btnView_Click" />

        <asp:Button ID="btnReset" runat="server" OnClick="btnReset_Click" Style="z-index: 1; left: 717px; top: 35px; position: absolute; width: 81px" Text="Reset Filter" />

        <asp:Label ID="lblCities" runat="server" Style="z-index: 1; left: 37px; top: 39px; position: absolute" Text="Cities: "></asp:Label>
        <asp:Label ID="lblStatus" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="Red" Style="text-align: center; z-index: 1; left: 11px; top: 81px; position: absolute; height: 18px; width: 988px;" Text=""></asp:Label>
        <div style="overflow-x: auto; width: 1300px; height: 350px; z-index: 1; left: 10px; top: 106px; position: absolute;">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" EmptyDataText="Data Unavailable" EnableModelValidation="True" CellPadding="4" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:TemplateField HeaderText="Company Name" HeaderStyle-HorizontalAlign="Left">
                        <ItemTemplate>
                            <asp:Label ID="compName" runat="server" Font-Bold="true" Text='<%# Eval("company_name") %>' Visible="true"></asp:Label>
                        </ItemTemplate>
                        <ControlStyle Width="300px" />
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Size Segment" HeaderStyle-HorizontalAlign="Left">
                        <ItemTemplate>
                            <asp:Label ID="sizeSegment" runat="server" Text='<%# (String.IsNullOrEmpty(Eval("size_segment").ToString().Trim()) ? "-" : Eval("size_segment")) %>'></asp:Label>
                        </ItemTemplate>
                        <ControlStyle Width="120px" />
                        <HeaderStyle HorizontalAlign="Left" />
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Account Owner" HeaderStyle-HorizontalAlign="Left">
                        <ItemTemplate>
                            <asp:Label ID="accntOwner" runat="server" Text='<%# Eval("accnt_owner").ToString()== null ? "Not Found" : Eval("accnt_owner") %>'></asp:Label>
                        </ItemTemplate>
                        <ControlStyle Width="120px" />
                        <HeaderStyle HorizontalAlign="Left" />
                    </asp:TemplateField>
                    <asp:TemplateField ControlStyle-Width="120" HeaderStyle-HorizontalAlign="Left" HeaderText="Industry">
                        <ItemTemplate>
                            <asp:Label ID="industry" runat="server" Text='<%# Eval("ind_description") %>'></asp:Label>
                        </ItemTemplate>
                        <ControlStyle Width="300px" />
                        <HeaderStyle HorizontalAlign="Left" />
                    </asp:TemplateField>
                    <asp:TemplateField ControlStyle-Width="120" HeaderStyle-HorizontalAlign="Left" HeaderText="SIC Code">
                        <ItemTemplate>
                            <asp:Label ID="sic" runat="server" Text='<%# Eval("sic_code") %>'></asp:Label>
                        </ItemTemplate>
                        <ControlStyle Width="120px" />
                        <HeaderStyle HorizontalAlign="Left" />
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Website" HeaderStyle-HorizontalAlign="Left">
                        <ItemTemplate>
                            <asp:Label ID="website" runat="server" Text='<%# Eval("website") %>'></asp:Label>
                        </ItemTemplate>
                        <ControlStyle Width="300px" />
                        <HeaderStyle HorizontalAlign="Left" />
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Category" HeaderStyle-HorizontalAlign="Left">
                        <ItemTemplate>
                            <asp:Label ID="category" runat="server" Text='<%# Eval("comp_category") %>'></asp:Label>
                        </ItemTemplate>
                        <ControlStyle Width="120px" />
                        <HeaderStyle HorizontalAlign="Left" />
                    </asp:TemplateField>
                    <asp:TemplateField ControlStyle-Width="120" HeaderStyle-HorizontalAlign="Left" HeaderText="Opportunity">
                        <ItemTemplate>
                            <asp:Label ID="opportunity" runat="server" Text='<%# Eval("opportunity") %>'></asp:Label>
                        </ItemTemplate>
                        <ControlStyle Width="120px" />
                        <HeaderStyle HorizontalAlign="Left" />
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Challenges" HeaderStyle-HorizontalAlign="Left">
                        <ItemTemplate>
                            <asp:Label ID="challenges" runat="server" Text='<%# Eval("challenges") %>'></asp:Label>
                        </ItemTemplate>
                        <ControlStyle Width="120px" />
                        <HeaderStyle HorizontalAlign="Left" />
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Channel" HeaderStyle-HorizontalAlign="Left">
                        <ItemTemplate>
                            <asp:Label ID="channel" runat="server" Text='<%# Eval("channel") %>'></asp:Label>
                        </ItemTemplate>
                        <ControlStyle Width="120px" />
                        <HeaderStyle HorizontalAlign="Left" />
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Trends" HeaderStyle-HorizontalAlign="Left">
                        <ItemTemplate>
                            <asp:Label ID="trends" runat="server" Text='<%# Eval("trends") %>'></asp:Label>
                        </ItemTemplate>
                        <ControlStyle Width="120px" />
                        <HeaderStyle HorizontalAlign="Left" />
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Phone" HeaderStyle-HorizontalAlign="Left">
                        <ItemTemplate>
                            <asp:Label ID="contact" runat="server" Text='<%# Eval("comp_contact") %>'></asp:Label>
                        </ItemTemplate>
                        <ControlStyle Width="120px" />
                        <HeaderStyle HorizontalAlign="Left" />
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Fax" HeaderStyle-HorizontalAlign="Left">
                        <ItemTemplate>
                            <asp:Label ID="fax" runat="server" Text='<%# Eval("comp_fax") %>'></asp:Label>
                        </ItemTemplate>
                        <ControlStyle Width="120px" />
                        <HeaderStyle HorizontalAlign="Left" />
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Email" HeaderStyle-HorizontalAlign="Left">
                        <ItemTemplate>
                            <asp:Label ID="email" runat="server" Text='<%# Eval("comp_email") %>'></asp:Label>
                        </ItemTemplate>
                        <ControlStyle Width="200px" />
                        <HeaderStyle HorizontalAlign="Left" />
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="City" HeaderStyle-HorizontalAlign="Left">
                        <ItemTemplate>
                            <asp:Label ID="city" runat="server" Text='<%# Eval("comp_city") %>'></asp:Label>
                        </ItemTemplate>
                        <ControlStyle Width="120px" />
                        <HeaderStyle HorizontalAlign="Left" />
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="State" HeaderStyle-HorizontalAlign="Left">
                        <ItemTemplate>
                            <asp:Label ID="state" runat="server" Text='<%# Eval("comp_state") %>'></asp:Label>
                        </ItemTemplate>
                        <ControlStyle Width="120px" />
                        <HeaderStyle HorizontalAlign="Left" />
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Zip" HeaderStyle-HorizontalAlign="Left">
                        <ItemTemplate>
                            <asp:Label ID="Zip" runat="server" Text='<%# Eval("comp_zip") %>'></asp:Label>
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
            </asp:GridView>
        </div>
    </asp:Panel>

</asp:Content>

