<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="ConsultantInformation.aspx.cs" Inherits="ConsultantInformation" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
        <asp:Panel ID="Panel1" runat="server" Style="z-index: 1; left: 10px; top: 156px; position: absolute; height: 357px; width: 100%">
            <asp:Label ID="Label5" runat="server" Style="z-index: 1; left: 22px; top: 315px; position: absolute" Font-Bold="False" Font-Size="Medium" Font-Underline="False"></asp:Label>
            <asp:Label ID="Label1" runat="server" Text="Employees" Style="z-index: 1; left: 495px; top: 62px; position: absolute" Font-Bold="True" Font-Size="X-Large" Font-Underline="True"></asp:Label>
            <asp:GridView ID="GridView1" runat="server" Style="z-index: 1; left: 60px; top: 105px; position: absolute; height: 169px; width: 1143px" AutoGenerateColumns="False" EmptyDataText="Data Unavailable" CellPadding="4" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:TemplateField HeaderText="">
                        <ItemTemplate>
                            <asp:Label ID="Consultantid" runat="server" Text='<%# Eval("Consultantid") %>' Visible="false"></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Full Name" HeaderStyle-HorizontalAlign="Left">
                        <ItemTemplate>
                            <asp:LinkButton ID="FirstNameLB" runat="server" OnClick="FirstNameLB_Click" Text='<%# Eval("firstname") %>'></asp:LinkButton>
                            <asp:LinkButton ID="LastNameLB" runat="server" OnClick="FirstNameLB_Click" Text='<%# Eval("lastname") %>'></asp:LinkButton>
                        </ItemTemplate>
                        <HeaderStyle HorizontalAlign="Left" />
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Client" HeaderStyle-HorizontalAlign="Left">
                        <ItemTemplate>
                            <asp:Label ID="Title" runat="server" Text='<%# Eval("Client") %>'></asp:Label>
                        </ItemTemplate>
                        <HeaderStyle HorizontalAlign="Left" />
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Phone" HeaderStyle-HorizontalAlign="Left">
                        <ItemTemplate>
                            <asp:Label ID="CompanyName" runat="server" Text='<%# Eval("ConsultantMobile") %>'></asp:Label>
                        </ItemTemplate>
                        <HeaderStyle HorizontalAlign="Left" />
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Location" HeaderStyle-HorizontalAlign="Left" ControlStyle-Width="120">
                        <ItemTemplate>
                            <asp:Label ID="Phone" runat="server" Text='<%# Eval("ConsultantLocation") %>'></asp:Label>
                        </ItemTemplate>
                        <ControlStyle Width="120px" />
                        <HeaderStyle HorizontalAlign="Left" />
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Email">
                        <ItemTemplate>
                            <asp:Label ID="Email" runat="server" Text='<%# Eval("ConsultantEmail") %>' Visible="true"></asp:Label>
                        </ItemTemplate>
                        <HeaderStyle HorizontalAlign="Left" />
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="SkillSet" HeaderStyle-HorizontalAlign="Left" ControlStyle-Width="120">
                        <ItemTemplate>
                            <asp:Label ID="DirPhone" runat="server" Text='<%# Eval("ConsultantSkillSet") %>'></asp:Label>
                        </ItemTemplate>
                        <ControlStyle Width="120px" />
                        <HeaderStyle HorizontalAlign="Left" />
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Resume" HeaderStyle-HorizontalAlign="Left" ControlStyle-Width="120">
                        <ItemTemplate>
                            <a href="~/Resumes/" download="~/Resumes/<%# Eval("ConsultantResume") %>" target="_blank"> <%# Eval("ConsultantResume") %> </a>
                        </ItemTemplate>
                        <ControlStyle Width="120px" />
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
        </asp:Panel>
</asp:Content>

