<%@ Page Title="" Language="C#" MasterPageFile="~/Dashboard/DeveloperMaster.master" AutoEventWireup="true" CodeFile="ManageBlogs.aspx.cs" Inherits="Dashboard_ManageBlogs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="container-fluid">
        <form runat="server">
            <div class="row">
                <div class="col-lg-12">
                    <div class="table-responsive table--no-card m-b-30">
                        <table class="table table-borderless table-striped table-earning" id="dataTable">
                            <thead>
                                <tr>
                                    <th>Blog</th>
                                    <th>Title</th>
                                    <th>Date Created</th>
                                    <th>Time</th>
                                    <th>Action</th>
                                </tr>
                            </thead>
                            <tbody>
                                <asp:Repeater ID="Repeater1" runat="server">
                                    <ItemTemplate>
                                        <tr>
                                            <td>
                                                <img src='<%# Eval("ThumbnailPic") %>' class="img-fluid img-thumbnail" height="100" width="150" />
                                            </td>
                                            <td><%# Eval("BlogTitle") %></td>
                                            <td><%# Eval("Date") %></td>
                                            <td><%# Eval("Time") %></td>
                                            <td>
                                                <asp:LinkButton class="item" OnClick="LinkButton3_Click" CommandArgument='<%# Eval("Id") %>' data-toggle="tooltip" data-placement="top" title="Delete" ID="LinkButton3" runat="server" CssClass="btn btn-danger"> <i class="fa fa-trash"></i></asp:LinkButton>

                                               

                                            </td>
                                        </tr>
                                    </ItemTemplate>
                                </asp:Repeater>


                            </tbody>
                        </table>
                    </div>
                </div>

            </div>
        </form>
    </div>

</asp:Content>

