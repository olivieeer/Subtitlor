<%@ include file="/WEB-INF/taglibs.jsp"%>

<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8" />
	<%@ include file="/WEB-INF/inc/stuffs.jsp"%>
<title>Editer les sous-titres</title>
</head>
<body>
	<jsp:include page="/css/style.css" />
	<header>
		<H2 class="text-center">Traduction de fichier de sous titre</H2>
	</header>

<%@ include file="/WEB-INF/inc/navbar.jsp"%>

	<section id="container-fluid">

		<div class="row">
			<div class="col-md-12 col-lg-12">
				<div class="col-md-3 col-lg-3">
					<nav>
						<%@ include file="menu.jsp"%>
					</nav>
				</div>
				<div class="col-md-8 col-lg-8">
					<fieldset>
						<legend>
							<strong>&nbsp;&nbsp;Traduire un fichier&nbsp;&nbsp;</strong>
						</legend>
						<form method="post" name="form" id="form" action="recordSubtitle">
							<input type="submit" class="inputButtonFixedRight"
								style="top: 30%;" value="Sauvegarder" />
							<H3>
								Traduction pour le fichier <strong><span
									style="color: black;"><c:out
											value="${ sessionScope.nomFichier }" /></span></strong>
							</H3>
							<br />
							<table id="tabEdit"
								class="table table-bordered table-striped table-condensed">
								<tr>
									<th class="text-center">Fichier 1 a traduire</th>
									<th class="text-center">Fichier 2 traduit</th>
								</tr>
								<c:forEach items="${ subtitles }" var="line" varStatus="status">
									<tr>
										<c:choose>
											<c:when test="${line.isVide() == false }">
												<td style="text-align: center;"><c:out
														value="${ line.myString() }" /></td>
											</c:when>
											<c:when test="${line.isVide() == true }"></c:when>
											<c:otherwise></c:otherwise>
										</c:choose>
										<c:choose>
											<c:when test="${line.isVide() == true }"></c:when>
											<c:when test="${line.isNumeric() == true }">
												<td style="text-align: center;" name="line${ status.index }"
													id="line${ status.index }"><c:out
														value="${ line.myString() }" /></td>
											</c:when>
											<c:when test="${line.isTimeValues() == true }">
												<td style="text-align: center;" name="line${ status.index }"
													id="line${ status.index }"><c:out
														value="${ line.myString() }" /></td>
											</c:when>
											<c:when test="${line.isNotTranslated() == true }">
												<td><input type="text" name="line${ status.index }"
													id="line${ status.index }" class="vide" /></td>
											</c:when>
											<c:when test="${line.isStringTraduction() == true }">
												<td><input type="text" name="line${ status.index }"
													id="line${ status.index }" class="vide" /></td>
											</c:when>
											<c:otherwise></c:otherwise>
										</c:choose>
									</tr>
								</c:forEach>
							</table>
						</form>
					</fieldset>
				</div>
				<div class="col-md-1 col-lg-1">&nbsp;</div>
			</div>
		</div>
	</section>

</body>
</html>