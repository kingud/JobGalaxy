<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="recruiter_reg.aspx.cs" Inherits="recruiter_reg" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server">
        
   <div class="container" style="text-align:center">
          
                <h2>Registration Form</h2>
                 <div class="form-group">
                    <label for="firstname" class="col-sm-3 control-label">Company Name</label>
                    <div class="col-sm-9">
                         <asp:TextBox ID="textbox1" runat="server"  /> 
                    </div>
                  
                     <div class="form-group">
                    <label for="lastname" class="col-sm-3 control-label">Location</label>
                    <div class="col-sm-9">
                         <asp:TextBox ID="textbox2" runat="server"  /> 
                    </div>
                         
               
                </div>
                <div class="form-group">
                    <label for="password" class="col-sm-3 control-label">Password</label>
                    <div class="col-sm-9">
                        <asp:TextBox ID="textbox4" runat="server"  TextMode="Password"/> 
                    </div>
                </div>
                          <div class="form-group">
                    <label for="email" class="col-sm-3 control-label">Email</label>
                    <div class="col-sm-9">
                        <asp:TextBox ID="textbox5" runat="server"  /> 
                    </div>
                
                </div>
                
                </div> <!-- /.form-group -->
                <br />
                <div class="form-group">
                    <div class="col-sm-9 col-sm-offset-3" id="reg">
                         <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click"  /> 
                    </div>
                </div>
            </form> <!-- /form -->
        </div> <!-- ./container --> 

          
    <div>
    
    </div>
        </form>
</asp:Content>

