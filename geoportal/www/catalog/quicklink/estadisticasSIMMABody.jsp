<% // quicklinkBody.jsp - Links page (JSF body) %>
 <script type="text/javascript">
 $(function() {
     $('#tbllocal').puidatatable({
         caption: 'Estadisticas Sistema Información Movimientos En Masa',
         paginator: {
             rows: 10
         },
         columns: [
             {field:'Nombre', headerText: 'Nombre', sortable:true},
             {field:'Descripcion', headerText: 'Periodo', sortable:true},
             {field:'Archivo', headerText: 'Archivo', sortable:true},
     
         ],
             
        	 
        	 
        	 
        	 
        	 
         datasource: [
             {'Nombre':'Informe resumen','Descripcion': "Noviembre 2015 Abril 2016", 'Archivo':'Informe resumen.pdf'},
             {'Nombre':'Sesiones Desktop','Descripcion': "Noviembre 2015 Abril 2016", 'Archivo':'Sesiones desktop Movil Sistema Operativo.pdf'},
             {'Nombre':'Sesiones General','Descripcion': "Noviembre 2015 Abril 2016", 'Archivo':'Sesiones estadisticas generales.pdf'},
             {'Nombre':'Sesiones Navegador','Descripcion': "Noviembre 2015 Abril 2016", 'Archivo':'Sesiones por Navegador sitema operativo.pdf'},
             {'Nombre':'Visitas','Descripcion': "Noviembre 2015 Abril 2016", 'Archivo':'Visitas.pdf'},
             {'Nombre':'Visitas por Ubicación','Descripcion': "Noviembre 2015 Abril 2016", 'Archivo':'Visitas por ubicación.pdf'},
	     	 
             
	     	
         ],
         selectionMode: 'single',
         rowSelect: function(event, data) {
        	 if (data.Nombre == 'Informe resumen')
    		 {
    		 	 window.open('http://srvags.sgc.gov.co/Archivos_Geoportal/Estadisticas/EstadisticasSIMMA/Informe_resumen_1.pdf');
    		 }
        	 else if (data.Nombre == 'Sesiones Desktop')
             {
        		 window.open('http://srvags.sgc.gov.co/Archivos_Geoportal/Estadisticas/EstadisticasSIMMA/sesiones_desktop_movil_sistema_operativo_1.pdf');
             }
        	 else if (data.Nombre == 'Sesiones General')
             {
        		 window.open('http://srvags.sgc.gov.co/Archivos_Geoportal/Estadisticas/EstadisticasSIMMA/sesiones_estadisticas_generales_1.pdf');
             }
        	 else if (data.Nombre == 'Sesiones Navegador')
             {
        		 window.open('http://srvags.sgc.gov.co/Archivos_Geoportal/Estadisticas/EstadisticasSIMMA/sesiones_por_navegador_y_sistema_operativo_1.pdf');
             }
        	 else if (data.Nombre == 'Visitas')
             {
        		 window.open('http://srvags.sgc.gov.co/Archivos_Geoportal/Estadisticas/EstadisticasSIMMA/visitas_2016_1.pdf');
             }
              else if (data.Nombre == 'Visitas por Ubicación')
             {
        		 window.open('http://srvags.sgc.gov.co/Archivos_Geoportal/Estadisticas/EstadisticasSIMMA/visitas_por_ubicacion_1.pdf');
             }
              
        	 
         },
        
     });
 
 }); 
 
 </script>
 
 <div id="tbllocal"></div>