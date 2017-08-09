<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="searchview.aspx.cs" Inherits="searchview" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server">
    <p>
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:okConnectionString %>" SelectCommand="SELECT [companyname], [jobtype], [jobtitle], [qualification] FROM [Postjob]">
        </asp:SqlDataSource>
        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="companyname" HeaderText="companyname" SortExpression="companyname" />
                <asp:BoundField DataField="jobtype" HeaderText="jobtype" SortExpression="jobtype" />
                <asp:BoundField DataField="jobtitle" HeaderText="jobtitle" SortExpression="jobtitle" />
                <asp:BoundField DataField="qualification" HeaderText="qualification" SortExpression="qualification" />
            </Columns>
        </asp:GridView>
    </p>
        <p>
            <asp:Label ID="Label1" runat="server" Text="Attach Your Cv"></asp:Label>
        </p>
        <asp:FileUpload ID="FileUpload1" runat="server" />
        &nbsp;<asp:Label ID="Label3" runat="server" Text="You must have  to upload your resume with your username."></asp:Label>
&nbsp;<p>
            &nbsp;</p>
        <p>
        <asp:Label ID="Label2" runat="server"></asp:Label>
        </p>
        <p>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Apply" />
        </p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
    <p>
    </p>
    <p>
    </p>

</form>
</asp:Content>

