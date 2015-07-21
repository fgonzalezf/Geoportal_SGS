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
<% // example.jsp - Provides examples for the catalog search widget %>
<%@page language="java" contentType="text/html; charset=UTF-8" session="false"%>
<%@taglib prefix="f" uri="http://java.sun.com/jsf/core"%>
<%@taglib prefix="h" uri="http://java.sun.com/jsf/html"%>
<%
  String basePath = com.esri.gpt.framework.context.RequestContext.resolveBaseContextPath(request);
  String searchjsUrl = basePath+"/widgets/searchjs.jsp";
  String searchFlexUrl = basePath + "/widgets/FlexExample/index.html";
  String searchSilverLightUrl = basePath + "/widgets/SilverlightExample/Index.html";
%>
<f:verbatim>

<script type="text/javascript">
/**
Submits from when on enter.
@param event The event variable
@param form The form to be submitted.
**/
$(function() { 
	
	$('#multiple').puiaccordion({multiple:true});  
	
});  
 
</script>
 

</f:verbatim>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; UTF-8">
</head>
<body>


 <div id="multiple">  
    <h3>Geología</h3>  
    <div>  
        <a id="a1" href="http://srvags.sgc.gov.co/Flexviewer/Geomorfodinamica/" target="_blank">Información Geomorfodinámica de los Litorales Colombianos</a><br><br>
        <a id="a1" href="http://aplicaciones7.sgc.gov.co/ESTADO_CARTOGRAFIA_MAYO20/default.aspx" target="_blank">Estado Cartográfia Geológica</a><br><br>
        <a id="a1" href="http://aplicaciones7.sgc.gov.co/MapaGeologicoMGC/default.aspx" target="_blank">Mapa Geológico de colombia</a>
    </div>  
  
    <h3>Recursos</h3>  
    <div>  
       <a id="a1" href="http://srvags.sgc.gov.co/Flexviewer/Anomalia_Geoquimica/" target="_blank">Mapa Anomalia Geoquímica</a><br><br> 
       <a id="a1" href="http://aplicaciones7.sgc.gov.co/facetas/" target="_blank">Puntos de Muestreo Geoquímico</a><br><br> 
    </div>  
  
    <h3>Amenazas</h3>  
    <div>  
    	<a id="a1" href="http://aplicaciones7.sgc.gov.co/MÁPA_NACIONAL_AMENAZA_SISMICA/default.aspx" target="_blank">Mapa de Amenaza Sísmica</a><br><br>
    	<a id="a1" href="http://zafiro.sgc.gov.co/simma/default.aspx" target="_blank">Movimientos por Remoción en Masa</a><br><br>
    	<a id="a1" href="http://agata.ingeominas.gov.co:9090/SismicidadHistorica/" target="_blank">Sismicidad Histórica de Colombia</a>    
    </div>      
</div>  

<!--  
<p>Copy the following lines and paste into an html page at the point within 
the html body where you want the widget to appear.</p>
<p><b>NOTE:</b> If your html page already includes ArcGIS Javascript API, you don't need to copy the javascript api reference part in the below example. <br/>If you have dojo javascript library reference in your html page, please be aware of that dojo libarary referenced in ArcGIS Javascript API may cause a potential conflict with your dojo reference.</p>
-->

<!-- Catalog Search Widget -->
<!-- 
<textarea cols="110" rows="4"> 
<script type="text/javascript" src="http://serverapi.arcgisonline.com/jsapi/arcgis/?v=2.5"></script>
<script type="text/javascript" src="<%=searchjsUrl%>"></script>
</textarea>
-->
<br/>
<script type="text/javascript" src="http://serverapi.arcgisonline.com/jsapi/arcgis/?v=2.5"></script>
<script type="text/javascript" src="<%=searchjsUrl%>"></script>
<br/>

</body>
</html>
