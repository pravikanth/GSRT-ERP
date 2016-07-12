<%@ Control Language="C#" AutoEventWireup="true" CodeFile="AdminMenu.ascx.cs" Inherits="AdminMenu" %>

<%@ OutputCache Duration="600" VaryByParam="None" %>

<asp:Menu runat="server" ID="AdminMainMenu" Orientation="Horizontal" EnableViewState="false" Style="z-index: 1; left: 25px; top: 111px; position: absolute; height: 25px; width: 95%">
        <DynamicMenuItemStyle BackColor="#EEEEEE" VerticalPadding="10px" Font-Bold="True" HorizontalPadding="10px" />
        <Items>
            <asp:MenuItem Text="Home" Value="Home">
                <asp:MenuItem Text="Change Password" Value="Change Password" NavigateUrl="~/ChangePassword.aspx"></asp:MenuItem>
                <asp:MenuItem Text="Reset Password" Value="Reset Password"  NavigateUrl="~/ResetPassword.aspx"></asp:MenuItem>
                <asp:MenuItem Text="Add Users" Value="Add Users"  NavigateUrl="~/CreateUsers.aspx"></asp:MenuItem>
            </asp:MenuItem>
            <asp:MenuItem Text="Company" Value="Company">
                <asp:MenuItem Text="View Companies" Value="View Companies" NavigateUrl="~/ViewCompanies.aspx"></asp:MenuItem>
                <asp:MenuItem Text="Add Company" Value="Add Company" NavigateUrl="~/InsertCompany.aspx"></asp:MenuItem>
                <asp:MenuItem Text="Edit Company" Value="Edit Company"  NavigateUrl="~/UpdateCompany.aspx"></asp:MenuItem>
                <asp:MenuItem Text="Delete Company" Value="Delete Company"></asp:MenuItem>
            </asp:MenuItem>
            <asp:MenuItem Text="Industry" Value="Industry">
                <asp:MenuItem Text="Add Industry" Value="Add Industry"></asp:MenuItem>
                <asp:MenuItem Text="Edit Industry" Value="Edit Industry"></asp:MenuItem>
                <asp:MenuItem Text="Delete Industry" Value="Delete Industry"></asp:MenuItem>
            </asp:MenuItem>
            <asp:MenuItem Text="SIC information" Value="SIC information">
                <asp:MenuItem Text="Add SIC Info" Value="Add SIC Info" NavigateUrl="~/InsertSicInformation.aspx"></asp:MenuItem>
                <asp:MenuItem Text="Edit SIC Info" Value="Edit SIC Info"></asp:MenuItem>
                <asp:MenuItem Text="Delete SIC Info" Value="Delete SIC Info"></asp:MenuItem>
            </asp:MenuItem>
            <asp:MenuItem Text="POC Information" Value="POC Information">
                <asp:MenuItem Text="Add POC Info" Value="Add POC Info" NavigateUrl="~/AddPocInformation.aspx"></asp:MenuItem>
                <asp:MenuItem Text="Edit POC Info" Value="Edit POC Info"></asp:MenuItem>
                <asp:MenuItem Text="Delete POC Info" Value="Delete POC Info"></asp:MenuItem>
            </asp:MenuItem>
            <asp:MenuItem Text="Consultant" Value="Consultant">
                <asp:MenuItem Text="Add Consultant" Value="Add Consultant Info" NavigateUrl="~/AddConsultant.aspx"></asp:MenuItem>
                <asp:MenuItem Text="Edit Consultant Info" Value="Edit Consultant Info"></asp:MenuItem>
                <asp:MenuItem Text="Delete Consultant Info" Value="Delete Consultant Info"></asp:MenuItem>
            </asp:MenuItem>
        </Items>
        <StaticMenuItemStyle ItemSpacing="10px" VerticalPadding="4px" HorizontalPadding="10px" Font-Bold="True" />
        <StaticMenuStyle HorizontalPadding="10px" VerticalPadding="5px" />
    </asp:Menu>
