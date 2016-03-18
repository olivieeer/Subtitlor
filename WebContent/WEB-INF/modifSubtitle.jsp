<%@ include file="/WEB-INF/taglibs.jsp"%>

<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8" />
	<%@ include file="/WEB-INF/stuffs.jsp"%>
<title>modification</title>
</head>
<body>
	<jsp:include page="/css/style.css" />
	<header>
		<H2 align="center" style="text-align: center;">Traduction de
			fichier de sous titre</H2>
	</header>

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
						<c:if test="${ subtitlesHandler.isTraductionFinished() }">
							<form method="post" name="form2" id="form2" action="exporter">
								<input type="submit" class="inputButtonFixedRight"
									style="top: 20%;" value="Exporter" />
							</form>
						</c:if>
						<c:choose>
							<c:when test="${!empty errorDB }">
								<H3 class="errorDB">
									<c:out value="${ errorDB }" />
								</H3>
							</c:when>
							<c:when test="${subtitlesHandler.isTraductionFinished()}">
								<H3>
									Traduction terminée pour le fichier <span style="color: black;"><c:out
											value="${ sessionScope.nomFichier }" /></span>
								</H3>
							</c:when>
							<c:when test="${!subtitlesHandler.isTraductionFinished()}">
								<H3>
									Traduction partielle pour le fichier <span style="color: black;"><c:out
											value="${ sessionScope.nomFichier }" /></span>
								</H3>
							</c:when>
							<c:otherwise>
							</c:otherwise>
						</c:choose>
						<br />
						<form method="post" name="form" id="form" action="modifSubtitle">
							<c:if test="${!subtitlesHandler.isTraductionFinished()}">
								<input type="submit" class="inputButtonFixedRight"
									style="top: 30%;" value="Sauvegarder" />
							</c:if>
							<c:if test="${subtitlesHandler.isTraductionFinished()}">
								<input type="submit" class="inputButtonFixedRight"
									style="top: 30%;" value="Sauvegarder" />
							</c:if>
							<table id="tabModif"
								class="table table-bordered table-striped table-condensed">
								<tr>
									<th>Fichier 1 a traduire</th>
									<th>Fichier 2 traduit</th>
								</tr>
								<c:forEach items="${ doubleSubtitles }" var="line"
									varStatus="status">
									<tr>
										<c:if
											test="${line.customizedstring1().isVide() == false && line.customizedstring1().isVide() == false}">
											<td style="text-align: center;"><c:out
													value="${ line.customizedstring1().myString() }" /></td>
											<c:choose>
												<c:when
													test="${line.customizedstring2().isNumeric() == true}">
													<td style="text-align: center;"><c:out
															value="${ line.customizedstring2().myString() }" /></td>
												</c:when>
												<c:when
													test="${line.customizedstring2().isTimeValues() == true}">
													<td style="text-align: center;"><c:out
															value="${ line.customizedstring2().myString() }" /></td>
												</c:when>
												<c:when
													test="${line.customizedstring2().isPasRemplie() == true}">
													<td><input type="text" class="vide"
														name="line${ status.index }" size="60px"
														id="line${ status.index }" value="" />
												</c:when>
												<c:when
													test="${line.customizedstring2().isTranslated() == true}">
													<td><input type="text" class="translatedLine2"
														size="60px" name="line${ status.index }"
														id="line${ status.index }"
														value="<c:out value="${ line.customizedstring2().myString() }"/>" /></td>
												</c:when>
												<c:when test="${line.customizedstring2().isVide() == false }">
													<td><input type="text" class="translatedLine"
														name="line${ status.index }" size="60px"
														id="line${ status.index }"
														value="<c:out value="${ line.customizedstring2().myString() }"/>" /></td>
												</c:when>
												<c:otherwise></c:otherwise>
											</c:choose>
										</c:if>
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