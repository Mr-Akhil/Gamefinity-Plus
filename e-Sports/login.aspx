    <%@ Page Title="" Language="C#" MasterPageFile="~/Index.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="e_Sports.login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainContent" runat="server">

    <div class="container">
        <div class="row">
            <div class="col-md-6 mx-auto">
                <div class="card" style="background-color :#F1F4F6;box-shadow:2px 2px 15px rgba(193,153,32,1);">
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                                <center>
                                    <img width="120px" src="Img/user4.png" />
                                </center>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <center>
                                    <h3> Login </h3>
                                </center>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <center>
                                    <hr />
                                </center>
                            </div>
                        </div>
                        <div class="row">                            
                            <div class="col">
                                <center>
                                    <div class="input-group mb-3">
                                        <div class="input-group-prepend">
                                            <span class="input-group-text" id="basic-addon1"><i class="fas fa-user"></i></span>
                                        </div>
                                        <asp:TextBox class="form-control" id="useremail" placeholder="Username" runat="server" aria-label="Username" aria-describedby="basic-addon1" />
                                    </div>
                                </center>
                            </div>
                        </div>
                        <div class="row">                            
                            <div class="col">
                                <center>
                                    <div class="input-group mb-3">
                                        <div class="input-group-prepend">
                                            <span class="input-group-text" id="basic-addon2"><i class="fas fa-lock"></i></span>
                                        </div>
                                        <asp:TextBox class="form-control" id="password" TextMode="Password" placeholder="Password" runat="server" aria-label="Password" aria-describedby="basic-addon2" />
                                    </div>
                                </center>
                            </div>
                        </div>
                        <div class="row">                            
                            <div class="col">
                                <center>
                                    <asp:Button class="frm-btn" ID="btnLogin" OnClick="btnLogin_Click" Text="Login"  runat="server" />
                                </center>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </div>


</asp:Content>
