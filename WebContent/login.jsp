<%@ include file="/WEB-INF/taglibs.jsp"%>

<!DOCTYPE html>
<html>
<head>
<%@ include file="/WEB-INF/inc/stuffs.jsp"%>
<title>Login</title>
<style>
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
	<jsp:include page="/css/style.css" />


	<%@ include file="/WEB-INF/inc/navbar.jsp"%>

	<section class="container">

		<% pageContext.setAttribute("now", new org.joda.time.DateTime()); %>
		<joda:format value="${now}" style="SM" />
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