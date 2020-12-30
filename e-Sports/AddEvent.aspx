<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="AddEvent.aspx.cs" Inherits="e_Sports.AddEvent" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainContent" runat="server">


    <div class="container">
        <div class="row">
            <div class="col-md-8 mx-auto">
                <div class="card" style="background-color :#F1F4F6;box-shadow:2px 2px 15px rgba(193,153,32,1);">
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                                <center>
                                    <i class="fas fa-gamepad fa-7x"></i>
                                </center>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <center>
                                    <h4> Add Event </h4>
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
                                    <asp:DropDownList class="signup-txt" ID="gameName" runat="server">
                                        <asp:ListItem Selected="True">Select Game</asp:ListItem>
                                        <asp:ListItem Value="pubg">PUBG</asp:ListItem>
                                        <asp:ListItem Value="cod">COD</asp:ListItem>
                                        <asp:ListItem Value="freefire">FreeFire</asp:ListItem>
                                        <asp:ListItem Value="velorent">Velorent</asp:ListItem>
                                    </asp:DropDownList>
                                </center>
                            </div>
                        </div>
                        <div class="row">                            
                            <div class="col-md-6 col-sm-12">
                                <center>
                                    <asp:TextBox class="signup-txt" id="date" placeholder="Event Date" runat="server" ></asp:TextBox>
                                </center>
                            </div>
                            <div class="col-md-6 col-sm-12">
                                <center>
                                    <div class='input-group date'>
                                        <asp:TextBox ID="txtTime" runat="server" placeholder="Time: HH:MM XM " Class="signup-txt" />
                                        <span class="input-group-addon"><span class="glyphicon glyphicon-time"></span></span>
                                    </div>   
                                </center>
                            </div>
                        </div>
                        <div class="row">                            
                            <div class="col-md-6 col-sm-12">
                                <center>
                                    <asp:TextBox class="signup-txt" ID="prizePool" placeholder="Prize Pool" runat="server"></asp:TextBox>
                                </center>
                            </div>
                            <div class="col-md-6 col-sm-12">
                                <center>
                                    <asp:TextBox class="signup-txt" ID="perKill" placeholder="Per Kill" runat="server"></asp:TextBox>
                                </center>
                            </div>
                        </div>
                        <div class="row">                            
                            <div class="col-md-6 col-sm-12">
                                <center>
                                    <asp:TextBox class="signup-txt" ID="entryFee" placeholder="Entry Fee" runat="server"></asp:TextBox>
                                </center>
                            </div>
                            <div class="col-md-6 col-sm-12">
                                <center>
                                    <asp:dropdownlist class="signup-txt" ID="gameType" runat="server">
                                        <asp:ListItem Selected="True">Game Type</asp:ListItem>
                                        <asp:ListItem>Solo</asp:ListItem>
                                        <asp:ListItem>Duo</asp:ListItem>
                                        <asp:ListItem>Squad</asp:ListItem>
                                    </asp:dropdownlist>
                                </center>
                            </div>
                        </div>
                        <div class="row">                            
                            <div class="col-md-6 col-sm-12">
                                <center>
                                    <asp:TextBox class="signup-txt" ID="map" placeholder="Map" runat="server"></asp:TextBox>
                                </center>
                            </div>
                            <div class="col-md-6 col-sm-12">
                                <center>
                                    <asp:dropdownlist class="signup-txt" ID="gameVersion" runat="server">
                                        <asp:ListItem Selected="True">Game Version</asp:ListItem>
                                        <asp:ListItem>FPP</asp:ListItem>
                                        <asp:ListItem>TPP</asp:ListItem>
                                    </asp:dropdownlist>
                                </center>
                            </div>
                        </div>
                        <div class="row">                            
                            <div class="col-md-6 col-sm-12">
                                <center>
                                    <asp:TextBox class="signup-txt" ID="spotsize" placeholder="Spot Size" runat="server" />
                                </center>
                            </div>
                            <div class="col-md-6 col-sm-12">
                                <center>
                                    <asp:TextBox class="signup-txt" ID="about" TextMode="MultiLine" placeholder="About(Details)" runat="server" />
                                </center>
                            </div>
                        </div>
                        <div class="row">                            
                            <div class="col">
                                <center>
                                    <asp:Button class="frm-btn" ID="btnAddEvent" OnClick="btnAddEvent_Click" runat="server" Text="Add Event" />
                                </center>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

</asp:Content>
