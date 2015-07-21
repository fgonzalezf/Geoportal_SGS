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
    	    <B>Búsqueda básica y avanzada</B>
    	    <br>
    	    <br>
      		Se accede a la búsqueda básica desde la página de inicio del geoportal. Hay un campo en la página etiquetado Buscar. Basta con introducir una palabra clave término de búsqueda dentro del campo, haga clic en el botón de búsqueda, y los resultados de su búsqueda de texto se mostrarán en la página de resultados de búsqueda. Debido a que el geoportal aprovecha la sintaxis de la consulta de Lucene, potentes búsquedas son posibles, incluso a través de la búsqueda de texto básico. 
            <br>
    	    <br>
            Se accede a la búsqueda avanzada haciendo clic en la ficha Buscar en la interfaz de la aplicación web geoportal. la opción búsqueda avanzada le permite limitar los resultados de búsqueda al seleccionar filtros adicionales. Los filtros que se describen a continuación pueden ser removidos de la consulta de búsqueda, haga clic en el vínculo Borrar en la página de búsqueda.            
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
			    	<th class="tg-e3zv">Cómo usar</th>
			    	<th class="tg-e3zv">Opciones</th>
			  	  </tr>
				  <tr>
				    <td class="tg-031e">cuadro de entrada del término de búsqueda</td>
				    <td class="tg-031e">Use el cuadro de entrada del término de búsqueda para introducir una consulta o término de búsqueda.</td>
				    <td class="tg-031e">Consulte Uso de consultas de texto de búsqueda Lucene</td>
				  </tr>
				  <tr>
				    <td class="tg-031e">búsqueda de ontología</td>
				    <td class="tg-031e">Consulte Cómo realizar búsquedas con un servicio de ontología</td>
				    <td class="tg-031e">Consulte Cómo realizar búsquedas con un servicio de ontología</td>
				  </tr>
				  <tr>
				    <td class="tg-031e">búsqueda de extensión espacial de mapa interactivo</td>
				    <td class="tg-031e">Definir la extensión espacial de los registros que se deben devolver de la búsqueda, usando Ubicar herramienta y Herramientas de navegación del mapa.Ubicar herramienta: Escriba el nombre de un lugar y el portal usará el servicio de ubicación para proporcionar una lista de lugares que tengan ese nombre. Seleccione un lugar de la lista y el mapa se centrará sobre ese lugar.Herramientas de navegación del mapa: Acerque o aleje usando las flechas en el mapa de búsqueda o use la rueda del ratón. Obtenga un desplazamiento panorámico del mapa al hacer clic en el mapa y arrástrelo.</td>
				    <td class="tg-031e">Cualquier lugar: Los resultados de la búsqueda devolverán recursos de cualquier extensiónIntersecar: Los resultados de la búsqueda devolverán recursos que tienen cierta porción de la extensión que se toca o incluye en el área definida en el mapa de búsqueda.Completamente dentro: Los resultados de la búsqueda devolverán recursos que están completamente incluidos en el área definida en el mapa de búsqueda</td>
				  </tr>
				  <tr>
				    <td class="tg-031e">búsqueda combinada</td>
				    <td class="tg-031e">Haga clic en el vínculo Registros que se muestran de: y seleccione de los recursos que se enumeran en la lista. Esto permite buscar catálogos remotos de la interfaz del geoportal. Cuando realiza una búsqueda federada en un catálogo remoto, no existe garantía de que la misma sintaxis compatible de lucene del geoportal nativo devolverá resultados del catálogo remoto. Si tiene problemas para recuperar los resultados de un catálogo remoto, intente una búsqueda de texto simple en vez de una consulta de lucene.</td>
				    <td class="tg-031e">Los recursos que se enumeran en el diálogo de búsqueda federada son catálogos registrados basados en CS-W, determinados extremos REST personalizados o extremos del servicio de búsqueda de ArcGIS.</td>
				  </tr>
				  <tr>
				    <td class="tg-031e">Opciones adicionales</td>
				    <td class="tg-031e">Cuando se selecciona el vínculo Opciones adicionales , se aplican filtros adicionales a la búsqueda. Estos filtros serán seguros solamente si se aplican al geoportal local.</td>
				    <td class="tg-031e">Tipo de contenido, Categoría del tema, Modificado por fechas y Resultados del ordenación. Éstos se describen a continuación. Es posible que también se hayan agregado filtros adicionales, según la personalización del desarrolladorAgregar criterios de búsqueda personalizados.</td>
				  </tr>
				  <tr>
				    <td class="tg-031e">Opciones adicionales &gt;Tipo de contenido</td>
				    <td class="tg-031e">Las búsquedas devuelven documentos que están asociados con uno de los once tipos de contenido. Tipo de contenido es una propiedad designada que el geoportal usa para identificar qué clase de recurso se está describiendo. Algunos recursos proporcionan información sobre el tipo de contenido en sus metadatos asociados, pero en la mayoría de los casos el geoportal usa su propia lógica para determinar el tipo de contenido de un recurso.</td>
				    <td class="tg-031e">Servicios de mapas en vivoDatos descargablesDatos fuera de líneaImágenes estáticas de mapaDocumentosAplicacionesServicios geográficosCatálogos de datosArchivos de mapasActividades geográficasRecurso no determinado (desconocido)</td>
				  </tr>
				  <tr>
				    <td class="tg-031e">Opciones adicionales &gt;Categoría de los datos</td>
				    <td class="tg-031e">Diecinueve categorías de temas definidas en el estándar de metadatos ISO 19115. Los metadatos de FGDC también integran el concepto de la categoría del tema en sus propias etiquetas. Buscar por categoría de datos recuperará los recursos que tienen la categoría de datos seleccionada en su lugar designado en el XML de metadatos del recurso.</td>
				    <td class="tg-031e">Los usuarios pueden elegir más de una categoría de datos al marcarlas en la lista del formulario de búsqueda. Marcar más de una casilla amplía la búsqueda; los resultados se devuelven para los recursos de cualquiera o todas las categorías de datos seleccionados.</td>
				  </tr>
				  <tr>
				    <td class="tg-031e">Opciones adicionales &gt;Datos modificados</td>
				    <td class="tg-031e">Se refiere a la fecha en que se modificaron por última vez los metadatos del recurso en el catálogo del geoportal.</td>
				    <td class="tg-031e">Al designar una fecha de inicio y una de finalización, la búsqueda devuelve registros que se han modificado durante ese período de tiempo designado.</td>
				  </tr>
				  <tr>
				    <td class="tg-031e">Opciones adicionales &gt;Resultados del ordenamiento</td>
				    <td class="tg-031e">Los resultados se muestran ordenados según uno de los siete criterios del XML de metadatos del recurso. Los usuarios pueden designar cómo se deben ordenar los resultados al elegir uno de los siguientes en el cuadro desplegable Ordenar por.</td>
				    <td class="tg-031e">Relevancia: Si ha escrito un término de búsqueda en el campo de búsqueda en la parte de arriba de la página, entonces los resultados se ordenan por relevancia a ese término de búsqueda. Si no ha escrito en un término de búsqueda sino que busca en el otro criterio (por ejemplo, una búsqueda basada solamente en el Tipo de contenido), entonces los resultados se ordenan por fecha en orden descendente.Título: Se ordenan por el texto del título en orden alfabético, con las "A" en la parte superior.Tipo de contenido: Se ordenan y agrupan por Tipo de contenido, con Servicios en vivo en la parte superior y Recurso desconocido en la parte inferior.Fecha ascendente: Se ordenan por la fecha en que se modificaron, con la más reciente indicada en la parte inferior.Fecha descendiente:Se ordenan por la fecha en que se modificaron, con la más reciente indicada en la parte superior.Área ascendente: Se orden según el tamaño de la extensión espacial, con los registros que tienen la extensión más pequeña en la parte superior.Área descendente: Se ordenan por el tamaño de la extensión espacial, con los registros que tienen la extensión más grande en la parte superior.</td>
				  </tr>
			</table>

			<br>
    	    <br>
               <B>Cómo guardar una búsqueda</B> 
            <br>
    	    <br>
            Si encuentra que usted ingresa los mismos criterios de búsqueda a menudo, es posible que desee guardar la búsqueda. Guardar la búsqueda carga automáticamente sus criterios de búsqueda y se ejecuta la búsqueda sin tener que introducir todos los valores específicos en el módulo avanzado de la página de búsqueda. Puede acceder a la lista de búsquedas que ha guardado, haga clic en los Mis búsquedas guardadas (link de la derecha del botón de búsqueda) en la página de búsqueda avanzada. Haga clic en el nombre de la búsqueda para cargar los criterios de búsqueda y ejecutar la búsqueda. Haga clic en el enlace de eliminación para eliminar la búsqueda guardada. Por favor, tenga en cuenta que se puede mantener solo hasta 10 búsquedas guardadas a la vez.
            
    	</div>
    	
   
    <h3>Visor de Mapas</h3> 
    	<div id="Tematicas">
    	<br>
    	    <br>
      		<B>Cómo usar</B>
      		<br>
    	    <br>
			El API de ArcGIS para Flex permite la creación de aplicaciones de Internet ricas sobre un ArcGIS Server. Se basa en el marco Adobe Flex libre. Esri proporciona una aplicación de visor que se integra con el Geoportal, usando el Widget de búsqueda del Geoportal para Flex. Para obtener las instrucciones sobre cómo agregar el Widget de búsqueda a su visor basado en Flex existente, consulte la sección a continuación sobre Cómo agregar el Widget del Geoportal a un Visor Flex existente.
			<br>
    	    <br>
			
			<B>Cómo buscar</B>
			<br>
    	    <br>
			Tenga en cuenta que la ventana Encontrar datos tiene un campo de entrada, un botón Buscar y tres botones de selección. El campo de entrada acepta cualquier consulta de búsqueda lucene. Puede escribir en una consulta simple, como simplemente una palabra clave para buscar o puede desarrollar consultas más complejas con la sintaxis Lucene. Además, puede limitar los resultados de la búsqueda a cierta extensión espacial. Seleccione el botón de selección apropiado: Aleatorio significa que no se aplicará ningún filtro espacial, Intersecciónrecuperará los registros que tocan o se superponen en la extensión espacial que se muestra actualmente en el Visor Flex y Completamente dentro recuperará los registros en donde la extensión espacial cae completamente dentro de la extensión que se muestra actualmente en el Visor Flex.
			<br>
    	    <br>
			Una vez ha introducido el criterio de búsqueda, haga clic en el botón Buscar.
			<br>
    	    <br>
			Recibirá resultados de búsqueda que coinciden con su criterio. Haga doble clic en uno de los registros y la interfaz hace zoom a la extensión espacial del recurso. Aparece otra ventana, en la que se muestra información para ese recurso del resultado de la búsqueda y vínculos que proporcionan la misma funcionalidad que verá en la página de búsqueda del geoportal. Observará que no se generará ningún vínculo de Vista previa y en lugar de eso aparece un vínculo Agregar al mapa para Datos en directo. Eso es debido a que en esta aplicación Flex, los usuarios obtienen una vista previa del servicio cuando eligen adicionarlo al mapa con el vínculo Agregar al mapa.
			<br>
    	    <br>
			<B>Boton Busqueda Geoportal</B>
			<br>
    	    <br>
			En la parte derecha superior de la ventana Búsqueda Geoportal hay cuatro iconos. El primero es un juego de binoculares y el segundo es un gráfico de cuadros. Estos dos botones permiten alternar entre la interfaz de búsqueda y la lista de recursos. Haga clic en los binoculares para definir una búsqueda; haga clic en ese gráfico para ver los resultados de la búsqueda anterior. El tercer y cuarto botón definen el comportamiento de la ventana en sí. Haga clic en la flecha verde para minimizar la ventana. Haga clic en el botón X para cerrarlo.
			<br>
    	    <br>
			Si cierra la ventana, pero desea abrirla de nuevo, pase el puntero sobre el icono de binoculares en el menú principal del visor y verá la herramienta Busqueda en el Geoportal que se muestra en la lista de herramientas disponibles. Haga clic en el mismo para restaurarlo y volver a la interfaz Búsqueda del Geoportal.
			<br>
    	    <br>
			<B>Visualización de un servicio en la interfaz</B>
			<br>
    	    <br>
			El visor Flex que se proporciona con el Geoportal es compatible con los servicios ArcIMS, ArcGIS Server REST, OGC WMS y GeoRSS. Si un servicio no se está ejecutando o es de un tipo de servicio que no es compatible, éste no aparecerá en la interfaz del mapa.
			<br>
    	    <br>
			
    	</div>

</div>