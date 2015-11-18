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
             {'Nombre':'Gu�a Buenas Practicas','Descripci�n': 'Gesti�n Del Patrimonio geol�gico y paleontol�gico de Colombia'},
             {'Nombre':'Valoraci�n Patrimonio','Descripci�n': 'Valoracion del patrimonio geol�gico solicitudes y formatos'},
             
             
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
        	
        	 
         },
        
     });
 
 }); 
 
 </script>
 <div id="descripcion" style="text-align: justify">
 <br>
 <b>PRESENTACIONES GESTI�N DE INFORMACI�N</b>
 <br>
 <br>


</div>
<br>
<br>
 <div id="tbllocal"></div>