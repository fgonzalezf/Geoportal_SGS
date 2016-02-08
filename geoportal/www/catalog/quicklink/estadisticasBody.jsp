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
        	 
        	 
        	       	 
         },
        
     });
 
 }); 
 
 </script>
 
 <div id="tbllocal"></div>