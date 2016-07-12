<%@ Page Language="C#" AutoEventWireup="true" CodeFile="LoadProspectsFromExcel.aspx.cs" Inherits="LoadProspectsFromExcel" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="z-index: 1; left: 10px; top: 15px; position: absolute; height: 30px; width: 979px">
        <asp:Panel ID="Panel1" runat="server" style="z-index: 1; left: 16px; top: 19px; position: absolute; height: 182px; width: 441px">

        <asp:Label ID="lblHeading" runat="server" Text="Import Email Campaign Data" style="z-index: 1; left: 126px; top: 26px; position: absolute; width: 315px;" Font-Bold="True" Font-Size="X-Large" Font-Underline="True"></asp:Label>
        <asp:Label ID="lblFilename" runat="server" Text="Select File:" style="z-index: 1; left: 113px; top: 103px; position: absolute"></asp:Label> <asp:FileUpload ID="FileUpload1" runat="server" style="z-index: 1; left: 198px; top: 102px; position: absolute" />
        <asp:Button ID="btnUpload" runat="server" Text="Upload" style="z-index: 1; left: 200px; top: 137px; position: absolute; width: 90px;" OnClick="btnUpload_Click" />
            </asp:Panel>
        <asp:Label ID="Label5" runat="server" Text="" style="z-index: 1; left: 463px; top: 117px; position: absolute"></asp:Label>
    </div>
        <asp:GridView ID="GridView1" runat="server" style="z-index: 1; left: 30px; top: 225px; position: absolute; height: 104px; width: 1237px">
        </asp:GridView>
    </form>
</body>
</html>
