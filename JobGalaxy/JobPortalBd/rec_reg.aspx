<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="rec_reg.aspx.cs" Inherits="rec_reg" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <form id="form1" runat="server">
   <div class="container" style="text-align:center">
           
                <h2>Registration Form</h2>
                 <div class="form-group">
                    <label for="cname" class="col-sm-3 control-label">Company Name</label>
                    <div class="col-sm-9">
                         <asp:TextBox ID="textbox1" runat="server"  /> 
                    </div>
                  
                     <div class="form-group">
                    <label for="passname" class="col-sm-3 control-label">PassWord</label>
                    <div class="col-sm-9">
                         <asp:TextBox ID="textbox2" runat="server" TextMode="Password"  /> 
                    </div>
                          <div class="form-group">
                    <label for="location" class="col-sm-3 control-label">Location</label>
                    <div class="col-sm-9">
                       <asp:TextBox ID="textbox3" runat="server"  /> 
                    </div>
               
                </div>
                <div class="form-group">
                    <label for="email" class="col-sm-3 control-label">Email</label>
                    <div class="col-sm-9">
                        <asp:TextBox ID="textbox4" runat="server"  /> 
                    </div>
                </div>
                        
                <br />
                <div class="form-group">
                    <div class="col-sm-9 col-sm-offset-3" id="reg">
                         <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click"  /> 
                         <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                         <br />
                    </div>
                </div>

            </form> <!-- /form -->
        </div> <!-- ./container --> 

          

    </form>
</asp:Content>

