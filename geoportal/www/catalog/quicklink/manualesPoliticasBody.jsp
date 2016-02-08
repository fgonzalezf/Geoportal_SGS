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
              {'Nombre':'Manual de Información','Descripción': 'Manual de suministro y entrega de información geológica', 'Archivo':'Manual_Informacion.pdf'},
         	 
                      
              ],
                  selectionMode: 'single',
                  rowSelect: function(event, data) 
                   {
                 	 if (data.Nombre == "Manual de Información")
                 		 {
                 		 	window.open('http://srvags.sgc.gov.co/Archivos_Geoportal/Manuales/MANUAL_INFORMACION_V1.pdf');
                 		 }
         			 
                 	 
                   },
        
     });
 
 }); 
 
 </script>
 <div id="descripcion" style="text-align: justify">
 <br>
 <b>MANUAL DE SUMINISTRO Y ENTREGA DE LA INFORMACIÓN GEOLÓGICA GENERADA EN EL DESARROLLO DE ACTIVIDADES MINERAS</b>
 <br>
 <br>
El usuario reconoce que la información geocientífica a que tenga acceso es de propiedad exclusiva de Servicio Geológico Colombiano - SGC de conformidad con la ley 23 de 1982, la decisión 351 de 1993, ley 44 de 1993 y demás normas relacionadas con la propiedad intelectual.  Por lo anterior al usuario no le asiste ningún derecho de propiedad intelectual, sin que se entiendan cedidos o licenciados a ningún título.  De igual forma el usuario deberá respetar los derechos de autor, para lo cual deberá realizar las citas correspondientes.

</div>
<br>
<br>
 <div id="tbllocal"></div>