<% // quicklinkBody.jsp - Links page (JSF body) %>
 <script type="text/javascript">
 $(function() {
     $('#tbllocal').puidatatable({
         caption: 'Socialización Actividades Desarrolladas',
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
             {'Entidad':'IDECA','Actividad': "Mapa Referencia Bogotá", 'Registro':'Mapa Referencia Bogota.pdf'},
			 {'Entidad':'DIMAR','Actividad': "Manual de Referencia Gestión de Datos Oceánicos", 'Registro':'Manual de Referencia Gestión.pdf'},
             
			
             
	     	
         ],
         selectionMode: 'single',
         rowSelect: function(event, data) {
        	 if (data.Actividad == 'Plenaria de ICDE')
    		 {
    		 	 window.open('http://srvags.sgc.gov.co/Archivos_Geoportal/Actividades/Plenaria_ICDE.pdf');
    		 }
        	 else if (data.Actividad == 'Mapa Referencia Bogotá')
    		 {
    		 	 window.open('http://srvags.sgc.gov.co/Archivos_Geoportal/Actividades/Mapa_referencia_Bogota.pdf');
    		 }
			 else if (data.Actividad == 'Manual de Referencia Gestión de Datos Oceánicos')
    		 {
    		 	 window.open('http://srvags.sgc.gov.co/Archivos_Geoportal/Actividades/Manual_de_Referencia_en_Mejores_Practicas_de_Gestion_de_Datos_Oceanicos.pdf');
    		 }
        	 	  
        	 
         },
        
     });
 
 }); 
 
 </script>
 
 <div id="tbllocal"></div>