<!-- <?php session_start(); ?> -->

<!DOCTYPE html>
<html lang="es">
 <head>
   <title> Smart Institutes - Enseñando Ingles desde 2018 A.C. </title>
   <meta charset="utf-8">
   <meta name="viewport" content="width=device-width, initial-scale=1">
   <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css" >
   <script src="bootstrap/js/jquery-3.1.0.min.js"></script>
   <script src="bootstrap/js/bootstrap.min.js"></script>
   <script src="bootstrap/js/funciones_gral.js"></script>
   <link rel="stylesheet" href="bootstrap/css/style_chat.css" media="all"/>	
   <link rel="stylesheet" href="bootstrap/ui/jquery-ui.css">
   <link rel="stylesheet" href="bootstrap/cust.css">
   <script src="bootstrap/ui/jquery-ui.js"></script>
     
   <!-----https://sourcecodesite.com/how-to-create-chat-system-in-php-using-ajax-2.html--->
   <!--Include Custom CSS-->
   <!---
   <script src="bootstrap/js/funciones_e.js"></script>
   <script src="bootstrap/js/funciones_d.js"></script>
   --->
   <script>
   function cargar(div,desde)
   {
   $(div).load(desde);
   } 
   </script>
   <style>
pre {
    display: block;
    font-family: arial;
    white-space: pre;
    margin: 2em 0;
} 
#background {
    position: fixed;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    background-image: url('images/Underground.jpg');
    background-repeat: no-repeat;
    background-attachment: fixed;
    background-size: 100%;
    opacity: 0.75;
    filter:alpha(opacity=50);
}
</style>
 </head>
 
 <!--body style="padding: 0px 0px 0px 0px;background-image: url(images/b_bkg_4.jpg);" onload="cargar('#capa_P','txts/init_1.html');cargar('#capa_C','txts/init_2.html')"---->
 <body style="padding: 0px 0px 0px 0px;"  >
  <div id="background"></div>
 <div class="container-fluid" >
  
   <nav class="navbar navbar-inverse navbar-static-top navbar2" role="navigation" >

      <ul class="nav navbar-nav ">
        <li><a href="index.php"><span onclick="cargar(\'#capa_C\',\'A/txts/origen.html\')">LICEO CULTURAL S.M.A.R.T.</span></a></li></a></li>


		<!--<li><a href="cartelera.php">Cartelera</a></li>-->
		<li><a href="abm_li.php">Libros</a></li>
		<?php 
		if (isset($_SESSION['username']) && $_SESSION['rol']=='administrador'){
		 echo '<li><a href="abm_pe.php">Usuarios</a></li>';
		 echo '<li><a href="abm_ca.php">Carteles</a></li>';
     echo '<li><a href="abm_ta.php">Tareas</a></li>';
      echo '<li><a href="abm_co.php">Comunicaciones</a></li>';
		}
		?>

	  <?php 
    if (isset($_SESSION['username']) && $_SESSION['rol']=='Preceptor'){
     echo '<li><a href="abm_pe.php">Usuarios</a></li>';
     echo '<li><a href="abm_ta.php">Tareas</a></li>';
     echo '<li><a href="abm_co.php">Comunicaciones</a></li>';
    }
    ?>

	  <?php 
    if (isset($_SESSION['username']) && $_SESSION['rol']=='Docente'){
     echo '<li><a href="abm_ta.php">Tareas</a></li>';
     echo '<li><a href="abm_co.php">Comunicaciones</a></li>';
    }
    ?>

    <?php 
    if (isset($_SESSION['username']) && $_SESSION['rol']=='Padre'){
    echo '<li><a href="abm_co.php">Comunicaciones</a></li>';
    }
    ?>

    <?php 
    if (isset($_SESSION['username']) && $_SESSION['rol']=='Estudiante'){
     echo '<li><a href="abm_ta.php">Tareas</a></li>';
     echo '<li><a href="abm_co.php">Comunicaciones</a></li>';
    }
    ?>

	  </ul>
	  <ul class="nav navbar-nav navbar-right" style="padding-right: 10px;">
      
	  <?php 
	  if (isset($_SESSION['username'])) {
	  echo ' <li class="navbar-brand">'.$_SESSION['rol'].' : '.$_SESSION['username'].'</li>'; 
      }
	  ?>
	  
      
<?php
	  if (!isset($_SESSION['username'])){
	    echo '	  
	        <li><a href="registro.php"  data-toggle="modal" data-target="#myModal"><span class="glyphicon glyphicon-user"></span> Registro</a></li>
             ';
        echo '	  
	        <li><a href="login.php" data-toggle="modal" data-target="#myModal"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
             ';
		  }	 
	  else{
	    echo '	  
		    <li><a href="abm_co.php">Chat</a></li>
	        <li><a href="logout.php" ><span class="glyphicon glyphicon-log-out"></span> Logout</a></li>
             ';
	       }
?>		   
	</ul>
	  
	  
	 
	 
   </nav>
  

  
  
 
  
 <!-- Modal -->
 
<div id="myModal" class="modal fade" role="dialog">
  <div class="modal-dialog">

    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        <h4 class="modal-title">Cabezal de Usuario</h4>
      </div>
      <div class="modal-body">
        <p></p>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Cerrar</button>
      </div>
    </div>

  </div>
</div>



</div>
 
</body>
