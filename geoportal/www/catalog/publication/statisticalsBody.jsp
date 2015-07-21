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
<% // selectOperationBody.jsp - Selects operation () (tiles definition) %>
<%@ taglib prefix="f" uri="http://java.sun.com/jsf/core" %>
<%@ taglib prefix="h" uri="http://java.sun.com/jsf/html" %>

<h:form id="frmStatisticals" styleClass="fixedWidth">

<% // prompt %>
<h:outputText escape="false" styleClass="prompt"
  value="#{gptMsg['catalog.publication.addMetadata.statisticals']}"/>
<% // input table %>
              <%
	          	com.esri.gpt.contador.ContadorVisitas obj = new com.esri.gpt.contador.ContadorVisitas();
	          	String sep = System.getProperty("file.separator");
	          	int var=obj.leerArchivo(System.getProperty("catalina.home")+sep+"webapps"+request.getContextPath()+sep+"catalog"+sep+"main"+sep+"contador.txt");          
	          	String Home=String.valueOf(var); 
	          	var=obj.leerArchivo(System.getProperty("catalina.home")+sep+"webapps"+request.getContextPath()+sep+"catalog"+sep+"main"+sep+"contador_Atlas_Geologico.txt");
	          	String Atlas_Geologico=String.valueOf(var); 
	          	var=obj.leerArchivo(System.getProperty("catalina.home")+sep+"webapps"+request.getContextPath()+sep+"catalog"+sep+"main"+sep+"contador_Geomorfodinamica.txt");
	          	String Geomorfodinamica=String.valueOf(var); 
	          	var=obj.leerArchivo(System.getProperty("catalina.home")+sep+"webapps"+request.getContextPath()+sep+"catalog"+sep+"main"+sep+"contador_Estado_Cartografia.txt");
	          	String Estado_Cartografia=String.valueOf(var); 
	          	var=obj.leerArchivo(System.getProperty("catalina.home")+sep+"webapps"+request.getContextPath()+sep+"catalog"+sep+"main"+sep+"contador_AmenazaSismica.txt");
	          	String AmenazaSismica=String.valueOf(var); 
	          	var=obj.leerArchivo(System.getProperty("catalina.home")+sep+"webapps"+request.getContextPath()+sep+"catalog"+sep+"main"+sep+"contador_Mapa_Geologico.txt");
	          	String Mapa_Geologico=String.valueOf(var); 
	          	var=obj.leerArchivo(System.getProperty("catalina.home")+sep+"webapps"+request.getContextPath()+sep+"catalog"+sep+"main"+sep+"contador_Mapa_Potencial_Carbonifero.txt");
	          	String Mapa_Potencial_Carbonifero=String.valueOf(var); 
	          	var=obj.leerArchivo(System.getProperty("catalina.home")+sep+"webapps"+request.getContextPath()+sep+"catalog"+sep+"main"+sep+"contador_Amenaza_Movimiento_Remocion_Masa.txt");
	          	String Amenaza_Movimiento_Remocion_Masa=String.valueOf(var); 
	          	var=obj.leerArchivo(System.getProperty("catalina.home")+sep+"webapps"+request.getContextPath()+sep+"catalog"+sep+"main"+sep+"contador_PEXAS.txt");
	          	String PEXAS=String.valueOf(var); 
	          	var=obj.leerArchivo(System.getProperty("catalina.home")+sep+"webapps"+request.getContextPath()+sep+"catalog"+sep+"main"+sep+"contador_Estaciones_GNSS.txt");
	          	String Estaciones_GNSS=String.valueOf(var); 
	          	var=obj.leerArchivo(System.getProperty("catalina.home")+sep+"webapps"+request.getContextPath()+sep+"catalog"+sep+"main"+sep+"contador_Geofisica.txt");
	          	String Geofisica=String.valueOf(var); 
	          	var=obj.leerArchivo(System.getProperty("catalina.home")+sep+"webapps"+request.getContextPath()+sep+"catalog"+sep+"main"+sep+"contador_Metadato_Geografico.txt");
	          	String Metadato_Geografico=String.valueOf(var);             
	          	//out.println("Número de Visitas al Geoportal: " + var2);
	          %>
<div> Total Consultas Pagina Inicio: <%=Home%></div>
<div> Total Consultas Visor Atlas Geológico: <%=Atlas_Geologico%></div>
<div> Total Consultas Visor Geomorfodinamica: <%=Geomorfodinamica%></div>
<div> Total Consultas Visor Estado Cartográfia: <%=Estado_Cartografia%></div>
<div> Total Consultas Visor Estado Amenaza Sismica: <%=AmenazaSismica%></div>
<div> Total Consultas Visor Mapa Geológico: <%=Mapa_Geologico%></div>
<div> Total Consultas Visor Mapa Potencial Carbonifero: <%=Mapa_Potencial_Carbonifero%></div>
<div> Total Consultas Visor Mapa Amenaza Movimientos por remoción en masa: <%=Amenaza_Movimiento_Remocion_Masa%></div>
<div> Total Consultas Visor Mapa PEXAS: <%=PEXAS%></div>
<div> Total Consultas Visor Mapa Estaciones GNSS: <%=Estaciones_GNSS%></div>
<div> Total Consultas Visor Mapa Geofisica: <%=Geofisica%></div>
<div> Total Consultas Visor Mapa Metadato Geográfico: <%=Metadato_Geografico%></div>

</h:form>
