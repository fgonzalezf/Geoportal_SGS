<% // quicklinkBody.jsp - Links page (JSF body) %>
 <script type="text/javascript">
 $(function() {
     $('#tbllocal').puidatatable({
         caption: 'Estadisticas Basicas Geoportal',
         paginator: {
             rows: 5
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
        	 
        	       	 
         },
        
     });
 
 }); 
 
 </script>
 
 <div id="tbllocal"></div>