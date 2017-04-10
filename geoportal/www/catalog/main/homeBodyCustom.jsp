<%--
 See the NOTICE file distributed with
 this work for additional information regarding copyright ownership.
 Esri Inc. licenses this file to You under the Apache License, Version 2.0
 (the "License"); you may not use this file except in compliance with
 the License.  You may obtain a copy of the License at

     http://www.apache.org/licenses/LICENSE-2.0

 Unless required by applicable law or agreed to in writing, software
 distributed under the License is distributed on an "AS IS" BASIS,
 WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 See the License for the specific language governing permissions and
 limitations under the License.
--%>
<% // homeBody.jsp - Home page (JSF body) %>
<%@taglib prefix="f" uri="http://java.sun.com/jsf/core"%>
<%@taglib prefix="h" uri="http://java.sun.com/jsf/html"%>
<script>
  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','//www.google-analytics.com/analytics.js','ga');
  
  ga('create', 'UA-58653230-1', 'auto');
  
  ga('send', 'pageview');
</script>
<%
int var=0;
String sep = System.getProperty("file.separator");
try
{
	com.esri.gpt.contador.ContadorVisitas obj = new com.esri.gpt.contador.ContadorVisitas();
	var=obj.leerArchivo(System.getProperty("catalina.home")+sep+"webapps"+request.getContextPath()+sep+"catalog"+sep+"main"+sep+"contador.txt");
	var=var+1; 
	String var2=String.valueOf(var); 
	obj.escribirArchivo(var2,System.getProperty("catalina.home")+sep+"webapps"+request.getContextPath()+sep+"catalog"+sep+"main"+sep+"contador.txt"); 
}
catch(Exception ex)
{

}
%>

<f:verbatim>

<script type="text/javascript">
/**
Submits from when on enter.
@param event The event variable
@param form The form to be submitted.
**/


$(function() { 
$('#accordion').puiaccordion();
$('#Atlas_Geologico').click(function() { 
	urlf='${pageContext.request.contextPath}'+"/catalog/main/contador.jsp";
	var valor="1";
	$.ajax({ //Comunicaci�n jQuery hacia JSP
		
      	type: "POST",
        url:urlf,
        data: "valor="+valor,
        
     });


});
$('#Geomorfodinamica').click(function() { 
	urlf='${pageContext.request.contextPath}'+"/catalog/main/contador.jsp";
	var valor="2";
	$.ajax({ //Comunicaci�n jQuery hacia JSP
		
      	type: "POST",
        url:urlf,
        data: "valor="+valor,
        
     });
});
$('#Estado_Cartografia').click(function() { 
	urlf='${pageContext.request.contextPath}'+"/catalog/main/contador.jsp";
	var valor="3";
	$.ajax({ //Comunicaci�n jQuery hacia JSP
		
      	type: "POST",
        url:urlf,
        data: "valor="+valor,
        
     });
});
$('#AmenazaSismica').click(function() { 
	urlf='${pageContext.request.contextPath}'+"/catalog/main/contador.jsp";
	var valor="4";
	$.ajax({ //Comunicaci�n jQuery hacia JSP
		
      	type: "POST",
        url:urlf,
        data: "valor="+valor,
        
     });
});
$('#Mapa_Geologico').click(function() { 
	urlf='${pageContext.request.contextPath}'+"/catalog/main/contador.jsp";
	var valor="5";
	$.ajax({ //Comunicaci�n jQuery hacia JSP
		
      	type: "POST",
        url:urlf,
        data: "valor="+valor,
        
     });
});
$('#Mapa_Potencial_Carbonifero').click(function() { 
	urlf='${pageContext.request.contextPath}'+"/catalog/main/contador.jsp";
	var valor="6";
	$.ajax({ //Comunicaci�n jQuery hacia JSP
		
      	type: "POST",
        url:urlf,
        data: "valor="+valor,
        
     });
});
$('#Amenaza_Movimiento_Remocion_Masa').click(function() { 
	urlf='${pageContext.request.contextPath}'+"/catalog/main/contador.jsp";
	var valor="7";
	$.ajax({ //Comunicaci�n jQuery hacia JSP
		
      	type: "POST",
        url:urlf,
        data: "valor="+valor,
        
     });
});
$('#PEXAS').click(function() { 
	urlf='${pageContext.request.contextPath}'+"/catalog/main/contador.jsp";
	var valor="8";
	$.ajax({ //Comunicaci�n jQuery hacia JSP
		
      	type: "POST",
        url:urlf,
        data: "valor="+valor,
        
     });
});
$('#Estaciones_GNSS').click(function() { 
	urlf='${pageContext.request.contextPath}'+"/catalog/main/contador.jsp";
	var valor="9";
	$.ajax({ //Comunicaci�n jQuery hacia JSP
		
      	type: "POST",
        url:urlf,
        data: "valor="+valor,
        
     });
});
$('#Geofisica').click(function() { 
	urlf='${pageContext.request.contextPath}'+"/catalog/main/contador.jsp";
	var valor="10";
	$.ajax({ //Comunicaci�n jQuery hacia JSP
		
      	type: "POST",
        url:urlf,
        data: "valor="+valor,
        
     });
});
$('#Metadato_Geografico').click(function() { 
	urlf='${pageContext.request.contextPath}'+"/catalog/main/contador.jsp";
	var valor="11";
	$.ajax({ //Comunicaci�n jQuery hacia JSP
		
      	type: "POST",
        url:urlf,
        data: "valor="+valor,
        
     });
});
$('#images').puigalleria({ 
	customContent: true,  
    panelWidth: 800,  
    panelHeight: 340,
    frameWidth: 100,  
    frameHeight: 60,
    showCaption: false,  
});   
$('#noticias').puipanel();    
$('#actualizaciones').puipanel();  
});  
 
