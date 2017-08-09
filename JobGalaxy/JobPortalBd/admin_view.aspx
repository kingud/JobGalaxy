<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="admin_view.aspx.cs" Inherits="admin_view" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">






    <form id="form1" runat="server">
        <p>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:okConnectionString2 %>" SelectCommand="SELECT Postjob.companyname, Postjob.jobtype, Postjob.jobtitle, Postjob.qualification, Company.location, Info.firstname, Info.lastname, Info.username, Info.email, Info.dob, Info.ab FROM Postjob INNER JOIN Company ON Postjob.companyname = Company.companyname INNER JOIN Apply ON Company.companyname = Apply.companyname INNER JOIN Info ON Apply.username = Info.username"></asp:SqlDataSource>
            <br />
            <div style="text-align:center;margin-left:200px;font-size:large">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="username" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:BoundField DataField="companyname" HeaderText="companyname" SortExpression="companyname" />
                    <asp:BoundField DataField="jobtype" HeaderText="jobtype" SortExpression="jobtype" />
                    <asp:BoundField DataField="jobtitle" HeaderText="jobtitle" SortExpression="jobtitle" />
                    <asp:BoundField DataField="qualification" HeaderText="qualification" SortExpression="qualification" />
                    <asp:BoundField DataField="location" HeaderText="location" SortExpression="location" />
                    <asp:BoundField DataField="firstname" HeaderText="firstname" SortExpression="firstname" />
                    <asp:BoundField DataField="lastname" HeaderText="lastname" SortExpression="lastname" />
                    <asp:BoundField DataField="username" HeaderText="username" ReadOnly="True" SortExpression="username" />
                    <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                    <asp:BoundField DataField="dob" HeaderText="dob" SortExpression="dob" />
                    <asp:BoundField DataField="ab" HeaderText="ab" SortExpression="ab" />
                </Columns>
            </asp:GridView>
                </div>
        </p>
        <p>
            &nbsp;</p>
        <p>
        </p>
    </form>






</asp:Content>

