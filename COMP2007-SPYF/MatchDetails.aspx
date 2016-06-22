<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="MatchDetails.aspx.cs" Inherits="COMP2007_SPYF.MatchDetails" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container">
          <style>
            body {
                background: url("Assets/Images/background6.jpg") no-repeat fixed center;
                background-size: cover;
            }
        </style>
        <div class="col-md-offset-3 col-md-6">
            <h1>Match Details</h1>
            <b>All Fields Are Required</b>
            <br />
            <div class="form group">
                <label class="control-label" for="NameTextBox"><b>Name</b></label>
                <asp:TextBox runat="server" CssClass="form-control" ID="NameTextBox" placeholder="Name" required="true"></asp:TextBox>
            </div>
            <div class="form group">
                <label class="control-label" for="DescriptionTextBox"><b>Description</b></label>
                <asp:TextBox runat="server" CssClass="form-control" ID="DescriptionTextBox" placeholder="Description" required="true"></asp:TextBox>
            </div>
            <div class="form group">
                <label class="control-label" for="TotalPointsATextBox"><b>TotalPointsA</b></label>
                <asp:TextBox runat="server" CssClass="form-control" ID="TotalPointsATextBox" placeholder="TotalPointsA" required="true"></asp:TextBox>
            </div>
            <div class="form group">
                <label class="control-label" for="TotalPointsBTextBox"><b>TotalPointsB</b></label>
                <asp:TextBox runat="server" CssClass="form-control" ID="TotalPointsBTextBox" placeholder="TotalPointsB" required="true"></asp:TextBox>
            </div>
            <div class="form group">
                <label class="control-label" for="SpectatorsTextBox"><b>Spectators</b></label>
                <asp:TextBox runat="server" CssClass="form-control" ID="SpectatorsTextBox" placeholder="Spectators" required="true"></asp:TextBox>
            </div>
            <div class="form group">
                <label class="control-label" for="WinningTeamTextBox"><b>Winning Team</b></label>
                <asp:TextBox runat="server" CssClass="form-control" ID="WinningTeamTextBox" placeholder="Winning Team" required="true"></asp:TextBox>
            </div>
            <br />
            <div class="text-right">
                <asp:Button Text="Cancel" ID="CancelButton" CssClass="btn btn-warning btn-lg" runat="server"
                    UseSubmitBehavior="false" CausesValidation="false" OnClick="CancelButton_Click" />
                <asp:Button Text="Save" ID="SaveButton" CssClass="btn btn-primary btn-lg" runat="server" OnClick="SaveButton_Click" />
            </div>
        </div>
    </div>
</asp:Content>


