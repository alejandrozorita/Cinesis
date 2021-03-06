<%@page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page import="java.util.*, java.io.*"%>
<%@page import="org.apache.log4j.Logger,java.text.DecimalFormat"%>
<jsp:include page="includes/header.jsp" />

    <!-- Carousel
    ================================================== -->
    <div id="myCarousel" class="carousel slide" data-ride="carousel">
      <!-- Indicators -->
      <ol class="carousel-indicators">
      	<c:forEach items="${peliculas}" var="item">
        	<li data-target="#myCarousel" data-slide-to="${item.getIdPelicula()}"></li>
        </c:forEach>
      </ol>
      <div class="carousel-inner" role="listbox">
      	<c:forEach items="${peliculas}" var="item" varStatus = "status">
	        <div class="item ${status.first ? 'active' : ''}">
	          <img class="first-slide" src="${item.getUrlImagenPrincipal() }" alt="First slide">
	          <div class="container">
	            <div class="carousel-caption">
	              <h1>${item.getNomPelicula() }.</h1>
	              <p>${item.getCategoria() }</p>
	              <p><a class="btn btn-lg btn-primary" href="pelicula?pelicula_id=${item.getIdPelicula()}" role="button">Ver sinopsis</a></p>
	            </div>
	          </div>
	        </div>
	     </c:forEach>
      </div>
      <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
        <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
        <span class="sr-only">Previous</span>
      </a>
      <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
        <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
        <span class="sr-only">Next</span>
      </a>
    </div><!-- /.carousel -->

    <!-- Marketing messaging and featurettes
    ================================================== -->
    <!-- Wrap the rest of the page in another container to center all the content. -->

    <div class="container marketing">

      <!-- START THE FEATURETTES -->

      <c:forEach items="${peliculas}" var="item">

			<div class="row featurette">
		        <div class="col-md-7 col-md-push-5">
		          <h2 class="">${item.getNomPelicula() }</h2>
		          <p class="lead">${item.getSinopsis() }</p>
		          <p><a class="btn btn-lg btn-primary" href="pelicula?pelicula_id=${item.getIdPelicula() }" role="button">Ver sinopsis</a></p>
		          
		        </div>
		        <div class="col-md-5 col-md-pull-7">
		          <img class="featurette-image img-responsive center-block" data-src="${item.getUrlImagenPrincipal() }" src="${item.getUrlImagenPrincipal() }" alt="Generic placeholder image">
		        </div>
		      </div>
		      <hr class="featurette-divider">
		        
		</c:forEach>

<div>

</div>

      <!-- /END THE FEATURETTES -->


      <!-- FOOTER -->
      <footer>
        <p class="pull-right"><a href="#">Back to top</a></p>
        <p>&copy; 2016 Company, Inc. &middot; <a href="#">Privacy</a> &middot; <a href="#">Terms</a></p>
      </footer>

    </div><!-- /.container -->


    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script>window.jQuery || document.write('<script src="../../assets/js/vendor/jquery.min.js"><\/script>')</script>
    <script src="http://getbootstrap.com/docs/3.3/dist/js/bootstrap.min.js"></script>
    <!-- Just to make our placeholder images work. Don't actually copy the next line! -->
    <script src="http://getbootstrap.com/docs/3.3/assets/js/vendor/holder.min.js"></script>
    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <script src="http://getbootstrap.com/docs/3.3/assets/js/ie10-viewport-bug-workaround.js"></script>
  </body>
</html>
