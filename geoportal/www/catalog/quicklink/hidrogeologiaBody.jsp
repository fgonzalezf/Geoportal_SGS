<% // quicklinkBody.jsp - Links page (JSF body) %>
 <script type="text/javascript">
 $(function() {
     $('#tbllocal').puidatatable({
         caption: 'Mapas de Hidrogeología del Departamento de La Guajira',
         paginator: {
             rows: 10
         },
         columns: [
             {field:'Nombre', headerText: 'Nombre', sortable:true},
        
             {field:'Archivo', headerText: 'Archivo', sortable:true},
     
         ],
         datasource: [
             {'Nombre':'Cortes Geoelectricos', 'Archivo':'CortesGeolelectricos.pdf'},
             {'Nombre':'Hidrógeologia', 'Archivo':'HidrogeologicoCompleto.pdf'},
             {'Nombre':'Inventario Puntos de Agua', 'Archivo':'InventarioPuntosAgua.pdf'},
             {'Nombre':'Mapa Geológico', 'Archivo':'MapaGeologicoHidrologia.pdf'},
             {'Nombre':'Sondeos Electricos Verticales 1973', 'Archivo':'SondeosElectricosVerticales1973-1975.pdf'},
             {'Nombre':'Sondeos Electricos Verticales 2016', 'Archivo':'SondeosElectricosVerticales2010-2016.pdf'},
	     	 
			 
				 
				 
				 
				 
				 

             
	     	
         ],
         selectionMode: 'single',
         rowSelect: function(event, data) {
        	 if (data.Nombre == 'Cortes Geoelectricos')
    		 {
    		 	 window.open('http://srvags.sgc.gov.co/Archivos_Geoportal/Hidrogeologia/CortesGeolelectricos.pdf');
    		 }
        	 else if (data.Nombre == 'Hidrógeologia')
             {
        		 window.open('http://srvags.sgc.gov.co/Archivos_Geoportal/Hidrogeologia/HidrogeologicoCompleto.pdf');
             }
        	 else if (data.Nombre == 'Inventario Puntos de Agua')
             {
        		 window.open('http://srvags.sgc.gov.co/Archivos_Geoportal/Hidrogeologia/InventarioPuntosAgua.pdf');
             }
        	 else if (data.Nombre == 'Mapa Geológico')
             {
        		 window.open('http://srvags.sgc.gov.co/Archivos_Geoportal/Hidrogeologia/MapaGeologicoHidrologia.pdf');
             }
        	 else if (data.Nombre == 'Sondeos Electricos Verticales 2016')
             {
        		 window.open('http://srvags.sgc.gov.co/Archivos_Geoportal/Hidrogeologia/SondeosElectricosVerticales2010-2016.pdf');
             }
              else if (data.Nombre == 'Sondeos Electricos Verticales 1973')
             {
        		 window.open('http://srvags.sgc.gov.co/Archivos_Geoportal/Hidrogeologia/SondeosElectricosVerticales1973-1975.pdf');
             }
              
			  
        	 
         },
        
     });
 
 }); 
 
 </script>
 
 <div id="tbllocal"></div>