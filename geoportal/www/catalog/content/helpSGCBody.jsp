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
<% // aboutBody.jsp - About page (JSF body) %>
<%@taglib prefix="f" uri="http://java.sun.com/jsf/core"%>
<%@taglib prefix="h" uri="http://java.sun.com/jsf/html"%>
<style type="text/css">
	.tg  {border-collapse:collapse;border-spacing:0;}
	.tg td{font-family:Arial, sans-serif;font-size:14px;padding:10px 5px;border-style:solid;border-width:1px;overflow:hidden;word-break:normal;}
	.tg th{font-family:Arial, sans-serif;font-size:14px;font-weight:normal;padding:10px 5px;border-style:solid;border-width:1px;overflow:hidden;word-break:normal;}
</style>
<script type="text/javascript">

/**
Submits from when on enter.
@param event The event variable
@param form The form to be submitted.
**/
$(function() { 
	
	$('#multiple3').puiaccordion();
	$('.popup-player').magnificPopup({
	    type: 'iframe',
	    mainClass: 'mfp-fade',
	    removalDelay: 160,
	    preloader: false,
	    fixedContentPos: false,
	    iframe: {
	        markup: '<div class="mfp-iframe-scaler">'+
	                '<div class="mfp-close"></div>'+
	                '<iframe class="mfp-iframe" frameborder="0" allowfullscreen></iframe>'+
	              '</div>',

	        srcAction: 'iframe_src',
	        }
	});
});  
 
</script>

