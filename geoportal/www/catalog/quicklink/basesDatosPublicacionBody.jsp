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
             {'Nombre':'Geoquímica','Descripción': 'Base de Datos geoquímica 2010', 'Archivo':'gq_AN_2010.mdb'},
             
         ],
         selectionMode: 'single',
         rowSelect: function(event, data) {
        	 if (data.Nombre == "Geoquímica")
        		 {
        		 	window.open('http://srvags.sgc.gov.co/Archivos_Geoportal/BasesDeDatos/gq_AN_02-09-13.mdb');
        		 }
        	 
         },
        
     });
 
 }); 
 
 </script>
 <div id="descripcion" style="text-align: justify">
 <br>
 <b>BASE DE DATOS DE GEOQUÍMICA</b>
 <br>
 <br>
 Contiene la Base de Datos de Geoquímica  con datos hasta el año 2010, colocada en el Geoportal del SGC - Gestión de Información - Productos Geocientíficos -  Bases de Datos:
 <br>
 <br>
El usuario reconoce que la información geocientífica a que tenga acceso es de propiedad exclusiva de Servicio Geológico Colombiano - SGC de conformidad con la ley 23 de 1982, la decisión 351 de 1993, ley 44 de 1993 y demás normas relacionadas con la propiedad intelectual.  Por lo anterior al usuario no le asiste ningún derecho de propiedad intelectual, sin que se entiendan cedidos o licenciados a ningún título.  De igual forma el usuario deberá respetar los derechos de autor, para lo cual deberá realizar las citas correspondientes.

</div>
<br>
<br>
 <div id="tbllocal"></div>