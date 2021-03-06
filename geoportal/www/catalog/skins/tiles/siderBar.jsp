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
                            {label:'Descripción', data:'http://hidrotermales.sgc.gov.co/'},
		                    {label:'Visor Geográfico',data: 'http://hidrotermales.sgc.gov.co/invtermales/'}, 		                    
		                    ]  
		         },
	           
	            {  
	                label: '<B>Atlas Geológico 2007</B>',  
	                data: '',  
	                children:[
	                    
	                    {label:'Visor Geográfico',data: 'http://srvags.sgc.gov.co/Flexviewer/Atlas_Geologico_Colombia/'},  
	                    ]  
	            },
	            {  
	                label: '<B>Atlas Geológico 2015</B>',  
	                data: '',  
	                children:[
	                    
	                    {label:'Visor Geográfico',data: 'http://srvags.sgc.gov.co/Flexviewer/Atlas_Geologico_Colombia_2015/'},  
	                    {label:'Visor Geográfico (JavaScript)',data: 'http://srvags.sgc.gov.co/JSViewer/Atlas_Geologico_colombiano_2015/'},
	                    ]  
	            },
	           
	            {  
	                label: '<B>Datos de Métodos <br> Geofísicos</B>',  
	                data: '',  
	                children:[  
                        {label:'Visor Geográfico',data: 'http://srvags.sgc.gov.co/Flexviewer/Geofisica/'}  
	                    ]  
	            },
	            {  
	                label: '<B>Hidrogeologia</B>',  
	                data: '',  
	                children:[  
                        {label:'Visor Geográfico Guajira',data: 'http://arcg.is/2nMujxV'},  
						{label:'Visor Geográfico Quindío',data: 'http://sgcolombiano.maps.arcgis.com/apps/MapSeries/index.html?appid=4b1cb9f0af13411cbf46704972267342'},  
                        {label:'Información Para Descarga',data: '/catalog/quicklink/hidrogeologia.page'}, 
						
	                    ]  
	            },
	            {  
	                label: '<B>Información <br> Geomorfodinámica <br> de los Litorales Colombianos</B>',  
	                data: '',  
	                children:[  
                        
						{label:'Descripción', data:'/geoportalsgc/catalog/PDF/GeomorfodinamicaCostera.pdf'}, 
	                    {label:'Visor Geográfico',data: 'http://srvags.sgc.gov.co/Flexviewer/Geomorfodinamica/'}  
	                    ]  
	            },
	            
	            
	            {  
	                label: '<B>Mapa Geológico <br> de Colombia 2007</B>',  
	                data: '',  
	                children:[  
					    {label:'Descripción', data:'/geoportalsgc/catalog/PDF/Mapa_Geologico_Colombia.pdf'}, 
	                    {label:'Visor Geográfico',data: 'http://srvags.sgc.gov.co/Flexviewer/Mapa_Geologico_Colombia/'}
	                    
	                    ]  
	            },
	            
	            {  
	                label: '<B>Mapa Geológico <br> de Colombia 2015</B>',  
	                data: '',  
	                children:[  
	                    {label:'Visor Geográfico',data: 'http://srvags.sgc.gov.co/Flexviewer/Mapa_Geologico_Colombia_2015/'},
	                    {label:'Visor Geográfico (JavaScript)',data: 'http://srvags.sgc.gov.co/JSViewer/Mapa_Geologico_colombiano_2015/'}
	                    ]  
	            },
	            {  
	                label: '<B>Programa de Exploración <br> Aguas Subterráneas</B>',  
	                data: '',  
	                children:[  
					    
	                    {label:'Visor Geográfico',data: 'http://geoportal.sgc.gov.co/Flexviewer/PEXAS/'}  
	                    ]  
	            }
	            
	        ],  
	        nodeSelect: function(event, ui) { 
	        	
	        	if (ui.data.indexOf("http://") !=-1){
	        		switch (ui.data) {
	        	    case "http://srvags.sgc.gov.co/Flexviewer/Atlas_Geologico_Colombia/":
	        	    	urlf='${pageContext.request.contextPath}'+"/catalog/main/contador.jsp";
	        	    	var valor="1";
	        	    	$.ajax({ //Comunicación jQuery hacia JSP
	        	    		
	        	          	type: "POST",
	        	            url:urlf,
	        	            data: "valor="+valor,
	        	            
	        	         });
	        	        break;
	        	    
	        	    case "http://srvags.sgc.gov.co/Flexviewer/Geofisica/":
	        	    	urlf='${pageContext.request.contextPath}'+"/catalog/main/contador.jsp";
	        	    	var valor="10";
	        	    	$.ajax({ //Comunicación jQuery hacia JSP
	        	    		
	        	          	type: "POST",
	        	            url:urlf,
	        	            data: "valor="+valor,
	        	            
	        	         });
	        	        break;
	        	    case "http://srvags.sgc.gov.co/Flexviewer/Geomorfodinamica/":
	        	    	urlf='${pageContext.request.contextPath}'+"/catalog/main/contador.jsp";
	        	    	var valor="2";
	        	    	$.ajax({ //Comunicación jQuery hacia JSP
	        	    		
	        	          	type: "POST",
	        	            url:urlf,
	        	            data: "valor="+valor,
	        	            
	        	         });
	        	        break;
	        	    case "http://srvags.sgc.gov.co/Flexviewer/Mapa_Geologico_Colombia/":
	        	    	urlf='${pageContext.request.contextPath}'+"/catalog/main/contador.jsp";
	        	    	var valor="5";
	        	    	$.ajax({ //Comunicación jQuery hacia JSP
	        	    		
	        	          	type: "POST",
	        	            url:urlf,
	        	            data: "valor="+valor,
	        	            
	        	         });
	        	        break;
	        	    case "http://geoportal.sgc.gov.co/Flexviewer/PEXAS/":
	        	    	urlf='${pageContext.request.contextPath}'+"/catalog/main/contador.jsp";
	        	    	var valor="8";
	        	    	$.ajax({ //Comunicación jQuery hacia JSP
	        	    		
	        	          	type: "POST",
	        	            url:urlf,
	        	            data: "valor="+valor,
	        	            
	        	         });
	        	        break;
	        	    
	        		}
	        	window.open(ui.data);
				return false;
	        	}
	        	else if (ui.data.indexOf("hidrogeologia.page") !=-1 ){
	        		switch (ui.data) {
	        	    
	        	    case "/catalog/quicklink/hidrogeologia.page":
	        	    	var urlf2='${pageContext.request.contextPath}'+ui.data;
	        	    	window.location.replace(urlf2);
	        	        break;

	        		}
	        		
	       
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
		                label: '<B>Mapa Anomalia <br> Geoquímica</B>',  
		                data: '',  
		                children:[ 
							{label:'Descripción', data:'/geoportalsgc/catalog/PDF/MAPAANOMALIASGEOQUIMICAS.pdf'}, 
		                    {label:'Visor Geográfico',data: 'http://srvags.sgc.gov.co/Flexviewer/Anomalia_Geoquimica/'},  
		                    ]  
		            },
		            {  
		                label: '<B>Información <br>Puntos de <br> Muestreo Geoquímico</B>',  
		                data: '',  
		                children:[  
		                    {label:'Visor Geográfico',data: 'http://aplicaciones7.sgc.gov.co/facetas/'}  
		                    ]  
		            },
		            {  
		                label: '<B>Zonas de <br> Potencial Geoquímico</B>',  
		                data: '',  
		                children:[  
							{label:'Descripción', data:'/geoportalsgc/catalog/PDF/MAPAPOTENCIAGEOQUIMICOCOLOMBIA.pdf'}, 
		                    {label:'Visor Geográfico',data:'http://srvags.sgc.gov.co/Flexviewer/Zonas_Potencial_Integral/'}  
		                    ]  
		            },
		            **/
		            {  
		                label: '<B>Anomalías Geofísicas <br> de Colombia</B>',  
		                data: '',  
		                children:[  
							{label:'Descripción', data:'http://srvags.sgc.gov.co/Archivos_Geoportal/Recursos_Minerales/Descripciones/RESUMEN_MAGC_2016_GEOPORTAL.pdf'},  
		                    {label:'Visor Geográfico',data: 'http://srvags.sgc.gov.co/Jsviewer/Mapa_de_Anomalías_Geofisicas_de_Colombia/'},  
		                    ]  
		            },
		            {  
		                label: '<B>Atlas Geoquímico <br> de Colombia</B>',  
		                data: '',  
		                children:[ 
							{label:'Descripción', data:'http://srvags.sgc.gov.co/Archivos_Geoportal/Recursos_Minerales/Descripciones/ATLAS_GEOQUIMICO_DE_COLOMBIA_2016_GEOPORTAL.pdf'}, 						
							{label:'Descarga de Información', data:'/catalog/quicklink/atlasGeoquimico.page'},    
		                    ]  
		            },
		            {  
		                label: '<B>Mapa Carbonífero <br> de Colombia</B>',  
		                data: '',  
		                children:[  
							{label:'Descripción', data:'http://geoportal.sgc.gov.co/geoportalsgc/catalog/PDF/MapaCarboniferodeColombia.pdf'},  
		                    {label:'Visor Geográfico',data: 'http://srvags.sgc.gov.co/Flexviewer/Mapa_Potencial_Carbonifero_Colombia/'},  
		                    ]  
		            },
		            {  
		                label: '<B>Mapa Metalogénico <br> de Colombia</B>',  
		                data: '',  
		                children:[ 
							{label:'Descripción', data:'http://srvags.sgc.gov.co/Archivos_Geoportal/Recursos_Minerales/Descripciones/MAPA_METALOGENICO_DE_COLOMBIA_VERSION_2016_GEOPORTAL.pdf'},
							/*{label:'Descarga PDF', data:'/geoportalsgc/Archivos_Geoportal/Recursos_Minerales/Metalogenico/MMC_2017_may.pdf'}, */ 
		                    {label:'Visor Geográfico',data: 'http://srvags.sgc.gov.co/JSViewer/MapaMetalogenico2016/'},  
		                    ]  
		            },
		            
		            
		        ],  
                    nodeSelect: function(event, ui) { 
		        	
		        	if (ui.data.indexOf("http://") !=-1){
		        		switch (ui.data) {
		        	    case "http://srvags.sgc.gov.co/Flexviewer/Mapa_Potencial_Carbonifero_Colombia/":
		        	    	urlf='${pageContext.request.contextPath}'+"/catalog/main/contador.jsp";
		        	    	var valor="6";
		        	    	$.ajax({ //Comunicación jQuery hacia JSP
		        	    		
		        	          	type: "POST",
		        	            url:urlf,
		        	            data: "valor="+valor,
		        	            
		        	         });
		        	        break;
		        		}
		        	window.open(ui.data);
					return false;
		        	}
		        	
		        	else if (ui.data.indexOf("atlasGeoquimico") !=-1 ){
		        		switch (ui.data) {
		        	    
		        	    case "/catalog/quicklink/atlasGeoquimico.page":
		        	    	var urlf2='${pageContext.request.contextPath}'+ui.data;
		        	    	window.location.replace(urlf2);
		        	        break;

		        		}
		        		
		       
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
					    label: '<B>Amenaza Sísmica</B>',  
					    data: '',  
					    children:[  
							 {label:'Nueva evaluación',data: 'http://srvags.sgc.gov.co/JSViewer/AmenazaSismicaNuevaEvaluacion/'},
					        {label:'Otros Mapas',data: 'http://srvags.sgc.gov.co/JSViewer/Amenaza_Sismica/'},  
							  
					        ]  
					},
		             
		                
					{  
						 label: '<B>Estaciones GNSS del SGC 2016 </B>',  
						 data: '',  
						 children:[  
								 
						        {label:'Visor Geográfico',data: 'http://geoportal.sgc.gov.co/Flexviewer/Estaciones_GNSS/'},  
						        ]  
					},
		           
		            /*{  
		                label: '<B>Mapa de Amenaza <br> Sísmica</B>',  
		                data: '',  
		                children:[  
							{label:'Descripción', data:'/geoportalsgc/catalog/PDF/MapaNacionalAmenazaSismica.pdf'},   
		                    {label:'Visor Geográfico',data: 'http://srvags.sgc.gov.co/Flexviewer/Amenaza_Sismica/'},  
		                    ]  
		            },*/
		            {  
		                label: '<B>Mapa de Amenaza por <br> Movimientos en Masa </B>',  
		                data: '',  
		                children:[  
							 
		                    {label:'Visor Geográfico',data: 'http://geoportal.sgc.gov.co/Flexviewer/Amenaza_Movimiento_Remocion_Masa/'}, 
		                    {label:'Imágenes de Amenaza', data:'/catalog/quicklink/amenazaMasa.page'},     
		                    ]  
		            },
		            {  
		                label: '<B>Mapa de Amenaza Volcánica </B>',  
		                data: '',  
		                children:[  
							 
		                    {label:'Visor Geográfico',data: 'http://srvags.sgc.gov.co/JSViewer/Amenaza_volcanica_JS/'},  
		                    ]  
		            },
		            {  
		                label: '<B>Mapa de Intensidad <br> Instrumental</B>',  
		                data: '',  
		                children:[  
							{label:'Descripción', data:'/geoportalsgc/catalog/PDF/Mapasdeintensidadinstrumental.pdf'},   
		                    {label:'Enlace a pagina web',data: 'http://seisan.sgc.gov.co/RSNC/shakemap/sc/shake/index.html'},  
		                    ]  
		            },
		            
		            
		            /*{  
		                label: '<B>Mapa de Zonificación Sismica <br> Según la Intensidad Esperada</B>',  
		                data: '',  
		                children:[  
							  
		                    {label:'Visor Geográfico',data: 'http://srvags.sgc.gov.co/Flexviewer/Zonificacion_Sismica_Intensidades_Esperaradas/'},  
		                    ]  
		            },*/
		            
		            {  
		                label: '<B>Sistema de Información <br> de Movimientos en Masa</B>',  
		                data: '',  
		                children:[  
							
		                    {label:'Enlace a pagina web',data: 'http://simma.sgc.gov.co/'},
		                    {label:'Estadísticas', data:'/catalog/quicklink/estadisticasSIMMA.page'},
		                    ]  
		            },
		            
		        
		            {  
		                label: '<B>Sismicidad Histórica <br> de Colombia</B>',  
		                data: '',  
		                children:[ 
                            {label:'Descripción', data:'/geoportalsgc/catalog/PDF/SismicidadHistoricadeColombia.pdf'},   
		                    {label:'Enlace a pagina web',data:'http://sish.sgc.gov.co/visor/'}  
		                    ]  
		            }
		            
		            
		        ],  
		        nodeSelect: function(event, ui) { 
		        	
		        	if (ui.data.indexOf("http://") !=-1){
		        		switch (ui.data) {
		        	    case "http://geoportal.sgc.gov.co/Flexviewer/Estaciones_GNSS/":
		        	    	urlf='${pageContext.request.contextPath}'+"/catalog/main/contador.jsp";
		        	    	var valor="9";
		        	    	$.ajax({ //Comunicación jQuery hacia JSP
		        	    		
		        	          	type: "POST",
		        	            url:urlf,
		        	            data: "valor="+valor,
		        	            
		        	         });
		        	        break;
		        	    case "http://srvags.sgc.gov.co/Flexviewer/Amenaza_Sismica/":
		        	    	urlf='${pageContext.request.contextPath}'+"/catalog/main/contador.jsp";
		        	    	var valor="4";
		        	    	$.ajax({ //Comunicación jQuery hacia JSP
		        	    		
		        	          	type: "POST",
		        	            url:urlf,
		        	            data: "valor="+valor,
		        	            
		        	         });
		        	        break;
		        	    case "http://geoportal.sgc.gov.co/Flexviewer/Amenaza_Movimiento_Remocion_Masa/":
		        	    	urlf='${pageContext.request.contextPath}'+"/catalog/main/contador.jsp";
		        	    	var valor="7";
		        	    	$.ajax({ //Comunicación jQuery hacia JSP
		        	    		
		        	          	type: "POST",
		        	            url:urlf,
		        	            data: "valor="+valor,
		        	            
		        	         });
		        	        break;
		        	    
		        		}
		        	window.open(ui.data);
					return false;
		        	}
		        	else if (ui.data.indexOf("amenazaMasa") !=-1 ){
		        		switch (ui.data) {
		        	    
		        	    case "/catalog/quicklink/amenazaMasa.page":
		        	    	var urlf2='${pageContext.request.contextPath}'+ui.data;
		        	    	window.location.replace(urlf2);
		        	        break;

		        		}
		        		
		       
		        	}
		        	else if (ui.data.indexOf("estadisticasSIMMA") !=-1 ){
		        		switch (ui.data) {
		        	    
		        	    case "/catalog/quicklink/estadisticasSIMMA.page":
		        	    	var urlf2='${pageContext.request.contextPath}'+ui.data;
		        	    	window.location.replace(urlf2);
		        	        break;

		        		}
		        		
		       
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
							label: '<B>Actividades Desarrolladas</B>',  
							data: '',  
							children:[  
								{label:'Actividades', data:'/catalog/quicklink/actividadesDesarrolladas.page'},     
								 ]  
						},
		                
					{  
    							label: '<B>Estadísticas Internas <br> Geoportal</B>',  
    							data: '',  
    							children:[  
									{label:'Estadisticas', data:'/catalog/quicklink/estadisticas.page'},     
       							 ]  
					},
		           
		            {  
		                label: '<B>Estado Cartografía <br> Geológica</B>',  
		                data: '',  
		                children:[  
							{label:'Descripción', data:'/catalog/PDF/EstadoCartografia.pdf'},   
		                    {label:'Visor Geográfico',data: 'http://srvags.sgc.gov.co/Flexviewer/Estado_Cartografia_Geologica/'},  
		                    ]  
		            },
		            {  
		                label: '<B>Inventario Muestras Litoteca</B>',  
		                data: '',  
		                children:[  
		                    {label:'Visor Geográfico',data: 'http://srvags.sgc.gov.co/Flexviewer/Mapa_Inventario_Muestras_Litoteca/'},
		                    {label:'Visor Geográfico (JavaScript)',data: 'http://srvags.sgc.gov.co/JSViewer/Inventario_Muestras_Litoteca/'},
		                    
		                    ]  
		            },
		            
		            {  
		                label: '<B>Metadato Geográfico</B>',  
		                data: '',  
		                children:[    
		                    {label:'Visor Geográfico',data: 'http://srvags.sgc.gov.co/Flexviewer/Metadato_Geografico/'},
		                    {label:'Visor Geográfico (JavaScript)',data: 'http://srvags.sgc.gov.co/JSViewer/Metadato_Geografico/'},
		                    ]  
		            },
		            {  
		                label: '<B>SICAT</B>',  
		                data: '',  
		                children:[    
		                    {label:'Enlace a pagina Web',data: 'http://aplicaciones1.sgc.gov.co/sicat/html/ConsultaBasica.aspx'}, 
		                    {label:'Registro de activos de <br> información',data: 'http://srvags.sgc.gov.co/Archivos_Geoportal/Politicas/RegistrodeactivosSGC.xlsx'},
		                    ]  
		            },
		            {  
		                label: '<B>Políticas y Manuales</B>',  
		                data: '',  
		                children:[  
						    {label:'Manuales',data:'/catalog/quicklink/manualesPoliticas.page' },
						    {label:'Políticas',data:'/catalog/quicklink/Politicas.page' },
						   
		                                
		                    ]  
		            },
		            {  
		                label: '<B>Presentaciones</B>',  
		                data: '',  
		                children:[  
		                          {label:'Presentaciones IGME',data:'/catalog/quicklink/Presentaciones.page' },    
		                          {label:'Presentaciones Dia SIG 2015',data:'/catalog/quicklink/PresentacionesDiaSIG.page' },
		                    ]  
		            },
		            {  
		                label: '<B>Productos Geocientíficos</B>',  
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
			        		
			       
			        	}
						else if(ui.data.indexOf("/PDF/") !=-1)  {
							switch (ui.data) {
								case "/catalog/PDF/PRODUCTOS_GEOCIENTIFICOS_SGC_SICAT.pdf":
			        	    	var urlf2='${pageContext.request.contextPath}'+ui.data;
			        	    	window.open(urlf2,"_blank");
			        	        break;
							case "/catalog/PDF/EstadoCartografia.pdf":
			        	    	var urlf2='${pageContext.request.contextPath}'+ui.data;
			        	    	window.open(urlf2,"_blank");
			        	        break;
							}
							
						}
		        	else if(ui.data.indexOf("http://") !=-1)  {
		        		
		        		window.open(ui.data);
		        	}
		        	else if(ui.data!="")  {
		        		
		        		var urlf='${pageContext.request.contextPath}'+ui.data;
		        		window.location.replace(urlf);
		        	}
		        	else
		        	{
		        		 $('#Informacion').puitree('expandNode',ui.node);
		        	}
		        		
		        	}
	        });
	        
	        $('#BIP').puitree({  
		        animate: true,  
		        selectionMode: 'single',  
		        nodes: [  
		                
					{  
    					label: '<B>EPIS</B>', 
						data: '',
						/*
    				    data: 'http://www2.sgc.gov.co/EPIS/Epis2.aspx', 
                        */						
    							
					},
									
					/*{  
						label: '<B>Visor Geográfico EPIS</B>',  
						data: 'http://srvagspru.sgc.gov.co/JSViewer/EPIS_V2/',
						
					},*/
					
		           
					
		           
		            
		        ],  
					nodeSelect: function(event, ui) { 
		        	
						if (ui.data.indexOf("epis") !=-1 || ui.data.indexOf("litoteca") !=-1|| ui.data.indexOf("cintoteca") !=-1){
			        		switch (ui.data) {
			        	    case "/catalog/quicklink/epis.page":
			        	    	var urlf2='${pageContext.request.contextPath}'+ui.data;
			        	    	window.location.replace(urlf2);
			        	        break;
			        	    case "/catalog/quicklink/litoteca.page":
			        	    	var urlf2='${pageContext.request.contextPath}'+ui.data;
			        	    	window.location.replace(urlf2);
			        	        break;
			        	    case "/catalog/quicklink/cintoteca.page":
			        	    	var urlf2='${pageContext.request.contextPath}'+ui.data;
			        	    	window.location.replace(urlf2);
			        	        break;
			        	    case "/catalog/quicklink/cintoteca.page":
			        	    	var urlf2='${pageContext.request.contextPath}'+ui.data;
			        	    	window.location.replace(urlf2);
			        	        break;
			        	    
							
			        		}
			        		
			       
			        	}
						else if(ui.data.indexOf("/PDF/") !=-1)  {
							switch (ui.data) {
								case "/catalog/PDF/PRODUCTOS_GEOCIENTIFICOS_SGC_SICAT.pdf":
			        	    	var urlf2='${pageContext.request.contextPath}'+ui.data;
			        	    	window.open(urlf2,"_blank");
			        	        break;
							case "/catalog/PDF/EstadoCartografia.pdf":
			        	    	var urlf2='${pageContext.request.contextPath}'+ui.data;
			        	    	window.open(urlf2,"_blank");
			        	        break;
							}
							
						}
		        	else if(ui.data.indexOf("http://") !=-1||ui.data.indexOf("https://") !=-1)  {
		        		
		        		window.open(ui.data);
		        	}
		        	else if(ui.data!="")  {
		        		
		        		var urlf='${pageContext.request.contextPath}'+ui.data;
		        		window.location.replace(urlf);
		        	}
		        	else
		        	{
		        		 $('#Informacion').puitree('expandNode',ui.node);
		        	}
		        		
		        	}
	        });
	        
	        $('#Enlaces').puitree({  
		        animate: true,  
		        selectionMode: 'single',  
		        nodes: [  
		                
					{  
    							label: '<B>Geoportal MinMinas</B>',  
    							data: 'http://geoportalsme.minminas.gov.co/geoportalsme/web/inicio',  
    							
					},
					{  
						label: '<B>Geoportal UPME</B>',  
						data: 'http://sig.simec.gov.co/GeoPortal/Carrusel/Home',  
						
					},
					{  
						label: '<B>Geoportal ANH</B>',  
						data: 'http://geovisor.anh.gov.co/',  
						
					},
					{  
						label: '<B>Dirección General Maritima <br> (DIMAR)</B>',  
						data: 'https://cecoldo.dimar.mil.co/',  
						
					},
					{  
						label: '<B>Portal Geografico Nacional</B>',  
						data: ' http://www.icde.org.co/servicios/portal-geografico-nacional',  
						
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
			        		
			       
			        	}
						else if(ui.data.indexOf("/PDF/") !=-1)  {
							switch (ui.data) {
								case "/catalog/PDF/PRODUCTOS_GEOCIENTIFICOS_SGC_SICAT.pdf":
			        	    	var urlf2='${pageContext.request.contextPath}'+ui.data;
			        	    	window.open(urlf2,"_blank");
			        	        break;
							case "/catalog/PDF/EstadoCartografia.pdf":
			        	    	var urlf2='${pageContext.request.contextPath}'+ui.data;
			        	    	window.open(urlf2,"_blank");
			        	        break;
							}
							
						}
		        	else if(ui.data.indexOf("http://") !=-1||ui.data.indexOf("https://") !=-1)  {
		        		
		        		window.open(ui.data);
		        	}
		        	else if(ui.data!="")  {
		        		
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
         
<div id="multiple">  
    <h3>Geociencias Básicas</h3>  
    <div style="padding: 0.3em; font-size: 0.8em" >
    <!--  
        <a id="a1" href="http://srvags.sgc.gov.co/Flexviewer/Atlas_Geologico_Colombia/" target="_blank">Atlas Geológico</a><br><br>  
        <a id="a1" href="http://srvags.sgc.gov.co/Flexviewer/Geomorfodinamica/" target="_blank">Información Geomorfodinámica de los Litorales Colombianos</a><br><br>
        <a id="a1" href="http://srvags.sgc.gov.co/Flexviewer/Mapa_Geologico_Colombia/" target="_blank">Mapa Geológico de colombia</a>
     --> 
        <div id="Basicas" style=" width: 210px"></div>
    </div>  
  
    <h3>Recursos Minerales</h3>  
    <div style="padding: 0.3em ; font-size: 0.8em">
    <!--    
       <a id="a1" href="http://srvags.sgc.gov.co/Flexviewer/Anomalia_Geoquimica/" target="_blank">Mapa Anomalia Geoquímica</a><br><br> 
       <a id="a1" href="http://aplicaciones7.sgc.gov.co/facetas/" target="_blank">Puntos de Muestreo Geoquímico</a><br><br> 
       <a id="a1" href="http://srvags.sgc.gov.co/Flexviewer/Zonas_Potencial_Integral/" target="_blank">Zonas de Potencial Geoquímico</a>
    -->
       <div id="Minerales" style=" width: 210px"></div>
    </div>  
  
    <h3>Geoamenazas</h3>  
    <div style="padding: 0.3em ; font-size: 0.8em"> 
    <!-- 
    	<a id="a1" href="http://aplicaciones7.sgc.gov.co/MÁPA_NACIONAL_AMENAZA_SISMICA/default.aspx" target="_blank">Mapa de Amenaza Sísmica</a><br><br>
    	<a id="a1" href="http://zafiro.sgc.gov.co/simma/default.aspx" target="_blank">Movimientos por Remoción en Masa</a><br><br>
    	<a id="a1" href="http://agata.ingeominas.gov.co:9090/SismicidadHistorica/" target="_blank">Sismicidad Histórica de Colombia</a> <br><br>
    -->
    
     <div id="Geoamenazas" style=" width: 210px"></div>
    </div> 
    
     <h3>Gestión de Información</h3>  
    <div style="padding: 0.3em ; font-size: 0.8em">
       <!--
        <a id="a1" href="http://srvags.sgc.gov.co/Flexviewer/Estado_Cartografia_Geologica/" target="_blank">Estado Cartográfia Geológica</a><br><br>     	
    	<a id="a1" href="http://aplicaciones1.sgc.gov.co/sicat/html/ConsultaBasica.aspx" target="_blank">SICAT</a> 
    	-->
    	
    	<div id="Informacion" style=" width: 210px">   	
    	</div>     
    </div> 
    <h3>Información Petrolera</h3>  
    <div style="padding: 0.3em ; font-size: 0.8em">
       
    	
    	<div id="BIP" style=" width: 210px">   	
    	</div>     
    </div>  
    
     <h3>Enlaces Relacionados</h3>  
    <div style="padding: 0.3em ; font-size: 0.8em">
       
    	
    	<div id="Enlaces" style=" width: 210px">   	
    	</div>     
    </div>  
        
</div> 
<br>
<br>
<br>
<br>