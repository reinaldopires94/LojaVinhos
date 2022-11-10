<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="produtos.aspx.cs" Inherits="LojaVinhos.produtos" %>

<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <link href="https://fonts.googleapis.com/css?family=Roboto:100,300,400,500,700" rel="stylesheet">

    <title>Loja de Vinhos - Produtos</title>

    <!-- Bootstrap core CSS -->

    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">



    <!-- Additional CSS Files -->
    <link rel="stylesheet" href="assets/css/fontawesome.css">
    <link rel="stylesheet" href="assets/css/tooplate-main.css">
    <link rel="stylesheet" href="assets/css/owl.css">
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
                <div class="collapse navbar-collapse" id="navbarResponsive">
                    <ul class="navbar-nav ml-auto">
                        <li class="nav-item">
                            <a class="nav-link" href="loja.aspx">Home</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="produtos.aspx">Produtos
                <span class="sr-only">(current)</span>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="sobreNos.aspx">Sobre Nós</a>
                            <span class="sr-only">(current)</span>
                    </ul>
                </div>
            </div>
        </nav>

        <!-- Page Content -->
        <!-- Items Starts Here -->
        <div class="featured-page">
            <div class="container">
                <div class="row">
                    <div class="col-md-4 col-sm-12">
                        <div class="section-heading">
                            <div class="line-dec"></div>
                            <h1>Produtos</h1>
                        </div>
                    </div>
                    <div>
                        <asp:Button ID="btn_desc" runat="server" Text="Preço: Descendente" OnClick="btn_desc_Click" Height="33px" Width="235px"  class="button1"/>
                        &nbsp;<asp:Button ID="btn_asc" runat="server" Text="Preço: Ascendente" Height="33px" OnClick="btn_asc_Click" Width="225px" class="button1" />
                    &nbsp;<asp:Button ID="btn_AZ" runat="server" Text="Listar A-Z" Height="33px" OnClick="btn_AZ_Click" Width="141px" class="button1"/>

                    &nbsp;<asp:Button ID="btn_ZA" runat="server" Text="Listar Z-A" Height="33px" Width="141px" OnClick="btn_ZA_Click" class="button1"/>

                    &nbsp;
                        <asp:TextBox ID="tb_busca" runat="server" Height="33px" Width="228px" ></asp:TextBox>

                    &nbsp;<asp:Button ID="btn_buscar" runat="server" Height="33px" OnClick="btn_buscar_Click" Text="Buscar" Width="70px" class="button1"/>

                    </div>

                </div>
            </div>
        </div>

        <div class="featured container no-gutter">
            <div class="row posts">
                <asp:Repeater ID="rpt_vinhos" runat="server">
                    <ItemTemplate>
                        <div class="item new col-md-4">
                          <a href="produtoUnico.aspx?id=<%#Eval("num_vinho") %>">
                                <div class="featured-item">
                                 <img src=" <%#Eval("foto")%>" /></a>
                                    <h4><%#Eval("nome")%> </h4>
                                      
                                     
                                     
                                    <h6><%#Eval("preco")%></h6>
                                </div>
                            </a>
                        </div>

                    </ItemTemplate>
                </asp:Repeater>

            </div>
        </div>

        <div class="page-navigation">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <ul>
                            <li class="current-page"><a href="#">1</a></li>
                            <li><a href="#">2</a></li>
                            <li><a href="#">3</a></li>
                            <li><a href="#"><i class="fa fa-angle-right"></i></a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <!-- Featred Page Ends Here -->


        <!-- Subscribe Form Ends Here -->




        <!-- Sub Footer Starts Here -->
        <div class="sub-footer">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="copyright-text">
                            <p>
                            <p>5422 - Exercício de Avaliação - ATEC</p>
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
</body>

</html>
