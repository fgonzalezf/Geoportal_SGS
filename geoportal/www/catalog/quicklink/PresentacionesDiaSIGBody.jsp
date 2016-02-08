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
                      {'Nombre':'Presentaci�n SIMMA','Descripci�n': 'Sistema de Informaci�n de Movimientos en Masa "SIMMA" '},
                      {'Nombre':'Geodabase Corporativa','Descripci�n': 'Geodabase Corporativa: Usos y beneficios'},
                      {'Nombre':'Litoteca','Descripci�n': 'Visor Geogr�fico Litoteca '},
                      {'Nombre':'Espectroradiometr�a','Descripci�n': 'Importancia de la espectroradiometr�a en aplicaciones geogr�ficas'},
                      {'Nombre':'Hidrotermales','Descripci�n': 'Aplicativo web Inventario Nacional de Manifestaciones Hidrotermales'},
                       

                  ],
                  selectionMode: 'single',
                  rowSelect: function(event, data) {
                 	 if (data.Nombre == "Presentaci�n SIMMA")
                 	 {
                 		 	window.open('http://srvags.sgc.gov.co/Archivos_Geoportal/Presentaciones/SIMMA SIG 2015.pdf');
                 	 }
                 	 else if (data.Nombre == "Geodabase Corporativa")
             		 {
             		 	window.open('http://srvags.sgc.gov.co/Archivos_Geoportal/Presentaciones/Base_De_Datos_Institucional.pdf');
             		 }
                     else if (data.Nombre == "Litoteca")
                     {
                        window.open('http://srvags.sgc.gov.co/Archivos_Geoportal/Presentaciones/Litoteca_Noviembre2015.pdf');
                     }
                     else if (data.Nombre == "Espectroradiometr�a")
             		 {
             		 	window.open('http://srvags.sgc.gov.co/Archivos_Geoportal/Presentaciones/IGAC_CIAF_ESPECTROMETRIA.pdf');
             		 }
                     else if (data.Nombre == "Hidrotermales")
                     {
                        window.open('http://srvags.sgc.gov.co/Archivos_Geoportal/Presentaciones/AplicativoWeb_INMH.pdf');
                     }
                 	
                 	 
                  },
        
     });
 
 }); 
 
 </script>
 <div id="descripcion" style="text-align: justify">
 <br>
 <b>Presentaciones Dia SIG 2015</b>
 <br>
 <br>


</div>
<br>
<br>
 <div id="tbllocal"></div>