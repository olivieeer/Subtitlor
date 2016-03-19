<%@ include file="/WEB-INF/taglibs.jsp"%>

<!DOCTYPE html>
<html>
  <head>
     <meta charset="utf-8" />
	<%@ include file="/WEB-INF/inc/stuffs.jsp"%>
  </head>
<jsp:include page="/css/style.css" />
<body>
	<%@ include file="/WEB-INF/inc/navbar.jsp"%>

	<section class="container">
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
							<strong>les fichiers de sous titre .<abbr title="sound Re transcr	">SRT</abbr></strong>
						</legend>
						<blockquote>Un fichier SRT stocke les sous-titres
							incrustés dans une vidéo dans un fichier texte séparé. Les
							sous-titres sont extraits de la vidéo à l'aide de logiciels comme
							SubRip qui fonctionne à la manière d'un OCR (logiciel de
							reconnaissance de caractère) : il "lit" les images et en extrait
							les sous-titres au format texte. Lors de l'extraction, les moments
							où les différents sous-titres s'affichent sont également
							enregistrés dans le fichier. Cela permet de garantir la
							synchronisation des sous-titres avec la vidéo. L'extension de ces
							fichiers est ".srt".</blockquote>
						<article class="articleIndex">
							<div class="col-md-12 col-lg-12" border="1">
								<div class="col-md-offset-3 col-md-5 col-lg-5">
									<img id="imgIndex"
											class="img-rounded image-responsive" href="upload"
											src="http://www.homecine-compare.com/images/lexicon/159/lex-hc-srt.png"
											alt="Illustration du contenu d'un fichier SRT" border="0"
											usemap="#panneaux" title="Contenu d'un fichier SRT" />
								</div>
								<!-- <div class="col-md-7 col-lg-7 " >
									<form method="get" action="upload"
											enctype="multipart/form-data">
											<div class="text-center vertical-center" >
												<button type="submit" class="btn btn-lg btn-primary">Nouvelle
													traduction</button>
											</div>
										</form>
								</div> -->
							</div>
						</article>
						<br />
						<blockquote>SubRip est un logiciel de reconnaissance optique de caractères pour Windows qui extrait les sous-titres 
						et leur synchronisation de vidéos au format DVD. 
						Subrip est aussi le nom du format de fichier associé à ce logiciel. 
						Le fichier de sous-titres est nommé avec l'extension .srt. 
						Ce format est utilisé par la plupart des logiciels de lecture vidéo ainsi que les logiciels d'édition de sous-titres. Aussi, c'est un fichier .txt 
						à l'origine, qui doit être enregistré en remplaçant son extension  .txt  par  .srt .</blockquote>
						<blockquote>
            				Le Tigre (Panthera tigris) est un <a data-toggle="tooltip" href="#" title="Classe de vertébrés">mammifère</a> 
            				carnivore de la famille des félidés (Felidae) du genre Panthera. Aisément reconnaissable à sa fourrure rousse rayée de noir, 
            				il est le plus grand félin sauvage et l'un des plus grands <a data-toggle="tooltip" href="#" title='Synonyme de "carnassier"'>carnivores </a>du monde. L'espèce est divisée en neuf sous-espèces possédant des différences mineures en termes de taille ou de comportement. Superprédateur, il chasse principalement les cerfs et les sangliers, bien qu'il puisse s'attaquer à des proies de taille plus importante comme les buffles. Jusqu'au XIXe siècle, le Tigre était réputé mangeur d'homme. La structure sociale des tigres en fait un animal solitaire ; le mâle possède un territoire qui englobe les domaines de plusieurs femelles et ne participe pas à l'éducation des petits.<br>
            				<small class="pull-right">Wikipedia</small><br>
         					</blockquote>
					</fieldset>
				</div>
				<div class="col-md-2 col-lg-2">&nbsp;</div>
			</div>
		</div>
	</section>

</body>
</html>