<div id="multiple3" style="text-align: justify">
    <h3>Videos</h3>
	<div id="Tematicas">   
      	<a class="popup-player" href=<%=request.getContextPath()+"/catalog/PDF/Videos/video_Intitucional_final.mp4"%> ><bold>Ayuda Geoportal</bold></a>
	</div>
    <h3>Busqueda en Geoportal</h3>  
    	<div id="Tematicas">
    	    <B>B�squeda b�sica y avanzada</B>
    	    <br>
    	    <br>
      		Se accede a la b�squeda b�sica desde la p�gina de inicio del geoportal. Hay un campo en la p�gina etiquetado Buscar. Basta con introducir una palabra clave t�rmino de b�squeda dentro del campo, haga clic en el bot�n de b�squeda, y los resultados de su b�squeda de texto se mostrar�n en la p�gina de resultados de b�squeda. Debido a que el geoportal aprovecha la sintaxis de la consulta de Lucene, potentes b�squedas son posibles, incluso a trav�s de la b�squeda de texto b�sico. 
            <br>
    	    <br>
            Se accede a la b�squeda avanzada haciendo clic en la ficha Buscar en la interfaz de la aplicaci�n web geoportal. la opci�n b�squeda avanzada le permite limitar los resultados de b�squeda al seleccionar filtros adicionales. Los filtros que se describen a continuaci�n pueden ser removidos de la consulta de b�squeda, haga clic en el v�nculo Borrar en la p�gina de b�squeda.            
            <br>
    	    <br>
    	   
    	    <table class="tg" style="undefined;table-layout: fixed; width: 798px">
				<colgroup>
				<col style="width: 229px">
				<col style="width: 336px">
				<col style="width: 233px">
				</colgroup>
				  <tr>
			    	<th class="tg-e3zv">Filtro</th>
			    	<th class="tg-e3zv">C�mo usar</th>
			    	<th class="tg-e3zv">Opciones</th>
			  	  </tr>
				  <tr>
				    <td class="tg-031e">cuadro de entrada del t�rmino de b�squeda</td>
				    <td class="tg-031e">Use el cuadro de entrada del t�rmino de b�squeda para introducir una consulta o t�rmino de b�squeda.</td>
				    <td class="tg-031e">Consulte Uso de consultas de texto de b�squeda Lucene</td>
				  </tr>
				  <tr>
				    <td class="tg-031e">b�squeda de ontolog�a</td>
				    <td class="tg-031e">Consulte C�mo realizar b�squedas con un servicio de ontolog�a</td>
				    <td class="tg-031e">Consulte C�mo realizar b�squedas con un servicio de ontolog�a</td>
				  </tr>
				  <tr>
				    <td class="tg-031e">b�squeda de extensi�n espacial de mapa interactivo</td>
				    <td class="tg-031e">Definir la extensi�n espacial de los registros que se deben devolver de la b�squeda, usando Ubicar herramienta y Herramientas de navegaci�n del mapa.Ubicar herramienta: Escriba el nombre de un lugar y el portal usar� el servicio de ubicaci�n para proporcionar una lista de lugares que tengan ese nombre. Seleccione un lugar de la lista y el mapa se centrar� sobre ese lugar.Herramientas de navegaci�n del mapa: Acerque o aleje usando las flechas en el mapa de b�squeda o use la rueda del rat�n. Obtenga un desplazamiento panor�mico del mapa al hacer clic en el mapa y arr�strelo.</td>
				    <td class="tg-031e">Cualquier lugar: Los resultados de la b�squeda devolver�n recursos de cualquier extensi�nIntersecar: Los resultados de la b�squeda devolver�n recursos que tienen cierta porci�n de la extensi�n que se toca o incluye en el �rea definida en el mapa de b�squeda.Completamente dentro: Los resultados de la b�squeda devolver�n recursos que est�n completamente incluidos en el �rea definida en el mapa de b�squeda</td>
				  </tr>
				  <tr>
				    <td class="tg-031e">b�squeda combinada</td>
				    <td class="tg-031e">Haga clic en el v�nculo Registros que se muestran de: y seleccione de los recursos que se enumeran en la lista. Esto permite buscar cat�logos remotos de la interfaz del geoportal. Cuando realiza una b�squeda federada en un cat�logo remoto, no existe garant�a de que la misma sintaxis compatible de lucene del geoportal nativo devolver� resultados del cat�logo remoto. Si tiene problemas para recuperar los resultados de un cat�logo remoto, intente una b�squeda de texto simple en vez de una consulta de lucene.</td>
				    <td class="tg-031e">Los recursos que se enumeran en el di�logo de b�squeda federada son cat�logos registrados basados en CS-W, determinados extremos REST personalizados o extremos del servicio de b�squeda de ArcGIS.</td>
				  </tr>
				  <tr>
				    <td class="tg-031e">Opciones adicionales</td>
				    <td class="tg-031e">Cuando se selecciona el v�nculo Opciones adicionales , se aplican filtros adicionales a la b�squeda. Estos filtros ser�n seguros solamente si se aplican al geoportal local.</td>
				    <td class="tg-031e">Tipo de contenido, Categor�a del tema, Modificado por fechas y Resultados del ordenaci�n. �stos se describen a continuaci�n. Es posible que tambi�n se hayan agregado filtros adicionales, seg�n la personalizaci�n del desarrolladorAgregar criterios de b�squeda personalizados.</td>
				  </tr>
				  <tr>
				    <td class="tg-031e">Opciones adicionales &gt;Tipo de contenido</td>
				    <td class="tg-031e">Las b�squedas devuelven documentos que est�n asociados con uno de los once tipos de contenido. Tipo de contenido es una propiedad designada que el geoportal usa para identificar qu� clase de recurso se est� describiendo. Algunos recursos proporcionan informaci�n sobre el tipo de contenido en sus metadatos asociados, pero en la mayor�a de los casos el geoportal usa su propia l�gica para determinar el tipo de contenido de un recurso.</td>
				    <td class="tg-031e">Servicios de mapas en vivoDatos descargablesDatos fuera de l�neaIm�genes est�ticas de mapaDocumentosAplicacionesServicios geogr�ficosCat�logos de datosArchivos de mapasActividades geogr�ficasRecurso no determinado (desconocido)</td>
				  </tr>
				  <tr>
				    <td class="tg-031e">Opciones adicionales &gt;Categor�a de los datos</td>
				    <td class="tg-031e">Diecinueve categor�as de temas definidas en el est�ndar de metadatos ISO 19115. Los metadatos de FGDC tambi�n integran el concepto de la categor�a del tema en sus propias etiquetas. Buscar por categor�a de datos recuperar� los recursos que tienen la categor�a de datos seleccionada en su lugar designado en el XML de metadatos del recurso.</td>
				    <td class="tg-031e">Los usuarios pueden elegir m�s de una categor�a de datos al marcarlas en la lista del formulario de b�squeda. Marcar m�s de una casilla ampl�a la b�squeda; los resultados se devuelven para los recursos de cualquiera o todas las categor�as de datos seleccionados.</td>
				  </tr>
				  <tr>
				    <td class="tg-031e">Opciones adicionales &gt;Datos modificados</td>
				    <td class="tg-031e">Se refiere a la fecha en que se modificaron por �ltima vez los metadatos del recurso en el cat�logo del geoportal.</td>
				    <td class="tg-031e">Al designar una fecha de inicio y una de finalizaci�n, la b�squeda devuelve registros que se han modificado durante ese per�odo de tiempo designado.</td>
				  </tr>
				  <tr>
				    <td class="tg-031e">Opciones adicionales &gt;Resultados del ordenamiento</td>
				    <td class="tg-031e">Los resultados se muestran ordenados seg�n uno de los siete criterios del XML de metadatos del recurso. Los usuarios pueden designar c�mo se deben ordenar los resultados al elegir uno de los siguientes en el cuadro desplegable Ordenar por.</td>
				    <td class="tg-031e">Relevancia: Si ha escrito un t�rmino de b�squeda en el campo de b�squeda en la parte de arriba de la p�gina, entonces los resultados se ordenan por relevancia a ese t�rmino de b�squeda. Si no ha escrito en un t�rmino de b�squeda sino que busca en el otro criterio (por ejemplo, una b�squeda basada solamente en el Tipo de contenido), entonces los resultados se ordenan por fecha en orden descendente.T�tulo: Se ordenan por el texto del t�tulo en orden alfab�tico, con las "A" en la parte superior.Tipo de contenido: Se ordenan y agrupan por Tipo de contenido, con Servicios en vivo en la parte superior y Recurso desconocido en la parte inferior.Fecha ascendente: Se ordenan por la fecha en que se modificaron, con la m�s reciente indicada en la parte inferior.Fecha descendiente:Se ordenan por la fecha en que se modificaron, con la m�s reciente indicada en la parte superior.�rea ascendente: Se orden seg�n el tama�o de la extensi�n espacial, con los registros que tienen la extensi�n m�s peque�a en la parte superior.�rea descendente: Se ordenan por el tama�o de la extensi�n espacial, con los registros que tienen la extensi�n m�s grande en la parte superior.</td>
				  </tr>
			</table>

			<br>
    	    <br>
               <B>C�mo guardar una b�squeda</B> 
            <br>
    	    <br>
            Si encuentra que usted ingresa los mismos criterios de b�squeda a menudo, es posible que desee guardar la b�squeda. Guardar la b�squeda carga autom�ticamente sus criterios de b�squeda y se ejecuta la b�squeda sin tener que introducir todos los valores espec�ficos en el m�dulo avanzado de la p�gina de b�squeda. Puede acceder a la lista de b�squedas que ha guardado, haga clic en los Mis b�squedas guardadas (link de la derecha del bot�n de b�squeda) en la p�gina de b�squeda avanzada. Haga clic en el nombre de la b�squeda para cargar los criterios de b�squeda y ejecutar la b�squeda. Haga clic en el enlace de eliminaci�n para eliminar la b�squeda guardada. Por favor, tenga en cuenta que se puede mantener solo hasta 10 b�squedas guardadas a la vez.
            
    	</div>
    	
   
    <h3>Visor de Mapas</h3> 
    	<div id="Tematicas">
    	<br>
    	    <br>
      		<B>C�mo usar</B>
      		<br>
    	    <br>
			El API de ArcGIS para Flex permite la creaci�n de aplicaciones de Internet ricas sobre un ArcGIS Server. Se basa en el marco Adobe Flex libre. Esri proporciona una aplicaci�n de visor que se integra con el Geoportal, usando el Widget de b�squeda del Geoportal para Flex. Para obtener las instrucciones sobre c�mo agregar el Widget de b�squeda a su visor basado en Flex existente, consulte la secci�n a continuaci�n sobre C�mo agregar el Widget del Geoportal a un Visor Flex existente.
			<br>
    	    <br>
			
			<B>C�mo buscar</B>
			<br>
    	    <br>
			Tenga en cuenta que la ventana Encontrar datos tiene un campo de entrada, un bot�n Buscar y tres botones de selecci�n. El campo de entrada acepta cualquier consulta de b�squeda lucene. Puede escribir en una consulta simple, como simplemente una palabra clave para buscar o puede desarrollar consultas m�s complejas con la sintaxis Lucene. Adem�s, puede limitar los resultados de la b�squeda a cierta extensi�n espacial. Seleccione el bot�n de selecci�n apropiado: Aleatorio significa que no se aplicar� ning�n filtro espacial, Intersecci�nrecuperar� los registros que tocan o se superponen en la extensi�n espacial que se muestra actualmente en el Visor Flex y Completamente dentro recuperar� los registros en donde la extensi�n espacial cae completamente dentro de la extensi�n que se muestra actualmente en el Visor Flex.
			<br>
    	    <br>
			Una vez ha introducido el criterio de b�squeda, haga clic en el bot�n Buscar.
			<br>
    	    <br>
			Recibir� resultados de b�squeda que coinciden con su criterio. Haga doble clic en uno de los registros y la interfaz hace zoom a la extensi�n espacial del recurso. Aparece otra ventana, en la que se muestra informaci�n para ese recurso del resultado de la b�squeda y v�nculos que proporcionan la misma funcionalidad que ver� en la p�gina de b�squeda del geoportal. Observar� que no se generar� ning�n v�nculo de Vista previa y en lugar de eso aparece un v�nculo Agregar al mapa para Datos en directo. Eso es debido a que en esta aplicaci�n Flex, los usuarios obtienen una vista previa del servicio cuando eligen adicionarlo al mapa con el v�nculo Agregar al mapa.
			<br>
    	    <br>
			<B>Boton Busqueda Geoportal</B>
			<br>
    	    <br>
			En la parte derecha superior de la ventana B�squeda Geoportal hay cuatro iconos. El primero es un juego de binoculares y el segundo es un gr�fico de cuadros. Estos dos botones permiten alternar entre la interfaz de b�squeda y la lista de recursos. Haga clic en los binoculares para definir una b�squeda; haga clic en ese gr�fico para ver los resultados de la b�squeda anterior. El tercer y cuarto bot�n definen el comportamiento de la ventana en s�. Haga clic en la flecha verde para minimizar la ventana. Haga clic en el bot�n X para cerrarlo.
			<br>
    	    <br>
			Si cierra la ventana, pero desea abrirla de nuevo, pase el puntero sobre el icono de binoculares en el men� principal del visor y ver� la herramienta Busqueda en el Geoportal que se muestra en la lista de herramientas disponibles. Haga clic en el mismo para restaurarlo y volver a la interfaz B�squeda del Geoportal.
			<br>
    	    <br>
			<B>Visualizaci�n de un servicio en la interfaz</B>
			<br>
    	    <br>
			El visor Flex que se proporciona con el Geoportal es compatible con los servicios ArcIMS, ArcGIS Server REST, OGC WMS y GeoRSS. Si un servicio no se est� ejecutando o es de un tipo de servicio que no es compatible, �ste no aparecer� en la interfaz del mapa.
			<br>
    	    <br>
			
    	</div>

</div>