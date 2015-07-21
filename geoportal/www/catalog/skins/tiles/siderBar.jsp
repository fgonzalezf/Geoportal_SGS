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
<%@taglib prefix="f" uri="http://java.sun.com/jsf/core"%>
<%@taglib prefix="h" uri="http://java.sun.com/jsf/html"%>

<script type="text/javascript">
/**
Submits from when on enter.
@param event The event variable
@param form The form to be submitted.
**/
$(function() { 
	
	$('#multiple').puiaccordion();  
	 
	$('#Basicas').puitree({  
	        animate: true,  
	        selectionMode: 'single',  
	        nodes: [ 
	                
	             {  
		                label: '<B>Aplicativo Web <br> del Inventario Nacional de <br> Manifestaciones Hidrotermales</B>',  
		                data: '',  
		                children:[
                            {label:'Descripci�n', data:'http://hidrotermales.sgc.gov.co/'},
		                    {label:'Visor Geogr�fico',data: 'http://hidrotermales.sgc.gov.co/invtermales/'}, 		                    
		                    ]  
		         },
	           
	            {  
	                label: '<B>Atlas Geol�gico</B>',  
	                data: '',  
	                children:[
	                    
	                    {label:'Visor Geogr�fico',data: 'http://srvags.sgc.gov.co/Flexviewer/Atlas_Geologico_Colombia/'},  
	                    ]  
	            },
	           
	            {  
	                label: '<B>Datos de M�todos <br> Geof�sicos</B>',  
	                data: '',  
	                children:[  
                        {label:'Visor Geogr�fico',data: 'http://srvags.sgc.gov.co/Flexviewer/Geofisica/'}  
	                    ]  
	            },
	            
	            {  
	                label: '<B>Informaci�n <br> Geomorfodin�mica <br> de los Litorales Colombianos</B>',  
	                data: '',  
	                children:[  
                        
						{label:'Descripci�n', data:'/geoportalsgc/catalog/PDF/GeomorfodinamicaCostera.pdf'}, 
	                    {label:'Visor Geogr�fico',data: 'http://srvags.sgc.gov.co/Flexviewer/Geomorfodinamica/'}  
	                    ]  
	            },
	            
	            
	            {  
	                label: '<B>Mapa Geol�gico <br> de Colombia</B>',  
	                data: '',  
	                children:[  
					    {label:'Descripci�n', data:'/geoportalsgc/catalog/PDF/Mapa_Geologico_Colombia.pdf'}, 
	                    {label:'Visor Geogr�fico',data: 'http://srvags.sgc.gov.co/Flexviewer/Mapa_Geologico_Colombia/'}  
	                    ]  
	            },
	            {  
	                label: '<B>Programa de Exploraci�n <br> Aguas Subterr�neas</B>',  
	                data: '',  
	                children:[  
					    
	                    {label:'Visor Geogr�fico',data: 'http://geoportal.sgc.gov.co/Flexviewer/PEXAS/'}  
	                    ]  
	            }
	            
	        ],  
	        nodeSelect: function(event, ui) { 
	        	
	        	if (ui.data.indexOf("http://") !=-1){
	        		switch (ui.data) {
	        	    case "http://srvags.sgc.gov.co/Flexviewer/Atlas_Geologico_Colombia/":
	        	    	urlf='${pageContext.request.contextPath}'+"/catalog/main/contador.jsp";
	        	    	var valor="1";
	        	    	$.ajax({ //Comunicaci�n jQuery hacia JSP
	        	    		
	        	          	type: "POST",
	        	            url:urlf,
	        	            data: "valor="+valor,
	        	            
	        	         });
	        	        break;
	        	    case "http://srvags.sgc.gov.co/Flexviewer/Geofisica/":
	        	    	urlf='${pageContext.request.contextPath}'+"/catalog/main/contador.jsp";
	        	    	var valor="10";
	        	    	$.ajax({ //Comunicaci�n jQuery hacia JSP
	        	    		
	        	          	type: "POST",
	        	            url:urlf,
	        	            data: "valor="+valor,
	        	            
	        	         });
	        	        break;
	        	    case "http://srvags.sgc.gov.co/Flexviewer/Geomorfodinamica/":
	        	    	urlf='${pageContext.request.contextPath}'+"/catalog/main/contador.jsp";
	        	    	var valor="2";
	        	    	$.ajax({ //Comunicaci�n jQuery hacia JSP
	        	    		
	        	          	type: "POST",
	        	            url:urlf,
	        	            data: "valor="+valor,
	        	            
	        	         });
	        	        break;
	        	    case "http://srvags.sgc.gov.co/Flexviewer/Mapa_Geologico_Colombia/":
	        	    	urlf='${pageContext.request.contextPath}'+"/catalog/main/contador.jsp";
	        	    	var valor="5";
	        	    	$.ajax({ //Comunicaci�n jQuery hacia JSP
	        	    		
	        	          	type: "POST",
	        	            url:urlf,
	        	            data: "valor="+valor,
	        	            
	        	         });
	        	        break;
	        	    case "http://geoportal.sgc.gov.co/Flexviewer/PEXAS/":
	        	    	urlf='${pageContext.request.contextPath}'+"/catalog/main/contador.jsp";
	        	    	var valor="8";
	        	    	$.ajax({ //Comunicaci�n jQuery hacia JSP
	        	    		
	        	          	type: "POST",
	        	            url:urlf,
	        	            data: "valor="+valor,
	        	            
	        	         });
	        	        break;
	        	    
	        		}
	        	window.open(ui.data);
				return false;
	        	}
	        	else if(ui.data!="")  {
	        		var url= document.URL;
	        		var corte = url.split("/");
	        		var dominio = corte[0];
	        		var ruta= dominio +ui.data;
	        		
	        		window.open(ruta);
					return false;
	        	}
	        	else
	        	{
	        		$('#Basicas').puitree('expandNode',ui.node);
	        	}
	        		
	        	}
	});
	        
	        $('#Minerales').puitree({  
		        animate: true,  
		        selectionMode: 'single',  
		        nodes: [  
		                /**
		            {  
		                label: '<B>Mapa Anomalia <br> Geoqu�mica</B>',  
		                data: '',  
		                children:[ 
							{label:'Descripci�n', data:'/geoportalsgc/catalog/PDF/MAPAANOMALIASGEOQUIMICAS.pdf'}, 
		                    {label:'Visor Geogr�fico',data: 'http://srvags.sgc.gov.co/Flexviewer/Anomalia_Geoquimica/'},  
		                    ]  
		            },
		            {  
		                label: '<B>Informaci�n <br>Puntos de <br> Muestreo Geoqu�mico</B>',  
		                data: '',  
		                children:[  
		                    {label:'Visor Geogr�fico',data: 'http://aplicaciones7.sgc.gov.co/facetas/'}  
		                    ]  
		            },
		            {  
		                label: '<B>Zonas de <br> Potencial Geoqu�mico</B>',  
		                data: '',  
		                children:[  
							{label:'Descripci�n', data:'/geoportalsgc/catalog/PDF/MAPAPOTENCIAGEOQUIMICOCOLOMBIA.pdf'}, 
		                    {label:'Visor Geogr�fico',data:'http://srvags.sgc.gov.co/Flexviewer/Zonas_Potencial_Integral/'}  
		                    ]  
		            },
		            **/
		            {  
		                label: '<B>Mapa Carbon�fero <br> de Colombia</B>',  
		                data: '',  
		                children:[  
							{label:'Descripci�n', data:'/geoportalsgc/catalog/PDF/MapaCarboniferodeColombia.pdf'},  
		                    {label:'Visor Geogr�fico',data: 'http://srvags.sgc.gov.co/Flexviewer/Mapa_Potencial_Carbonifero_Colombia/'},  
		                    ]  
		            }
		            
		        ],  
                    nodeSelect: function(event, ui) { 
		        	
		        	if (ui.data.indexOf("http://") !=-1){
		        		switch (ui.data) {
		        	    case "http://srvags.sgc.gov.co/Flexviewer/Mapa_Potencial_Carbonifero_Colombia/":
		        	    	urlf='${pageContext.request.contextPath}'+"/catalog/main/contador.jsp";
		        	    	var valor="6";
		        	    	$.ajax({ //Comunicaci�n jQuery hacia JSP
		        	    		
		        	          	type: "POST",
		        	            url:urlf,
		        	            data: "valor="+valor,
		        	            
		        	         });
		        	        break;
		        		}
		        	window.open(ui.data);
					return false;
		        	}
		        	else if(ui.data!="")  {
		        		var url= document.URL;
		        		var corte = url.split("/");
		        		var dominio = corte[0];
		        		var ruta= dominio +ui.data;
		        		window.open(ruta);
						return false;
		        	}
		        	else
		        	{
		        		$('#Minerales').puitree('expandNode',ui.node);
		        	}
		        		
		        	}
	        });
	        
	        $('#Geoamenazas').puitree({  
		        animate: true,  
		        selectionMode: 'single',  
		        nodes: [  
		             
		                
					{  
						 label: '<B>Estaciones GNSS del SGC 2014 </B>',  
						 data: '',  
						 children:[  
								 
						        {label:'Visor Geogr�fico',data: 'http://geoportal.sgc.gov.co/Flexviewer/Estaciones_GNSS/'},  
						        ]  
					},
		           
		            {  
		                label: '<B>Mapa de Amenaza <br> S�smica</B>',  
		                data: '',  
		                children:[  
							{label:'Descripci�n', data:'/geoportalsgc/catalog/PDF/MapaNacionalAmenazaSismica.pdf'},   
		                    {label:'Visor Geogr�fico',data: 'http://srvags.sgc.gov.co/Flexviewer/Amenaza_Sismica/'},  
		                    ]  
		            },
		            {  
		                label: '<B>Mapa de Amenaza por <br> Movimientos en Masa </B>',  
		                data: '',  
		                children:[  
							 
		                    {label:'Visor Geogr�fico',data: 'http://geoportal.sgc.gov.co/Flexviewer/Amenaza_Movimiento_Remocion_Masa/'},  
		                    ]  
		            },
		            {  
		                label: '<B>Mapa de Amenaza Volc�nica </B>',  
		                data: '',  
		                children:[  
							 
		                    {label:'Visor Geogr�fico',data: 'http://geoportal.sgc.gov.co/Flexviewer/Amenaza_Volcanica/'},  
		                    ]  
		            },
		            {  
		                label: '<B>Mapa de Intensidad <br> Instrumental</B>',  
		                data: '',  
		                children:[  
							{label:'Descripci�n', data:'/geoportalsgc/catalog/PDF/Mapasdeintensidadinstrumental.pdf'},   
		                    {label:'Enlace a pagina web',data: 'http://seisan.sgc.gov.co/RSNC/shakemap/sc/shake/index.html'},  
		                    ]  
		            },
		            
		            {  
		                label: '<B>Mapa de Intensidades <br> M�ximas Observadas</B>',  
		                data: '',  
		                children:[  
							  
		                    {label:'Visor Geogr�fico',data: 'http://srvags.sgc.gov.co/Flexviewer/Mapa_Intensidad_Maxima_Observada_Colombia/'},  
		                    ]  
		            },
		            
		            {  
		                label: '<B>Movimientos por <br> Remoci�n en Masa</B>',  
		                data: '',  
		                children:[  
							
		                    {label:'Enlace a pagina web',data: 'http://zafiro.sgc.gov.co/simma/default.aspx'}  
		                    ]  
		            },
		            
		        
		            {  
		                label: '<B>Sismicidad Hist�rica <br> de Colombia</B>',  
		                data: '',  
		                children:[ 
                            {label:'Descripci�n', data:'/geoportalsgc/catalog/PDF/SismicidadHistoricadeColombia.pdf'},   
		                    {label:'Enlace a pagina web',data:'http://agata.sgc.gov.co:9090/SismicidadHistorica/'}  
		                    ]  
		            }
		            
		            
		        ],  
		        nodeSelect: function(event, ui) { 
		        	
		        	if (ui.data.indexOf("http://") !=-1){
		        		switch (ui.data) {
		        	    case "http://geoportal.sgc.gov.co/Flexviewer/Estaciones_GNSS/":
		        	    	urlf='${pageContext.request.contextPath}'+"/catalog/main/contador.jsp";
		        	    	var valor="9";
		        	    	$.ajax({ //Comunicaci�n jQuery hacia JSP
		        	    		
		        	          	type: "POST",
		        	            url:urlf,
		        	            data: "valor="+valor,
		        	            
		        	         });
		        	        break;
		        	    case "http://srvags.sgc.gov.co/Flexviewer/Amenaza_Sismica/":
		        	    	urlf='${pageContext.request.contextPath}'+"/catalog/main/contador.jsp";
		        	    	var valor="4";
		        	    	$.ajax({ //Comunicaci�n jQuery hacia JSP
		        	    		
		        	          	type: "POST",
		        	            url:urlf,
		        	            data: "valor="+valor,
		        	            
		        	         });
		        	        break;
		        	    case "http://geoportal.sgc.gov.co/Flexviewer/Amenaza_Movimiento_Remocion_Masa/":
		        	    	urlf='${pageContext.request.contextPath}'+"/catalog/main/contador.jsp";
		        	    	var valor="7";
		        	    	$.ajax({ //Comunicaci�n jQuery hacia JSP
		        	    		
		        	          	type: "POST",
		        	            url:urlf,
		        	            data: "valor="+valor,
		        	            
		        	         });
		        	        break;
		        	    
		        		}
		        	window.open(ui.data);
					return false;
		        	}
		        	else if(ui.data!="")  {
		        		var url= document.URL;
		        		var corte = url.split("/");
		        		var dominio = corte[0];
		        		var ruta= dominio +ui.data;
		        		window.open(ruta);
						return false;
		        	}
		        	else
		        	{
		        		$('#Geoamenazas').puitree('expandNode',ui.node);
		        	}
		        		
		        	}
	               
		         
	        });
	        
	        
	        
	        $('#Informacion').puitree({  
		        animate: true,  
		        selectionMode: 'single',  
		        nodes: [  
		                
					{  
    							label: '<B>Estad�sticas Internas <br> Geoportal</B>',  
    							data: '',  
    							children:[  
									{label:'Estadisticas', data:'/catalog/quicklink/estadisticas.page'},     
       							 ]  
					},
		           
		            {  
		                label: '<B>Estado Cartograf�a <br> Geol�gica</B>',  
		                data: '',  
		                children:[  
							{label:'Descripci�n', data:'/geoportalsgc/catalog/PDF/EstadoCartografia.pdf'},   
		                    {label:'Visor Geogr�fico',data: 'http://srvags.sgc.gov.co/Flexviewer/Estado_Cartografia_Geologica/'},  
		                    ]  
		            },
		            {  
		                label: '<B>Inventario Muestras Litoteca</B>',  
		                data: '',  
		                children:[  
		                    {label:'Visor Geogr�fico',data: 'http://srvags.sgc.gov.co/Flexviewer/Mapa_Inventario_Muestras_Litoteca/'},  
		                    ]  
		            },
		            
		            {  
		                label: '<B>Metadato Geogr�fico</B>',  
		                data: '',  
		                children:[    
		                    {label:'Visor Geogr�fico',data: 'http://srvags.sgc.gov.co/Flexviewer/Metadato_Geografico/'}  
		                    ]  
		            },
		            {  
		                label: '<B>SICAT</B>',  
		                data: '',  
		                children:[    
		                    {label:'Enlace a pagina Web',data: 'http://aplicaciones1.sgc.gov.co/sicat/html/ConsultaBasica.aspx'}, 
		                    {label:'Registro de activos de <br> informaci�n',data: '/geoportalsgc/catalog/PDF/PRODUCTOS_GEOCIENTIFICOS_SGC_SICAT.pdf'},
		                    ]  
		            },
		            {  
		                label: '<B>Productos Geocient�ficos</B>',  
		                data: '',  
		                children:[  
						    {label:'Bases de Datos',data:'/catalog/quicklink/basesDatosPublicacion.page' },
		                    {label:'Publicaciones',data:'http://www.sgc.gov.co/Noticias/General/Publicacion-de-productos-oficializados-Acta-No--02.aspx' }, 
		                    
		                    ]  
		            },
		           
		            
		        ],  
					nodeSelect: function(event, ui) { 
		        	
		        	if (ui.data.indexOf("bases") !=-1 || ui.data.indexOf("estadisticas") !=-1){
		        		switch (ui.data) {
		        	    case "/catalog/quicklink/basesDatosPublicacion.page":
		        	    	var urlf2='${pageContext.request.contextPath}'+ui.data;
		        	    	window.location.replace(urlf2);
		        	        break;
		        	    case "/catalog/quicklink/estadisticas.page":
		        	    	var urlf2='${pageContext.request.contextPath}'+ui.data;
		        	    	window.location.replace(urlf2);
		        	        break;
		        		}
		        		
		        	
					return false;
		        	}
		        	else if(ui.data.indexOf("http://") !=-1)  {
		        		//var url= document.URL;
		        		//var corte = url.split("/");
		        		//var dominio = corte[0];
		        		//var ruta= dominio +ui.data;
		        		window.open(ui.data);
		        	}
		        	else if(ui.data!="")  {
		        		//var url= document.URL;
		        		//var corte = url.split("/");
		        		//var dominio = corte[0];
		        		//var ruta= dominio +ui.data;
		        		var urlf='${pageContext.request.contextPath}'+ui.data;
		        		window.location.replace(urlf);
		        	}
		        	else
		        	{
		        		 $('#Informacion').puitree('expandNode',ui.node);
		        	}
		        		
		        	}
	        });
	        
	       
});
 
