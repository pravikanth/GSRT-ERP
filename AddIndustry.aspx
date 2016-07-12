<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="AddIndustry.aspx.cs" Inherits="AddIndustry" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
        <asp:Panel ID="Panel1" runat="server" Style="z-index: 1; left: 10px; top: 156px; position: absolute; height: 357px; width: 100%">
        <asp:Panel ID="Panel2" runat="server" Style="z-index: 1; left: 322px; top: 52px; position: absolute; height: 466px; width: 765px">

            <asp:Label ID="lblHeading" runat="server" Text="Add Industry" Style="z-index: 1; left: 290px; top: 41px; position: absolute" Font-Bold="True" Font-Size="Large" Font-Underline="True" Font-Names="Segoe UI" ForeColor="#000066"></asp:Label>

            <asp:Label ID="lblSicDesc" runat="server" Style="z-index: 1; left: 84px; top: 100px; position: absolute; width: 123px;" Text="New Description: "></asp:Label>
            <asp:TextBox ID="txtSicDesc" runat="server" Style="z-index: 1; left: 85px; top: 130px; position: absolute; width: 521px; height: 81px;" TextMode="MultiLine"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Sic Description is required" style="z-index: 1; left: 449px; top: 228px; position: absolute; width: 163px; height: 23px;" ControlToValidate="txtSicDesc" InitialValue="" validationgroup="AddSicInfoGroup" ForeColor="Red" ></asp:RequiredFieldValidator>

            <asp:Button ID="btnAdd" runat="server" validationgroup="AddSicInfoGroup" OnClick="btnAdd_Click" Style="z-index: 1; left: 87px; top: 225px; position: absolute; width: 128px; right: 550px" Text="Add Industry" />
            
            <asp:Button ID="btnReset" runat="server" OnClick="btnReset_Click" Style="z-index: 1; left: 226px; top: 225px; position: absolute" Text="Reset" />


            <asp:Label ID="lblUpdateStatus" runat="server" Font-Bold="True" Font-Size="Large" Style="z-index: 1; left: 88px; top: 271px; position: absolute; height: 76px; width: 523px;" Text="" Visible="true"></asp:Label>
        </asp:Panel>
    </asp:Panel>
</asp:Content>

