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
                    ID="GameGridView" AutoGenerateColumns="false" DataKeyNames="GameID" 
                     OnRowDeleting="GameGridView_RowDeleting" Allowpaging="true" pagesize="5"
                     OnPageIndexChanging="GameGridView_PageIndexChanging" >

                      <Columns>
                            <asp:BoundField DataField= "GameID" HeaderText="Game ID" Visible="true" />
                            <asp:BoundField DataField= "Name" HeaderText="Game" Visible="true" />
                          <asp:BoundField DataField= "Description" HeaderText="Description" Visible="true" />
                          <asp:BoundField DataField= "TotalPointsA" HeaderText="Team A" Visible="true" />
                           <asp:BoundField DataField= "TotalPointsB" HeaderText="Team B" Visible="true" />
                           <asp:BoundField DataField= "Spectators" HeaderText="Spectators" Visible="true" />
                           <asp:BoundField DataField= "WinningTeam" HeaderText="WinningTeam" Visible="true" />
                          <asp:CommandField HeaderText="Delete" DeleteText="<i class='fa fa-trash-o fa-lg'></i>Delete" 
                              ShowDeleteButton="true" ButtonType="Link" ControlStyle-CssClass="btn btn-danger btn-sm" />
                     </Columns>
          </asp:GridView>
            </div>
            <a href ="MatchDetails.aspx" class="btn btn-success btn-sm"><i class="fa fa-plus"></i> Add Match!</a>
        </div>
    </div>




</asp:Content>



<asp:Content ID="Content3" runat="server" contentplaceholderid="head">
    <link href="Content/app.css" rel="stylesheet" type="text/css" />
</asp:Content>




