<%@ Page Title="" Language="C#" MasterPageFile="~/Dashboard/DeveloperMaster.master" AutoEventWireup="true" CodeFile="DeveloperHome.aspx.cs" Inherits="Dashboard_DeveloperHome" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="container-fluid">

        <div class="row m-t-25">
            <div class="col-sm-6 col-lg-3">
                <div class="overview-item overview-item--c1">
                    <div class="overview__inner">
                        <div class="overview-box clearfix">
                            <div class="icon">
                                <i class="fa fa-newspaper"></i>
                            </div>
                            <div class="text">
                                <h2>
                                    <asp:Literal ID="Literal1" runat="server"></asp:Literal>
                                </h2>
                                <span>Total Blogs</span>
                            </div>
                        </div>
                        <div class="overview-chart">
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-sm-6 col-lg-3">
                <div class="overview-item overview-item--c2">
                    <div class="overview__inner">
                        <div class="overview-box clearfix">
                            <div class="icon">
                                <i class="fa fa-wrench"></i>
                            </div>
                            <div class="text">
                                <h2>
                                    <asp:Literal ID="Literal2" runat="server"></asp:Literal>
                                </h2>
                                <span>Total Tools</span>
                            </div>
                        </div>
                        <div class="overview-chart">
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-sm-6 col-lg-3">
                <div class="overview-item overview-item--c3">
                    <div class="overview__inner">
                        <div class="overview-box clearfix">
                            <div class="icon">
                                <i class="fa fa-user"></i>
                            </div>
                            <div class="text">
                                <h2>
                                    <asp:Literal ID="Literal3" runat="server"></asp:Literal>
                                </h2>
                                <span>Total User</span>
                            </div>
                        </div>
                        <div class="overview-chart">
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-sm-6 col-lg-3">
                <div class="overview-item overview-item--c4">
                    <div class="overview__inner">
                        <div class="overview-box clearfix">
                            <div class="icon">
                                <i class="fa fa-bullhorn"></i>
                            </div>
                            <div class="text">
                                <h2>
                                    <asp:Literal ID="Literal4" runat="server"></asp:Literal>
                                </h2>
                                <span>Notification</span>
                            </div>
                        </div>
                        <div class="overview-chart">
                        </div>
                    </div>
                </div>
            </div>
        </div>




    </div>
</asp:Content>

