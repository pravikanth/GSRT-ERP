<%@ Page Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="ShowContacts.aspx.cs" Inherits="ShowContacts" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
    <div style="z-index: 1; left: 10px; top: 110px; position: absolute; height: 394px; width: 1265px">
        <asp:Panel ID="Panel1" runat="server" Style="z-index: 1; left: 36px; top: 7px; position: absolute; height: 495px; width: 1225px">
            <asp:Label ID="Label5" runat="server" Style="z-index: 1; left: 35px; top: 351px; position: absolute" Font-Bold="False" Font-Size="Medium" Font-Underline="False"></asp:Label>
            <asp:Label ID="Label1" runat="server" Text="Point of Contacts" Style="z-index: 1; left: 471px; top: 61px; position: absolute" Font-Bold="True" Font-Size="X-Large" Font-Underline="True"></asp:Label>
            <asp:GridView ID="GridView1" runat="server" Style="z-index: 1; left: 6px; top: 176px; position: absolute; height: 169px; width: 1205px" AutoGenerateColumns="False" EmptyDataText="Data Unavailable" EnableModelValidation="True" CellPadding="4" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:TemplateField HeaderText="">
                        <ItemTemplate>
                            <asp:Label ID="PocID" runat="server" Text='<%# Eval("poc_id") %>' Visible="false"></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Name" HeaderStyle-HorizontalAlign="Left">
                        <ItemTemplate>
                            <asp:Label ID="FirstName" runat="server" Text='<%# Eval("poc_fname") %>'></asp:Label>

                            <asp:Label ID="LastName" runat="server" Text='<%# Eval("poc_lname") %>'></asp:Label>
                        </ItemTemplate>
                        <HeaderStyle HorizontalAlign="Left" />
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Title" HeaderStyle-HorizontalAlign="Left">
                        <ItemTemplate>
                            <asp:Label ID="Title" runat="server" Text='<%# Eval("Poc_title") %>'></asp:Label>
                        </ItemTemplate>
                        <HeaderStyle HorizontalAlign="Left" />
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Company Name" HeaderStyle-HorizontalAlign="Left">
                        <ItemTemplate>
                            <asp:Label ID="CompanyName" runat="server" Text='<%# Eval("Company_name") %>'></asp:Label>
                        </ItemTemplate>
                        <HeaderStyle HorizontalAlign="Left" />
                    </asp:TemplateField>
                    <asp:TemplateField HeaderStyle-HorizontalAlign="Left" HeaderText="Phone">
                        <ItemTemplate>
                            <asp:Label ID="Phone" runat="server" Text='<%# Eval("Poc_phone") %>'></asp:Label>
                        </ItemTemplate>
                        <HeaderStyle HorizontalAlign="Left" />
                        <ControlStyle Width ="100" />
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Notes" HeaderStyle-HorizontalAlign="Left">
                        <ItemTemplate>
                            <asp:LinkButton ID="Notes" runat="server" Text='<%# Eval("TotalNotes") %>' OnClick="Notes_Click"></asp:LinkButton>
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
            <asp:TextBox ID="tbName" runat="server" MaxLength="50" Style="z-index: 1; left: 100px; top: 133px; position: absolute; width: 249px"></asp:TextBox>
            <asp:Button ID="btnSearch" runat="server" OnClick="btnSearch_Click" Style="z-index: 1; left: 367px; top: 132px; position: absolute; width: 97px; height: 22px;" Text="Search " />
            <asp:Button ID="btnReset" runat="server" OnClick="btnReset_Click" Style="height: 22px; z-index: 1; left: 474px; top: 132px; position: absolute; width: 92px" Text="Reset Filter" />
            <asp:Label ID="lblSearch" runat="server" Style="z-index: 1; left: 12px; top: 133px; position: absolute" Text="Enter Name: "></asp:Label>
        </asp:Panel>
    </div>
</asp:Content>
