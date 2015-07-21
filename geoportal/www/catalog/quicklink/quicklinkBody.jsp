<% // quicklinkBody.jsp - Links page (JSF body) %>
 <!-- Catalog Search Widget -->  
 	
 
 <script type="text/javascript">
/**
Submits from when on enter.
@param event The event variable
@param form The form to be submitted.
**/
$(function() { 
	
	 $('#geoservicios').puipanel();  
});  
 
</script>

<div id="geoservicios" style="margin-bottom:20px; width:800px""  title="Geoservicios disponibles">  
<br>
<B>Listado de Geoservicios WMS</B>
<br>
<br>

<B>Mapa Geológico de Colombia</B>
<br>
<a href="http://srvags.sgc.gov.co/arcgis/services/Mapa_Geologico_Colombia/Mapa_Geologico_Colombia/MapServer/WmsServer" style= "font-size:13px">http://srvags.sgc.gov.co/arcgis/services/Mapa_Geologico_Colombia/Mapa_Geologico_Colombia/MapServer/WmsServer</a>
<br>
<br>

<B>Estaciones con Propósitos Geodinámicas</B>
<br>
<a href="http://srvags.sgc.gov.co/arcgis/services/Estaciones_GNSS/Estaciones_GNSS_SGC_2014/MapServer/WmsServer" style= "font-size:13px">http://srvags.sgc.gov.co/arcgis/services/Estaciones_GNSS/Estaciones_GNSS_SGC_2014/MapServer/WmsServer</a>
<br>
<br>

<B>Estado de la Cartografía Geológica</B>
<br>
<a href="http://srvags.sgc.gov.co/arcgis/services/Estado_Cartografia_Geologica/Estado_Catografia_Geologica/MapServer/WmsServer" style= "font-size:13px">http://srvags.sgc.gov.co/arcgis/services/Estado_Cartografia_Geologica/Estado_Catografia_Geologica/MapServer/WmsServer</a>
<br>
<br>

<B>Información Geomorfodinámica de los Litorales Colombianos</B>
<br>
<a href="http://srvags.sgc.gov.co/arcgis/services/Geomorfodinamica/Geomorfodinamica/MapServer/WmsServer" style= "font-size:13px">http://srvags.sgc.gov.co/arcgis/services/Geomorfodinamica/Geomorfodinamica/MapServer/WmsServer</a>

<br>
<br>

<B>Mapa del Potencial Carbonífero de Colombia</B>
<br>
<a href="http://srvags.sgc.gov.co/arcgis/services/Mapa_Potencial_Carbonifero_Colombia/Mapa_Potencial_Carbonifero_Colombia/MapServer/WmsServer" style= "font-size:13px">http://srvags.sgc.gov.co/arcgis/services/Mapa_Potencial_Carbonifero_Colombia/Mapa_Potencial_Carbonifero_Colombia/MapServer/WmsServer</a>
<br>
<br>

<B>Mapa de Amenaza Sísmica </B>
<br>
<a href="http://srvags.sgc.gov.co/arcgis/services/Amenaza_Sismica/Amenaza_Sismica_Nacional/MapServer/WmsServer" style= "font-size:13px">http://srvags.sgc.gov.co/arcgis/services/Amenaza_Sismica/Amenaza_Sismica_Nacional/MapServer/WmsServer</a>


</div>

 <!-- 
<script type="text/javascript"     src="http://serverapi.arcgisonline.com/jsapi/arcgis/?v=1.3"></script>      
<script type="text/javascript"    src="http://localhost:8080/geoportal/widgets/searchjs.jsp"></script>
 <iframe id="frame" src="http://www.sgc.gov.co"  width="900px"  height="1200px" scrolling="yes" >
 </iframe> 
 <script type="text/javascript">
 function resizeIframe() {
 var height = document.documentElement.clientHeight;
 height += document.getElementById('frame').offsetTop;
 height -= 5; /* whatever you set your body bottom margin/padding to be */        
 document.getElementById('frame').style.height = height +"px";
 document.getElementById('frame').style.width = 900 +"px";};
 document.getElementById('frame').onload = resizeIframe;
 window.onresize = resizeIframe;
 </script>
 -->