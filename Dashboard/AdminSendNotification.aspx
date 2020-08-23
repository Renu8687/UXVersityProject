<%@ Page Title="" Language="C#" MasterPageFile="~/Dashboard/AdminMaster.master" AutoEventWireup="true" CodeFile="AdminSendNotification.aspx.cs" Inherits="Dashboard_AdminSendNotification" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <form runat="server">
        <div class="row">
            <div class="col-lg-6">
                <div class="card">
                    <div class="card-header">Send Notification To Users</div>
                    <div class="card-body">
                        <div class="card-title">
                            <h3 class="text-center title-2">Notification  Details </h3>
                        </div>
                        <hr>
                        <div class="col-lg-12">

                            <div class="form-group">
                                <label class="control-label mb-1">User Email</label>
                                <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control"></asp:DropDownList>
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
                                       <i class="fa fa-bullhorn"></i>&nbsp;Send 
                            </asp:LinkButton>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-lg-6">
                <div class="card">
                    <div class="card-header">Send Notification To Developer</div>
                    <div class="card-body">
                        <div class="card-title">
                            <h3 class="text-center title-2">Notification  Details </h3>
                        </div>
                        <hr>
                        <div class="col-lg-12">

                            <div class="form-group">
                                <label class="control-label mb-1">User Email</label>
                                <asp:DropDownList ID="DropDownList2" runat="server" CssClass="form-control"></asp:DropDownList>
                            </div>
                        </div>
                        <div class="col-lg-12">
                            <div class="form-group">
                                <label class="control-label mb-1">Subject</label>
                                <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control"></asp:TextBox>
                            </div>
                        </div>
                        <div class="col-lg-12">

                            <div class="form-group">
                                <label class="control-label mb-1">Message</label>
                                <asp:TextBox ID="TextBox4" TextMode="MultiLine" runat="server" CssClass="form-control"></asp:TextBox>
                            </div>
                        </div>
                        <div class="col-lg-12">
                            <asp:LinkButton ID="LinkButton2" runat="server" CssClass="btn btn-info" OnClick="LinkButton2_Click">
                                       <i class="fa fa-bullhorn"></i>&nbsp;Send 
                            </asp:LinkButton>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>
</asp:Content>

