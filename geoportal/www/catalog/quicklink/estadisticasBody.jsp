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
             {'Nombre':'Estad�sticas','Descripcion': "Junio 2015", 'Archivo':'Estad�stica Junio Portal Geogr�fico Institucional.pdf'},
             {'Nombre':'Estad�sticas','Descripcion': "Julio 2015", 'Archivo':'Estad�stica Julio Portal Geogr�fico Institucional.pdf'},
             {'Nombre':'Estad�sticas','Descripcion': "Agosto 2015", 'Archivo':'Estad�stica Agosto Portal Geogr�fico Institucional.pdf'},
             {'Nombre':'Estad�sticas','Descripcion': "Septiembre 2015", 'Archivo':'Estad�stica Septiembre Portal Geogr�fico Institucional.pdf'},
            
              
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