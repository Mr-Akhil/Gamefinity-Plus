<%@ Page Title="" Language="C#" MasterPageFile="~/Index.Master" AutoEventWireup="true" CodeBehind="upcomingevent.aspx.cs" Inherits="e_Sports.upcomingevent" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainContent" runat="server">



    <div class="container-fluid">
        <div class="row">
            <asp:Repeater ID="RepeatUpcoming" runat="server">
                <ItemTemplate>
                    <div class="col-lg-4 col-md-6 col-sm-12 card-col" >
                        <div class="card card-content">
                            <% if (Session["cardname"].ToString() == "pubg")
                                {
                            %>
                                <img src="Img\pubg.png" class="card-img-top" alt="...">
                            <%
                                }
                                else if (Session["cardname"].ToString() == "freefire")
                                { 
                            %>
                                <img src="Img\FreeFire.jpg" class="card-img-top" alt="...">
                            <%
                                }
                                else if (Session["cardname"].ToString() == "velorent")
                                { 
                            %>
                                <img src="Img\velorent.jpg" class="card-img-top" alt="...">
                            <%
                                }
                                else if (Session["cardname"].ToString() == "cod")
                                { 
                            %>
                                <img src="Img\velorent.jpg" class="card-img-top" alt="...">
                            <%  } %>
                            <div class="card-data">
                                <div class="row text-center border-bottom border-dark m-2">
                                    <div class="col text-left">
                                        <h5> <i class="fa fa-user" aria-hidden="true"></i> By <%# Eval("fullname") %> </h5>
                                    </div>
                                    <div class="col text-center mt-1">
                                        <b><asp:Label Text='<%# Eval("disdate") %>' runat="server" /> on <asp:Label Text='<%# Eval("distime") %>' runat="server" /></b>
                                    </div>
                                    <div class="col-1 text-center mt-1">
                                        <asp:LinkButton class="border" runat="server" Tooltip='<%# Eval("about") %>' BorderColor="Black" CssClass="border border-rounded">
                                            <i class="fas fa-info"></i>
                                        </asp:LinkButton>
                                    </div>
                                </div>
                                <div class="row text-center m-2">
                                    <div class="col">
                                        <asp:Label Text="Prize Pool" runat="server" />
                                    </div>
                                    <div class="col">
                                        <asp:Label Text="Per Kill" runat="server" />
                                    </div>
                                    <div class="col">
                                        Entry Fee
                                    </div>
                                </div>
                                <div class="row text-center m-2">
                                    <div class="col">
                                        <b> <asp:Label Text='<%# Eval("prizepool") %>' runat="server" /> </b>
                                    </div>
                                    <div class="col">
                                        <b> <%# Eval("perkill") %> </b>
                                    </div>
                                    <div class="col">
                                        <b> <%# Eval("entryfee") %> </b>
                                    </div>
                                </div>
                                <div class="row text-center m-2">
                                    <div class="col">
                                        <asp:Label Text="Type" runat="server" />
                                    </div>
                                    <div class="col">
                                        <asp:Label Text="Version" runat="server" />
                                    </div>
                                    <div class="col">
                                        <asp:Label Text="Map" runat="server" />
                                    </div>
                                </div>
                                <div class="row text-center m-2">
                                    <div class="col">
                                        <b> <%# Eval("gametype") %> </b>
                                    </div>
                                    <div class="col">
                                        <b> <%# Eval("gameversion") %> </b>
                                    </div>
                                    <div class="col">
                                        <b> <%# Eval("map") %> </b>
                                    </div>
                                </div>
                                <div class="row mt-2">
                                    <div class="col-6 text-center mt-1">
                                        <span class="badge badge-dark" style="font-size:1.5vh;">
                                            *Only <%# Eval("emptyspot") %> spot left hurry up!
                                        </span>
                                    </div>
                                    
                                    <div class="col-6 text-center mb-2">
                                            <span class="badge badge-light" style="font-size:1.5vh;"> <%# Eval("spotregistered") %>/<%# Eval("spotsize") %> </span>
                                            <asp:Button class="frm-btn" OnClick="Button_Click" Text="Join Now" runat="server" style="width:50%;" UseSubmitBehavior="False" CommandArgument='<%# Eval("uid") %>' />
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </ItemTemplate>
            </asp:Repeater>   
        </div>
    </div>
</asp:Content>