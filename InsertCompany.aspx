<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="InsertCompany.aspx.cs" Inherits="InsertCompany" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
    <asp:Panel ID="Panel1" runat="server" Style="z-index: 1; left: 30px; top: 197px; position: absolute; height: 81px; width: 1021px">

        <asp:Label ID="Label1" runat="server" Style="z-index: 1; left: 5px; top: 11px; position: absolute; height: 16px" Text="Company Name:"></asp:Label>
        <asp:TextBox ID="CompanyName" runat="server" Style="z-index: 1; left: 128px; top: 11px; position: absolute; height: 17px" TabIndex="1"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Company Name is required" style="z-index: 1; left: 305px; top: 12px; position: absolute; width: 9px; height: 18px;" ControlToValidate="CompanyName" InitialValue="" validationgroup="InsertCompanyGroup" ForeColor="Red" >*</asp:RequiredFieldValidator>

        <asp:Label runat="server" Style="z-index: 1; left: 330px; top: 11px; position: absolute" Text="Size Segment:"></asp:Label>
        <asp:TextBox ID="SizeSegment" runat="server" Style="z-index: 1; left: 433px; top: 11px; position: absolute; height: 18px;" TabIndex="2"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Size Segment is required" style="z-index: 1; left: 610px; top: 12px; position: absolute; width: 11px; height: 19px;" ControlToValidate="SizeSegment" InitialValue="" validationgroup="InsertCompanyGroup" ForeColor="Red" >*</asp:RequiredFieldValidator>

        <asp:Label ID="Label17" runat="server" Style="z-index: 1; left: 635px; top: 11px; position: absolute" Text="Account Owner:"></asp:Label>
        <asp:TextBox ID="AccountOwner" runat="server" Style="z-index: 1; left: 757px; top: 11px; position: absolute; height: 19px; margin-bottom: 0px;" TabIndex="3"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Account Owner is required" style="z-index: 1; left: 933px; top: 12px; position: absolute; width: 12px" ControlToValidate="AccountOwner" InitialValue="" validationgroup="InsertCompanyGroup" ForeColor="Red" >*</asp:RequiredFieldValidator>

        <asp:Label ID="Label2" runat="server" Style="position: absolute; z-index: 1; left: 5px; top: 51px;" Text="Website:"></asp:Label>
        <asp:TextBox ID="Website" runat="server" MaxLength="200" Style="z-index: 1; left: 128px; top: 51px; position: absolute" TabIndex="4"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Website is required" style="z-index: 1; left: 305px; top: 51px; position: absolute; width: 12px" ControlToValidate="Website" InitialValue="" validationgroup="InsertCompanyGroup" ForeColor="Red" >*</asp:RequiredFieldValidator>

        <asp:Label ID="Label4" runat="server" Text="Industry:" Style="z-index: 1; left: 330px; top: 51px; position: absolute"></asp:Label>
        <asp:DropDownList ID="Industries" runat="server" AutoPostBack="True" OnSelectedIndexChanged="industries_SelectedIndexChanged" Style="z-index: 1; left: 433px; top: 51px; position: absolute; width: 169px;" TabIndex="5">
        </asp:DropDownList>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Select Industry" style="z-index: 1; left: 610px; top: 51px; position: absolute; width: 12px" ControlToValidate="Industries" InitialValue="--Select--" validationgroup="InsertCompanyGroup" ForeColor="Red" >*</asp:RequiredFieldValidator>

        <asp:Label ID="Label6" runat="server" Text="Industry:" Style="z-index: 1; left: 635px; top: 51px; position: absolute"></asp:Label>
        <asp:TextBox ID="Industry" runat="server" Style="position: absolute; z-index: 1; left: 757px; top: 51px; height: 16px;" TabIndex="6"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Industry is required" style="z-index: 1; left: 933px; top: 51px; position: absolute; width: 12px" ControlToValidate="Website" InitialValue="" validationgroup="InsertCompanyGroup" ForeColor="Red" >*</asp:RequiredFieldValidator>
    </asp:Panel>

    <asp:Panel ID="Panel2" runat="server" Style="z-index: 1; left: 30px; top: 284px; position: absolute; height: 41px; width: 984px">

        <asp:Label ID="Label7" runat="server" Text="SIC Code:" Style="z-index: 1; left: 5px; top: 11px; position: absolute; height: 17px;"></asp:Label>
        <asp:DropDownList ID="sicCodes" runat="server" AutoPostBack="True" OnSelectedIndexChanged="sicCodes_SelectedIndexChanged" Style="z-index: 1; left: 128px; top: 11px; width:169px; position: absolute; height: 18px; margin-bottom: 5px;" TabIndex="7">
        </asp:DropDownList>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="Select SIC Code" style="z-index: 1; left: 305px; top: 12px; position: absolute; width: 12px" ControlToValidate="sicCodes" InitialValue="--Select--" validationgroup="InsertCompanyGroup" ForeColor="Red" >*</asp:RequiredFieldValidator>

        <asp:Label ID="Label8" runat="server" Style="z-index: 1; left: 330px; top: 11px; position: absolute; height: 18px; width: 86px;" Text="SIC Code:"></asp:Label>
        <asp:TextBox ID="sicCode" runat="server" ForeColor="#999999" Enabled="False" Style="z-index: 1; top: 11px; position: absolute; left: 433px" TabIndex="8"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="SicCode is required" style="z-index: 1; left: 610px; top: 12px; position: absolute; width: 12px" ControlToValidate="sicCode" InitialValue="" validationgroup="InsertCompanyGroup" ForeColor="Red" >*</asp:RequiredFieldValidator>

        <asp:Label ID="Label9" runat="server" Style="z-index: 1; left: 635px; top: 11px; position: absolute; height: 20px;" Text="SIC Description:"></asp:Label>
        <asp:TextBox ID="sicDescription" runat="server" ForeColor="#999999" Enabled="False" Style="z-index: 1; left: 757px; top: 11px; position: absolute; right: 69px; height: 19px; margin-top: 0px;" TabIndex="9"></asp:TextBox>
    </asp:Panel>

    <asp:Panel ID="Panel3" runat="server" Style="z-index: 1; left: 30px; top: 330px; position: absolute; height: 568px; width: 1018px">

        <asp:Label ID="Label10" runat="server" Text="City:" Style="z-index: 1; left: 5px; top: 11px; position: absolute"></asp:Label>
        <asp:DropDownList ID="cities" runat="server" AutoPostBack="True" OnSelectedIndexChanged="cities_SelectedIndexChanged" Style="z-index: 1; left: 128px; top: 11px; width:169px; position: absolute; height: 18px;  margin-bottom: 0px;" TabIndex="10">
        </asp:DropDownList>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ErrorMessage="Select City" style="z-index: 1; left: 305px; top: 12px; position: absolute; width: 12px" ControlToValidate="cities" InitialValue="--Select--" validationgroup="InsertCompanyGroup" ForeColor="Red" >*</asp:RequiredFieldValidator>

        <asp:Label ID="Label11" runat="server" Style="z-index: 1; left: 330px; top: 11px; position: absolute; right: 572px; width: 1px;" Text="City:"></asp:Label>
        <asp:TextBox ID="city" runat="server" ForeColor="#999999" Enabled="False" Style="z-index: 1; left: 433px; top: 11px; position: absolute; height: 16px;" TabIndex="11"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ErrorMessage="City is required" style="z-index: 1; left: 610px; top: 12px; position: absolute; width: 12px" ControlToValidate="city" InitialValue="" validationgroup="InsertCompanyGroup" ForeColor="Red" >*</asp:RequiredFieldValidator>

        <asp:Label ID="Label12" runat="server" Text="State:" Style="z-index: 1; left: 5px; top: 51px; position: absolute"></asp:Label>
        <asp:DropDownList ID="states" runat="server" AutoPostBack="True" OnSelectedIndexChanged="states_SelectedIndexChanged" Style="z-index: 1; left: 128px; top: 51px; width:169px; position: absolute; height: 17px;" TabIndex="12">
        </asp:DropDownList>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ErrorMessage="Select State" style="z-index: 1; left: 305px; top: 51px; position: absolute; width: 12px" ControlToValidate="states" InitialValue="--Select--" validationgroup="InsertCompanyGroup" ForeColor="Red" >*</asp:RequiredFieldValidator>

        <asp:Label ID="Label13" runat="server" Style="z-index: 1; left: 330px; top: 51px; position: absolute" Text="State:"></asp:Label>
        <asp:TextBox ID="state" runat="server" Enabled="False" ForeColor="#999999" Style="z-index: 1; left: 433px; top: 51px; position: absolute" TabIndex="13"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ErrorMessage="State is required" style="z-index: 1; left: 610px; top: 51px; position: absolute; width: 12px" ControlToValidate="state" InitialValue="" validationgroup="InsertCompanyGroup" ForeColor="Red" >*</asp:RequiredFieldValidator>

        <asp:Label ID="Label14" runat="server" Text="Zip Code:" Style="z-index: 1; left: 5px; top: 91px; position: absolute"></asp:Label>
        <asp:DropDownList ID="zips" runat="server" AutoPostBack="True" OnSelectedIndexChanged="zips_SelectedIndexChanged" Style="z-index: 1; left: 128px; top: 91px; width:169px; position: absolute;  height: 20px;" TabIndex="14">
        </asp:DropDownList>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ErrorMessage="Select Zip" style="z-index: 1; left: 305px; top: 91px; position: absolute; width: 12px" ControlToValidate="zips" InitialValue="--Select--" validationgroup="InsertCompanyGroup" ForeColor="Red" >*</asp:RequiredFieldValidator>

        <asp:Label ID="Label15" runat="server" Style="z-index: 1; left: 330px; top: 91px; position: absolute" Text="Zip Code:"></asp:Label>
        <asp:TextBox ID="zip" runat="server" Enabled="False" ForeColor="#999999" Style="position: absolute; z-index: 1; left: 433px; top: 91px" TabIndex="15"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" ErrorMessage="ZIP is required" style="z-index: 1; left: 610px; top: 91px; position: absolute; width: 12px" ControlToValidate="zip" InitialValue="" validationgroup="InsertCompanyGroup" ForeColor="Red" >*</asp:RequiredFieldValidator>

        <asp:Label ID="Label16" runat="server" Style="z-index: 1; left: 5px; top: 131px; position: absolute; height: 17px" Text="Full Address:"></asp:Label>
        <asp:TextBox ID="fullAddress" runat="server" ForeColor="#999999" Height="50px" TextMode="MultiLine" Style="z-index: 1; left: 128px; top: 131px; position: absolute; width: 472px; margin-top: 0px; margin-bottom: 0px" TabIndex="16"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" ErrorMessage="Address is required" style="z-index: 1; left: 610px; top: 134px; position: absolute; width: 12px" ControlToValidate="fullAddress" InitialValue="" validationgroup="InsertCompanyGroup" ForeColor="Red" >*</asp:RequiredFieldValidator>

        <asp:Button ID="btnInsert" runat="server" OnClick="Button1_Click" Style="z-index: 1; left: 412px; top: 202px; position: absolute; height: 24px; width: 131px; margin-left: 0px" TabIndex="17" Text="Insert Company" validationgroup="InsertCompanyGroup" />
        <asp:Button ID="reset" runat="server" OnClick="reset_Click1" Style="z-index: 1; left: 553px; top: 202px; position: absolute; height: 25px" Text="Reset" />

        <asp:Label ID="lblStatus" runat="server" Font-Bold="True" Font-Size="X-Large" ForeColor="Red" Style="text-align: center; z-index: 1; left: 9px; top: 250px; position: absolute; height: 162px; width: 539px;" Text="Label"></asp:Label>
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" style="z-index: 1; left: 735px; top: 15px; position: absolute; height: 339px; width: 351px" validationgroup="InsertCompanyGroup"  ForeColor="Red" />
    </asp:Panel>
</asp:Content>

