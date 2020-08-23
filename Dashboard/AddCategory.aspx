<%@ Page Title="" Language="C#" MasterPageFile="~/Dashboard/AdminMaster.master" AutoEventWireup="true" CodeFile="AddCategory.aspx.cs" Inherits="Dashboard_AddCategory" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <form runat="server">

        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-6">

                    <asp:Panel ID="Panel1" runat="server">
                        <div class="card">
                            <div class="card-header">Add New Category Details</div>
                            <div class="card-body">
                                <div class="card-title">
                                    <h3 class="text-center title-2">Category</h3>
                                </div>
                                <hr>
                                <div class="form-group">
                                    <label class="control-label mb-1">Category Name</label>
                                    <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control"></asp:TextBox>
                                </div>
                                <div class="form-group">
                                    <label class="control-label mb-1">Category Pic</label>
                                    <asp:FileUpload ID="FileUpload1" runat="server" CssClass="form-control" />
                                </div>
                                <div>
                                    <asp:LinkButton ID="LinkButton1" runat="server" CssClass="btn btn-info" OnClick="LinkButton1_Click">
                                       <i class="fa fa-cog fa-lg"></i>&nbsp;Add Category
                                    </asp:LinkButton>
                                </div>
                            </div>
                        </div>
                    </asp:Panel>
                    <asp:Panel ID="Panel2" runat="server">
                        <div class="card">
                            <div class="card-header">Edit Details</div>
                            <div class="card-body">
                                <div class="card-title">
                                    <h3 class="text-center title-2">Edit Info</h3>
                                </div>
                                <hr>
                                <div class="form-group">
                                    <label class="control-label mb-1">Category Name</label>
                                    <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control"></asp:TextBox>
                                </div>
                                <div class="form-group">
                                    <label class="control-label mb-1">Category Pic</label>
                                    <asp:FileUpload ID="FileUpload2" runat="server" CssClass="form-control" />
                                </div>
                                <div>
                                    <asp:LinkButton ID="LinkButton4" runat="server" CssClass="btn btn-info" OnClick="LinkButton4_Click">
                                       <i class="fa fa-refresh fa-lg"></i>&nbsp;Update
                                    </asp:LinkButton>
                                </div>
                            </div>
                        </div>
                    </asp:Panel>
                </div>


                <div class="col-lg-6">
                    <div class="card">
                        <div class="card-header">Manage Category </div>
                        <div class="card-body">
                            <div class="card-title">
                                <h3 class="text-center title-2">Category List</h3>
                            </div>
                            <hr>
                            <div class="table-responsive table-responsive-data2">
                                <table class="table table-data2 text-center">
                                    <thead>
                                        <tr>
                                            <th>Category Name</th>
                                            <th class="float-left">Action</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <asp:Repeater ID="Repeater1" runat="server">
                                            <ItemTemplate>
                                                <tr>
                                                    <td><%# Eval("CatName") %></td>
                                                    <td class="float-left">
                                                        <div class="table-data-feature">
                                                            <asp:LinkButton class="item" OnClick="LinkButton2_Click" CommandArgument='<%# Eval("Id") %>' data-toggle="tooltip" data-placement="top" title="Edit" ID="LinkButton2" runat="server"> <i class="zmdi zmdi-edit"></i></asp:LinkButton>
                                                            <asp:LinkButton class="item" OnClick="LinkButton3_Click" CommandArgument='<%# Eval("Id") %>' data-toggle="tooltip" data-placement="top" title="Delete" ID="LinkButton3" runat="server"> <i class="zmdi zmdi-delete"></i></i></asp:LinkButton>

                                                        </div>
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

            </div>
        </div>
    </form>

</asp:Content>