</script>
         <!--   <ul class="nav">   
           <ul class="nav">
      			<li><a id="a1" href="http://srvags.sgc.gov.co/Flexviewer/Geomorfodinamica/" target="_blank">Informaci�n Geomorfodin�mica de los Litorales Colombianos</a></li>
      			<li><a id="a1" href="http://srvags.sgc.gov.co/Flexviewer/Anomalia_Geoquimica/" target="_blank">Mapa Anomalia Geoqu�mica</a></li>
      			<li><a id="a1" href="http://aplicaciones7.sgc.gov.co/ESTADO_CARTOGRAFIA_MAYO20/default.aspx" target="_blank">Estado Cartogr�fia Geol�gica</a></li>
      			<li><a id="a1" href="http://aplicaciones7.sgc.gov.co/MapaGeologicoMGC/default.aspx" target="_blank">Mapa Geol�gico de colombia</a></li>
      			<li><a id="a1" href="http://aplicaciones7.sgc.gov.co/facetas/" target="_blank">Puntos de Muestreo Geoqu�mico</a></li>
      			<li><a id="a1" href="http://aplicaciones7.sgc.gov.co/M�PA_NACIONAL_AMENAZA_SISMICA/default.aspx" target="_blank">Mapa de Amenaza S�smica</a></li>
      			<li><a id="a1" href="http://zafiro.sgc.gov.co/simma/default.aspx" target="_blank">Movimientos por Remoci�n en Masa</a></li>
      			<li><a id="a1" href="http://agata.ingeominas.gov.co:9090/SismicidadHistorica/" target="_blank">Sismicidad Hist�rica de Colombia</a></li>
    		</ul>
      -->
