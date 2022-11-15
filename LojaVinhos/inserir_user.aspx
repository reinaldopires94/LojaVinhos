﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="inserir_user.aspx.cs" Inherits="LojaVinhos.inserir_user" %>

<!DOCTYPE html>
<html lang="en">

  <head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <link href="https://fonts.googleapis.com/css?family=Roboto:100,300,400,500,700" rel="stylesheet">

    <title>Loja de Vinhos - Cadastro</title>

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
              <h2>Cadastrar Conta</h2>
              <div class="line-dec"></div><br />
                 <div class="col-md-6">
                     
                          <asp:TextBox ID="tb_nome" runat="server" class="form-control" placeholder="Nome Utilizador" ></asp:TextBox>
                         
                          <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="tb_nome" ErrorMessage="*" ForeColor="Maroon"></asp:RequiredFieldValidator>
                         
                          <br />
                          <asp:TextBox ID="tb_email" runat="server" class="form-control" placeholder="Email" ></asp:TextBox>
                      
                          <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="tb_email" ErrorMessage="Email Inválido" ForeColor="Maroon" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                      
                          <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*" ForeColor="Maroon" ControlToValidate="tb_email"></asp:RequiredFieldValidator>
                      
                    <br />

                         <asp:TextBox ID="tb_senha" runat="server" class="form-control" placeholder="Senha" TextMode="Password" ></asp:TextBox> 
                         
                          <br />
                     
                    </div>
                <br />
                <asp:Button ID="btn_entrar" runat="server" Text="Entrar" OnClick="btn_entrar_Click" class="main-button" ForeColor="Maroon" />
                <br />
                <asp:Label ID="lbl_men" runat="server" ForeColor="Maroon"></asp:Label>
                
            </div>
          </div>
        </div>
      </div>
    </div></center>
    <!-- Banner Ends Here -->
          


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