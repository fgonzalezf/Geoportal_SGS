<% // quicklinkBody.jsp - Links page (JSF body) %>
 <script type="text/javascript">
 $(function() {
     $('#tbllocal').puidatatable({
         caption: 'Estadisticas Basicas Geoportal',
         paginator: {
             rows: 10
         },
         columns: [
             {field:'Nombre', headerText: 'Nombre', sortable:true},
             {field:'Descripcion', headerText: 'Periodo', sortable:true},
             {field:'Archivo', headerText: 'Archivo', sortable:true},
     
         ],
         datasource: [
             {'Nombre':'Estadísticas','Descripcion': "Junio 2015", 'Archivo':'Estadística Junio Portal Geográfico Institucional.pdf'},
             {'Nombre':'Estadísticas','Descripcion': "Julio 2015", 'Archivo':'Estadística Julio Portal Geográfico Institucional.pdf'},
             {'Nombre':'Estadísticas','Descripcion': "Agosto 2015", 'Archivo':'Estadística Agosto Portal Geográfico Institucional.pdf'},
             {'Nombre':'Estadísticas','Descripcion': "Septiembre 2015", 'Archivo':'Estadística Septiembre Portal Geográfico Institucional.pdf'},
             {'Nombre':'Estadísticas','Descripcion': "Octubre 2015", 'Archivo':'Estadística Octubre Portal Geográfico Institucional.pdf'},
             {'Nombre':'Estadísticas','Descripcion': "Noviembre 2015", 'Archivo':'Estadística Noviembre Portal Geográfico Institucional.pdf'},
	     	 {'Nombre':'Estadísticas','Descripcion': "Diciembre 2015", 'Archivo':'Estadística Diciembre Portal Geográfico Institucional.pdf'},
	     	 {'Nombre':'Estadísticas','Descripcion': "Enero 2016", 'Archivo':'Estadistica Enero Portal GeograficoInstitucional 2016.pdf'},
	     	 {'Nombre':'Estadísticas','Descripcion': "Febrero 2016", 'Archivo':'Estadistica Febrero Portal GeograficoInstitucional 2016.pdf'},
	     	 {'Nombre':'Estadísticas','Descripcion': "Marzo 2016", 'Archivo':'Estadistica Marzo Portal GeograficoInstitucional 2016.pdf'},
	     	 {'Nombre':'Estadísticas','Descripcion': "Abril 2016", 'Archivo':'Estadistica Abril Portal GeograficoInstitucional 2016.pdf'},
			 {'Nombre':'Estadísticas','Descripcion': "Mayo 2016", 'Archivo':'Estadistica Mayo Portal GeograficoInstitucional 2016.pdf'},
			 {'Nombre':'Estadísticas','Descripcion': "Junio 2016", 'Archivo':'Estadistica Junio Portal GeograficoInstitucional 2016.pdf'},
			 {'Nombre':'Estadísticas','Descripcion': "Julio 2016", 'Archivo':'Estadistica Julio Portal GeograficoInstitucional_2016.pdf'},
	     	 {'Nombre':'Estadísticas','Descripcion': "Agosto 2016", 'Archivo':'Estadistica Agosto Portal Geografico Institucional_2016.pdf'},
			 {'Nombre':'Estadísticas','Descripcion': "Septiembre 2016", 'Archivo':'Estadistica Septiembre Portal Geografico Institucional_2016.pdf'},
			 {'Nombre':'Estadísticas','Descripcion': "Octubre 2016", 'Archivo':'Estadistica Octubre Portal Geografico Institucional_2016.pdf'},
			 {'Nombre':'Estadísticas','Descripcion': "Noviembre 2016", 'Archivo':'Estadistica Noviembre Portal Geografico Institucional_2016.pdf'},
			
			
             
	     	
         ],
         selectionMode: 'single',
         rowSelect: function(event, data) {
        	 if (data.Descripcion == 'Junio 2015')
    		 {
    		 	 window.open('http://srvags.sgc.gov.co/Archivos_Geoportal/Estadisticas/EstadisticaJunioPortalGeograficoInstitucional.pdf');
    		 }
        	 else if (data.Descripcion == 'Julio 2015')
             {
        		 window.open('http://srvags.sgc.gov.co/Archivos_Geoportal/Estadisticas/EstadisticaJulioPortalGeograficoInstitucional.pdf');
             }
        	 else if (data.Descripcion == 'Agosto 2015')
             {
        		 window.open('http://srvags.sgc.gov.co/Archivos_Geoportal/Estadisticas/EstadisticaAgostoPortalGeograficoInstitucional.pdf');
             }
        	 else if (data.Descripcion == 'Septiembre 2015')
             {
        		 window.open('http://srvags.sgc.gov.co/Archivos_Geoportal/Estadisticas/EstadisticaSeptiembrePortalGeograficoInstitucional.pdf');
             }
        	 else if (data.Descripcion == 'Octubre 2015')
             {
        		 window.open('http://srvags.sgc.gov.co/Archivos_Geoportal/Estadisticas/EstadisticaOctubrePortalGeograficoInstitucional.pdf');
             }
              else if (data.Descripcion == 'Noviembre 2015')
             {
        		 window.open('http://srvags.sgc.gov.co/Archivos_Geoportal/Estadisticas/EstadisticaNoviembrePortalGeograficoInstitucional.pdf');
             }
              else if (data.Descripcion == 'Diciembre 2015')
             {
        		 window.open('http://srvags.sgc.gov.co/Archivos_Geoportal/Estadisticas/EstadisticaDiciembrePortalGeograficoInstitucional.pdf');
             }
              else if (data.Descripcion == 'Enero 2016')
              {
         		 window.open('http://srvags.sgc.gov.co/Archivos_Geoportal/Estadisticas/EstadisticaEneroPortalGeograficoInstitucional_2016.pdf');
              }
              else if (data.Descripcion == 'Febrero 2016')
              {
         		 window.open('http://srvags.sgc.gov.co/Archivos_Geoportal/Estadisticas/EstadisticaFebreroPortalGeograficoInstitucional_2016.pdf');
              }
              else if (data.Descripcion == 'Marzo 2016')
              {
         		 window.open('http://srvags.sgc.gov.co/Archivos_Geoportal/Estadisticas/EstadisticaMarzoPortalGeograficoInstitucional_2016.pdf');
              }
              else if (data.Descripcion == 'Abril 2016')
              {
         		 window.open('http://srvags.sgc.gov.co/Archivos_Geoportal/Estadisticas/EstadisticaAbrilPortalGeograficoInstitucional_2016.pdf');
              }
			  else if (data.Descripcion == 'Mayo 2016')
              {
         		 window.open('http://srvags.sgc.gov.co/Archivos_Geoportal/Estadisticas/EstadisticaMayoPortalGeograficoInstitucional_2016.pdf');
              }
			  else if (data.Descripcion == 'Junio 2016')
              {
         		 window.open('http://srvags.sgc.gov.co/Archivos_Geoportal/Estadisticas/EstadisticaJunioPortalGeograficoInstitucional_2016.pdf');
              }
			  else if (data.Descripcion == 'Julio 2016')
              {
         		 window.open('http://srvags.sgc.gov.co/Archivos_Geoportal/Estadisticas/EstadisticaJulioPortalGeograficoInstitucional_2016.pdf');
              }
              else if (data.Descripcion == 'Agosto 2016')
              {
         		 window.open('http://srvags.sgc.gov.co/Archivos_Geoportal/Estadisticas/EstadisticaAgostoPortalGeograficoInstitucional_2016.pdf');
              
              }
			  else if (data.Descripcion == 'Septiembre 2016')
              {
         		 window.open('http://srvags.sgc.gov.co/Archivos_Geoportal/Estadisticas/EstadisticaSeptiembrePortalGeograficoInstitucional_2016.pdf');
              
              }
			  else if (data.Descripcion == 'Octubre 2016')
              {
         		 window.open('http://srvags.sgc.gov.co/Archivos_Geoportal/Estadisticas/Estadistica_Octubre_Portal_Geografico_Institucional_2016.pdf');
              
              }
			  else if (data.Descripcion == 'Noviembre 2016')
              {
         		 window.open('http://srvags.sgc.gov.co/Archivos_Geoportal/Estadisticas/Estadistica_Noviembre_Portal_Geografico_Institucional_2016.pdf');
              
              }
			  
			  
        	 
         },
        
     });
 
 }); 
 
 </script>
 
 <div id="tbllocal"></div>