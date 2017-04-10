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
 
 <br>
 <br>
 <div align="center">
 		<img src="${pageContext.request.contextPath}/catalog/images/fondo-banco-1.png"alt="Mountain View" style="width:304px;height:228px">
  		</img>
  </div>
 <br>
 <br>
Es el repositorio de toda la Informaci�n an�loga y digital  resultante de la actividad de Exploraci�n y Producci�n de hidrocarburos del Pa�s, seg�n lo lineamientos del MEITEP (Manual de Entrega de Informaci�n T�cnica de Exploraci�n y Producci�n). En s�ntesis, preserva los datos e informes que corresponden a la prospecci�n de hidrocarburos del territorio Colombiano, tanto en la operaci�n directa de la ANH como en la de compa��as asociadas, operadoras y de servicios petroleros.
 <br>
 <br>
Para evitar p�rdida o deterioro de los datos originales, una copia de la informaci�n digital se puede ofrece para ser consultada por los usuarios, dependiendo de las condiciones de confidencialidad establecidas.
 <br>
 <br>
El EPIS cuenta con un sistema integrado de servicios e infraestructura de tecnolog�a de informaci�n para soportar los procesos de recepci�n, verificaci�n, catalogaci�n, carga y suministro de la informaci�n t�cnica an�loga y digital de Exploraci�n y Producci�n de hidrocarburos y est� soportado por la herramienta MIGEP (Modelo Integrado de Gesti�n de Exploraci�n y Producci�n), la cual contiene actualmente m�s de 250 millones de registros.
 <br>
 <br>
Dentro de los servicios prestados se encuentran:
Recepci�n, verificaci�n f�sica y Catalogaci�n: Recepci�n de informaci�n t�cnica contenida en medios an�logos y digitales que son entregados por las compa��as operadoras teniendo como norma lo establecido en el Manual de entrega de Informaci�n T�cnica para la actividad de exploraci�n y producci�n de hidrocarburos. Estos datos y/o informaci�n son generados por las compa��as petroleras, por compa��as de servicios, y/o por personas naturales relacionadas con las actividades de la industria de Hidrocarburos, los cuales adquieren datos de superficie, subsuelo o son el resultado de la interpretaci�n y an�lisis de esta Informaci�n.
 <br> 
 <br>
Servicio de verificaci�n t�cnica, carga y enlace: Consiste en la gesti�n de aseguramiento en la herramienta MIGEP de los datos de s�smica, de pozos, documentos t�cnicos y mapas haciendo la respectiva extracci�n de metadatos y el enlace a los archivos digitales una vez son cargados en los sistemas de almacenamiento. En este �tem tambi�n se consideran las tareas de actualizaci�n de la informaci�n con miras a mantener la consistencia, coherencia, funcionalidad e integralidad de los datos. Una vez cumplidos estos procesos se remiten los medios f�sicos a la Cintoteca.
  <br>
  <br>
Entrega de balances: Consiste en diligenciar y expedir un balance con el estado actual de cada uno de los productos generados en el desarrollo de los contratos de E&P celebrados con las diferentes compa��as operadoras y la ANH. En este documento se refleja el porcentaje de entrega de productos asociados a los compromisos de los contratos.
 <br> 
 <br>
Constancia de recibo de productos: Consiste en diligenciar y expedir una constancia recibo de los productos generados en el desarrollo de los contratos de E&P celebrados con las diferentes compa��as operadoras y la ANH. En este documento se refleja el porcentaje de entrega de productos asociados a los compromisos de los contratos.
  <br>
  <br>
Divulgaci�n: Consiste en desarrollar estrategias de divulgaci�n y promoci�n de la informaci�n t�cnica y geol�gica que se encuentra en el EPIS disponible para ser suministrada a las diferentes compa��as que la requieran para el desarrollo de nuevos proyectos e investigaciones.
 <br>
<br>
</div>
<br>
<br>