</script>

</f:verbatim>
 
<f:verbatim>
<p>&nbsp;</p>
</f:verbatim>
<h:outputText escape="false" styleClass="prompt" value="#{gptMsg['catalog.main.home.prompt']}"/>
<br>
<div id="images">  
 
        <ul> 
        <li>
        <div class="galleria">
        		Visor Atlas Geol�gico de Colombia 2007
        </div>  
        <img src=<%=request.getContextPath()+"/catalog/skins/themes/green/images/sliderImagines/Atlas.jpg"%> alt="Visor Atlas Geol�gico de Colombia 2007"  title="Mapa Atlas Geol�gico de Colombia 2007 "/>      
        <a href="http://srvags.sgc.gov.co/Flexviewer/Atlas_Geologico_Colombia/" target="_blank" id="Atlas_Geologico">
        <img src=<%=request.getContextPath()+"/catalog/skins/themes/green/images/sliderImagines/Atlas.jpg"%> />
        </a>           
        </li> 
        
        <li>
        <div class="galleria">
        		Visor Atlas Geol�gico de Colombia 2015
        </div>  
        <img src=<%=request.getContextPath()+"/catalog/skins/themes/green/images/sliderImagines/Atlas_Geologico_2015.jpg"%> alt="Visor Atlas Geol�gico de Colombia 2015"  title="Mapa Atlas Geol�gico de Colombia 2015 "/>      
        <a href="http://srvags.sgc.gov.co/JSViewer/Atlas_Geologico_colombiano_2015/" target="_blank" id="Atlas_Geologico_2015">
        <img src=<%=request.getContextPath()+"/catalog/skins/themes/green/images/sliderImagines/Atlas_Geologico_2015.jpg"%> />
        </a>           
        </li> 
        
        <li>
        <div class="galleria">
        		Visor de Mapa Informaci�n Geomorfodin�mica
        </div>  
        <img src=<%=request.getContextPath()+"/catalog/skins/themes/green/images/sliderImagines/Geomorfodinamica.JPG"%> alt="Visor de Mapa Informaci�n Geomorfodin�mica"  title="Mapa Informaci�n Geomorfodin�mica"/>      
        <a href="http://srvags.sgc.gov.co/Flexviewer/Geomorfodinamica/" target="_blank" id="Geomorfodinamica">
        <img src=<%=request.getContextPath()+"/catalog/skins/themes/green/images/sliderImagines/Geomorfodinamica.JPG"%> />
        </a>           
        </li>
         <li>
         <div class="galleria">
         Estado de la Cartograf�a Geol�gica de Colombia
        </div>  
        <a href="http://srvags.sgc.gov.co/Flexviewer/Estado_Cartografia_Geologica/" target="_blank" id="Estado_Cartografia">
         <img src=<%=request.getContextPath()+"/catalog/skins/themes/green/images/sliderImagines/Estado_Cartografia_Geologica.JPG"%> alt="Estado de la Cartograf�a Geol�gica de Colombia" title="Cartograf�a Geol�gica de Colombia"/>
        </a>
        <img src=<%=request.getContextPath()+"/catalog/skins/themes/green/images/sliderImagines/Estado_Cartografia_Geologica.JPG"%> alt="Estado de la Cartograf�a Geol�gica de Colombia" title="Cartograf�a Geol�gica de Colombia"/>
        </li>  
        <li>
        <div class="galleria">
         Visor de Mapa Amenaza S�smica
        </div>  
        <a href="http://srvags.sgc.gov.co/JSViewer/Amenaza_Sismica/"  target="_blank" id="AmenazaSismica">
       <img src=<%=request.getContextPath()+"/catalog/skins/themes/green/images/sliderImagines/AmenazaSismica.JPG"%> alt="Visor de Mapa Amenaza Sismica" title="Mapa Amenaza S�smica"/>
        </a>
        <img src=<%=request.getContextPath()+"/catalog/skins/themes/green/images/sliderImagines/AmenazaSismica.JPG"%> alt="Visor de Mapa Amenaza Sismica" title="Mapa Amenaza S�smica"/>
        </li>  
        <li>
        <div class="galleria">
        		Visor de Mapa Geol�gico de Colombia
        </div>  
        <a href="http://srvags.sgc.gov.co/Flexviewer/Mapa_Geologico_Colombia/" target="_blank" id="Mapa_Geologico">
        <img src=<%=request.getContextPath()+"/catalog/skins/themes/green/images/sliderImagines/MapaGeologico.JPG"%> alt="Mapa Geologico de Colombia" title="Mapa Geologico de Colombia"/>
        </a>
        <img src=<%=request.getContextPath()+"/catalog/skins/themes/green/images/sliderImagines/MapaGeologico.JPG"%> alt="Mapa Geologico de Colombia" title="Mapa Geologico de Colombia"/>
        </li>
        <!--   
        <li>
        <div class="galleria">
        		Visor Mapa zonas Potencial Ge�quimico.
        </div>  
        <a href="http://srvags.sgc.gov.co/Flexviewer/Zonas_Potencial_Integral/" target="_blank">
        <img src=<%=request.getContextPath()+"/catalog/skins/themes/green/images/sliderImagines/ZonasPotenciales.JPG"%> alt="Visor Mapa zonas Potencial Ge�quimico" title="Mapa zonas Potencial Ge�quimico"/>
        </a>
        <img src=<%=request.getContextPath()+"/catalog/skins/themes/green/images/sliderImagines/ZonasPotenciales.JPG"%> alt="Visor Mapa zonas Potencial Ge�quimico" title="Mapa zonas Potencial Ge�quimico"/>
        </li>
          
        <li>
        <div class="galleria">
        		Visor Mapa Muestreo Geoqu�mico.
        </div>  
        <a href="http://aplicaciones7.sgc.gov.co/facetas/" target="_blank">
        <img src=<%=request.getContextPath()+"/catalog/skins/themes/green/images/sliderImagines/PuntosMuestreoGeoquimico.JPG"%> alt="Visor Mapa Muestreo Geoqu�mico" title="Visor Mapa Muestreo Geoqu�mico"/>
        </a>
        <img src=<%=request.getContextPath()+"/catalog/skins/themes/green/images/sliderImagines/PuntosMuestreoGeoquimico.JPG"%> alt="Visor Mapa Muestreo Geoqu�mico" title="Visor Mapa Muestreo Geoqu�mico"/>
        </li> 
         -->
        <li>
        <div class="galleria">
        		Visor Mapa Potencial carbon�fero
        </div>  
        <a href="http://srvags.sgc.gov.co/Flexviewer/Mapa_Potencial_Carbonifero_Colombia/" target="_blank" id="Mapa_Potencial_Carbonifero">
        <img src=<%=request.getContextPath()+"/catalog/skins/themes/green/images/sliderImagines/PotencialCarbonifero.jpg"%> alt="Visor Mapa Carbonifero de Colombia" title="Visor Mapa Carbonifero de Colombia"/>
        </a>
        <img src=<%=request.getContextPath()+"/catalog/skins/themes/green/images/sliderImagines/PotencialCarbonifero.jpg"%> alt="Visor Mapa Carbonifero de Colombia" title="Visor Mapa Carbonifero de Colombia"/>
        </li> 
        
        <li>
        <div class="galleria">
        		Visor Mapa de Amenaza por Movimientos en Masa
        </div>  
        <a href="http://geoportal.sgc.gov.co/Flexviewer/Amenaza_Movimiento_Remocion_Masa/" target="_blank" id="Amenaza_Movimiento_Remocion_Masa">
        <img src=<%=request.getContextPath()+"/catalog/skins/themes/green/images/sliderImagines/Amenaza_Por_Movimientos_Masa.jpg"%> alt="Visor Mapa de Amenaza por Movimientos en Masa" title="Visor Mapa de Amenaza por Movimientos en Masa"/>
        </a>
        <img src=<%=request.getContextPath()+"/catalog/skins/themes/green/images/sliderImagines/Amenaza_Por_Movimientos_Masa.jpg"%> alt="Visor Mapa de Amenaza por Movimientos en Masa" title="Visor Mapa de Amenaza por Movimientos en Masa"/>
        </li> 
        
        <li>
        <div class="galleria">
        		Visor Mapa de Amenaza Volc�nica
        </div>  
        <a href="http://srvags.sgc.gov.co/JSViewer/Amenaza_volcanica_JS/" target="_blank" id="Amenaza_Volcanica">
        <img src=<%=request.getContextPath()+"/catalog/skins/themes/green/images/sliderImagines/AmenazaVolcanica.jpg"%> alt="Visor Mapa de Amenaza Volc�nica" title="Visor Mapa Amenaza Volc�nica"/>
        </a>
        <img src=<%=request.getContextPath()+"/catalog/skins/themes/green/images/sliderImagines/AmenazaVolcanica.jpg"%> alt="Visor Mapa de Amenaza Volc�nica" title="Visor Mapa de Amenaza Volc�nica"/>
        </li> 
        
        <li>
        <div class="galleria">
        		Visor Mapa Programa de Exploraci�n de Aguas Subterr�neas 2005
        </div>  
        <a href="http://geoportal.sgc.gov.co/Flexviewer/PEXAS/" target="_blank" id="PEXAS">
        <img src=<%=request.getContextPath()+"/catalog/skins/themes/green/images/sliderImagines/PEXAS.jpg"%> alt="Visor Mapa Programa de Exploraci�n de Aguas Subterr�neas 2005" title="Visor Mapa Programa de Exploraci�n de Aguas Subterr�neas 2005"/>
        </a>
        <img src=<%=request.getContextPath()+"/catalog/skins/themes/green/images/sliderImagines/PEXAS.jpg"%> alt="Visor Mapa Programa de Exploraci�n de Aguas Subterr�neas 2005" title="Visor Mapa Programa de Exploraci�n de Aguas Subterr�neas 2005"/>
        </li>   
        
        <li>
        <div class="galleria">
        		Visor Mapa Estaciones GNSS del SGC 2016
        </div>  
        <a href="http://geoportal.sgc.gov.co/Flexviewer/Estaciones_GNSS/" target="_blank" id="Estaciones_GNSS">
        <img src=<%=request.getContextPath()+"/catalog/skins/themes/green/images/sliderImagines/Estaciones_GNSS.jpg"%> alt="Visor Mapa Estaciones GNSS del SGC 2014" title="Visor Mapa Estaciones GNSS del SGC 2014"/>
        </a>
        <img src=<%=request.getContextPath()+"/catalog/skins/themes/green/images/sliderImagines/Estaciones_GNSS.jpg"%> alt="Visor Mapa Estaciones GNSS del SGC 2014" title="Visor Mapa Estaciones GNSS del SGC 2014"/>
        </li>  
        
        <li>
        <div class="galleria">
        		Visor Mapa Datos de M�todos Geof�sicos
        </div>  
        <a href="http://geoportal.sgc.gov.co/Flexviewer/Geofisica/" target="_blank" id="Geofisica">
        <img src=<%=request.getContextPath()+"/catalog/skins/themes/green/images/sliderImagines/Geofisica.jpg"%> alt="Visor Mapa Datos de M�todos Geof�sicos" title="Visor Mapa Datos de M�todos Geof�sicos"/>
        </a>
        <img src=<%=request.getContextPath()+"/catalog/skins/themes/green/images/sliderImagines/Geofisica.jpg"%> alt="Visor Mapa Datos de M�todos Geof�sicos" title="Visor Mapa Datos de M�todos Geof�sicos"/>
        </li> 
        
         <li>
        <div class="galleria">
        		Visor Mapa Metadato Geogr�fico
        </div>  
        <a href="http://geoportal.sgc.gov.co/Flexviewer/Metadato_Geografico/" target="_blank" id="Metadato_Geografico">
        <img src=<%=request.getContextPath()+"/catalog/skins/themes/green/images/sliderImagines/Metadato_Geografico.jpg"%> alt="Visor Mapa Metadato Geogr�fico" title="Visor Mapa Metadato Geogr�fico"/>
        </a>
        <img src=<%=request.getContextPath()+"/catalog/skins/themes/green/images/sliderImagines/Metadato_Geografico.jpg"%> alt="Visor Mapa Metadato Geogr�fico" title="Visor Mapa Metadato Geogr�fico"/>
        </li> 
        
         <li>
        <div class="galleria">
        		Visor Mapa Inventario de Muestras Litoteca
        </div>  
        <a href="http://geoportal.sgc.gov.co/Flexviewer/Mapa_Inventario_Muestras_Litoteca/" target="_blank" id="Litoteca">
        <img src=<%=request.getContextPath()+"/catalog/skins/themes/green/images/sliderImagines/Litoteca.jpg"%> alt="Visor Mapa Inventario de Muestras Litoteca" title="Visor Mapa Inventario de Muestras Litoteca"/>
        </a>
        <img src=<%=request.getContextPath()+"/catalog/skins/themes/green/images/sliderImagines/Litoteca.jpg"%> alt="Visor Mapa Inventario de Muestras Litoteca" title="Visor Mapa Inventario de Muestras Litoteca"/>
        </li> 
        
        
        <li>
        <div class="galleria">
        		Inventario Nacional de Manifestaciones Hidrotermales
        </div> 
        <a href="http://hidrotermales.sgc.gov.co/invtermales/" target="_blank" id="Hidrotermales">
        <img src=<%=request.getContextPath()+"/catalog/skins/themes/green/images/sliderImagines/Hidrotermales.jpg"%> alt="Inventario Nacional de Manifestaciones Hidrotermales" title="Inventario Nacional de Manifestaciones Hidrotermales"/>
        </a>
        <img src=<%=request.getContextPath()+"/catalog/skins/themes/green/images/sliderImagines/Hidrotermales.jpg"%> alt="Inventario Nacional de Manifestaciones Hidrotermales" title="Inventario Nacional de Manifestaciones Hidrotermales"/>
        </li>
        
        <li>
        <div class="galleria">
        		Visor Mapas S�smicos
        </div> 
        <a href="http://srvags.sgc.gov.co/JSViewer/Amenaza_Sismica/" target="_blank" id="MapasSismicos">
        <img src=<%=request.getContextPath()+"/catalog/skins/themes/green/images/sliderImagines/Mapas_Sismicos.jpg"%> alt="Visor Mapas S�smicos" title="Visor Mapas S�smicos"/>
        </a>
        <img src=<%=request.getContextPath()+"/catalog/skins/themes/green/images/sliderImagines/Mapas_Sismicos.jpg"%> alt="Visor Mapas S�smicos" title="Visor Mapas S�smicos"/>
        </li>
        
        
        
        
         
         </div> 
    </ul> 
