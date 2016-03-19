<%@ include file="/WEB-INF/taglibs.jsp"%>

<!DOCTYPE html>
<html>
  <head>
     <meta charset="utf-8" />
     <%@ include file="/WEB-INF/inc/stuffs.jsp"%>
     <title>Rapport d'inventaire</title>
  </head>
  <body>

<jsp:include page="/css/style.css" />

<%@ include file="/WEB-INF/inc/navbar.jsp"%>


<%-- Récupération du document XML. --%>
<c:import url="/WEB-INF/xml/inventaire.xml" var="documentXML" />

<%-- Analyse du document XML récupéré. --%>
<x:parse var="doc" doc="${documentXML}" />

	<div class="container">
		<p><b>Liste de tous les livres :</b></p>
		<div>
		<ul>
		<%-- Parcours du document parsé pour y récupérer chaque nœud "livre". --%>
		<x:forEach var="livre" select="$doc/inventaire/livre">
			<%-- Affichage du titre du livre récupéré. --%>
		    <li><x:out select="$livre/titre" /></li>
		</x:forEach>
		</ul>
		</div>
		
		<p><b>Liste des livres qu'il faut réapprovisionner :</b></p>
		<div>
		<ul>
		<%-- Parcours du document parsé pour y récupérer chaque nœud "livre" 
			dont le contenu du nœud "stock" est inférieur au contenu du nœud
			"minimum". --%>
		<x:forEach var="livre" select="$doc/inventaire/livre[stock < minimum]">
			<%-- Affichage des titres, stocks et minimaux du livre récupéré. --%>
		    <li><x:out select="$livre/titre" /> : <x:out select="$livre/stock" /> livres en stock (limite avant alerte : <x:out select="$livre/minimum" />)</li>
		</x:forEach>
		</ul>
		</div>
		
		<p><b>Liste des livres classés par stock :</b></p>
		<%-- Il faut réfléchir... un peu ! --%>
		<pre>
		Le tri d'une liste, d'un tableau, d'une collection... bref de manière générale le tri de données,
		ne doit pas se faire depuis votre page JSP ! Que ce soit en utilisant les API relatives aux collections, 
		ou via un bean de votre couche métier, ou que sais-je encore, il est toujours préférable que votre tri 
		soit effectué avant d'arriver à votre JSP. La JSP ne doit en principe que récupérer cette collection déjà triée, 
		formater les données pour une mise en page particulière si nécessaire, et seulement les afficher.
		
		C'était un simple piège ici, j'espère que vous avez réfléchi avant de tenter d'implémenter un tri avec
		la JSTL, et que vous comprenez pourquoi cela ne doit pas intervenir à ce niveau ;)
		</pre>
	</div>
  </body>
</html>