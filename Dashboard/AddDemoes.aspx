<%@ Page Title="" Language="C#" MasterPageFile="~/Dashboard/AdminMaster.master" AutoEventWireup="true" CodeFile="AddDemoes.aspx.cs" Inherits="Dashboard_AddDemoes" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <form runat="server">
        <div class="container-fluid">
            <asp:MultiView ID="MultiView1" runat="server">
                <asp:View ID="View1" runat="server">
                    <div class="col-lg-12">
                        <div class="card">
                            <div class="card-header">
                                Demoes List 
                        <asp:LinkButton ID="LinkButton2" OnClick="LinkButton2_Click" CssClass="float-right btn btn-primary" runat="server"><i class="fa fa-plus"></i>&nbsp; Add New Demo Details</asp:LinkButton>
                            </div>
                            <div class="card-body">
                                <div class="card-title">
                                    <h3 class="text-center title-2">All Demoes List</h3>
                                </div>
                                <hr>
                                <div class="table-responsive table-responsive-data2">
                                    <table class="table table-bordered">
                                        <thead>
                                            <tr>
                                                <th>Demo</th>
                                                <th>Demo Title Name</th>
                                                <th>Action</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <asp:Repeater ID="Repeater1" runat="server">
                                                <ItemTemplate>
                                                    <tr>
                                                        <td>
                                                            <iframe src='<%# Eval("DemoSource") %>' class="img-fluid" style="width: 200px; height: 100px" allowfullscreen></iframe>
                                                        </td>
                                                        <td><%# Eval("DemoTitle") %></td>
                                                        <td>
                                                            <asp:LinkButton CommandArgument='<%# Eval("Id") %>' ID="LinkButton2"  runat="server" CssClass="btn btn-danger"><i class="fa fa-trash"></i></asp:LinkButton>

                                                        </td>
                                                    </tr>
                                                </ItemTemplate>
                                            </asp:Repeater>


                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>

                    </div>
                </asp:View>
                <asp:View ID="View2" runat="server">
                    <div class="col-lg-12">
                        <div class="card">
                            <div class="card-header">Add New Demo Details</div>
                            <div class="card-body">
                                <div class="card-title">
                                    <h3 class="text-center title-2">Demo Description</h3>
                                </div>
                                <hr>
                                <div class="form-group">
                                    <label class="control-label mb-1">Demo Title</label>
                                    <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" placeholder="Title"></asp:TextBox>
                                </div>
                                <div class="form-group">
                                    <label class="control-label mb-1">Demo Source</label>
                                    <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control" placeholder="Paste Your Source Here"></asp:TextBox>
                                </div>
                                <div>
                                    <asp:LinkButton ID="LinkButton1" runat="server" CssClass="btn btn-info" OnClick="LinkButton1_Click">
                                       <i class="fa fa-video fa-lg"></i>&nbsp;Add Demo
                                    </asp:LinkButton>
                                    <asp:LinkButton ID="LinkButton3" runat="server" CssClass="btn btn-dark" OnClick="LinkButton3_Click">
                                       <i class="fa fa-backward fa-lg"></i>&nbsp;Back To List
                                    </asp:LinkButton>
                                </div>
                            </div>
                        </div>
                    </div>
                </asp:View>
            </asp:MultiView>
        </div>
    </form>
</asp:Content>
