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
             {field:'Archivo', headerText: 'Archivo', sortable:true},
     
         ],
         datasource: [
             {'Nombre':'Politicas de Gesti�n','Descripci�n': 'Acuerdo Numero 008 del 12 de diciembre de 2014', 'Archivo':'Politicas.pdf'},
             {'Nombre':'Acuerdo N�mero 008','Descripci�n': 'Politicas de Gestion de Informaci�n dic 4 aprobadas', 'Archivo':'Acuerdo008.pdf'},
             {'Nombre':'Resoluci�n No 325','Descripci�n': 'Sistema de publicaciones del Servicio Geol�gico Colombiano', 'Archivo':'Resoluci�nNo325.pdf'},
             {'Nombre':'Resoluci�n No 326','Descripci�n': 'Creaci�n del Comit� editorial del Servicio Geol�gico Colombiano', 'Archivo':'Resoluci�nNo326.pdf'},
             
         ],
         selectionMode: 'single',
         rowSelect: function(event, data) {
        	 if (data.Nombre == "Politicas de Gesti�n")
        		 {
        		   window.open('http://srvags.sgc.gov.co/Archivos_Geoportal/Politicas/Politicas_de_Gestion_de_Informacion_dic_4_aprobadas.pdf');
        		 }
        	 else if (data.Nombre == "Acuerdo N�mero 008")
    		     {
    		 	   window.open('http://srvags.sgc.gov.co/Archivos_Geoportal/Politicas/Acuerdo_Numero_008_del_12_de_diciembre_de_2014.pdf');
    		     }
        	 else if (data.Nombre == "Resoluci�n No 325")
    		     {
    		 	   window.open('http://srvags.sgc.gov.co/Archivos_Geoportal/Politicas/resolucionNo325.pdf');
    		     }
        	 else if (data.Nombre == "Resoluci�n No 326")
    		     {
    		 	   window.open('http://srvags.sgc.gov.co/Archivos_Geoportal/Politicas/resolucionNo326.pdf');
    		     }
        	 
         },
        
     });
 
 }); 
 
 </script>
 <div id="descripcion" style="text-align: justify">
 <br>
 <b>POL�TICAS DE GESTI�N</b>
 <br>
 <br>


</div>
<br>
<br>
 <div id="tbllocal"></div>