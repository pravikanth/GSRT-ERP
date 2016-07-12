<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="UpdateCompany.aspx.cs" Inherits="UpdateCompany" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
    <asp:Label ID="lblInsertStatus" runat="server" Font-Bold="True" Font-Size="Large" style="z-index: 1; left: 603px; top: 579px; position: absolute" Text="Label" Visible="False"></asp:Label>
    <asp:Label ID="lblCompanyName" runat="server" style="z-index: 1; left: 15px; top: 162px; position: absolute" Text="Select Company: "></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:DropDownList ID="ddlCompanies" runat="server" OnSelectedIndexChanged="ddlCompanies_SelectedIndexChanged" style="z-index: 1; left: 132px; top: 158px; position: absolute" AutoPostBack="True">
    </asp:DropDownList>
    <asp:Panel ID="Panel1" runat="server" style="z-index: 1; left: 15px; top: 206px; position: absolute; height: 427px; width: 896px; margin-bottom: 94px">
        <asp:Label ID="lblCities" runat="server" style="z-index: 1; left: 5px; top: 126px; position: absolute" Text="Cities:"></asp:Label>
        <asp:Label ID="lblCompName" runat="server" Text="Company Name:" style="z-index: 1; left: 2px; top: -1px; position: absolute"></asp:Label>
        &nbsp;
        <asp:TextBox ID="tbCompName" runat="server" Enabled="False" MaxLength="50" style="z-index: 1; left: 111px; top: 0px; position: absolute"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;
        <asp:Label ID="lblSize" runat="server" style="z-index: 1; left: 284px; top: -1px; position: absolute" Text="Size Segment:"></asp:Label>
        <asp:TextBox ID="tbSize" runat="server" Enabled="False" MaxLength="20" style="z-index: 1; left: 379px; top: -2px; position: absolute"></asp:TextBox>
        <asp:Label ID="lblAccntOwner" runat="server" style="z-index: 1; left: 551px; top: -1px; position: absolute" Text="Account Owner:"></asp:Label>
        <asp:TextBox ID="tbAccntOwner" runat="server" Enabled="False" MaxLength="50" style="z-index: 1; left: 665px; top: 0px; position: absolute"></asp:TextBox>
        <asp:Label ID="lblIndustries" runat="server" style="z-index: 1; left: 287px; top: 42px; position: absolute" Text="Industries: "></asp:Label>
        <asp:DropDownList ID="ddlIndustry" runat="server" Enabled="False" style="z-index: 1; width:169px; left: 380px; top: 39px; position: absolute" OnSelectedIndexChanged="ddlIndustry_SelectedIndexChanged" AutoPostBack="True">
        </asp:DropDownList>
        <asp:Label ID="lblIndustry" runat="server" style="z-index: 1; left: 553px; top: 39px; position: absolute" Text="Industry: "></asp:Label>
        <asp:TextBox ID="tbIndustry" runat="server" Enabled="False" MaxLength="200" style="z-index: 1; left: 666px; top: 35px; position: absolute"></asp:TextBox>
        <asp:Label ID="lblSicCodes" runat="server" style="z-index: 1; left: 3px; top: 85px; position: absolute" Text="SIC Codes: "></asp:Label>
        <asp:DropDownList ID="ddlSicCodes" runat="server" Enabled="False" style="z-index: 1; left: 107px; top: 83px; position: absolute" AutoPostBack="True" OnSelectedIndexChanged="ddlSicCodes_SelectedIndexChanged">
        </asp:DropDownList>
        <asp:Label ID="lblSicCode" runat="server" style="z-index: 1; left: 288px; top: 84px; position: absolute; height: 18px; width: 78px" Text="SIC Code:"></asp:Label>
        <asp:TextBox ID="tbSicCode" runat="server" Enabled="False" MaxLength="10" style="z-index: 1; left: 379px; top: 81px; position: absolute"></asp:TextBox>
        <asp:Label ID="lblSicDesc" runat="server" style="z-index: 1; left: 553px; top: 82px; position: absolute" Text="SIC Description:"></asp:Label>
        <asp:TextBox ID="tbSicDesc" runat="server" Enabled="False" MaxLength="200" style="z-index: 1; left: 667px; top: 79px; position: absolute; height: 15px"></asp:TextBox>
        <asp:DropDownList ID="ddlCities" runat="server" Enabled="False" style="z-index: 1; left: 106px; top: 122px; position: absolute" OnSelectedIndexChanged="ddlCities_SelectedIndexChanged" AutoPostBack="True">
        </asp:DropDownList>
        <asp:Label ID="lblCity" runat="server" style="z-index: 1; left: 291px; top: 124px; position: absolute" Text="City:"></asp:Label>
        <asp:TextBox ID="tbCity" runat="server" Enabled="False" MaxLength="50" style="z-index: 1; left: 380px; top: 121px; position: absolute"></asp:TextBox>
        <asp:Label ID="lblStates" runat="server" style="z-index: 1; left: 6px; top: 164px; position: absolute" Text="States:"></asp:Label>
        <asp:DropDownList ID="ddlStates" runat="server" Enabled="False" style="z-index: 1; left: 106px; top: 160px; position: absolute" OnSelectedIndexChanged="ddlStates_SelectedIndexChanged" AutoPostBack="True">
        </asp:DropDownList>
        <asp:Label ID="lblState" runat="server" style="z-index: 1; left: 293px; top: 161px; position: absolute" Text="State:"></asp:Label>
        <asp:TextBox ID="tbState" runat="server" Enabled="False" MaxLength="50" style="z-index: 1; left: 380px; top: 157px; position: absolute"></asp:TextBox>
        <asp:Label ID="lblZips" runat="server" style="z-index: 1; left: 6px; top: 200px; position: absolute" Text="Zip Codes:"></asp:Label>
        <asp:DropDownList ID="ddlZipCodes" runat="server" Enabled="False" style="z-index: 1; left: 105px; top: 197px; position: absolute" OnSelectedIndexChanged="ddlZipCodes_SelectedIndexChanged" AutoPostBack="True">
        </asp:DropDownList>
        <asp:Label ID="lblZip" runat="server" style="z-index: 1; left: 293px; top: 198px; position: absolute" Text="Zip Code:"></asp:Label>
        <asp:TextBox ID="tbZipCode" runat="server" Enabled="False" MaxLength="20" style="z-index: 1; left: 380px; top: 194px; position: absolute"></asp:TextBox>
        <asp:Label ID="lblCategory" runat="server" style="z-index: 1; left: 5px; top: 238px; position: absolute" Text="Category:"></asp:Label>
        <asp:TextBox ID="tbCategory" runat="server" MaxLength="30" style="z-index: 1; left: 103px; top: 235px; position: absolute" Enabled="False"></asp:TextBox>
        <asp:Label ID="lblChannel" runat="server" style="z-index: 1; left: 293px; top: 237px; position: absolute" Text="Channel:"></asp:Label>
        <asp:TextBox ID="tbChannel" runat="server" MaxLength="50" style="z-index: 1; left: 380px; top: 235px; position: absolute" Enabled="False"></asp:TextBox>
        <asp:Label ID="lblChallenges" runat="server" style="z-index: 1; left: 4px; top: 278px; position: absolute" Text="Challenges:"></asp:Label>
        <asp:TextBox ID="tbChallenges" runat="server" MaxLength="100" style="z-index: 1; left: 102px; top: 275px; position: absolute; height: 34px; width: 146px" TextMode="MultiLine" Enabled="False"></asp:TextBox>
        <asp:Label ID="lblTrends" runat="server" style="z-index: 1; left: 290px; top: 277px; position: absolute" Text="Trends:"></asp:Label>
        <asp:TextBox ID="tbTrends" runat="server" MaxLength="100" style="z-index: 1; left: 379px; top: 273px; position: absolute; height: 36px; width: 135px" TextMode="MultiLine" Enabled="False"></asp:TextBox>
        <asp:TextBox ID="tbOpportunity" runat="server" MaxLength="100" style="z-index: 1; left: 670px; top: 273px; position: absolute; height: 34px; width: 143px" TextMode="MultiLine" Enabled="False"></asp:TextBox>
        <asp:Label ID="lblOpportunity" runat="server" style="z-index: 1; left: 555px; top: 275px; position: absolute" Text="Opportunity:"></asp:Label>
        <asp:TextBox ID="tbContact" runat="server" MaxLength="20" style="z-index: 1; left: 102px; top: 333px; position: absolute; right: 666px" Enabled="False"></asp:TextBox>
        <asp:Label ID="lblFax" runat="server" style="z-index: 1; left: 293px; top: 335px; position: absolute" Text="Fax: "></asp:Label>
        <asp:TextBox ID="tbFax" runat="server" MaxLength="20" style="z-index: 1; left: 377px; top: 335px; position: absolute" Enabled="False"></asp:TextBox>
        <asp:Label ID="lblEmail" runat="server" style="z-index: 1; left: 555px; top: 334px; position: absolute" Text="Email: "></asp:Label>
        <asp:TextBox ID="tbEmail" runat="server" MaxLength="100" style="z-index: 1; left: 668px; top: 331px; position: absolute; height: 18px" Enabled="False"></asp:TextBox>
        <asp:Button ID="btnUpdate" runat="server" OnClick="tbUpdate_Click" style="z-index: 1; left: 103px; top: 384px; position: absolute; width: 128px; height: 25px;" Text="Update Company" />
        <asp:Button ID="tbReset" runat="server" OnClick="tbReset_Click" style="z-index: 1; left: 291px; top: 383px; position: absolute" Text="Reset" />
        <asp:Label ID="lblFullAddress" runat="server" style="z-index: 1; left: 551px; top: 198px; position: absolute" Text="Full Address:"></asp:Label>
        <asp:TextBox ID="tbFullAddress" runat="server" Enabled="False" style="z-index: 1; left: 667px; top: 195px; position: absolute; height: 37px; width: 166px" TextMode="MultiLine"></asp:TextBox>
    </asp:Panel>
    <asp:Label ID="lblContact" runat="server" style="z-index: 1; left: 18px; top: 544px; position: absolute" Text="Phone:"></asp:Label>
    <asp:Label ID="lblWebsite" runat="server" style="z-index: 1; left: 19px; top: 250px; position: absolute" Text="Website:"></asp:Label>
    <asp:TextBox ID="tbWebsite" runat="server" Enabled="False" MaxLength="100" style="z-index: 1; left: 125px; top: 245px; position: absolute"></asp:TextBox>
</asp:Content>

