<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="AddPocInformation.aspx.cs" Inherits="AddPocInformation" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
    <asp:Panel ID="Panel1" runat="server" Style="z-index: 1; left: 10px; top: 156px; position: absolute; height: 357px; width: 100%">
        <asp:Panel ID="Panel2" runat="server" Style="z-index: 1; left: 457px; top: 52px; position: absolute; height: 450px; width: 406px">

            <asp:Label ID="lblAddPocInfo" runat="server" Text="Add POC Info" Style="z-index: 1; left: 155px; top: 24px; position: absolute" Font-Bold="True" Font-Size="Large" Font-Underline="True" Font-Names="Segoe UI" ForeColor="#000066"></asp:Label>

            <asp:Label ID="lblCompanyName" runat="server" Style="z-index: 1; left: 22px; top: 80px; position: absolute" Font-Bold="False" Font-Size="Medium" Font-Underline="False">Company Name:</asp:Label>
            <asp:DropDownList ID="ddlCompanyId" runat="server" Style="z-index: 1; left: 154px; top: 80px; width: 224px; position: absolute">
            </asp:DropDownList>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Select Company ID" Style="z-index: 1; left: 391px; top: 80px; position: absolute; width: 9px; height: 18px;" ControlToValidate="ddlCompanyId" InitialValue="" ValidationGroup="AddPocInfoGroup" ForeColor="Red">*</asp:RequiredFieldValidator>

            <asp:Label ID="lblFirstName" runat="server" Style="z-index: 1; left: 22px; top: 110px; position: absolute" Font-Bold="False" Font-Size="Medium" Font-Underline="False">First name:</asp:Label>
            <asp:TextBox ID="txtFirstName" runat="server" Style="z-index: 1; left: 154px; top: 110px; position: absolute; width: 223px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="First Name is required" Style="z-index: 1; left: 391px; top: 110px; position: absolute; width: 9px; height: 18px;" ControlToValidate="txtFirstName" InitialValue="" ValidationGroup="AddPocInfoGroup" ForeColor="Red">*</asp:RequiredFieldValidator>

            <asp:Label ID="lblLastName" runat="server" Style="z-index: 1; left: 22px; top: 140px; position: absolute" Font-Bold="False" Font-Size="Medium" Font-Underline="False">Last name:</asp:Label>
            <asp:TextBox ID="txtLastName" runat="server" Style="z-index: 1; left: 154px; top: 140px; position: absolute; width: 223px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Last Name is required" Style="z-index: 1; left: 391px; top: 140px; position: absolute; width: 9px; height: 18px;" ControlToValidate="txtLastName" InitialValue="" ValidationGroup="AddPocInfoGroup" ForeColor="Red">*</asp:RequiredFieldValidator>

            <asp:Label ID="lblTitle" runat="server" Style="z-index: 1; left: 22px; top: 170px; position: absolute" Font-Bold="False" Font-Size="Medium" Font-Underline="False">Title:</asp:Label>
            <asp:TextBox ID="txtTitle" runat="server" Style="z-index: 1; left: 154px; top: 170px; position: absolute; width: 223px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Title is required" Style="z-index: 1; left: 391px; top: 170px; position: absolute; width: 9px; height: 18px;" ControlToValidate="txtTitle" InitialValue="" ValidationGroup="AddPocInfoGroup" ForeColor="Red">*</asp:RequiredFieldValidator>

            <asp:Label ID="lblPhone" runat="server" Style="z-index: 1; left: 22px; top: 200px; position: absolute" Font-Bold="False" Font-Size="Medium" Font-Underline="False">Mobile:</asp:Label>
            <asp:TextBox ID="txtPhone" runat="server" Style="z-index: 1; left: 154px; top: 200px; position: absolute; width: 223px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Phone is required" Style="z-index: 1; left: 391px; top: 200px; position: absolute; width: 9px; height: 18px;" ControlToValidate="txtPhone" InitialValue="" ValidationGroup="AddPocInfoGroup" ForeColor="Red">*</asp:RequiredFieldValidator>

            <asp:Label ID="lblEmail" runat="server" Style="z-index: 1; left: 22px; top: 230px; position: absolute" Font-Bold="False" Font-Size="Medium" Font-Underline="False">Email:</asp:Label>
            <asp:TextBox ID="txtEmail" runat="server" Style="z-index: 1; left: 154px; top: 230px; position: absolute; width: 223px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Email is required" Style="z-index: 1; left: 391px; top: 230px; position: absolute; width: 9px; height: 18px;" ControlToValidate="txtEmail" InitialValue="" ValidationGroup="AddPocInfoGroup" ForeColor="Red">*</asp:RequiredFieldValidator>

            <asp:Label ID="lblDecisionMaker" runat="server" Style="z-index: 1; left: 22px; top: 260px; position: absolute" Font-Bold="False" Font-Size="Medium" Font-Underline="False">Decision Maker:</asp:Label>
            <asp:DropDownList ID="ddlDecisionMaker" runat="server" Style="z-index: 1; left: 155px; top: 260px; width: 224px; position: absolute">
                <asp:ListItem>Yes</asp:ListItem>
                <asp:ListItem>No</asp:ListItem>
            </asp:DropDownList>

            <asp:Button ID="btnAddPoc" runat="server" Style="z-index: 1; left: 157px; top: 290px; position: absolute; width: 104px" Text="Add POC Info" OnClick="btnAddPoc_Click" ValidationGroup="AddPocInfoGroup" />
            <asp:Label ID="lblStatus" runat="server" Style="z-index: 1; left: 25px; top: 330px; position: absolute; height: 77px; width: 357px;" Font-Bold="True" Font-Size="X-Large" Font-Underline="False" ForeColor="Red" Visible="False"></asp:Label>
            <asp:Button ID="reset" runat="server" OnClick="reset_Click" Style="z-index: 1; left: 271px; top: 290px; position: relative" Text="Reset" />
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" ValidationGroup="AddPocInfoGroup" ForeColor="Red" Height="53px" Style="z-index: 1; left: 433px; top: 59px; position: absolute; height: 53px; width: 330px" Width="330px" />

        </asp:Panel>
    </asp:Panel>
</asp:Content>

