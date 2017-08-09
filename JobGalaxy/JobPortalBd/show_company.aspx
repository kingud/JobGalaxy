<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="show_company.aspx.cs" Inherits="show_company" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


    <form id="form1" runat="server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:okConnectionString2 %>" SelectCommand="SELECT Postjob.companyname, Postjob.jobtype, Postjob.jobtitle, Apply.username FROM Postjob INNER JOIN Company ON Postjob.companyname = Company.companyname INNER JOIN Apply ON Company.companyname = Apply.companyname AND  ( Company.[companyname] = @companyname)">
        <SelectParameters>
            <asp:QueryStringParameter Name="companyname" QueryStringField="companyname" />
        </SelectParameters>
    </asp:SqlDataSource>

    
        <br />
        <br />
        <br />
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="companyname" HeaderText="companyname" SortExpression="companyname" />
                <asp:BoundField DataField="jobtype" HeaderText="jobtype" SortExpression="jobtype" />
                <asp:BoundField DataField="jobtitle" HeaderText="jobtitle" SortExpression="jobtitle" />
                <asp:BoundField DataField="username" HeaderText="username" SortExpression="username" />
            </Columns>
        </asp:GridView>
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
    </form>
</asp:Content>

