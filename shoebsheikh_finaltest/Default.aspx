<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="shoebsheikh_finaltest.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
       <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css" />
    <link
        href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet" />
     <link rel="stylesheet" href="bootstrap-5.3.1/dist/css/bootstrap.min.css"/>
    <link href="css/sb-admin-2.min.css" rel="stylesheet" />
    <title></title>
     <style>
        .gradient-custom {
            /* fallback for old browsers */
            background: #6a11cb;
            /* Chrome 10-25, Safari 5.1-6 */
            background: -webkit-linear-gradient(to right, rgba(106, 17, 203, 1), rgba(37, 117, 252, 1));
            /* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */
            background: linear-gradient(to right, rgba(106, 17, 203, 1), rgba(37, 117, 252, 1))
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            
       
            <section class="vh-25 gradient-custom">
                <div class="container py-5 h-100">
                    <div class="row d-flex justify-content-center align-items-center h-100">
                        <div class="col-12 col-md-8 col-lg-6 col-xl-5">
                            <div class="card bg-dark text-white" style="border-radius: 1rem;">
                                <div class="card-body p-5 text-center">

                                    <div class="mb-md-5 mt-md-4 pb-5">

                                        <h2 class="fw-bold mb-2 text-uppercase">Login</h2>
                                        <p class="text-white-50 mb-5">Please enter your login and password!</p>

                                        <div class="form-outline form-white mb-4">
                                           <label class="form-label" for="typeEmailX">UserName</label>
                                            <asp:TextBox id="txtemail" class="form-control form-control-lg" runat="server"></asp:TextBox>   
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Username requred" ControlToValidate="txtdate" ForeColor="Red" EnableClientScript="False"></asp:RequiredFieldValidator>
                                        </div>

                                        <div class="form-outline form-white mb-4">
                                            <label class="form-label" for="typePasswordX">Password</label>
                                            <asp:TextBox id="txtpassword" TextMode="Password" class="form-control form-control-lg" runat="server"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Password requred" ControlToValidate="txtdate" ForeColor="Red" EnableClientScript="False"></asp:RequiredFieldValidator>
                                         </div>

                                        <p class="small mb-5 pb-lg-2">
                                            <asp:LinkButton ID="LinkButton1" class="text-white-50" runat="server">Forgot</asp:LinkButton>    
                                        </p>
                                        <asp:Button ID="Button1" class="btn btn-outline-light btn-lg px-5" runat="server" Text="Login" OnClick="Button1_Click" />                                  

                                       

                                    </div>

                                    <div>
                                        <p class="mb-0">
                                             Don't have an account? 
                                            <asp:LinkButton ID="LinkButton2" class="text-white-50 fw-bold" runat="server">Register</asp:LinkButton>
                                           
                                        </p>
                                    </div>

                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
        </div>
    <script src="./bootstrap-5.3.1/dist/js/bootstrap.min.js"> </script>
    </form>
      
</body>
</html>
