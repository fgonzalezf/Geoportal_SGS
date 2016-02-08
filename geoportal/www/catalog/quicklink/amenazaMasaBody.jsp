<% // quicklinkBody.jsp - Links page (JSF body) %>
 <script type="text/javascript">
 $(function() {
     $('#tbllocal').puidatatable({
         caption: 'Mapa de Amenazas por Movimientos En Masa Escala 1:100.000',
         paginator: {
             rows: 10
         },
         columns: [
             {field:'Nombre', headerText: 'Nombre', sortable:true},
             {field:'Descripcion', headerText: 'Descripci�n', sortable:true},
             {field:'Archivo', headerText: 'Archivo', sortable:true},
     
         ],
         datasource: [
             {'Nombre':'Mapa AMM','Descripcion': "Amazonas", 'Archivo':'AmazonasZip.zip'},
             {'Nombre':'Mapa AMM','Descripcion': "Antioquia", 'Archivo':'AntioquiaZip.zip'},
             {'Nombre':'Mapa AMM','Descripcion': "Arauca", 'Archivo':'AraucaZip.zip'},
             {'Nombre':'Mapa AMM','Descripcion': "Atl�ntico", 'Archivo':'AtlanticoZip.zip'},
             {'Nombre':'Mapa AMM','Descripcion': "Bogot�", 'Archivo':'DCZip.zip'},
             {'Nombre':'Mapa AMM','Descripcion': "Bol�var", 'Archivo':'BolivarZip.zip'},
             {'Nombre':'Mapa AMM','Descripcion': "Boyac�", 'Archivo':'BoyacaZip.zip'},
             {'Nombre':'Mapa AMM','Descripcion': "Caldas", 'Archivo':'CaldasZip.zip'},
             {'Nombre':'Mapa AMM','Descripcion': "Caqueta", 'Archivo':'CaquetaZip.zip'},
             {'Nombre':'Mapa AMM','Descripcion': "Casanare", 'Archivo':'CasanareZip.zip'},
	     	 {'Nombre':'Mapa AMM','Descripcion': "Cauca", 'Archivo':'CaucaZip.zip'},
	     	  
	     	{'Nombre':'Mapa AMM','Descripcion': "Cesar", 'Archivo':'CesarZip.zip'},
	     	{'Nombre':'Mapa AMM','Descripcion': "Choc�", 'Archivo':'ChocoZip.zip'},
	     	{'Nombre':'Mapa AMM','Descripcion': "C�rdoba", 'Archivo':'CordobaZip.zip'},
            {'Nombre':'Mapa AMM','Descripcion': "Cundinamarca", 'Archivo':'CundinamarcaZip.zip'},
            {'Nombre':'Mapa AMM','Descripcion': "Guain�a", 'Archivo':'GuaniaZip.zip'},
            {'Nombre':'Mapa AMM','Descripcion': "Guaviare", 'Archivo':'GuaviareZip.zip'},
            {'Nombre':'Mapa AMM','Descripcion': "Huila", 'Archivo':'HuilaZip.zip'},
            {'Nombre':'Mapa AMM','Descripcion': "La Guajira", 'Archivo':'La GuajiraZip.zip'},
            {'Nombre':'Mapa AMM','Descripcion': "Magdalena", 'Archivo':'MagdalenaZip.zip'},
	     	 {'Nombre':'Mapa AMM','Descripcion': "Meta", 'Archivo':'MetaZip.zip'}, 
	     	{'Nombre':'Mapa AMM','Descripcion': "Nari�o", 'Archivo':'Nari�oZip.zip'}, 
	     	{'Nombre':'Mapa AMM','Descripcion': "Norte Santander", 'Archivo':'Norte santanderZip.zip'},
            {'Nombre':'Mapa AMM','Descripcion': "Putumayo", 'Archivo':'PutumayoZip.zip'},
            {'Nombre':'Mapa AMM','Descripcion': "Quind�o", 'Archivo':'QuindioZip.zip'},
            {'Nombre':'Mapa AMM','Descripcion': "Risaralda", 'Archivo':'RisaraldaZip.zip'},
            {'Nombre':'Mapa AMM','Descripcion': "Santander", 'Archivo':'SantanderZip.zip'},
            {'Nombre':'Mapa AMM','Descripcion': "Sucre", 'Archivo':'SucreZip.zip'},
            {'Nombre':'Mapa AMM','Descripcion': "Tolima", 'Archivo':'TolimaZip.zip'},
	     	 {'Nombre':'Mapa AMM','Descripcion': "Valle del Cauca",'Archivo':'Valle del caucaZip.zip'},
	     	{'Nombre':'Mapa AMM','Descripcion': "Vaup�s", 'Archivo':'VaupesZip.zip'},
	     	 {'Nombre':'Mapa AMM','Descripcion': "Vichada", 'Archivo':'VichadaZip.zip'},
             
              
         ],
         selectionMode: 'single',
         rowSelect: function(event, data) {
        	 
        		 
        		 
        		 
        		 
        		 
        		 
        		 
        		 
        		 
        		 
        		 
        		 
        		 
        		 
        		 
        		 
        		 
        		 
        		
        		 
        		 
        	 if (data.Descripcion == 'Amazonas')
    		 {
    		 	 window.open('http://srvags.sgc.gov.co/Archivos_Geoportal/Amenaza_Movimientos_Masa/AmazonasZip.zip');
    		 }
        	 else if (data.Descripcion == 'Antioquia')
             {
        		 window.open('http://srvags.sgc.gov.co/Archivos_Geoportal/Amenaza_Movimientos_Masa/AntioquiaZip.zip');
             }
        	 else if (data.Descripcion == 'Atl�ntico')
             {
        		 window.open('http://srvags.sgc.gov.co/Archivos_Geoportal/Amenaza_Movimientos_Masa/AtlanticoZip.zip');
             }
        	 else if (data.Descripcion == 'Bogot�')
             {
        		 window.open('http://srvags.sgc.gov.co/Archivos_Geoportal/Amenaza_Movimientos_Masa/DCZip.zip');
             }
        	 else if (data.Descripcion == 'Bol�var')
             {
        		 window.open('http://srvags.sgc.gov.co/Archivos_Geoportal/Amenaza_Movimientos_Masa/BolivarZip.zip');
             }
        	 else if (data.Descripcion == 'Boyac�')
             {
        		 window.open('http://srvags.sgc.gov.co/Archivos_Geoportal/Amenaza_Movimientos_Masa/BoyacaZip.zip');
             }
        	 else if (data.Descripcion == 'Arauca')
             {
        		 window.open('http://srvags.sgc.gov.co/Archivos_Geoportal/Amenaza_Movimientos_Masa/AraucaZip.zip');
             }
        	 else if (data.Descripcion == 'Caldas')
             {
        		 window.open('http://srvags.sgc.gov.co/Archivos_Geoportal/Amenaza_Movimientos_Masa/CaldasZip.zip');
             }
        	 else if (data.Descripcion == 'Caqueta')
             {
        		 window.open('http://srvags.sgc.gov.co/Archivos_Geoportal/Amenaza_Movimientos_Masa/CaquetaZip.zip');
             }
              else if (data.Descripcion == 'Casanare')
             {
        		 window.open('http://srvags.sgc.gov.co/Archivos_Geoportal/Amenaza_Movimientos_Masa/CasanareZip.zip');
             }
              else if (data.Descripcion == 'Cauca')
             {
        		 window.open('http://srvags.sgc.gov.co/Archivos_Geoportal/Amenaza_Movimientos_Masa/CaucaZip.zip');
             }
         
         
              else if (data.Descripcion == 'Cesar')
              {
         		 window.open('http://srvags.sgc.gov.co/Archivos_Geoportal/Amenaza_Movimientos_Masa/CesarZip.zip');
              }
              else if (data.Descripcion == 'Choc�')
              {
         		 window.open('http://srvags.sgc.gov.co/Archivos_Geoportal/Amenaza_Movimientos_Masa/ChocoZip.zip');
              }
              else if (data.Descripcion == 'C�rdoba')
              {
         		 window.open('http://srvags.sgc.gov.co/Archivos_Geoportal/Amenaza_Movimientos_Masa/CordobaZip.zip');
              }
         	 else if (data.Descripcion == 'Cundinamarca')
              {
         		 window.open('http://srvags.sgc.gov.co/Archivos_Geoportal/Amenaza_Movimientos_Masa/CundinamarcaZip.zip');
              }
         	else if (data.Descripcion == 'Guain�a')
            {
       		 window.open('http://srvags.sgc.gov.co/Archivos_Geoportal/Amenaza_Movimientos_Masa/GuainiaZip.zip');
            }
         	 else if (data.Descripcion == 'Guaviare')
              {
         		 window.open('http://srvags.sgc.gov.co/Archivos_Geoportal/Amenaza_Movimientos_Masa/GuaviareZip.zip');
              }
         	 else if (data.Descripcion == 'Huila')
              {
         		 window.open('http://srvags.sgc.gov.co/Archivos_Geoportal/Amenaza_Movimientos_Masa/HuilaZip.zip');
              }
               else if (data.Descripcion == 'La Guajira')
              {
         		 window.open('http://srvags.sgc.gov.co/Archivos_Geoportal/Amenaza_Movimientos_Masa/La GuajiraZip.zip');
              }
               else if (data.Descripcion == 'Magdalena')
              {
         		 window.open('http://srvags.sgc.gov.co/Archivos_Geoportal/Amenaza_Movimientos_Masa/MagdalenaZip.zip');
              }
              
               else if (data.Descripcion == 'Meta')
               {
          		 window.open('http://srvags.sgc.gov.co/Archivos_Geoportal/Amenaza_Movimientos_Masa/MetaZip.zip');
               }
               else if (data.Descripcion == 'Nari�o')
               {
          		 window.open('http://srvags.sgc.gov.co/Archivos_Geoportal/Amenaza_Movimientos_Masa/Nari�oZip.zip');
               }
          	 else if (data.Descripcion == 'Norte Santander')
               {
          		 window.open('http://srvags.sgc.gov.co/Archivos_Geoportal/Amenaza_Movimientos_Masa/Norte de SantanderZip.zip');
               }
          	 else if (data.Descripcion == 'Putumayo')
               {
          		 window.open('http://srvags.sgc.gov.co/Archivos_Geoportal/Amenaza_Movimientos_Masa/PutumayoZip.zip');
               }
          	else if (data.Descripcion == 'Quind�o')
            {
       		 window.open('http://srvags.sgc.gov.co/Archivos_Geoportal/Amenaza_Movimientos_Masa/QuindioZip.zip');
            }
          	 else if (data.Descripcion == 'Risaralda')
               {
          		 window.open('http://srvags.sgc.gov.co/Archivos_Geoportal/Amenaza_Movimientos_Masa/RisaraldaZip.zip');
               }
                else if (data.Descripcion == 'Santander')
               {
          		 window.open('http://srvags.sgc.gov.co/Archivos_Geoportal/Amenaza_Movimientos_Masa/SantanderZip.zip');
               }
                else if (data.Descripcion == 'Sucre')
               {
          		 window.open('http://srvags.sgc.gov.co/Archivos_Geoportal/Amenaza_Movimientos_Masa/SucreZip.zip');
               }
                else if (data.Descripcion == 'Tolima')
                {
           		 window.open(' http://srvags.sgc.gov.co/Archivos_Geoportal/Amenaza_Movimientos_Masa/TolimaZip.zip');
                }
                 else if (data.Descripcion == 'Valle del Cauca')
                {
           		 window.open('http://srvags.sgc.gov.co/Archivos_Geoportal/Amenaza_Movimientos_Masa/Valle del CaucaZip.zip');
                }
                 else if (data.Descripcion == 'Vaup�s')
                 {
            		 window.open('http://srvags.sgc.gov.co/Archivos_Geoportal/Amenaza_Movimientos_Masa/VaupesZip.zip');
                 }
        	 
        	 
                 else if (data.Descripcion == 'Vichada')
                 {
            		 window.open('http://srvags.sgc.gov.co/Archivos_Geoportal/Amenaza_Movimientos_Masa/VichadaZip.zip');
                 }
        	 
        	 
        	       	 
         },
        
     });
 
 }); 
 
 </script>
 
 <div id="tbllocal"></div>