</div>  
<br>
<!--
<div id="accordion"> 
    <h3>Noticias</h3> 
    <div> 
        Geoportal del Servicio Geol�gico Colombiano
    </div> 
   
    <h3>Actualizaciones</h3> 
    <div> 
       Actualizado el visor de Geomorfodinamica.
    </div>  
    <h3>Busqueda De Informaci�n</h3> 
    <div> 
    <br>
    <div id="BusquedaHome">
       <h:form>
					<h:inputText id="itxFilterKeywordText" 
					  onkeypress="if (event.keyCode == 13) return false;"
					  value="#{SearchFilterKeyword.searchText}" maxlength="400" style="width: 240px" />
					
					<h:commandButton id="btnDoSearch"
					  value="#{gptMsg['catalog.search.search.btnSearch']}"
					  action="#{SearchController.getNavigationOutcome}"
					  actionListener="#{SearchController.processAction}"
					  onkeypress="if (event.keyCode == 13) return false;">
					  <f:attribute name="#{SearchController.searchEvent.event}"
					    	value="#{SearchController.searchEvent.eventExecuteSearch}" />
					</h:commandButton>
 		</h:form >
 	</div>
 	<br>
 	<br>
 	Busque informaci�n Espacial alojada en nuestro sitio.
    </div>   
