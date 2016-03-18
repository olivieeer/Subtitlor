<%@ include file="/WEB-INF/taglibs.jsp"%>

<!DOCTYPE html>
<html>
  <head>
     <meta charset="utf-8" />
	<!--[if lt IE 9]>
	     <script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
	     <![endif]-->
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.0/jquery.min.js"></script>
	<link
		href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css"
		rel="stylesheet"
		integrity="sha256-7s5uDGW3AHqw6xtJmNNtr+OBRJUlgkNJEo78P4b0yRw= sha512-nNo+yCHEyn0smMxSswnf/OnX6/KwJuZTlNZBjauKhTK0c+zT+q5JOCx0UFhXQ6rJR9jg6Es8gPuD2uZcYDLqSw=="
		crossorigin="anonymous">
	<script
		src="https://ajax.googleapis.com/ajax/libs/webfont/1.5.18/webfont.js"
		async></script>
	<link rel="preconnect" href="https://fonts.typonine.com/" crossorigin>
	<!-- <script
		src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.9/angular.min.js"></script> -->
	<title>Login</title>
	<style type="text/css">
	[class*="col"] {
		margin-bottom: 20px;
		border: 2px solid orange;
		border-radius: 6px 6px 6px 6px;
	}
	img {
		width: 100%;
	}
	</style>
</head>
<body>
	<jsp:include page="/css/styleBleu.css" />
	
		<section id="container-fluid">

			<header>
				<H2>CONNEXION</H2>
			</header>

			<form class="form-horizontal col-md-offset-3 col-md-6 well">
				<fieldset>
					<legend>Connexion</legend>

					<div class="form-group">
						<label class="col-md-3 control-label" for="prependedtext">Username</label>
						<div class="col-md-5">
							<div class="input-group">
								<span class="input-group-addon">prepend</span> <input
									id="prependedtext" name="prependedtext" class="form-control"
									placeholder="Ton username" type="text">
							</div>
							<p class="help-block"></p>
						</div>
					</div>

					<div class="form-group">
						<label class="col-md-3 control-label" for="passwordinput">Password</label>
						<div class="col-md-5">
							<input id="passwordinput" name="passwordinput" type="password"
								placeholder="Ton mot de passe" class="form-control input-md">
							<span class="help-block"></span>
						</div>
					</div>

					<div class="form-group">
						<label class="col-md-3 control-label" for="login"></label>
						<div class="col-md-3">
							<button id="login" name="login" class="btn btn-primary">connexion</button>
						</div>
					</div>

				</fieldset>
			</form>

		</section>

</body>
</html>