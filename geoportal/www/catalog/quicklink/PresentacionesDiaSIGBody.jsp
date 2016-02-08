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
             
     
         ],
         datasource: [
                      {'Nombre':'Presentación SIMMA','Descripción': 'Sistema de Información de Movimientos en Masa "SIMMA" '},
                      {'Nombre':'Geodabase Corporativa','Descripción': 'Geodabase Corporativa: Usos y beneficios'},
                      {'Nombre':'Litoteca','Descripción': 'Visor Geográfico Litoteca '},
                      {'Nombre':'Espectroradiometría','Descripción': 'Importancia de la espectroradiometría en aplicaciones geográficas'},
                      {'Nombre':'Hidrotermales','Descripción': 'Aplicativo web Inventario Nacional de Manifestaciones Hidrotermales'},
                       

                  ],
                  selectionMode: 'single',
                  rowSelect: function(event, data) {
                 	 if (data.Nombre == "Presentación SIMMA")
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
                     else if (data.Nombre == "Espectroradiometría")
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