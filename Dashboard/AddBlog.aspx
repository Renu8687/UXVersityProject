<%@ Page Title="" Language="C#" MasterPageFile="~/Dashboard/DeveloperMaster.master" AutoEventWireup="true" CodeFile="AddBlog.aspx.cs" Inherits="Dashboard_AddBlog" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="card">
        <div class="card-header">Add Blog</div>
        <div class="card-body">
            <div class="card-title">
                <h3 class="text-center title-2">Blog  Details</h3>
            </div>
            <hr>
            <form runat="server">
                <div class="col-lg-12">

                    <div class="form-group">
                        <label class="control-label mb-1">Blog Title</label>
                        <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                </div>
                <div class="col-lg-12">
                    <div class="form-group">
                        <label class="control-label mb-1">Thumbnail Pic</label>
                        <asp:FileUpload ID="FileUpload1" runat="server" CssClass="form-control" />
                    </div>
                </div>
                <div class="col-lg-12">

                    <div class="form-group">
                        <label class="control-label mb-1">Description</label>
                        <asp:TextBox ID="TextBox2" TextMode="MultiLine" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-4">
                        <div class="form-group">
                            <label class="control-label mb-1">Pic1</label>
                            <asp:FileUpload ID="FileUpload2" runat="server" CssClass="form-control" />
                        </div>
                    </div>
                    <div class="col-lg-4">
                        <div class="form-group">
                            <label class="control-label mb-1">Pic2</label>
                            <asp:FileUpload ID="FileUpload3" runat="server" CssClass="form-control" />
                        </div>
                    </div>
                    <div class="col-lg-4">
                        <div class="form-group">
                            <label class="control-label mb-1">Pic3</label>
                            <asp:FileUpload ID="FileUpload4" runat="server" CssClass="form-control" />
                        </div>
                    </div>

                </div>


                <div>
                    <asp:LinkButton ID="LinkButton1" runat="server" CssClass="btn btn-info" OnClick="LinkButton1_Click">
                                       <i class="fa fa-newspaper"></i>&nbsp;Add Blog
                    </asp:LinkButton>
                </div>
            </form>
        </div>
    </div>
</asp:Content>

