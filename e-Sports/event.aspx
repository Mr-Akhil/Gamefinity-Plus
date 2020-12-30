<%@ Page Title="" Language="C#" MasterPageFile="~/Index.Master" AutoEventWireup="true" CodeBehind="event.aspx.cs" Inherits="e_Sports.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainContent" runat="server">
    
    <div class="container-fluid">

        <div class="row">

            <div class="col-12 col-md-4 card-col" >
                <asp:LinkButton class="card-h" Text="text" runat="server" id="freefire" OnClick="freefire_Click">
                    <div class="card card-content">
                        <img src="Img/Freefire.jpg" class="card-img-top" alt="..." />
                        <div class="card-txt">
                            <label for="Freefire">Freefire</label>
                        </div>
                    </div>
                </asp:LinkButton>
            </div>
            
    
            <div class="col-12 col-md-4 card-col" >
                <asp:LinkButton class="card-h" Text="text" runat="server" id="pubg" OnClick="pubg_Click">
                    <div class="card card-content">
                        <img src="Img/pubg.png" class="card-img-top" alt="...">
                        <div class="card-txt">
                            <label for="Freefire">PUBG</label>
                        </div>
                    </div>
                </asp:LinkButton>
            </div>

            <div class="col-12 col-md-4 card-col" >
                <asp:LinkButton class="card-h" Text="text" runat="server" ID="velorent" OnClick="velorent_Click">
                    <div class="card card-content">
                        <img src="Img/Velorant.jpg" class="card-img-top" alt="...">
                        <div class="card-txt">
                            <label for="Freefire">Velorant</label>
                        </div>
                    </div>
                </asp:LinkButton>
            </div>
            <div class="col-12 col-md-4 card-col" >
                <asp:LinkButton class="card-h" Text="text" runat="server" id="cod" OnClick="cod_Click">
                    <div class="card card-content">
                        <img src="Img/CODM.jpg" class="card-img-top" alt="...">
                        <div class="card-txt">
                            <label for="">CODM</label>
                        </div>
                    </div>
                </asp:LinkButton>
            </div>
        </div>
    </div>

</asp:Content>
 