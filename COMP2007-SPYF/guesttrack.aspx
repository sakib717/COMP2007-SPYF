<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="guesttrack.aspx.cs" Inherits="COMP2007_SPYF.guesttrack" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
     <style>
            body {
                background: url("Assets/Images/background4.jpg") no-repeat fixed center;
                background-size: cover;
            }
        </style>
    <div class="container">
        <div class="row">
            <div class="col-md-offset-2 col-md-8">
                <h1>Games List</h1>
                <asp:GridView runat="server" CssClass="table table-bordered table-striped table-hover"
                    ID="GameGridView" AutoGenerateColumns="false">
                      <Columns>
                          <asp:BoundField HeaderText="Game ID" Visible="true" />
                            <asp:BoundField DataField= "Name" HeaderText="Game" Visible="true" />
                          <asp:BoundField DataField= "Description" HeaderText="Description" Visible="true" />
                          <asp:BoundField DataField= "TotalPointsA" HeaderText="Team A" Visible="true" />
                           <asp:BoundField DataField= "TotalPointsB" HeaderText="Team B" Visible="true" />
                           <asp:BoundField DataField= "Spectators" HeaderText="Spectators" Visible="true" />
                           <asp:BoundField DataField= "WinningTeam" HeaderText="WinningTeam" Visible="true" />
                          
                          
                    </Columns>
                </asp:GridView>


            </div>
        </div>
    </div>




</asp:Content>



