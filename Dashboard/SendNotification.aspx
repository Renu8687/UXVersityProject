<%@ Page Title="" Language="C#" MasterPageFile="~/Dashboard/DeveloperMaster.master" AutoEventWireup="true" CodeFile="SendNotification.aspx.cs" Inherits="Dashboard_SendNotification" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="card">
        <div class="card-header">Send Notification</div>
        <div class="card-body">
            <div class="card-title">
                <h3 class="text-center title-2">Notification  Details</h3>
            </div>
            <hr>
            <form runat="server">
                <div class="col-lg-12">

                    <div class="form-group">
                        <label class="control-label mb-1">User Email</label>
                        <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                </div>
                <div class="col-lg-12">
                    <div class="form-group">
                        <label class="control-label mb-1">Subject</label>
                        <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                </div>
                <div class="col-lg-12">

                    <div class="form-group">
                        <label class="control-label mb-1">Message</label>
                        <asp:TextBox ID="TextBox3" TextMode="MultiLine" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                </div>
                <div class="col-lg-12">
                    <asp:LinkButton ID="LinkButton1" runat="server" CssClass="btn btn-info" OnClick="LinkButton1_Click">
                                       <i class="fa fa-send"></i>&nbsp;Send 
                    </asp:LinkButton>
                </div>
            </form>
        </div>
    </div>
</asp:Content>

