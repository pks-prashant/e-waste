<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="userlogin.aspx.cs" Inherits="e_waste.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section>
        <div class="container">
            <div class="row">
                <div class="col-lg-6 mx-auto">
                    <div class="card shadow mt-5 mb-5">
                        <div class="card-body sec">
                           
                            <div class="row">
                                <div class="col-3 mx-auto">
                                    <img class="img-fluid" src="img/user.svg" alt="user"/>
                                </div>
                            </div>
                            <div>
                                    <h1 class="text-center">USER LOGIN</h1>
                            </div>

                            <hr />

                            <div class="row mt-3">
                            <div class="col" style="font-weight: bolder; color: red; text-align:center">
                                <asp:Label ID="Lb1" runat="server" Text="Incorrect EMAIL ID or password"></asp:Label>
                            </div>
                        </div>

                            <div class="row mt-2">
                                <div class="col-lg-10 mx-auto">
                                    <label class="text-black">EMAIL ID</label>
                                        <div class="form-group">
                                            <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" TextMode="Email">

                                            </asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Required" ControlToValidate="TextBox1" ForeColor="Red"></asp:RequiredFieldValidator>
                                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="invalid email id" ControlToValidate="TextBox1" ValidationExpression="^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$" ForeColor="Red"></asp:RegularExpressionValidator>
                                        
                                        </div>  
                                </div>
                            </div>

                            <div class="row mt-3">
                                <div class="col-lg-10 mx-auto">
                                    <label class="text-black">PASSWORD</label>
                                        <div class="form-group">
                                            <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control" TextMode="Password" ></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Required" ControlToValidate="TextBox2" ForeColor="Red"></asp:RequiredFieldValidator>

                                        </div>  
                                </div>
                            </div>

                            <div class="row mt-4">
                                <div class="col-lg-10 mx-auto">
                                    <div class="from-group">
                                        <asp:Button runat="server" Text="Login" CssClass="btn btn-secondary btn-block" Width="100%" OnClick="Login_Click" />
                                    </div>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-lg-10 mx-auto">
                                    <div class="from-group">
                                        <asp:Button runat="server" Text="Create New Account" CssClass="btn btn-sm btn-block" Width="100%" OnClick="Unnamed2_Click" />
                                    </div>
                                </div>
                            </div>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
</asp:Content>
