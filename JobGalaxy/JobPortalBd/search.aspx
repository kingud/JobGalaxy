<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="search.aspx.cs" Inherits="search" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div style="text-align:center;">

    <form id="form1" runat="server">
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/searchall.aspx?username={0}">Search All</asp:HyperLink> 
        <br />
        <br />
        
        <br />
    
            <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/searchtitle.aspx">Search By Job Title</asp:HyperLink>
    
    </form>


    </div>
</asp:Content>

