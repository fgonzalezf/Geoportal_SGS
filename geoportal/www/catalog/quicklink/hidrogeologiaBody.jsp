<% // quicklinkBody.jsp - Links page (JSF body) %>
 <script type="text/javascript">
 $(function() {
     $('#tbllocal').puidatatable({
         caption: 'Mapas de Hidrogeolog�a del Departamento de La Guajira',
         paginator: {
             rows: 10
         },
         columns: [
             {field:'Nombre', headerText: 'Nombre', sortable:true},
        
             {field:'Archivo', headerText: 'Archivo', sortable:true},
     
         ],
         datasource: [
             {'Nombre':'Cortes Geoelectricos', 'Archivo':'CortesGeolelectricos.pdf'},
             {'Nombre':'Hidr�geologia', 'Archivo':'HidrogeologicoCompleto.pdf'},
             {'Nombre':'Inventario Puntos de Agua', 'Archivo':'InventarioPuntosAgua.pdf'},
             {'Nombre':'Mapa Geol�gico', 'Archivo':'MapaGeologicoHidrologia.pdf'},
             {'Nombre':'Sondeos Electricos Verticales 1973', 'Archivo':'SondeosElectricosVerticales1973-1975.pdf'},
             {'Nombre':'Sondeos Electricos Verticales 2016', 'Archivo':'SondeosElectricosVerticales2010-2016.pdf'},
     	
         ],
         selectionMode: 'single',
         rowSelect: function(event, data) {
        	 if (data.Nombre == 'Cortes Geoelectricos')
    		 {
    		 	 window.open('http://srvags.sgc.gov.co/Archivos_Geoportal/Hidrogeologia/CortesGeolelectricos.pdf');
    		 }
        	 else if (data.Nombre == 'Hidr�geologia')
             {
        		 window.open('http://srvags.sgc.gov.co/Archivos_Geoportal/Hidrogeologia/HidrogeologicoCompleto.pdf');
             }
        	 else if (data.Nombre == 'Inventario Puntos de Agua')
             {
        		 window.open('http://srvags.sgc.gov.co/Archivos_Geoportal/Hidrogeologia/InventarioPuntosAgua.pdf');
             }
        	 else if (data.Nombre == 'Mapa Geol�gico')
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
	 
	    $('#tblquindio').puidatatable({
         caption: 'Mapas de Hidrogeolog�a del Departamento del Quindio',
         paginator: {
             rows: 10
         },
         columns: [
             {field:'Nombre', headerText: 'Nombre', sortable:true},
        
             {field:'Archivo', headerText: 'Archivo', sortable:true},
     
         ],
         datasource: [
             {'Nombre':'Control Geol�gico', 'Archivo':'Control_Geologico.pdf'},
             {'Nombre':'Geof�sico', 'Archivo':'Mapa_Geofisico.pdf'},
             {'Nombre':'Hidrogeol�gico', 'Archivo':'Mapa_Hidrogeologico.pdf'},
             {'Nombre':'Hidrogeoqu�mico', 'Archivo':'Mapa_Hidrogeoquimico.pdf'},
             {'Nombre':'Hidrogeoqu�mico (Diagramas de Stiff)', 'Archivo':'Mapa_Hidrogeoquimico_stiff.pdf'},
             
     	
         ],
         selectionMode: 'single',
         rowSelect: function(event, data) {
        	 if (data.Nombre == 'Control Geol�gico')
    		 {
    		 	 window.open('http://srvags.sgc.gov.co/Archivos_Geoportal/Hidrogeologia/QUINDIO/Control_Geologico.pdf');
    		 }
        	 else if (data.Nombre == 'Geof�sico')
             {
        		 window.open('http://srvags.sgc.gov.co/Archivos_Geoportal/Hidrogeologia/QUINDIO/Mapa_Geofisico.pdf');
             }
        	 else if (data.Nombre == 'Hidrogeol�gico')
             {
        		 window.open('http://srvags.sgc.gov.co/Archivos_Geoportal/Hidrogeologia/QUINDIO/Mapa_Hidrogeologico.pdf');
             }
        	 else if (data.Nombre == 'Hidrogeoqu�mico')
             {
        		 window.open('http://srvags.sgc.gov.co/Archivos_Geoportal/Hidrogeologia/QUINDIO/Mapa_Hidrogeoquimico.pdf');
             }
        	 else if (data.Nombre == 'Hidrogeoqu�mico (Diagramas de Stiff)')
             {
        		 window.open('http://srvags.sgc.gov.co/Archivos_Geoportal/Hidrogeologia/QUINDIO/Mapa_Hidrogeoquimico_stiff.pdf');
             }
              			  
        	 
         },
        
     });
 
 }); 
 
 </script>
 <div id="tblquindio"></div>
 <br>
 <div id="tbllocal"></div>
 
 