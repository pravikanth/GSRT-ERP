<%@ Page Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="ShowNotes.aspx.cs" Inherits="ShowNotes" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
    <div style="z-index: 1; left: 10px; top: 15px; position: absolute; height: 929px; width: 1289px">
        <asp:Panel ID="Panel1" runat="server" Style="z-index: 1; left: 16px; top: 155px; position: absolute; height: 770px; width: 1227px">
            <asp:HyperLink ID="contacts" runat="server" NavigateUrl="~/ShowContacts.aspx" Style="z-index: 1; left: 1040px; top: 46px; position: absolute">Back to Prospects List</asp:HyperLink>
            <asp:Label ID="Label1" runat="server" Text="Prospect Information" Style="z-index: 1; left: 476px; top: 9px; position: absolute; width: 223px; height: 33px;" Font-Bold="True" Font-Size="X-Large" Font-Underline="True"></asp:Label>
            <asp:Panel ID="Panel2" runat="server" Style="z-index: 1; left: 70px; top: 72px; position: absolute; height: 183px; width: 1114px" BackColor="#CCCCFF">
                <asp:Label ID="lblZip" runat="server" Text="Zip:" Style="z-index: 1; left: 379px; top: 143px; position: absolute"></asp:Label>
                <asp:Label ID="lblCityVal" runat="server" Style="z-index: 1; left: 498px; top: 78px; position: absolute; height: 16px;"></asp:Label>
                <asp:Label ID="lblLName" runat="server" Text="Last Name:" Style="z-index: 1; left: 22px; top: 46px; position: absolute"></asp:Label>
                <asp:Label ID="lblLNameVal" runat="server" Style="z-index: 1; left: 112px; top: 45px; position: absolute"></asp:Label>
                <asp:Label ID="lblTItle" runat="server" Text="Title:" Style="z-index: 1; left: 20px; top: 79px; position: absolute"></asp:Label>
                <asp:Label ID="lblStateVal" runat="server" Style="z-index: 1; left: 499px; top: 110px; position: absolute"></asp:Label>
                <asp:Label ID="lblState" runat="server" Text="State:" Style="z-index: 1; left: 376px; top: 112px; position: absolute; height: 19px;"></asp:Label>
                <asp:Label ID="lblZipVal" runat="server" Style="z-index: 1; left: 500px; top: 143px; position: absolute"></asp:Label>
                <asp:Label ID="lblCity" runat="server" Text="City:" Style="z-index: 1; left: 375px; top: 78px; position: absolute"></asp:Label>
                <asp:Label ID="lblFnameVal" runat="server" Style="z-index: 1; left: 110px; top: 13px; position: absolute"></asp:Label>
                <asp:Label ID="lblDirNumber" runat="server" Text="Comp Contact:" Style="z-index: 1; left: 375px; top: 46px; position: absolute"></asp:Label>
                <asp:Label ID="lblDirNumberVal" runat="server" Style="z-index: 1; left: 497px; top: 45px; position: absolute"></asp:Label>
                <asp:Label ID="lblFname" runat="server" Text="First Name:" Style="z-index: 1; left: 21px; top: 14px; position: absolute"></asp:Label>
                <asp:Label ID="lblTitleVal" runat="server" Style="z-index: 1; left: 113px; top: 78px; position: absolute"></asp:Label>
                <asp:Label ID="lblCompanyName" runat="server" Text="Company Name:" Style="z-index: 1; left: 374px; top: 13px; position: absolute"></asp:Label>
                <asp:Label ID="lblEmailVal" runat="server" Style="z-index: 1; left: 112px; top: 144px; position: absolute"></asp:Label>
                <asp:Label ID="lblPhoneVal" runat="server" Style="z-index: 1; left: 113px; top: 109px; position: absolute"></asp:Label>
                <asp:Label ID="lblEmail" runat="server" Text="Email:" Style="z-index: 1; left: 20px; top: 145px; position: absolute"></asp:Label>
                <asp:Label ID="lblPhone" runat="server" Text="Phone:" Style="z-index: 1; left: 20px; top: 111px; position: absolute"></asp:Label>
                <asp:Label ID="lblCompanyNameVal" runat="server" Style="z-index: 1; left: 496px; top: 13px; position: absolute"></asp:Label>
                <asp:Label ID="lblErrorMessage" runat="server" Style="z-index: 1; left: 21px; top: 311px; position: absolute" ForeColor="Red"></asp:Label>
            </asp:Panel>

            <asp:Label ID="lbNotes" runat="server" Text="Notes:" Style="z-index: 1; left: 89px; top: 264px; position: absolute; width: 47px; right: 913px;"></asp:Label>
            <asp:GridView ID="GridView1" runat="server" Style="z-index: 1; left: 77px; top: 414px; position: absolute; height: 153px; width: 1101px" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:TemplateField HeaderText="">
                        <ItemTemplate>
                            <asp:Label ID="NotesID" runat="server" Text='<%# Eval("notes_id") %>' Visible="false"></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Notes" HeaderStyle-HorizontalAlign="Left">
                        <ItemTemplate>
                            <asp:Label ID="Notes" runat="server" Text='<%# Eval("notes") %>'></asp:Label>
                        </ItemTemplate>
                        <HeaderStyle HorizontalAlign="Left" />
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Log Date (PST)" HeaderStyle-HorizontalAlign="Left">
                        <ItemTemplate>
                            <asp:Label ID="LogDate" runat="server" Text='<%# Eval("creation_date") %>'></asp:Label>
                        </ItemTemplate>
                        <HeaderStyle HorizontalAlign="Left" />
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Username" HeaderStyle-HorizontalAlign="Left">
                        <ItemTemplate>
                            <asp:Label ID="username" runat="server" Text='<%# Eval("username") %>'></asp:Label>
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
            <asp:TextBox ID="TextBox1" runat="server" Style="z-index: 1; left: 91px; top: 295px; position: absolute; height: 70px; width: 772px" TextMode="MultiLine"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Notes field cannot be empty" Style="z-index: 1; left: 874px; top: 296px; position: absolute; width: 9px; height: 18px;" ControlToValidate="TextBox1" InitialValue="" ValidationGroup="ShowNotesGroup" ForeColor="Red"></asp:RequiredFieldValidator>
            <asp:Button ID="btnNotes" runat="server" ValidationGroup="ShowNotesGroup" Style="z-index: 1; left: 880px; top: 344px; position: absolute; width: 75px" Text="Add Notes" OnClick="btnNotes_Click" />
        </asp:Panel>
    </div>
</asp:Content>
