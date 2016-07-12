<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="UpdatePOC.aspx.cs" Inherits="UpdatePOC" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
    <asp:Panel ID="Panel1" runat="server" Style="z-index: 1; left: 10px; top: 156px; position: absolute; height: 357px; width: 100%">
        <asp:Panel ID="Panel2" runat="server" Style="z-index: 1; left: 457px; top: 52px; position: absolute; height: 507px; width: 421px">

            <asp:Label ID="lblHeading" runat="server" Text="Update POC" Style="z-index: 1; left: 142px; top: -2px; position: absolute; width: 117px;" Font-Bold="True" Font-Size="Large" Font-Underline="True" Font-Names="Segoe UI" ForeColor="#000066"></asp:Label>

            <asp:Label ID="lblSearchPoc" runat="server" Style="z-index: 1; left: 22px; top: 80px; position: absolute" Text="Search POC: "></asp:Label>
            <asp:TextBox ID="tbPoc" runat="server" Style="z-index: 1; left: 153px; top: 80px; position: absolute; width: 181px;"></asp:TextBox>
            <asp:Button ID="btnGo" runat="server" OnClick="btnGo_Click" Style="z-index: 1; left: 354px; top: 80px; position: absolute" Text="Go" />

            <asp:Label ID="lblSelectPoc" runat="server" Style="z-index: 1; left: 22px; top: 110px; position: absolute; bottom: 352px; width: 117px;" Text="Select POC: "></asp:Label>
            <asp:DropDownList ID="ddlSelectPoc" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlSelectPoc_SelectedIndexChanged" Style="z-index: 1; left: 154px; top: 110px; position: absolute; width: 230px;">
            <asp:ListItem>--Select--</asp:ListItem>
            </asp:DropDownList>
            
            
            <asp:Label ID="lblCompanyName" runat="server" Style="z-index: 1; left: 22px; top: 140px; position: absolute" Font-Bold="False" Font-Size="Medium" Font-Underline="False">Company Name:</asp:Label>
            <asp:DropDownList ID="ddlCompanyId" runat="server" Style="z-index: 1; left: 154px; top: 140px; width: 224px; position: absolute">
            </asp:DropDownList>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Select Company ID" Style="z-index: 1; left: 391px; top: 140px; position: absolute; width: 9px; height: 18px;" ControlToValidate="ddlCompanyId" InitialValue="--Select--" ValidationGroup="UpdatePocInfoGroup" ForeColor="Red">*</asp:RequiredFieldValidator>

            <asp:Label ID="lblFirstName" runat="server" Style="z-index: 1; left: 22px; top: 170px; position: absolute" Font-Bold="False" Font-Size="Medium" Font-Underline="False">First name:</asp:Label>
            <asp:TextBox ID="txtFirstName" runat="server" Style="z-index: 1; left: 154px; top: 170px; position: absolute; width: 223px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="First Name is required" Style="z-index: 1; left: 391px; top: 170px; position: absolute; width: 9px; height: 18px;" ControlToValidate="txtFirstName" InitialValue="" ValidationGroup="UpdatePocInfoGroup" ForeColor="Red">*</asp:RequiredFieldValidator>

            <asp:Label ID="lblLastName" runat="server" Style="z-index: 1; left: 22px; top: 200px; position: absolute" Font-Bold="False" Font-Size="Medium" Font-Underline="False">Last name:</asp:Label>
            <asp:TextBox ID="txtLastName" runat="server" Style="z-index: 1; left: 154px; top: 200px; position: absolute; width: 223px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Last Name is required" Style="z-index: 1; left: 391px; top: 200px; position: absolute; width: 9px; height: 18px;" ControlToValidate="txtLastName" InitialValue="" ValidationGroup="UpdatePocInfoGroup" ForeColor="Red">*</asp:RequiredFieldValidator>

            <asp:Label ID="lblTitle" runat="server" Style="z-index: 1; left: 22px; top: 230px; position: absolute" Font-Bold="False" Font-Size="Medium" Font-Underline="False">Title:</asp:Label>
            <asp:TextBox ID="txtTitle" runat="server" Style="z-index: 1; left: 154px; top: 230px; position: absolute; width: 223px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Title is required" Style="z-index: 1; left: 391px; top: 230px; position: absolute; width: 9px; height: 18px;" ControlToValidate="txtTitle" InitialValue="" ValidationGroup="UpdatePocInfoGroup" ForeColor="Red">*</asp:RequiredFieldValidator>

            <asp:Label ID="lblPhone" runat="server" Style="z-index: 1; left: 22px; top: 260px; position: absolute" Font-Bold="False" Font-Size="Medium" Font-Underline="False">Mobile:</asp:Label>
            <asp:TextBox ID="txtPhone" runat="server" Style="z-index: 1; left: 154px; top: 260px; position: absolute; width: 223px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Phone is required" Style="z-index: 1; left: 391px; top: 260px; position: absolute; width: 9px; height: 18px;" ControlToValidate="txtPhone" InitialValue="" ValidationGroup="UpdatePocInfoGroup" ForeColor="Red">*</asp:RequiredFieldValidator>

            <asp:Label ID="lblEmail" runat="server" Style="z-index: 1; left: 22px; top: 290px; position: absolute" Font-Bold="False" Font-Size="Medium" Font-Underline="False">Email:</asp:Label>
            <asp:TextBox ID="txtEmail" runat="server" Style="z-index: 1; left: 154px; top: 290px; position: absolute; width: 223px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Email is required" Style="z-index: 1; left: 391px; top: 290px; position: absolute; width: 9px; height: 18px;" ControlToValidate="txtEmail" InitialValue="" ValidationGroup="UpdatePocInfoGroup" ForeColor="Red">*</asp:RequiredFieldValidator>

            <asp:Label ID="lblDecisionMaker" runat="server" Style="z-index: 1; left: 22px; top: 320px; position: absolute" Font-Bold="False" Font-Size="Medium" Font-Underline="False">Decision Maker:</asp:Label>
            <asp:DropDownList ID="ddlDecisionMaker" runat="server" Style="z-index: 1; left: 155px; top: 320px; width: 224px; position: absolute">
                <asp:ListItem Value="True">Yes</asp:ListItem>
                <asp:ListItem Value="False">No</asp:ListItem>
            </asp:DropDownList>


            <asp:Button ID="btnReset" runat="server" OnClick="btnReset_Click" Style="z-index: 1; left: 241px; top: 350px; position: absolute" Text="Reset" />
            <asp:Button ID="btnUpdate" runat="server" ValidationGroup="UpdatePocInfoGroup" OnClick="btnUpdate_Click" Style="z-index: 1; left: 155px; top: 350px; position: absolute; width: 74px" Text="Update" />

            <asp:Label ID="lblErrorMessage" runat="server" Font-Bold="True" Font-Size="Large" Style="z-index: 1; left: 19px; top: 391px; position: absolute; height: 22px; width: 367px;" Text="" Visible="False"></asp:Label>
        </asp:Panel>
    </asp:Panel>
</asp:Content>

