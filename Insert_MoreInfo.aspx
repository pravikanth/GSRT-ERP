<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="Insert_MoreInfo.aspx.cs" Inherits="Insert_MoreInfo" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
    <asp:Panel ID="Panel1" runat="server" Style="z-index: 1; left: 16px; top: 167px; position: absolute; height: 483px; width: 1295px">
        <asp:Label ID="lblCompany" runat="server" Text="Select Company:" Style="z-index: 1; left: 26px; top: 25px; position: absolute"></asp:Label>
        <asp:DropDownList ID="uniqueCompany" runat="server" Style="z-index: 1; left: 141px; top: 25px; position: absolute" TabIndex="1" Width="175px">
        </asp:DropDownList>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Select Company ID" Style="z-index: 1; left: 330px; top: 26px; position: absolute; width: 9px; height: 18px;" ControlToValidate="uniqueCompany" InitialValue="--Select--" ValidationGroup="AddMoreInfoGroup" ForeColor="Red">*</asp:RequiredFieldValidator>

        <asp:Label ID="lblCategory" runat="server" Style="z-index: 1; left: 26px; top: 65px; position: absolute" Text="Category:"></asp:Label>
        <asp:TextBox ID="category" runat="server" MaxLength="30" Style="z-index: 1; left: 141px; top: 65px; position: absolute" TabIndex="2" Width="175px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Category is required" Style="z-index: 1; left: 330px; top: 66px; position: absolute; width: 9px;" ControlToValidate="category" InitialValue="" ValidationGroup="AddMoreInfoGroup" ForeColor="Red">*</asp:RequiredFieldValidator>

        <asp:Label ID="lblChannel" runat="server" Text="Channel: " Style="z-index: 1; left: 26px; top: 97px; position: absolute"></asp:Label>
        <asp:TextBox ID="channel" runat="server" MaxLength="50" Style="z-index: 1; left: 141px; top: 97px; position: absolute; width: 175px;" TabIndex="3"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Channel is required" Style="z-index: 1; left: 330px; top: 97px; position: absolute; width: 9px;" ControlToValidate="channel" InitialValue="" ValidationGroup="AddMoreInfoGroup" ForeColor="Red">*</asp:RequiredFieldValidator>

        <asp:Label ID="lblContact" runat="server" Style="z-index: 1; left: 26px; top: 132px; position: absolute" Text="Contact: "></asp:Label>
        <asp:TextBox ID="compContact" runat="server" MaxLength="20" Style="z-index: 1; left: 141px; top: 132px; position: absolute; width: 175px" TabIndex="4"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Contact is required" Style="z-index: 1; left: 330px; top: 132px; position: absolute; width: 9px;" ControlToValidate="compContact" InitialValue="" ValidationGroup="AddMoreInfoGroup" ForeColor="Red">*</asp:RequiredFieldValidator>


        <asp:Label ID="lblEmail" runat="server" Style="z-index: 1; left: 26px; top: 166px; position: absolute" Text="Official Email: "></asp:Label>
        <asp:TextBox ID="email" runat="server" MaxLength="100" Style="z-index: 1; left: 141px; top: 166px; position: absolute; width: 175px;" TabIndex="5"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Email is required" Style="z-index: 1; left: 330px; top: 166px; position: absolute; width: 9px;" ControlToValidate="email" InitialValue="" ValidationGroup="AddMoreInfoGroup" ForeColor="Red">*</asp:RequiredFieldValidator>


        <asp:Label ID="lblFax" runat="server" Style="z-index: 1; left: 26px; top: 201px; position: absolute" Text="Fax: "></asp:Label>
        <asp:TextBox ID="fax" runat="server" MaxLength="20" Style="z-index: 1; left: 141px; top: 201px; position: absolute; width: 175px" TabIndex="6"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Fax is required" Style="z-index: 1; left: 330px; top: 201px; position: absolute; width: 9px;" ControlToValidate="fax" InitialValue="" ValidationGroup="AddMoreInfoGroup" ForeColor="Red">*</asp:RequiredFieldValidator>

        <asp:Label ID="lblChallenges" runat="server" Style="z-index: 1; left: 399px; top: 25px; position: absolute" Text="Challenges: "></asp:Label>
        <asp:TextBox ID="challenges" runat="server" MaxLength="100" Style="z-index: 1; left: 505px; top: 25px; position: absolute; height: 43px; width: 175px" TabIndex="7" OnTextChanged="challenges_TextChanged"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="Challenges is required" Style="z-index: 1; left: 692px; top: 25px; position: absolute; width: 9px;" ControlToValidate="challenges" InitialValue="" ValidationGroup="AddMoreInfoGroup" ForeColor="Red">*</asp:RequiredFieldValidator>

        <asp:Label ID="lblTrends" runat="server" Text="Trends:" Style="z-index: 1; left: 399px; top: 97px; position: absolute"></asp:Label>
        <asp:TextBox ID="trends" runat="server" MaxLength="100" Style="z-index: 1; left: 505px; top: 97px; position: absolute; height: 43px; width: 175px" TabIndex="8"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="Trends is required" Style="z-index: 1; left: 692px; top: 97px; position: absolute; width: 9px;" ControlToValidate="trends" InitialValue="" ValidationGroup="AddMoreInfoGroup" ForeColor="Red">*</asp:RequiredFieldValidator>

        <asp:Label ID="lblOpportunities" runat="server" Style="z-index: 1; left: 399px; top: 166px; position: absolute;" TabIndex="10" Text="Opportunities: "></asp:Label>
        <asp:TextBox ID="opportunities" runat="server" MaxLength="100" Style="z-index: 1; left: 505px; top: 166px; position: absolute; height: 43px; width: 175px" TabIndex="9"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ErrorMessage="Opportunities is required" Style="z-index: 1; left: 692px; top: 166px; position: absolute; width: 9px;" ControlToValidate="opportunities" InitialValue="" ValidationGroup="AddMoreInfoGroup" ForeColor="Red">*</asp:RequiredFieldValidator>

        <asp:Button ID="insertMoreInfo" runat="server" OnClick="insertMoreInfo_Click" ValidationGroup="AddMoreInfoGroup" Style="z-index: 1; left: 141px; top: 242px; position: absolute; height: 27px; width: 88px;" TabIndex="10" Text="Insert" />
        <asp:Button ID="reset" runat="server" OnClick="reset_Click" Style="z-index: 1; left: 243px; top: 242px; position: absolute; height: 27px; width: 51px" Text="Reset" />

        <asp:Label ID="lblInsertStatus" runat="server" Font-Bold="True" Font-Size="X-Large" ForeColor="Red" Style="z-index: 1; left: 27px; top: 275px; position: absolute; height: 134px; width: 649px;" Text="Label" Visible="False"></asp:Label>
        
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" validationgroup="AddMoreInfoGroup" ForeColor="Red" style="z-index: 1; left: 750px; top: 13px; position: absolute; height: 246px; width: 235px"/>
    </asp:Panel>
</asp:Content>

