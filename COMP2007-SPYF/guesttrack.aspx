<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="guesttrack.aspx.cs" Inherits="COMP2007_SPYF.guesttrack" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-md-offset-2 col-md-8">
                <h1>Games List</h1>
                <asp:GridView runat="server" CssClass="table table-bordered table-striped table-hover"
                    ID="GameGridView" AutoGenerateColumns="false">
                      <Columns>
                          <asp:BoundField DataField="GameID" HeaderText="Game ID" Visible="true" />
                    </Columns>
                </asp:GridView>


            </div>
        </div>
    </div>




</asp:Content>



