<% // quicklinkBody.jsp - Links page (JSF body) %>
 <script type="text/javascript">
 $(function() {
     $('#tbllocal').puidatatable({
         caption: 'Socializaci�n Actividades Desarrolladas',
         paginator: {
             rows: 10
         },
         columns: [
             {field:'Entidad', headerText: 'Entidad', sortable:true},
             {field:'Actividad', headerText: 'Actividad', sortable:true},
             {field:'Registro', headerText: 'Registro Informativo', sortable:true},
     
         ],
         datasource: [
             {'Entidad':'ICDE','Actividad': "Plenaria de ICDE", 'Registro':'Plenaria ICDE.pdf'},
             {'Entidad':'IDECA','Actividad': "Mapa Referencia Bogot�", 'Registro':'Mapa Referencia Bogota.pdf'},
             
			
             
	     	
         ],
         selectionMode: 'single',
         rowSelect: function(event, data) {
        	 if (data.Actividad == 'Plenaria de ICDE')
    		 {
    		 	 window.open('http://srvags.sgc.gov.co/Archivos_Geoportal/Actividades/Plenaria_ICDE.pdf');
    		 }
        	 else if (data.Actividad == 'Mapa Referencia Bogot�')
    		 {
    		 	 window.open('http://srvags.sgc.gov.co/Archivos_Geoportal/Actividades/Mapa_referencia_Bogota.pdf');
    		 }
        	 	  
        	 
         },
        
     });
 
 }); 
 
 </script>
 
 <div id="tbllocal"></div>