</div> 
-->

<!--
<br>
<div id="bloqueNoticias">
<br>
<div id="noticias" style="margin-bottom:20px; width: 98%; text-align: justify" title="Noticias" >  
   El mapa "Estado de la cartograf�a geol�gica" muestra la informaci�n de las planchas geol�gicas a escala 1:100.000 en Datum Bogot� y algunas en Magna Sirgas y el estado del sistema de referencia en que se encuentran las planchas Geol�gicas mediante la activaci�n de las capas de informaci�n incluidas en el servicio.
</div>
<br>  
<div id="actualizaciones" style="margin-bottom:20px; width: 98%;text-align: justify" title="Actualizaciones ">  
    <br>
    Actualizaciones
    <br>
    <br>
    <br>
    
    <br>
    <br>
    <br>
    
</div>  
</div>
-->
<!--  
    <div id="Busqueda2" >
    
       <h:form>
					<h:inputText id="itxFilterKeywordText" 
					  onkeypress="if (event.keyCode == 13) return false;"
					  value="#{SearchFilterKeyword.searchText}" maxlength="400" style="width: 240px" />
					
					<h:commandButton id="btnDoSearch"
					  value="#{gptMsg['catalog.search.search.btnSearch']}"
					  action="#{SearchController.getNavigationOutcome}"
					  actionListener="#{SearchController.processAction}"
					  onkeypress="if (event.keyCode == 13) return false;">
					  <f:attribute name="#{SearchController.searchEvent.event}"
					    	value="#{SearchController.searchEvent.eventExecuteSearch}" />
					</h:commandButton>
 		</h:form >
    </div>
-->	
<f:verbatim>

<!-- more content here -->

</f:verbatim>