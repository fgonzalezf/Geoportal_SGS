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
             {'Nombre':'Geoqu�mica','Descripci�n': 'Base de Datos geoqu�mica 2010', 'Archivo':'gq_AN_2010.mdb'},
             
         ],
         selectionMode: 'single',
         rowSelect: function(event, data) {
        	 if (data.Nombre == "Geoqu�mica")
        		 {
        		 	window.open('http://srvags.sgc.gov.co/Archivos_Geoportal/BasesDeDatos/gq_AN_02-09-13.mdb');
        		 }
        	 
         },
        
     });
 
 }); 
 
 </script>
 <div id="descripcion" style="text-align: justify">
 <br>
 <b>BASE DE DATOS DE GEOQU�MICA</b>
 <br>
 <br>
 Contiene la Base de Datos de Geoqu�mica  con datos hasta el a�o 2010, colocada en el Geoportal del SGC - Gesti�n de Informaci�n - Productos Geocient�ficos -  Bases de Datos:
 <br>
 <br>
El usuario reconoce que la informaci�n geocient�fica a que tenga acceso es de propiedad exclusiva de Servicio Geol�gico Colombiano - SGC de conformidad con la ley 23 de 1982, la decisi�n 351 de 1993, ley 44 de 1993 y dem�s normas relacionadas con la propiedad intelectual.  Por lo anterior al usuario no le asiste ning�n derecho de propiedad intelectual, sin que se entiendan cedidos o licenciados a ning�n t�tulo.  De igual forma el usuario deber� respetar los derechos de autor, para lo cual deber� realizar las citas correspondientes.

</div>
<br>
<br>
 <div id="tbllocal"></div>