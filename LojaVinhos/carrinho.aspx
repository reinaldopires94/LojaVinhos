<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="carrinho.aspx.cs" Inherits="LojaVinhos.carrinho" %>


<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <link href="https://fonts.googleapis.com/css?family=Roboto:100,300,400,500,700" rel="stylesheet">

    <title>Lojas de Vinhos - Finalizar a compra</title>

    <!-- Bootstrap core CSS -->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">


    <!-- Additional CSS Files -->
    <link rel="stylesheet" href="assets/css/fontawesome.css">
    <link rel="stylesheet" href="assets/css/tooplate-main.css">
    <link rel="stylesheet" href="assets/css/owl.css">
    <link rel="stylesheet" href="assets/css/flex-slider.css">
    <!--
Tooplate 2114 Pixie
https://www.tooplate.com/view/2114-pixie
-->
</head>

<body>
      <form  id="form1" runat="server">
    <!-- Pre Header -->
    <div id="pre-header">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <span>Reinaldo Borba Pires Bezerra</span>
                </div>
            </div>
        </div>
    </div>

    <!-- Navigation -->
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark static-top">
        <div class="container">
            <br />
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarResponsive">
                <ul class="navbar-nav ml-auto">
                    <li class="nav-item">
                        <a class="nav-link" href="produtos.aspx">Produtos</a>
                    </li>


                </ul>
            </div>
        </div>
    </nav>

    <!-- Page Content -->
    <!-- About Page Starts Here -->
    <div class="about-page">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="section-heading">
                        <div class="line-dec"></div>
                        <h1>Finalizar a comprar</h1>
                    </div>
                </div>
                
                <div class="col-md-6">
                    
                    <div class="left-image">
                           <img src="assets/images/ativacao.jpg" alt="">
                    </div>
                       
              
                </div>
                <div class="col-md-6">
                    <div class="right-content">
                        <h4>
                            <asp:Label ID="lbl_id" runat="server"></asp:Label>
                        </h4>
                        <h4>
                            <asp:Label ID="lbl_nome" runat="server"></asp:Label></h4>
                        <h4>
                            <asp:Label ID="lbl_preco" runat="server"></asp:Label></h4>
                        <h4>
                            <asp:Label ID="lbl_quant" runat="server"></asp:Label></h4>
                        <h4>
                            <asp:Label ID="lbl_total" runat="server"></asp:Label></h4>
                         
                        <br>
                        <p>Obrigado.</p><br />

                      
                        <asp:TextBox ID="tb_email" runat="server"></asp:TextBox>
                        <asp:Button ID="btn_pagar" runat="server" Text="pagar" class="button1" OnClick="btn_pagar_Click"/>
                        <h4><asp:Label ID="lbl_men" runat="server" Text=""></asp:Label></h4>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- About Page Ends Here -->

    <!-- Subscribe Form Ends Here -->



    <!-- Footer Starts Here -->

    <!-- Footer Ends Here -->


    <!-- Sub Footer Starts Here -->
    <div class="sub-footer">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="copyright-text">
                        <p>
                            5422 - Exercício de Avaliação - ATEC
                
               
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Sub Footer Ends Here -->


    <!-- Bootstrap core JavaScript -->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>


    <!-- Additional Scripts -->
    <script src="assets/js/custom.js"></script>
    <script src="assets/js/owl.js"></script>
    <script src="assets/js/isotope.js"></script>
    <script src="assets/js/flex-slider.js"></script>


    <script language="text/Javascript"> 
      cleared[0] = cleared[1] = cleared[2] = 0; //set a cleared flag for each field
      function clearField(t){                   //declaring the array outside of the
      if(! cleared[t.id]){                      // function makes it static and global
          cleared[t.id] = 1;  // you could use true and false, but that's more typing
          t.value='';         // with more chance of typos
          t.style.color='#fff';
          }
      }
    </script>

 <</form>
</body>

</html>