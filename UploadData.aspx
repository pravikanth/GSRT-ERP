<%@ Page Language="C#" AutoEventWireup="true" CodeFile="UploadData.aspx.cs" Inherits="UploadData" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="z-index: 1; left: 147px; top: 58px; position: absolute; height: 334px; width: 572px; margin-top: 0px;">
        <asp:Panel ID="Panel1" runat="server">
        <asp:Label ID="lblHeading" runat="server" Text="Upload Data" style="z-index: 1; left: 230px; top: 29px; position: absolute; width: 138px;" Font-Bold="True" Font-Size="X-Large" Font-Underline="True"></asp:Label>
            <asp:DropDownList ID="ddlCategory" runat="server" style="z-index: 1; left: 231px; top: 89px; position: absolute; height: 16px; width: 127px">
                <asp:ListItem>--Select--</asp:ListItem>
                <asp:ListItem>Company</asp:ListItem>
                <asp:ListItem>Contacts</asp:ListItem>
            </asp:DropDownList>
            <asp:Label ID="Label1" runat="server" Text="Select Category:" style="z-index: 1; left: 117px; top: 89px; position: absolute"></asp:Label>
            <asp:Label ID="lblFilename" runat="server" Text="Select File:" style="z-index: 1; left: 115px; top: 121px; position: absolute"></asp:Label> <asp:FileUpload ID="FileUpload1" runat="server" style="z-index: 1; left: 229px; top: 121px; position: absolute" />
        <asp:Button ID="btnUpload" runat="server" Text="Upload" style="z-index: 1; left: 229px; top: 153px; position: absolute; width: 90px;" OnClick="btnUpload_Click" />

        <asp:Label ID="Label5" runat="server" Text="" style="z-index: 1; left: 246px; top: 203px; position: absolute"></asp:Label>
    </asp:Panel>
            </div>
     
    </form>
</body>
</html>
