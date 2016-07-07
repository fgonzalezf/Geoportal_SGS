<% // quicklinkBody.jsp - Links page (JSF body) %>
 <script type="text/javascript">
 $(function() {
     $('#tbllocal').puidatatable({
         caption: 'Estadisticas Sistema Información Movimientos En Masa',
         paginator: {
             rows: 10
         },
         columns: [
             {field:'Nombre', headerText: 'Nombre', sortable:true},
             {field:'Descripcion', headerText: 'Periodo', sortable:true},
             {field:'Archivo', headerText: 'Archivo', sortable:true},
     
         ],
             
        	 
        	 
        	 
        	 
        	 
         datasource: [
                      {'Nombre':'Informe resumen','Descripcion': "Noviembre 2015 Abril 2016", 'Archivo':'Informe resumen.pdf'},
                      {'Nombre':'Sesiones Desktop','Descripcion': "Noviembre 2015 Abril 2016", 'Archivo':'Sesiones desktop Movil Sistema Operativo.pdf'},
                      {'Nombre':'Sesiones General','Descripcion': "Noviembre 2015 Abril 2016", 'Archivo':'Sesiones estadisticas generales.pdf'},
                      {'Nombre':'Sesiones Navegador','Descripcion': "Noviembre 2015 Abril 2016", 'Archivo':'Sesiones por Navegador sitema operativo.pdf'},
                      {'Nombre':'Visitas','Descripcion': "Noviembre 2015 Abril 2016", 'Archivo':'Visitas.pdf'},
                      {'Nombre':'Visitas por Ubicación','Descripcion': "Noviembre 2015 Abril 2016", 'Archivo':'Visitas por ubicación.pdf'},
         			 {'Nombre':'Visitantes nuevos','Descripcion': "Mayo 2016 Julio 2016", 'Archivo':'Visitantes nuevos vs recurrentes 20160505-20160705.pdf'},
                      {'Nombre':'Vision general','Descripcion': "Mayo 2016 Julio 2016", 'Archivo':'Visiongeneral de audiencia 20160505-20160705.pdf'},
                      {'Nombre':'Usuarios activos','Descripcion': "Mayo 2016 Julio 2016", 'Archivo':'Usuarios activos 20160505-20160705.pdf'},
                      {'Nombre':'Visitas por Ubicación','Descripcion': "Mayo 2016 Julio 2016", 'Archivo':'Ubicacion 20160505-20160705.pdf'},
                      {'Nombre':'Visitas recientes','Descripcion': "Mayo 2016 Julio 2016", 'Archivo':'Frecuencia y visitasrecientes 20160505-20160705.pdf'},
         	     	 
                      
         	     	
                  ],
                  selectionMode: 'single',
                  rowSelect: function(event, data) {
                 	 if (data.Nombre == 'Informe resumen'&& data.Descripcion == 'Noviembre 2015 Abril 2016')
             		 {
             		 	 window.open('http://srvags.sgc.gov.co/Archivos_Geoportal/Estadisticas/EstadisticasSIMMA/Informe_resumen_1.pdf');
             		 }
                 	 else if (data.Nombre == 'Sesiones Desktop'&& data.Descripcion == 'Noviembre 2015 Abril 2016')
                      {
                 		 window.open('http://srvags.sgc.gov.co/Archivos_Geoportal/Estadisticas/EstadisticasSIMMA/sesiones_desktop_movil_sistema_operativo_1.pdf');
                      }
                 	 else if (data.Nombre == 'Sesiones General'&& data.Descripcion == 'Noviembre 2015 Abril 2016')
                      {
                 		 window.open('http://srvags.sgc.gov.co/Archivos_Geoportal/Estadisticas/EstadisticasSIMMA/sesiones_estadisticas_generales_1.pdf');
                      }
                 	 else if (data.Nombre == 'Sesiones Navegador'&& data.Descripcion == 'Noviembre 2015 Abril 2016')
                      {
                 		 window.open('http://srvags.sgc.gov.co/Archivos_Geoportal/Estadisticas/EstadisticasSIMMA/sesiones_por_navegador_y_sistema_operativo_1.pdf');
                      }
                 	 else if (data.Nombre == 'Visitas'&& data.Descripcion == 'Noviembre 2015 Abril 2016')
                      {
                 		 window.open('http://srvags.sgc.gov.co/Archivos_Geoportal/Estadisticas/EstadisticasSIMMA/visitas_2016_1.pdf');
                      }
                       else if (data.Nombre == 'Visitas por Ubicación'&& data.Descripcion == 'Noviembre 2015 Abril 2016')
                      {
                 		 window.open('http://srvags.sgc.gov.co/Archivos_Geoportal/Estadisticas/EstadisticasSIMMA/visitas_por_ubicacion_1.pdf');
                      }
         			 else if (data.Nombre == 'Visitantes nuevos'&& data.Descripcion == 'Mayo 2016 Julio 2016')
                      {
                 		 window.open('http://srvags.sgc.gov.co/Archivos_Geoportal/Estadisticas/EstadisticasSIMMA/Visitantesnuevosvsrecurrentes20160505-20160705.pdf');
                      }
                 	 else if (data.Nombre == 'Vision general'&& data.Descripcion == 'Mayo 2016 Julio 2016')
                      {
                 		 window.open('http://srvags.sgc.gov.co/Archivos_Geoportal/Estadisticas/EstadisticasSIMMA/Visiongeneraldeaudiencia20160505-20160705.pdf');
                      }
                 	 else if (data.Nombre == 'Usuarios activos'&& data.Descripcion == 'Mayo 2016 Julio 2016')
                      {
                 		 window.open('http://srvags.sgc.gov.co/Archivos_Geoportal/Estadisticas/EstadisticasSIMMA/Usuariosactivos20160505-20160705.pdf');
                      }
                 	 else if (data.Nombre == 'Visitas por Ubicación'&& data.Descripcion == 'Mayo 2016 Julio 2016')
                      {
                 		 window.open('http://srvags.sgc.gov.co/Archivos_Geoportal/Estadisticas/EstadisticasSIMMA/Ubicacion20160505-20160705.pdf');
                      }
                       else if (data.Nombre == 'Visitas recientes'&& data.Descripcion == 'Mayo 2016 Julio 2016')
                      {
                 		 window.open('http://srvags.sgc.gov.co/Archivos_Geoportal/Estadisticas/EstadisticasSIMMA/Frecuenciayvisitasrecientes20160505-20160705.pdf');
                      }
              
        	 
         },
        
     });
 
 }); 
 
 </script>
 
 <div id="tbllocal"></div>