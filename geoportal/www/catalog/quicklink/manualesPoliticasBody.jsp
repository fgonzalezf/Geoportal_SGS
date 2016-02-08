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
              {'Nombre':'Manual de Informaci�n','Descripci�n': 'Manual de suministro y entrega de informaci�n geol�gica', 'Archivo':'Manual_Informacion.pdf'},
         	 
                      
              ],
                  selectionMode: 'single',
                  rowSelect: function(event, data) 
                   {
                 	 if (data.Nombre == "Manual de Informaci�n")
                 		 {
                 		 	window.open('http://srvags.sgc.gov.co/Archivos_Geoportal/Manuales/MANUAL_INFORMACION_V1.pdf');
                 		 }
         			 
                 	 
                   },
        
     });
 
 }); 
 
 </script>
 <div id="descripcion" style="text-align: justify">
 <br>
 <b>MANUAL DE SUMINISTRO Y ENTREGA DE LA INFORMACI�N GEOL�GICA GENERADA EN EL DESARROLLO DE ACTIVIDADES MINERAS</b>
 <br>
 <br>
El usuario reconoce que la informaci�n geocient�fica a que tenga acceso es de propiedad exclusiva de Servicio Geol�gico Colombiano - SGC de conformidad con la ley 23 de 1982, la decisi�n 351 de 1993, ley 44 de 1993 y dem�s normas relacionadas con la propiedad intelectual.  Por lo anterior al usuario no le asiste ning�n derecho de propiedad intelectual, sin que se entiendan cedidos o licenciados a ning�n t�tulo.  De igual forma el usuario deber� respetar los derechos de autor, para lo cual deber� realizar las citas correspondientes.

</div>
<br>
<br>
 <div id="tbllocal"></div>