<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="total_reg.aspx.cs" Inherits="total_reg" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server">
   <div class="container" style="text-align:center">
            <form class="form-horizontal" role="form">
                <h2>Registration Form</h2>
                 <div class="form-group">
                    <label for="firstname" class="col-sm-3 control-label">Fisrt Name</label>
                    <div class="col-sm-9">
                         <asp:TextBox ID="textbox1" runat="server"  /> 
                    </div>
                  
                     <div class="form-group">
                    <label for="lastname" class="col-sm-3 control-label">Last Name</label>
                    <div class="col-sm-9">
                         <asp:TextBox ID="textbox2" runat="server"  /> 
                    </div>
                          <div class="form-group">
                    <label for="username" class="col-sm-3 control-label">User Name</label>
                    <div class="col-sm-9">
                       <asp:TextBox ID="textbox3" runat="server"  /> 
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
                <div class="form-group">
                    <label for="birthDate" class="col-sm-3 control-label">Date of Birth</label>
                    <div class="col-sm-9">
                        <asp:TextBox ID="textbox6" runat="server"  /> 
                    </div>
                </div>
                <div class="form-group">
                    <label for="ab" class="col-sm-3 control-label">Academic Background</label>
                    <div class="col-sm-9">
                       
                           <asp:TextBox ID="textbox7" runat="server"  TextMode="MultiLine"/> 
                          
                      
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

          

    </form>
</asp:Content>

