<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="carrinho.aspx.cs" Inherits="LojaVinhos.carrinho" %>

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
       

      

                <div class="col-md-6">
                    <div class="right-content">
                        <center><h4>
                            <asp:Label ID="lbl_id" runat="server"></asp:Label> </h4>
                        <h4>
                            <asp:Label ID="lbl_nome" runat="server"></asp:Label></h4>
                        <h4>
                            <asp:Label ID="lbl_preco" runat="server"></asp:Label></h4>
                         <h4>
                            <asp:Label ID="lbl_quant" runat="server"></asp:Label></h4>
                        <h4>
                            <asp:Label ID="lbl_total" runat="server"></asp:Label></h4></center>

                        <div action="" method="get">
                        </div>
                        <div class="down-content">
                            <div class="categories">
                                
                            </div>
                            <div class="share">
                            </div>
                        </div>
                    </div>
                </div>
            
    </form>
</body>
