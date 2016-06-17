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
                
            <asp:GridView ID="GameGridView"
CssClass="table table-striped table-bordered table-hover"
   runat="server" PageSize="5"
   AllowPaging="true" AutoGenereateColumns="false"
                OnPageIndexChanging="GameGridView_PageIndexChanging"></asp:GridView>

            </div>
        </div>
    </div>




</asp:Content>



<asp:Content ID="Content3" runat="server" contentplaceholderid="head">
    <link href="Content/app.css" rel="stylesheet" type="text/css" />
</asp:Content>




