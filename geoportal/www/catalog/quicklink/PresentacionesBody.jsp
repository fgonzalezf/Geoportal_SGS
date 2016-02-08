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
                      {'Nombre':'Guía Buenas Prácticas','Descripción': 'Presentación Gestión del Patrimonio geológico y paleontológico de Colombia'},
                      {'Nombre':'Valoración Patrimonio','Descripción': 'Valoración del patrimonio geológico solicitudes y formatos'},
                      {'Nombre':'Guía Buenas Prácticas','Descripción': 'Borrador Documento Gestión del patrimonio geológico y paleontológico de Colombia'},
                      
                      
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
                          else if (data.Nombre == "Guia Buenas Practicas")
                          {
                          	window.open('http://srvags.sgc.gov.co/Archivos_Geoportal/Manuales/MANUAL_BUENAS_PRACTICAS_Nov-2015.pdf');
                          }
                 	
                 	 
                  },
        
     });
 
 }); 
 
 </script>
 <div id="descripcion" style="text-align: justify">
 <br>
 <b>INSTITUTO GEOLÓGICO Y MINERO DE ESPAÑA</b>
 <br>
 <br>


</div>
<br>
<br>
 <div id="tbllocal"></div>