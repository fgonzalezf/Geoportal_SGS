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
 
 <br>
 <br>
 <div align="center">
 		<img src="${pageContext.request.contextPath}/catalog/images/fondo-banco-1.png"alt="Mountain View" style="width:304px;height:228px">
  		</img>
  </div>
 <br>
 <br>
Es el repositorio de toda la Información análoga y digital  resultante de la actividad de Exploración y Producción de hidrocarburos del País, según lo lineamientos del MEITEP (Manual de Entrega de Información Técnica de Exploración y Producción). En síntesis, preserva los datos e informes que corresponden a la prospección de hidrocarburos del territorio Colombiano, tanto en la operación directa de la ANH como en la de compañías asociadas, operadoras y de servicios petroleros.
 <br>
 <br>
Para evitar pérdida o deterioro de los datos originales, una copia de la información digital se puede ofrece para ser consultada por los usuarios, dependiendo de las condiciones de confidencialidad establecidas.
 <br>
 <br>
El EPIS cuenta con un sistema integrado de servicios e infraestructura de tecnología de información para soportar los procesos de recepción, verificación, catalogación, carga y suministro de la información técnica análoga y digital de Exploración y Producción de hidrocarburos y está soportado por la herramienta MIGEP (Modelo Integrado de Gestión de Exploración y Producción), la cual contiene actualmente más de 250 millones de registros.
 <br>
 <br>
Dentro de los servicios prestados se encuentran:
Recepción, verificación física y Catalogación: Recepción de información técnica contenida en medios análogos y digitales que son entregados por las compañías operadoras teniendo como norma lo establecido en el Manual de entrega de Información Técnica para la actividad de exploración y producción de hidrocarburos. Estos datos y/o información son generados por las compañías petroleras, por compañías de servicios, y/o por personas naturales relacionadas con las actividades de la industria de Hidrocarburos, los cuales adquieren datos de superficie, subsuelo o son el resultado de la interpretación y análisis de esta Información.
 <br> 
 <br>
Servicio de verificación técnica, carga y enlace: Consiste en la gestión de aseguramiento en la herramienta MIGEP de los datos de sísmica, de pozos, documentos técnicos y mapas haciendo la respectiva extracción de metadatos y el enlace a los archivos digitales una vez son cargados en los sistemas de almacenamiento. En este ítem también se consideran las tareas de actualización de la información con miras a mantener la consistencia, coherencia, funcionalidad e integralidad de los datos. Una vez cumplidos estos procesos se remiten los medios físicos a la Cintoteca.
  <br>
  <br>
Entrega de balances: Consiste en diligenciar y expedir un balance con el estado actual de cada uno de los productos generados en el desarrollo de los contratos de E&P celebrados con las diferentes compañías operadoras y la ANH. En este documento se refleja el porcentaje de entrega de productos asociados a los compromisos de los contratos.
 <br> 
 <br>
Constancia de recibo de productos: Consiste en diligenciar y expedir una constancia recibo de los productos generados en el desarrollo de los contratos de E&P celebrados con las diferentes compañías operadoras y la ANH. En este documento se refleja el porcentaje de entrega de productos asociados a los compromisos de los contratos.
  <br>
  <br>
Divulgación: Consiste en desarrollar estrategias de divulgación y promoción de la información técnica y geológica que se encuentra en el EPIS disponible para ser suministrada a las diferentes compañías que la requieran para el desarrollo de nuevos proyectos e investigaciones.
 <br>
<br>
</div>
<br>
<br>