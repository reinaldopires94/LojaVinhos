<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="produtoUnico.aspx.cs" Inherits="LojaVinhos.produtoUnico" %>

<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <link href="https://fonts.googleapis.com/css?family=Roboto:100,300,400,500,700" rel="stylesheet">

    <title>Loja de Vinhos - Produto Único</title>


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
    <form id="form1" runat="server">
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

                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <asp:Label ID="lbl_men" runat="server" Text=""></asp:Label>
                <div class="collapse navbar-collapse" id="navbarResponsive">
                    <ul class="navbar-nav ml-auto">
                        <li class="nav-item">
                            <a class="nav-link" href="loja.aspx">Home</a>
                        </li>
                        <li class="nav-item active">
                            <a class="nav-link" href="produtos.aspx">Produtos
                <span class="sr-only">(current)</span>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="sobreNos.aspx">Sobre Nós</a>
                        </li>

                    </ul>
                </div>
            </div>
        </nav>

        <!-- Page Content -->
        <!-- Single Starts Here -->
        <div class="single-product">
            <div class="container">
                <div class="row">
                    <asp:Repeater ID="rpt_vinhos1" runat="server" >
                        <ItemTemplate>
                            <div class="col-md-12">
                                <div class="section-heading">
                                    <div class="line-dec"></div>
                                    <h2>Loja de Vinhos</h2>
                                </div>
                            </div>

                            <div class="col-md-6">
                                <div class="product-slider">

                                    <div id="slider" class="flexslider">
                                        <ul class="slides">
                                            <li>
                                                <img src=" <%#Eval("foto")%>" />

                                            </li>


                                        </ul>
                                    </div>
                                    <div id="carousel" class="flexslider">
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="right-content">
                                    <h3><%#Eval("nome")%> - <%#Eval("tipo")%> </h3>
                                    <h6>Região: <%#Eval("regiao")%></h6>
                                    <h4><%#Eval("preco")%></h4>
                                    <a><%#Eval("discricao")%></a>
                                   <br />

                                    <a
                                        href="carrinho.aspx?id=<%#Eval("num_vinho") %>">
                                        <h5>Add Carrinho</h5>
                                        <h5>
                                    </a>    
                                    </ItemTemplate>
                                </asp:Repeater>

                                    <div action="" method="get">
                                    </div>
                                    <div class="down-content">
                                        <div class="categories">
                                             <h5>
                                        <asp:TextBox ID="tb_quantidade" runat="server" Height="26" Width="33"></asp:TextBox> - Quantidade
                                                 <asp:Button ID="btn_confirmar" runat="server" OnClick="btn_confirmar_Click" Text="Confirm"  Height="29px" Width="102px" ForeColor="Maroon"  />
                                                 <asp:Label ID="lbl_men2" runat="server" Text=""></asp:Label>
                                             </h5>
                                        </div>
                                        <div class="share">
                                        </div>
                                    </div>
                                </div>
        </div>
        </div>

                    
                    
                </div>
            </div>
            <!-- Single Page Ends Here -->

            <!-- Sub Footer Starts Here -->
            <div class="sub-footer">
                <div class="container">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="copyright-text">
                                <p>
                                <p>5422 - Exercício de Avaliação - ATECC</p>
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
    </form>
    <!--Start of Tawk.to Script-->
<script type="text/javascript">
var Tawk_API=Tawk_API||{}, Tawk_LoadStart=new Date();
(function(){
var s1=document.createElement("script"),s0=document.getElementsByTagName("script")[0];
s1.async=true;
s1.src='https://embed.tawk.to/63723b9ddaff0e1306d75022/1ghr3hnl8';
s1.charset='UTF-8';
s1.setAttribute('crossorigin','*');
s0.parentNode.insertBefore(s1,s0);
})();
</script>
<!--End of Tawk.to Script-->
</body>

</html>