<div id="multiple">  
    <h3>Geociencias B�sicas</h3>  
    <div style="padding: 0.3em; font-size: 0.8em" >
    <!--  
        <a id="a1" href="http://srvags.sgc.gov.co/Flexviewer/Atlas_Geologico_Colombia/" target="_blank">Atlas Geol�gico</a><br><br>  
        <a id="a1" href="http://srvags.sgc.gov.co/Flexviewer/Geomorfodinamica/" target="_blank">Informaci�n Geomorfodin�mica de los Litorales Colombianos</a><br><br>
        <a id="a1" href="http://srvags.sgc.gov.co/Flexviewer/Mapa_Geologico_Colombia/" target="_blank">Mapa Geol�gico de colombia</a>
     --> 
        <div id="Basicas" style=" width: 210px"></div>
    </div>  
  
    <h3>Recursos Minerales</h3>  
    <div style="padding: 0.3em ; font-size: 0.8em">
    <!--    
       <a id="a1" href="http://srvags.sgc.gov.co/Flexviewer/Anomalia_Geoquimica/" target="_blank">Mapa Anomalia Geoqu�mica</a><br><br> 
       <a id="a1" href="http://aplicaciones7.sgc.gov.co/facetas/" target="_blank">Puntos de Muestreo Geoqu�mico</a><br><br> 
       <a id="a1" href="http://srvags.sgc.gov.co/Flexviewer/Zonas_Potencial_Integral/" target="_blank">Zonas de Potencial Geoqu�mico</a>
    -->
       <div id="Minerales" style=" width: 210px"></div>
    </div>  
  
    <h3>Geoamenazas</h3>  
    <div style="padding: 0.3em ; font-size: 0.8em"> 
    <!-- 
    	<a id="a1" href="http://aplicaciones7.sgc.gov.co/M�PA_NACIONAL_AMENAZA_SISMICA/default.aspx" target="_blank">Mapa de Amenaza S�smica</a><br><br>
    	<a id="a1" href="http://zafiro.sgc.gov.co/simma/default.aspx" target="_blank">Movimientos por Remoci�n en Masa</a><br><br>
    	<a id="a1" href="http://agata.ingeominas.gov.co:9090/SismicidadHistorica/" target="_blank">Sismicidad Hist�rica de Colombia</a> <br><br>
    -->
    
     <div id="Geoamenazas" style=" width: 210px"></div>
    </div> 
    
     <h3>Gesti�n de Informaci�n</h3>  
    <div style="padding: 0.3em ; font-size: 0.8em">
       <!--
        <a id="a1" href="http://srvags.sgc.gov.co/Flexviewer/Estado_Cartografia_Geologica/" target="_blank">Estado Cartogr�fia Geol�gica</a><br><br>     	
    	<a id="a1" href="http://aplicaciones1.sgc.gov.co/sicat/html/ConsultaBasica.aspx" target="_blank">SICAT</a> 
    	-->
    	
    	<div id="Informacion" style=" width: 210px">   	
    	</div>     
    </div>  
        
</div>  
     
    
     