<%@ Page Title="" Language="C#" MasterPageFile="~/Index.Master" AutoEventWireup="true" CodeBehind="signup.aspx.cs" Inherits="e_Sports.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainContent" runat="server">

    <section>
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
                                    <h3> Sign Up </h3>
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
                                    <asp:DropDownList class="signup-txt" ID="type" runat="server">
                                        <asp:ListItem Selected="True">What You Are ?</asp:ListItem>
                                        <asp:ListItem Value="Player">Player</asp:ListItem>
                                        <asp:ListItem Value="Organizer"></asp:ListItem>
                                    </asp:DropDownList>
                                </center>
                            </div>
                        </div>
                        <div class="row">                            
                            <div class="col">
                                <center>
                                    <asp:TextBox class="signup-txt" ID="txtName" placeholder="Full Name" runat="server"></asp:TextBox>
                                </center>
                            </div>
                        </div>
                        <div class="row">                            
                            <div class="col">
                                <center>
                                    <asp:TextBox class="signup-txt" ID="txtPhone" placeholder="Phone" runat="server"></asp:TextBox>
                                </center>
                            </div>
                        </div>
                        <div class="row">                            
                            <div class="col">
                                <center>
                                    <asp:TextBox class="signup-txt" ID="txtEmail" placeholder="Email" runat="server"></asp:TextBox>
                                </center>
                            </div>
                        </div>
                        <div class="row">                            
                            <div class="col">
                                <center>
                                    <asp:TextBox class="signup-txt" ID="txtPass" TextMode="Password" placeholder="Password" runat="server" ToolTip="Password must be 8-10 characters long with at least one numeric,one upper case character and one special character."></asp:TextBox>
                                </center>
                            </div>
                        </div>
                        <div class="row">                            
                            <div class="col">
                                <center>
                                    <asp:TextBox class="signup-txt" ID="txtConfirm" TextMode="Password" placeholder="Confirm Password" runat="server"></asp:TextBox>
                                </center>
                            </div>
                        </div>
                        <div class="row">                            
                            <div class="col">
                                <center>
                                    <asp:Button class="frm-btn" ONClick="Signup_Click" ID="Signup" runat="server" Text="Sign Up" />
                                </center>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    </section>
























    
    
    
    
    
    
    
</asp:Content>
