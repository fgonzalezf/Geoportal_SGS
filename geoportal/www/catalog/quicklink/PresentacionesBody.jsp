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
             {field:'Descripci�n', headerText: 'Descripci�n', sortable:true},
             
     
         ],
         datasource: [
                      {'Nombre':'Gu�a Buenas Pr�cticas','Descripci�n': 'Presentaci�n Gesti�n del Patrimonio geol�gico y paleontol�gico de Colombia'},
                      {'Nombre':'Valoraci�n Patrimonio','Descripci�n': 'Valoraci�n del patrimonio geol�gico solicitudes y formatos'},
                      {'Nombre':'Gu�a Buenas Pr�cticas','Descripci�n': 'Borrador Documento Gesti�n del patrimonio geol�gico y paleontol�gico de Colombia'},
                      
                      
                  ],
                  selectionMode: 'single',
                  rowSelect: function(event, data) {
                 	 if (data.Nombre == "Gu�a Buenas Practicas")
                 		 {
                 		 	window.open('http://srvags.sgc.gov.co/Archivos_Geoportal/Presentaciones/Guia_de_buenas_practicas.pdf');
                 		 }
                 	 else if (data.Nombre == "Valoraci�n Patrimonio")
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
 <b>INSTITUTO GEOL�GICO Y MINERO DE ESPA�A</b>
 <br>
 <br>


</div>
<br>
<br>
 <div id="tbllocal"></div>