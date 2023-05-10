<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="usersignup.aspx.cs" Inherits="e_waste.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="card shadow mt-5 mb-5">
                        <div class="card-body sec">

                            <div class="row">
                                <div class="col-lg-6">
                                    <div class="row">
                                        <div class="col-lg-3 mx-auto">
                                            <img class="img-fluid" src="img/useradd.svg" alt="user" />
                                        </div>
                                    </div>
                                    <div>
                                        <h4 class="text-center text-dark">USER SIGNUP</h4>
                                    </div>
                                    <hr />



                                    <div class="row mt-2">
                                        <div class="col-lg-12 mx-auto">
                                            <label class="text-black">FIRST NAME</label>
                                            <div class="form-group">
                                                <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="Required" ControlToValidate="TextBox1" ForeColor="Red"></asp:RequiredFieldValidator>

                                            </div>
                                        </div>
                                    </div>

                                    <div class="row mt-3">
                                        <div class="col-lg-12 mx-auto">
                                            <label class="text-black">LAST NAME</label>
                                            <div class="form-group">
                                                <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ErrorMessage="Required" ControlToValidate="TextBox2" ForeColor="Red"></asp:RequiredFieldValidator>

                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div class="col-lg-6">



                                    <div class="row mt-4">
                                        <div class="col">
                                            <label class="text-black">Email id</label>
                                            <div class="form-group">
                                                <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control" TextMode="Email"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ErrorMessage="Required" ControlToValidate="TextBox3" ForeColor="Red"></asp:RequiredFieldValidator>
                                            <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ErrorMessage="invalid email id" ControlToValidate="TextBox3" ValidationExpression="^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$" ForeColor="Red"></asp:RegularExpressionValidator>

                                            </div>
                                        </div>


                                    <div class="row mt-2">
                                        <div class="col-lg-6 mb-2">
                                            <label class="text-black">Password</label>
                                            <div class="form-group">
                                                <asp:TextBox ID="TextBox5" runat="server" CssClass="form-control" TextMode="Password"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ErrorMessage="Required" ControlToValidate="TextBox5" ForeColor="Red"></asp:RequiredFieldValidator>

                                            </div>
                                        </div>
                                        <div class="col-lg-6 mb-2">
                                            <label class="text-black">Confirm Password</label>
                                            <div class="form-group">
                                                <asp:TextBox ID="TextBox6" runat="server" CssClass="form-control" TextMode="Password"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" ErrorMessage="Required" ControlToValidate="TextBox6" ForeColor="Red"></asp:RequiredFieldValidator>
                                                <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Password not match" ControlToCompare="TextBox5" ControlToValidate="TextBox6" ForeColor="Red"></asp:CompareValidator>
                                            </div>
                                        </div>
                                    </div>

                                    <hr />

                                    <div class="row mt-4">
                                        <div class="col-lg-12">
                                            <div class="from-group">
                                                <asp:Button runat="server" Text="Signup" CssClass="btn btn-secondary btn-block" Width="100%" OnClick="Signup_Click" />
                                            </div>
                                        </div>
                                    </div>
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

