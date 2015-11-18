<% // quicklinkBody.jsp - Links page (JSF body) %>
 
 <script type="text/javascript">
 $(function() {
     $('#tbllocal').puidatatable({
         caption: '',
         paginator: {
             rows: 5
         },
         columns: [
             {field:'Nombre', headerText: 'Nombre', sortable:true},
             {field:'Descripción', headerText: 'Descripción', sortable:true},
             
     
         ],
         datasource: [
             {'Nombre':'Guía Buenas Practicas','Descripción': 'Gestión Del Patrimonio geológico y paleontológico de Colombia'},
             {'Nombre':'Valoración Patrimonio','Descripción': 'Valoracion del patrimonio geológico solicitudes y formatos'},
             
             
         ],
         selectionMode: 'single',
         rowSelect: function(event, data) {
        	 if (data.Nombre == "Guía Buenas Practicas")
        		 {
        		 	window.open('http://srvags.sgc.gov.co/Archivos_Geoportal/Presentaciones/Guia_de_buenas_practicas.pdf');
        		 }
        	 else if (data.Nombre == "Valoración Patrimonio")
    		 {
    		 	window.open('http://srvags.sgc.gov.co/Archivos_Geoportal/Presentaciones/Valoracion_Patrimonio_Geologico.pdf');
    		 }
        	
        	 
         },
        
     });
 
 }); 
 
 </script>
 <div id="descripcion" style="text-align: justify">
 <br>
 <b>PRESENTACIONES GESTIÓN DE INFORMACIÓN</b>
 <br>
 <br>


</div>
<br>
<br>
 <div id="tbllocal"></div>