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
             {field:'Archivo', headerText: 'Archivo', sortable:true},
     
         ],
         datasource: [
             {'Nombre':'Politicas de Gestión','Descripción': 'Acuerdo Numero 008 del 12 de diciembre de 2014', 'Archivo':'Politicas.pdf'},
             {'Nombre':'Acuerdo Número 008','Descripción': 'Politicas de Gestion de Información dic 4 aprobadas', 'Archivo':'Acuerdo008.pdf'},
             {'Nombre':'Resolución No 325','Descripción': 'Sistema de publicaciones del Servicio Geológico Colombiano', 'Archivo':'ResoluciónNo325.pdf'},
             {'Nombre':'Resolución No 326','Descripción': 'Creación del Comité editorial del Servicio Geológico Colombiano', 'Archivo':'ResoluciónNo326.pdf'},
             
         ],
         selectionMode: 'single',
         rowSelect: function(event, data) {
        	 if (data.Nombre == "Politicas de Gestión")
        		 {
        		   window.open('http://srvags.sgc.gov.co/Archivos_Geoportal/Politicas/Politicas_de_Gestion_de_Informacion_dic_4_aprobadas.pdf');
        		 }
        	 else if (data.Nombre == "Acuerdo Número 008")
    		     {
    		 	   window.open('http://srvags.sgc.gov.co/Archivos_Geoportal/Politicas/Acuerdo_Numero_008_del_12_de_diciembre_de_2014.pdf');
    		     }
        	 else if (data.Nombre == "Resolución No 325")
    		     {
    		 	   window.open('http://srvags.sgc.gov.co/Archivos_Geoportal/Politicas/resolucionNo325.pdf');
    		     }
        	 else if (data.Nombre == "Resolución No 326")
    		     {
    		 	   window.open('http://srvags.sgc.gov.co/Archivos_Geoportal/Politicas/resolucionNo326.pdf');
    		     }
        	 
         },
        
     });
 
 }); 
 
 </script>
 <div id="descripcion" style="text-align: justify">
 <br>
 <b>POLÍTICAS DE GESTIÓN</b>
 <br>
 <br>


</div>
<br>
<br>
 <div id="tbllocal"></div>