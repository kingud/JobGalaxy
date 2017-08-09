<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="company_attribute.aspx.cs" Inherits="company_attribute" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/post_job.aspx">Post New Job</asp:HyperLink>

    <br />

    <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/show_company.aspx?companyname={0}">Show Requests</asp:HyperLink>

</asp:Content>

