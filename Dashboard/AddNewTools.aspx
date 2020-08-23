<%@ Page Title="" Language="C#" MasterPageFile="~/Dashboard/DeveloperMaster.master" AutoEventWireup="true" CodeFile="AddNewTools.aspx.cs" Inherits="Dashboard_AddNewTools" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div class="card">
        <div class="card-header">Add New Tools</div>
        <div class="card-body">
            <div class="card-title">
                <h3 class="text-center title-2">Tools</h3>
            </div>
            <hr>
            <form runat="server">
                <div class="row">
                    <div class="col-lg-3">
                        <div class="form-group">
                            <label class="control-label mb-1">Pick Category</label>
                            <asp:DropDownList ID="DropDownList1" CssClass="form-control" runat="server"></asp:DropDownList>
                        </div>
                    </div>
                    <div class="col-lg-3">
                        <div class="form-group">
                            <label class="control-label mb-1">Tool Name</label>
                            <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
                    </div>
                    <div class="col-lg-6">
                        <div class="form-group">
                            <label class="control-label mb-1">Thumbnail Pic Upload</label>
                            <asp:FileUpload ID="FileUpload1" runat="server" CssClass="form-control" />
                        </div>
                    </div>
                    <div class="col-lg-6">
                        <fieldset style="padding: 10px">
                            <legend>Data Option 1</legend>
                             <div class="form-group">
                                <label class="control-label mb-1">Content</label>
                                 <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <label class="control-label mb-1">Pic1</label>
                                <asp:FileUpload ID="FileUpload2" runat="server" CssClass="form-control" />
                            </div>
                        </fieldset>

                    </div>
                    <div class="col-lg-6">
                        <fieldset style="padding: 10px">
                            <legend>Data Option 2</legend>
                             <div class="form-group">
                                <label class="control-label mb-1">Content</label>
                                 <asp:TextBox ID="TextBox4" runat="server" CssClass="form-control"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <label class="control-label mb-1">Pic2</label>
                                <asp:FileUpload ID="FileUpload3" runat="server" CssClass="form-control" />
                            </div>
                        </fieldset>

                    </div>
                    <div class="col-lg-6">
                        <fieldset style="padding: 10px">
                            <legend>Data Option 3</legend>
                             <div class="form-group">
                                <label class="control-label mb-1">Content</label>
                                 <asp:TextBox ID="TextBox5" runat="server" CssClass="form-control" ></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <label class="control-label mb-1">Pic3</label>
                                <asp:FileUpload ID="FileUpload4" runat="server" CssClass="form-control" />
                            </div>
                        </fieldset>

                    </div>
                    <div class="col-lg-6">
                        <fieldset style="padding: 10px">
                            <legend>Data Option 4</legend>
                             <div class="form-group">
                                <label class="control-label mb-1">Content</label>
                                 <asp:TextBox ID="TextBox6" runat="server" CssClass="form-control"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <label class="control-label mb-1">Pic4</label>
                                <asp:FileUpload ID="FileUpload5" runat="server" CssClass="form-control" />
                            </div>
                        </fieldset>

                    </div>
                    
                    
                    <div class="col-lg-12">
                        <div class="form-group">
                            <label class="control-label mb-1">Main Content</label>
                            <asp:TextBox ID="TextBox1" TextMode="MultiLine" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
                    </div>
                    <div class="col-lg-12">
                        <div class="form-group">
                            <label class="control-label mb-1">Upload Source Code(Compressed File)</label>
                            <asp:FileUpload ID="FileUpload6" runat="server" CssClass="form-control" />
                        </div>
                    </div>
                </div>
                <div class="mt-2">
                    <asp:LinkButton ID="LinkButton1" runat="server" CssClass="btn btn-info" OnClick="LinkButton1_Click">
                                       <i class="fa fa-wrench"></i>&nbsp;Add Tools
                    </asp:LinkButton>
                </div>
            </form>
        </div>
</asp:Content>
