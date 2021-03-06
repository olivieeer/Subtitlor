<%@ include file="/WEB-INF/taglibs.jsp"%>
<%-- <%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="UTF-8"%> --%>
<%@ page pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<!-- <meta http-equiv="Content-Type" content="text/html; charset=utf-8;" /> -->
<meta charset="utf-8" />
<!--[if lt IE 9]>
     <script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
     <![endif]-->
<link
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha256-7s5uDGW3AHqw6xtJmNNtr+OBRJUlgkNJEo78P4b0yRw= sha512-nNo+yCHEyn0smMxSswnf/OnX6/KwJuZTlNZBjauKhTK0c+zT+q5JOCx0UFhXQ6rJR9jg6Es8gPuD2uZcYDLqSw=="
	crossorigin="anonymous">
<title>Bienvenue</title>
</head>
<jsp:include page="/css/style.css" />
<body>

	<header>
		<H2>Traduction de fichier de sous titre</H2>
	</header>

	<section id="container-fluid">

		<div class="row">
			<div class="col-md-12 col-lg-12">
				<div class="col-md-3 col-lg-3 text-center">
					<nav>
						<%@ include file="/WEB-INF/menu.jsp"%>
					</nav>
				</div>
				<div class="col-md-7 col-lg-7">
					<fieldset class="fieldsetIndex">
						<legend>
							<strong>les fichiers de sous titre .SRT</strong>
						</legend>
						<P class="padding">Un fichier SRT stocke les sous-titres
							incrustés dans une vidéo dans un fichier texte séparé. Les
							sous-titres sont extraits de la vidéo à l'aide de logiciels comme
							SubRip qui fonctionne à la manière d'un OCR (logiciel de
							reconnaissance de caractère) : il "lit" les images et en extrait
							les sous-titres au format texte. Lors de l'extraction, les moments
							où les différents sous-titres s'affichent sont également
							enregistrés dans le fichier. Cela permet de garantir la
							synchronisation des sous-titres avec la vidéo. L'extension de ces
							fichiers est ".srt".</P>
						<article class="articleIndex">
							<div class="col-md-12 col-lg-12" border="1">
								<div class="col-md-5 col-lg-5">
									<img id="imgIndex"
											class="img-rounded image-responsive" href="upload"
											src="http://www.homecine-compare.com/images/lexicon/159/lex-hc-srt.png"
											alt="Illustration du contenu d'un fichier SRT" border="0"
											usemap="#panneaux" title="Contenu d'un fichier SRT" />
								</div>
								<div class="col-md-7 col-lg-7 " >
									<form method="get" action="upload"
											enctype="multipart/form-data">
											<div class="text-center vertical-center" >
												<button type="submit" class="btn btn-lg btn-primary">Nouvelle
													traduction</button>
											</div>
										</form>
								</div>
							</div>
							
							<!-- <table style="width: 100%;">
								<tr>
									<td style="width: 35%;"><img id="imgIndex"
											class="img-rounded image-responsive" href="upload"
											src="http://www.homecine-compare.com/images/lexicon/159/lex-hc-srt.png"
											alt="Illustration du contenu d'un fichier SRT" border="0"
											usemap="#panneaux" title="Contenu d'un fichier SRT" />
									</td>
									<td style="align: center; width: 65%; background-color:#aec3e0;">
										<form method="get" action="upload"
											enctype="multipart/form-data">
											<input type="submit" class="gobutton btn btn-success" value="Nouvelle traduction"/>
											<div class="text-center">
												<button type="submit" class="btn btn-lg btn-primary">Nouvelle
													traduction</button>
											</div>
										</form>
									</td>
								</tr>
							</table> -->
						</article>
						<br />
						<P class="padding">Les fichiers SRT sont notamment utilisés
							pour stocker les sous-titres présents sur les DVD. Ils peuvent
							ensuite être utilisés avec des vidéos dans d'autres formats (DivX,
							etc.). Le format SRT est pris en charge par certains lecteurs DVD
							/ Blu-ray, home cinéma, disques durs multimédia, baladeurs
							multimédia, etc. Généralement, pour que les sous-titres SRT soient
							pris en charge par les périphériques compatibles, il est
							nécessaire qu'ils soient nommés de la même façon que le fichier
							vidéo. Par exemple : "Video_1.avi" et "Video_1.srt". Mots clés :
							DivX, Multimédia, Passerelle, Sous-titres</P>
					</fieldset>
				</div>
				<div class="col-md-2 col-lg-2">&nbsp;</div>
			</div>
		</div>
	</section>

</body>
</html>