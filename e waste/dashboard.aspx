<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="dashboard.aspx.cs" Inherits="e_waste.dashboard" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="sec">
        <div class="container">
            <div class="row">
                <div class="col-md-4 mt-3">
                    
                    <div class="card">
                        <div class="card-body">

                            <div class="row">
                                <div class="col">
                                    <center>
                                        <h4>COLLECTION HUB</h4>
                                    </center>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col">
                                    <center>
                                        <img width="200"  src="img/collect.svg" alt="img"/>
                                    </center>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col">
                                    <hr>
                                </div>
                            </div>
                              
                           
                            <div class="row mt-2">
                                
                                <div class="col">
                                    <label>Product Name</label>
                                    <div class="form-group">
                                        <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control">
                                            
                                        </asp:DropDownList>
                                    </div>
                                </div>
                                </div>

                            <div class="row mt-3">
                                <div class="col">
                                    <asp:Button ID="Button1" class="btn btn-sm btn-block btn-secondary" runat="server" Text="Search" width="100%" OnClick="Button1_Click" />
                                </div>
                    </div>
                            
                    </div>
                </div>
                </div>
            </div>

            <div class="row mt-3">
                <div class="col">
                    <div class="card">
                        <div class="card-body">
                            <asp:GridView class="table table-striped table-bordered table-responsive" ID="GridView1" runat="server">
                                
                            </asp:GridView>
                    </div>
                </div>
                </div>

            </div>
        </div>
    </section>
</asp:Content>
