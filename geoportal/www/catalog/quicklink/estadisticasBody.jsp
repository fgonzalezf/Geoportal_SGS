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
             {field:'Descripción', headerText: 'Periodo', sortable:true},
             {field:'Archivo', headerText: 'Archivo', sortable:true},
     
         ],
         datasource: [
             {'Nombre':'Estadisticas Sesiones','Descripción': "Junio 2015", 'Archivo':'Sesiones_Junio.pdf'},
             {'Nombre':'Estadisticas Pais','Descripción': "Junio 2015", 'Archivo':'Paises_Junio.pdf'},
             {'Nombre':'Estadisticas Paginas','Descripción': "Junio 2015", 'Archivo':'Paginas_Junio.pdf'},
             {'Nombre':'Estadisticas Ciudad','Descripción': "Junio 2015", 'Archivo':'Ciudades_Junio.pdf'},
             
             
         ],
         selectionMode: 'single',
         rowSelect: function(event, data) {
        	 if (data.Nombre == 'Estadisticas Sesiones')
    		 {
    		 	window.open('http://srvags.sgc.gov.co/Archivos_Geoportal/Estadisticas/sesiones_Junio.pdf');
    		 }
        	 else if (data.Nombre == 'Estadisticas Pais')
             {
        		 window.open('http://srvags.sgc.gov.co/Archivos_Geoportal/Estadisticas/paises_Junio.pdf');
        	 }
        	 else if (data.Nombre == 'Estadisticas Paginas')
             {
        		 window.open('http://srvags.sgc.gov.co/Archivos_Geoportal/Estadisticas/paginas_Junio.pdf');
        	 }
        	 else if (data.Nombre == 'Estadisticas Ciudad')
             {
        		 window.open('http://srvags.sgc.gov.co/Archivos_Geoportal/Estadisticas/ciudad_Junio.pdf');
        	 }
         },
        
     });
 
 }); 
 
 </script>
 
 <div id="tbllocal"></div>