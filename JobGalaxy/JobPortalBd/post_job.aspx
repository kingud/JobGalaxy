<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="post_job.aspx.cs" Inherits="post_job" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server">
        
   <div class="container" style="text-align:center">
            <form class="form-horizontal" role="form">
                <h2>Post Job</h2>
                 <div class="form-group">
                    <label for="firstname" class="col-sm-3 control-label">Company Name</label>
                    <div class="col-sm-9">
                         <asp:TextBox ID="textbox1" runat="server"  /> 
                    </div>
                   <div class="form-group">
                    <label for="username" class="col-sm-3 control-label">Job Type</label>
                    <div class="col-sm-9">
                       <asp:TextBox ID="textbox4" runat="server"  /> 
                    </div>
                     <div class="form-group">
                    <label for="lastname" class="col-sm-3 control-label">Job Title</label>
                    <div class="col-sm-9">
                         <asp:TextBox ID="textbox2" runat="server"  /> 
                    </div>
                          <div class="form-group">
                    <label for="username" class="col-sm-3 control-label">Qualification</label>
                    <div class="col-sm-9">
                       <asp:TextBox ID="textbox3" runat="server"  /> 
                    </div>
               
                </div>
              
                      
                
                </div> <!-- /.form-group -->
                <br />
                <div class="form-group">
                    <div class="col-sm-9 col-sm-offset-3" id="reg">
                         <asp:Button ID="Button1" runat="server" Text="Post Job" OnClick="Button1_Click"  /> 
                    </div>
                </div>
            </form> <!-- /form -->
        </div> <!-- ./container --> 

          
    <div>
    
    </div>
        </form>
     
</asp:Content>

