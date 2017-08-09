<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="searchall.aspx.cs" Inherits="searchall" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div style="text-align:center;">
    <form id="form1" runat="server">
        <p>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:okConnectionString2 %>" SelectCommand="SELECT [Id], [companyname] FROM [Postjob]"></asp:SqlDataSource>
           
           
                 <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1"  DataKeyNames="Id" OnRowCommand="GridView1_RowCommand" >
                <Columns>
                    <asp:TemplateField HeaderText="Id" InsertVisible="False" SortExpression="Id">
                        <EditItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("Id") %>'></asp:Label>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:LinkButton ID="view" runat="server" CommandName="view" CommandArgument='<%# Bind("Id") %>'>View</asp:LinkButton>  
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="companyname" HeaderText="companyname" SortExpression="companyname" />
                  
                 
                </Columns>
            </asp:GridView>
              
            <br />
        </p>
    </form>
          </div>
</asp:Content>

