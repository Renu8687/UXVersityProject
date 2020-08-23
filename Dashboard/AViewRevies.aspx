<%@ Page Title="" Language="C#" MasterPageFile="~/Dashboard/AdminMaster.master" AutoEventWireup="true" CodeFile="AViewRevies.aspx.cs" Inherits="Dashboard_AViewRevies" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div class="container-fluid">
        <form runat="server">
            <div class="row">
                <div class="col-lg-12">
                    <div class="table-responsive table--no-card m-b-30">
                        <table class="table table-borderless table-striped table-earning" id="dataTable">
                            <thead>
                                <tr>
                                    <th>Name</th>
                                    <th>Email</th>
                                    <th>Subject</th>
                                    <th>Message</th>
                                    <th>Action</th>
                                </tr>
                            </thead>
                            <tbody>
                                <asp:Repeater ID="Repeater1" runat="server">
                                    <ItemTemplate>
                                        <tr>
                                            <td><%# Eval("Name") %></td>
                                            <td><%# Eval("Email") %></td>
                                            <td><%# Eval("Subject") %></td>
                                            <td><%# Eval("Message") %></td>
                                            <td>
                                                <asp:LinkButton CommandArgument='<%# Eval("Id") %>' ID="LinkButton2" OnClick="LinkButton2_Click" runat="server" CssClass="btn btn-danger"><i class="fa fa-trash"></i></asp:LinkButton>
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

