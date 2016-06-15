<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="COMP2007_SPYF.Contact" EnableViewState="true" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container">
        <style>
            body {
                background: url("Assets/Images/background3.jpg") no-repeat fixed center;
                background-size: cover;
            }
        </style>
        <h1>Your feedback Please!</h1>


        <div class="form-group">
            <h6>
                <label for="exampleInputName2">Name</label></h6>
            <input type="text" class="form-control" id="exampleInputName2" placeholder="Jane Doe">
        </div>
        <div class="form-group">
            <h6>
                <label for="exampleInputEmail2">Email</label></h6>
            <input type="email" class="form-control" id="exampleInputEmail2" placeholder="jane.doe@example.com">
        </div>
        <div class="form-group">

            <h6>
                <label class="control-label" for="MessageTextBox">Message</label></h6>
            <asp:TextBox runat="server" TextMode="MultiLine" Columns="5" Rows="5" CssClass="form-control" ID="MessageTextBox" placeholder="Please Type Your Message" required="true"></asp:TextBox>

        </div>



        <asp:Button CssClass="btn btn-primary" Text="Send" runat="server" OnClick="Unnamed1_Click" />

    </div>
</asp:Content>
<asp:Content ID="Content3" runat="server" ContentPlaceHolderID="head">
    <link href="Content/app.css" rel="stylesheet" type="text/css" />
</asp:Content>

