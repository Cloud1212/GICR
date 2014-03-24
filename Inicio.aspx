<%@ Page Title="" Language="VB" MasterPageFile="~/GICR.master" AutoEventWireup="false" CodeFile="Inicio.aspx.vb" Inherits="Inicio" Theme="SkinFile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   <div class=" bs-example">
    <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
     
      <div class="carousel-inner">
        <div class="item">
          <center><img data-src="holder.js/900x500/auto/#777:#777" alt="900x500" src="imagenes/silverado.jpg"></center>
          
        </div>
        <div class="item active">
          <center><img data-src="holder.js/900x500/auto/#666:#666" alt="900x500" src="imagenes/camaro.jpg"></center>
         
        </div>
        <div class="item">
         <center> <img data-src="holder.js/900x500/auto/#555:#5555" alt="900x500" src="imagenes/camaroazul.jpg"></center>
          
        </div>
      </div>
      <a class="left carousel-control" href="#carousel-example-generic" data-slide="prev">
        <span class="glyphicon glyphicon-chevron-left"></span>
      </a>
      <a class="right carousel-control" href="#carousel-example-generic" data-slide="next">
        <span class="glyphicon glyphicon-chevron-right"></span>
      </a>
    </div>
  </div> 
</asp:Content>



