<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="loja.aspx.cs" Inherits="LojaVinhos.loja" %>

<!DOCTYPE html>
<html lang="en">

  <head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <link href="https://fonts.googleapis.com/css?family=Roboto:100,300,400,500,700" rel="stylesheet">

    <title>Loja de Vinhos - Home</title>

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
    <!-- Banner Starts Here -->
   <center> <div class="banner">
      <div class="container">
        <div class="row">
          <div class="col-md-12">
            <div class="caption">
              <h2>Login</h2>
              <div class="line-dec"></div><br />
                 <div class="col-md-6">
                      <fieldset>
                          <asp:TextBox ID="tb_email" runat="server" class="form-control" placeholder="Email" ></asp:TextBox>
                      </fieldset><br />
                   
                     <fieldset>
                         <asp:TextBox ID="tb_senha" runat="server" class="form-control" placeholder="Senha" ></asp:TextBox>
                      </fieldset>
                    </div>
                <br />
               <div class="main-button">
                <a href="#">Entrar
                    
                </a>
   
              </div>
                
                <asp:Button ID="btn_entrar" runat="server" Text="Entrar" OnClick="btn_entrar_Click" class="main-button" />
                <br />
                <asp:Label ID="lbl_men" runat="server" ForeColor="Maroon"></asp:Label>
            </div>
          </div>
        </div>
      </div>
    </div></center>
    <!-- Banner Ends Here -->

    <!-- Featured Starts Here -->
    <div class="featured-items">
      <div class="container">
        <div class="row">
          <div class="col-md-12">
            <div class="section-heading">
              <div class="line-dec"></div>
              <h1>Destaques</h1>
            </div>
          </div>
          <div class="col-md-12">
            <div class="owl-carousel owl-theme">
              
                <div class="featured-item">
                  <img src="assets/images/foto22_ravasqueira.jpg" alt="Item 1">
                  <h4>Ravasqueira - Alentejo</h4>
                  
                </div>
              
              
                <div class="featured-item">
                  <img src="assets/images/foto25_quintaNova.jpg" alt="Item 2">
                  <h4>Quinta Nova - Douro</h4>
               
                </div>
             
              
                <div class="featured-item">
                  <img src="assets/images/foto16_barcaVelha.jpg" alt="Item 3">
                  <h4>Barca Velha - Douro</h4>
                  
                </div>
             
              
                <div class="featured-item">
                  <img src="assets/images/foto10_cabriz.jpg" alt="Item 4">
                  <h4>Cabriz - Dão</h4>
               
                </div>
             
             
                <div class="featured-item">
                  <img src="assets/images/foto3.1_josedeSousa.jpg" alt="Item 5">
                  <h4>José de Sousa - Alentejo</h4>
                  
                </div>
              
             
                <div class="featured-item">
                  <img src="assets/images/foto20_joaoPires.jpg" alt="Item 6">
                  <h4>João Pires - Setúbal</h4>
                 
                </div>
              
           
                <div class="featured-item">
                  <img src="assets/images/foto4_peraManga.jpg" alt="Item 7">
                  <h4>Pera Manga - Alentejo</h4>
                  
                </div>
             
              
                <div class="featured-item">
                  <img src="assets/images/foto2_cartuxa.jpg" alt="Item 8">
                  <h4>Cartuxa - Alentejo </h4>
                  
                </div>
              
          
                <div class="featured-item">
                  <img src="assets/images/foto27_mostacel1911.jpg" alt="Item 9">
                  <h4>Mostacel 1911 - Setúbal</h4>
              
                </div>
             
             
                <div class="featured-item">
                  <img src="assets/images/foto23_sobroso.jpg" alt="Item 9">
                  <h4>Sobroso - Alentejo</h4>
            
                </div>
              
                
                <div class="featured-item">
                  <img src="assets/images/foto28_blandysVedelho.jpg" alt="Item 9">
                  <h4>Blandy´s Vedelho - Madeira</h4>
                
                </div>
             
                <div class="featured-item">
                  <img src="assets/images/foto17_crasto.jpg" alt="Item 9">
                  <h4>Crasto - Douro</h4>
                 
                </div>
              
            </div>
          </div>
        </div>
      </div>
    </div>
   </form>
    <!-- Featred Ends Here -->


    <!-- Subscribe Form Starts Here -->
    <div class="subscribe-form">
      <div class="container">
        <div class="row">
          <div class="col-md-12">
            <div class="section-heading">
              <div class="line-dec"></div>
              <h1>Subscribe on PIXIE now!</h1>
            </div>
          </div>
          <div class="col-md-8 offset-md-2">
            <div class="main-content">
              <p>Integer vel turpis ultricies, lacinia ligula id, lobortis augue. Vivamus porttitor dui id dictum efficitur. Phasellus vel interdum elit.</p>
              <div class="container">
                <form id="subscribe" action="" method="get">
                  <div class="row">
                    <div class="col-md-7">
                      <fieldset>
                        <input name="email" type="text" class="form-control" id="email" 
                        onfocus="if(this.value == 'Your Email...') { this.value = ''; }" 
                    	onBlur="if(this.value == '') { this.value = 'Your Email...';}"
                    	value="Your Email..." required="">
                      </fieldset>
                    </div>
                    <div class="col-md-5">
                      <fieldset>
                        <button type="submit" id="form-submit" class="button">Subscribe Now!</button>
                      </fieldset>
                    </div>
                  </div>
                </form>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <!-- Subscribe Form Ends Here -->


    
    <!-- Footer Starts Here -->
    <div class="footer">
      <div class="container">
        <div class="row">
          <div class="col-md-12">
            <div class="logo">
              <img src="assets/images/header-logo.png" alt="">
            </div>
          </div>
          <div class="col-md-12">
            <div class="footer-menu">
              <ul>
                <li><a href="#">Home</a></li>
                <li><a href="#">Help</a></li>
                <li><a href="#">Privacy Policy</a></li>
                <li><a href="#">How It Works ?</a></li>
                <li><a href="#">Contact Us</a></li>
              </ul>
            </div>
          </div>
          <div class="col-md-12">
            <div class="social-icons">
              <ul>
                <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                <li><a href="#"><i class="fa fa-linkedin"></i></a></li>
                <li><a href="#"><i class="fa fa-rss"></i></a></li>
              </ul>
            </div>
          </div>
        </div>
      </div>
    </div>
    <!-- Footer Ends Here -->


    <!-- Sub Footer Starts Here -->
    <div class="sub-footer">
      <div class="container">
        <div class="row">
          <div class="col-md-12">
            <div class="copyright-text">
              <p>Copyright &copy; 2019 Company Name 
                
                - Design: <a rel="nofollow" href="https://www.facebook.com/tooplate">Tooplate</a></p>
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


    <script language = "text/Javascript"> 
      cleared[0] = cleared[1] = cleared[2] = 0; //set a cleared flag for each field
      function clearField(t){                   //declaring the array outside of the
      if(! cleared[t.id]){                      // function makes it static and global
          cleared[t.id] = 1;  // you could use true and false, but that's more typing
          t.value='';         // with more chance of typos
          t.style.color='#fff';
          }
      }
    </script>


  </body>

</html>
