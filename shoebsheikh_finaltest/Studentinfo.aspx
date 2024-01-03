<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Studentinfo.aspx.cs" Inherits="shoebsheikh_finaltest.Studentinfo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css" />
    <link
        href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet" />
    <link rel="stylesheet" href="bootstrap-5.3.1/dist/css/bootstrap.min.css" />
    <link href="css/sb-admin-2.min.css" rel="stylesheet" />

    <title></title>
    <style>
        .gradient-custom {
            /* fallback for old browsers */
            background: #f093fb;
            /*background-image:url("./images/image2");*/
            /* Chrome 10-25, Safari 5.1-6 */
            background: -webkit-linear-gradient(to bottom right, rgba(1000, 147, 251, 1), rgba(245, 87, 108, 1));
            /* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */
            background: linear-gradient(to bottom right, rgba(240, 147, 251, 1), rgba(245, 87, 108, 1))
        }

        .card-registration .select-input.form-control[readonly]:not([disabled]) {
            font-size: 1rem;
            line-height: 2.15;
            padding-left: .75em;
            padding-right: .75em;
        }

        .card-registration .select-arrow {
            top: 13px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <section class="vh-50 gradient-custom">
                <div class="container py-5 h-100">
                    <div class="row justify-content-center align-items-center h-100">
                        <div class="col-12 col-lg-9 col-xl-7">
                            <div class="card shadow-2-strong card-registration" style="border-radius: 15px;">
                                <div class="card-body p-4 p-md-5">
                                    <h3 class="mb-4 pb-2 pb-md-0 mb-md-5">Student Information</h3>
                                    <div>

                                        <div class="row">
                                            <div class="col-md-6 mb-4">

                                                <div class="form-outline">
                                                    <%--Name feild--%>
                                                    <asp:TextBox ID="txtname" runat="server" class="form-control form-control-lg" required="true" MaxLength="25"></asp:TextBox>
                                                    <label class="form-label" for="Name">Name</label>
                                                </div>

                                            </div>
                                            <div class="col-md-6 mb-4">
                                                <div class="form-outline datepicker w-100">
                                                    <%--Date of Birth--%>
                                                    <asp:TextBox ID="txtdob" runat="server" class="form-control form-control-lg" TextMode="Date" required="true"></asp:TextBox>
                                                    <label for="birthdayDate" class="form-label">DOB</label>
                                                </div>


                                            </div>
                                        </div>

                                        <div class="row">

                                            <div class="col-md-12 mb-4">

                                                <h6 class="mb-2 pb-1">Gender: </h6>
                                                <div class="form-check form-check-inline">
                                                    <asp:RadioButtonList ID="radiogender" runat="server" class="form-check form-check-inline">
                                                        <asp:ListItem> - Male</asp:ListItem>
                                                        <asp:ListItem> - Female</asp:ListItem>
                                                        <asp:ListItem> - Other</asp:ListItem>
                                                    </asp:RadioButtonList>
                                                </div>
                                            </div>

                                            <div class="row">
                                                <div class="col-md-6 mb-4">
                                                    <label class="form-label select-label">Choose Your Degree</label>

                                                    <asp:DropDownList ID="dddegree" runat="server" class="select form-control-lg" AutoPostBack="True">
                                                        <asp:ListItem>Bachlore</asp:ListItem>
                                                        <asp:ListItem>Master</asp:ListItem>
                                                        <asp:ListItem>associate</asp:ListItem>
                                                        <asp:ListItem>doctoral</asp:ListItem>
                                                    </asp:DropDownList>



                                                </div>
                                                <div class="col-md-6 mb-4">
                                                    <label class="form-label select-label">Choose Your Branch</label>

                                                    <asp:DropDownList ID="ddbranch" runat="server" class="select form-control-lg" AutoPostBack="True">
                                                        <asp:ListItem>CSE</asp:ListItem>
                                                        <asp:ListItem>IT</asp:ListItem>
                                                        <asp:ListItem>CIVIL</asp:ListItem>
                                                        <asp:ListItem>ETC</asp:ListItem>
                                                    </asp:DropDownList>

                                                </div>
                                            </div>

                                            <div class="row">
                                                <div class="col-md-6 mb-4">
                                                    <div class="form-outline">
                                                        <asp:TextBox ID="txtemail" runat="server" class="form-control form-control-lg" MaxLength="35" pattern="[a-z0-9._%+\-]+@[a-z0-9.\-]+\.[a-z]{2,}$" required="true"></asp:TextBox>
                                                        <label class="form-label" for="Email">Emailr</label>
                                                    </div>

                                                </div>
                                                <div class="col-md-6 mb-4">
                                                    <div class="form-outline">
                                                        <asp:TextBox ID="txtmobile" runat="server" class="form-control form-control-lg" MinLength="10" MaxLength="10" required="true"></asp:TextBox>
                                                        <label class="form-label" for="Mobile">Mobile Number </label>
                                                    </div>


                                                </div>
                                            </div>

                                            <div class="row">
                                                <%-- <div class="col-md-6 mb-4 pb-2">

                                                    <div class="form-outline">
                                                        <asp:TextBox ID="txtmobile" runat="server" class="form-control form-control-lg" MaxLength="10" required="true"></asp:TextBox>
                                                        <label class="form-label" for="MobileNumber">Mobile Number</label>
                                                    </div>

                                                </div>--%>

                                                <div class="col-md-6 mb-4 pb-2">

                                                    <div class="form-group">
                                                        <label for="FileUpload1">Choose a file:</label>
                                                        <div class="input-group">
                                                            <div class="custom-file">
                                                                <asp:FileUpload ID="imageupload" runat="server" class="custom-file-input" />
                                                                <label class="custom-file-label" for="FileUpload1"></label>
                                                                <br />


                                                            </div>
                                                            <div class="input-group-append">
                                                                <asp:Button ID="Button1" runat="server" Text="Button" class="btn btn-secondary" />
                                                                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                                                            </div>
                                                        </div>
                                                    </div>

                                                </div>
                                                <div class="col-md-6 mb-4">
                                                    <label class="form-label" for="Mobile">Active Status </label>

                                                    <div class="form-outline">
                                                        <asp:CheckBox ID="cbstatus" runat="server" class="form-control form-control-lg" />
                                                    </div>


                                                </div>

                                            </div>



                                           <div class="row">
                                                <div class="mt-4 pt-2">
                                                <asp:Button ID="Button2" runat="server" Text="Submit" class="btn btn-primary btn-lg" OnClick="Button2_Click" />
                                                <br />
                                                <br />
                                            </div>
                                            <div class="mt-4 pt-2">
                                                <asp:Button ID="Button5" runat="server" Text="Cancel" class="btn btn-primary btn-lg" OnClick="Button5_Click" />
                                                <br />
                                                <br />
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
        </div>

        <div>

            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:TemplateField HeaderText="Student Name">
                        <ItemTemplate>
                            <asp:TextBox ID="TextBox7" runat="server" Text='<%# Eval("sname") %>' CssClass="form-control"></asp:TextBox>
                            </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Date Of Birth">
                        <ItemTemplate>
                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Eval("ddob") %>' CssClass="form-control"></asp:TextBox>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Gender">
                        <ItemTemplate>
                            <asp:TextBox ID="TextBox2" runat="server" Text='<%# Eval("gender") %>' CssClass="form-control"></asp:TextBox>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Degree">
                        <ItemTemplate>
                            <asp:TextBox ID="TextBox3" runat="server" Text='<%# Eval("degree") %>' CssClass="form-control"></asp:TextBox>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Branch">
                        <ItemTemplate>
                            <asp:TextBox ID="TextBox4" runat="server" Text='<%# Eval("branch") %>' CssClass="form-control"></asp:TextBox>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Photo">
                        <ItemTemplate>
                            <asp:TextBox ID="TextBox5" runat="server" Text='<%# Eval("imagepath") %>' CssClass="form-control"></asp:TextBox>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Active Status">
                        <ItemTemplate>
                            <asp:TextBox ID="TextBox6" runat="server" Text='<%# Eval("activestatus") %>' CssClass="form-control"></asp:TextBox>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Edit Button">
                        <ItemTemplate>
                            <asp:Button ID="Button3" runat="server" Text="Edit" OnClick="Button3_Click" />
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Delete Button">
                        <ItemTemplate>
                            <asp:Button ID="Button4" runat="server" Text="Delete" OnClick="Button4_Click" />
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
                <EditRowStyle BackColor="#7C6F57" />
                <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#E3EAEB" />
                <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F8FAFA" />
                <SortedAscendingHeaderStyle BackColor="#246B61" />
                <SortedDescendingCellStyle BackColor="#D4DFE1" />
                <SortedDescendingHeaderStyle BackColor="#15524A" />
            </asp:GridView>

        </div>
        <script src="./bootstrap-5.3.1/dist/js/bootstrap.min.js"> </script>
    </form>
</body>
</html>
