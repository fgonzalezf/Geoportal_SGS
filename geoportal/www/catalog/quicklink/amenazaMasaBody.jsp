<% // quicklinkBody.jsp - Links page (JSF body) %>
<script type="text/javascript">
 $(function() {
	 $('#default').puipanel();
	 
	 $('#dlg').puidialog({
	        showEffect: 'fade',
	        hideEffect: 'fade',
	        minimizable: false,
	        maximizable: false,
	        closable:false,
	        responsive: true,
	        height: 600,
	        width:600,
	        modal: false,
	        resizable:false,
	        buttons: [{
	                text: 'Sí',
	                icon: 'fa-check',
	                click: function() {
	                    $('#dlg').puidialog('hide');
	                    
	                }
	            },
	            {
	                text: 'No',
	                icon: 'fa-close',
	                click: function() {
	                	$('#dlg').puidialog('toggleMinimize');
	                	
	                    
	                }
	            }
	        ]
	    });
	                
     $('#tbllocal').puidatatable({
         caption: 'Mapa de Amenazas por Movimientos En Masa Escala 1:100.000',
         paginator: {
             rows: 10
         },
         columns: [
             {field:'Nombre', headerText: 'Nombre', sortable:true},
             {field:'Descripcion', headerText: 'Descripción', sortable:true},
             {field:'Archivo', headerText: 'Archivo', sortable:true},
     
         ],
         datasource: [
             {'Nombre':'Mapa AMM','Descripcion': "Amazonas", 'Archivo':'AmazonasZip.zip'},
             {'Nombre':'Mapa AMM','Descripcion': "Antioquia", 'Archivo':'AntioquiaZip.zip'},
             {'Nombre':'Mapa AMM','Descripcion': "Arauca", 'Archivo':'AraucaZip.zip'},
             {'Nombre':'Mapa AMM','Descripcion': "Atlántico", 'Archivo':'AtlanticoZip.zip'},
             {'Nombre':'Mapa AMM','Descripcion': "Bogotá", 'Archivo':'DCZip.zip'},
             {'Nombre':'Mapa AMM','Descripcion': "Bolívar", 'Archivo':'BolivarZip.zip'},
             {'Nombre':'Mapa AMM','Descripcion': "Boyacá", 'Archivo':'BoyacaZip.zip'},
             {'Nombre':'Mapa AMM','Descripcion': "Caldas", 'Archivo':'CaldasZip.zip'},
             {'Nombre':'Mapa AMM','Descripcion': "Caqueta", 'Archivo':'CaquetaZip.zip'},
             {'Nombre':'Mapa AMM','Descripcion': "Casanare", 'Archivo':'CasanareZip.zip'},
	     	 {'Nombre':'Mapa AMM','Descripcion': "Cauca", 'Archivo':'CaucaZip.zip'},	     	  
	     	{'Nombre':'Mapa AMM','Descripcion': "Cesar", 'Archivo':'CesarZip.zip'},
	     	{'Nombre':'Mapa AMM','Descripcion': "Chocó", 'Archivo':'ChocoZip.zip'},
	     	{'Nombre':'Mapa AMM','Descripcion': "Córdoba", 'Archivo':'CordobaZip.zip'},
            {'Nombre':'Mapa AMM','Descripcion': "Cundinamarca", 'Archivo':'CundinamarcaZip.zip'},
            {'Nombre':'Mapa AMM','Descripcion': "Guainía", 'Archivo':'GuaniaZip.zip'},
            {'Nombre':'Mapa AMM','Descripcion': "Guaviare", 'Archivo':'GuaviareZip.zip'},
            {'Nombre':'Mapa AMM','Descripcion': "Huila", 'Archivo':'HuilaZip.zip'},
            {'Nombre':'Mapa AMM','Descripcion': "La Guajira", 'Archivo':'La GuajiraZip.zip'},
            {'Nombre':'Mapa AMM','Descripcion': "Magdalena", 'Archivo':'MagdalenaZip.zip'},
	     	 {'Nombre':'Mapa AMM','Descripcion': "Meta", 'Archivo':'MetaZip.zip'}, 
	     	{'Nombre':'Mapa AMM','Descripcion': "Nariño", 'Archivo':'NariñoZip.zip'}, 
	     	{'Nombre':'Mapa AMM','Descripcion': "Norte Santander", 'Archivo':'Norte santanderZip.zip'},
            {'Nombre':'Mapa AMM','Descripcion': "Putumayo", 'Archivo':'PutumayoZip.zip'},
            {'Nombre':'Mapa AMM','Descripcion': "Quindío", 'Archivo':'QuindioZip.zip'},
            {'Nombre':'Mapa AMM','Descripcion': "Risaralda", 'Archivo':'RisaraldaZip.zip'},
            {'Nombre':'Mapa AMM','Descripcion': "Santander", 'Archivo':'SantanderZip.zip'},
            {'Nombre':'Mapa AMM','Descripcion': "Sucre", 'Archivo':'SucreZip.zip'},
            {'Nombre':'Mapa AMM','Descripcion': "Tolima", 'Archivo':'TolimaZip.zip'},
	     	 {'Nombre':'Mapa AMM','Descripcion': "Valle del Cauca",'Archivo':'Valle del caucaZip.zip'},
	     	{'Nombre':'Mapa AMM','Descripcion': "Vaupés", 'Archivo':'VaupesZip.zip'},
	     	 {'Nombre':'Mapa AMM','Descripcion': "Vichada", 'Archivo':'VichadaZip.zip'},
             
              
         ],
         selectionMode: 'single',
         rowSelect: function(event, data) {
        	 
        	 
        		 
   
        	
        	 if (data.Descripcion == 'Amazonas')
    		 {
        		 
        		 $('#dlg').puidialog('show');
        		
        		 var X=1
        		 $('#dlg').puidialog({
        			    afterHide: function(event) {
        			    	 if (X==1)
        			    		 {
        			    		    X=X+1
        			    	 		window.open('http://srvags.sgc.gov.co/Archivos_Geoportal/Amenaza_Movimientos_Masa/AmazonasZip.zip');
        			    		    
        			    		 }
        			    },
        		        minimize:function(event) {
        		        	 X=X+1
        		        	 $('#dlg').puidialog('hide');
        		        	 $('#dlg').puidialog('toggleMinimize');
        		        }
        			});
        		
    		 }
        	 else if (data.Descripcion == 'Antioquia')
             {
        		 $('#dlg').puidialog('show');
        		 
        		 var X=1
        		 $('#dlg').puidialog({
        			    afterHide: function(event) {
        			    	 if (X==1)
        			    		 {
        			    		 window.open('http://srvags.sgc.gov.co/Archivos_Geoportal/Amenaza_Movimientos_Masa/AntioquiaZip.zip');
        			    		 }
        			    },
        		        minimize:function(event) {
        		        	 X=X+1
        		        	 $('#dlg').puidialog('hide');
        		        	 $('#dlg').puidialog('toggleMinimize');
        		        }
        			});
        		
             }
        	 else if (data.Descripcion == 'Atlántico')
             {
        		 $('#dlg').puidialog('show');
        		
        		 var X=1
        		 $('#dlg').puidialog({
        			    afterHide: function(event) {
        			    	 if (X==1)
        			    		 {
        			    		 window.open('http://srvags.sgc.gov.co/Archivos_Geoportal/Amenaza_Movimientos_Masa/AtlanticoZip.zip');
        			    		 }
        			    },
        		        minimize:function(event) {
        		        	 X=X+1
        		        	 $('#dlg').puidialog('hide');
        		        	 $('#dlg').puidialog('toggleMinimize');
        		        }
        			});
        		 
             }
        	 else if (data.Descripcion == 'Bogotá')
             {
        		 $('#dlg').puidialog('show');
        		 
        		 var X=1
        		 $('#dlg').puidialog({
        			    afterHide: function(event) {
        			    	 if (X==1)
        			    		 {
        			    		 window.open('http://srvags.sgc.gov.co/Archivos_Geoportal/Amenaza_Movimientos_Masa/DCZip.zip');
        			    		 }
        			    },
        		        minimize:function(event) {
        		        	 X=X+1
        		        	 $('#dlg').puidialog('hide');
        		        	 $('#dlg').puidialog('toggleMinimize');
        		        }
        			});
        		
             }
        	 else if (data.Descripcion == 'Bolívar')
             {
        		 $('#dlg').puidialog('show');
        		 
        		 var X=1
        		 $('#dlg').puidialog({
        			    afterHide: function(event) {
        			    	 if (X==1)
        			    		 {
        			    		 window.open('http://srvags.sgc.gov.co/Archivos_Geoportal/Amenaza_Movimientos_Masa/BolivarZip.zip');
        			    		 }
        			    },
        		        minimize:function(event) {
        		        	 X=X+1
        		        	 $('#dlg').puidialog('hide');
        		        	 $('#dlg').puidialog('toggleMinimize');
        		        }
        			});
        		 
             }
        	 else if (data.Descripcion == 'Boyacá')
             {
        		 $('#dlg').puidialog('show');
        		 
        		 var X=1
        		 $('#dlg').puidialog({
        			    afterHide: function(event) {
        			    	 if (X==1)
        			    		 {
        			    		 window.open('http://srvags.sgc.gov.co/Archivos_Geoportal/Amenaza_Movimientos_Masa/BoyacaZip.zip');
        			    		 }
        			    },
        		        minimize:function(event) {
        		        	 X=X+1
        		        	 $('#dlg').puidialog('hide');
        		        	 $('#dlg').puidialog('toggleMinimize');
        		        }
        			});
        		
             }
        	 else if (data.Descripcion == 'Arauca')
             {
        		 $('#dlg').puidialog('show');
        		
        		 var X=1
        		 $('#dlg').puidialog({
        			    afterHide: function(event) {
        			    	 if (X==1)
        			    		 {
        			    		 window.open('http://srvags.sgc.gov.co/Archivos_Geoportal/Amenaza_Movimientos_Masa/AraucaZip.zip');
        			    		 }
        			    },
        		        minimize:function(event) {
        		        	 X=X+1
        		        	 $('#dlg').puidialog('hide');
        		        	 $('#dlg').puidialog('toggleMinimize');
        		        }
        			});
        		 
             }
        	 else if (data.Descripcion == 'Caldas')
             {
        		 $('#dlg').puidialog('show');
        		 
        		 var X=1
        		 $('#dlg').puidialog({
        			    afterHide: function(event) {
        			    	 if (X==1)
        			    		 {
        			    		 window.open('http://srvags.sgc.gov.co/Archivos_Geoportal/Amenaza_Movimientos_Masa/CaldasZip.zip');
        			    		 }
        			    },
        		        minimize:function(event) {
        		        	 X=X+1
        		        	 $('#dlg').puidialog('hide');
        		        	 $('#dlg').puidialog('toggleMinimize');
        		        }
        			});
        		 
             }
        	 else if (data.Descripcion == 'Caqueta')
             {
        		 $('#dlg').puidialog('show');
        		 
        		 var X=1
        		 $('#dlg').puidialog({
        			    afterHide: function(event) {
        			    	 if (X==1)
        			    		 {
        			    		 window.open('http://srvags.sgc.gov.co/Archivos_Geoportal/Amenaza_Movimientos_Masa/CaquetaZip.zip');
        			    		 }
        			    },
        		        minimize:function(event) {
        		        	 X=X+1
        		        	 $('#dlg').puidialog('hide');
        		        	 $('#dlg').puidialog('toggleMinimize');
        		        }
        			});
        		 
             }
              else if (data.Descripcion == 'Casanare')
             {
            	 $('#dlg').puidialog('show');
         		 
         		 var X=1
         		 $('#dlg').puidialog({
         			    afterHide: function(event) {
         			    	 if (X==1)
         			    		 {
         			    		window.open('http://srvags.sgc.gov.co/Archivos_Geoportal/Amenaza_Movimientos_Masa/CasanareZip.zip');
         			    		 }
         			    },
         		        minimize:function(event) {
         		        	 X=X+1
         		        	 $('#dlg').puidialog('hide');
         		        	$('#dlg').puidialog('toggleMinimize');
         		        }
         			});
        		 
             }
              else if (data.Descripcion == 'Cauca')
             {
            	  $('#dlg').puidialog('show');
          		 
          		 var X=1
          		 $('#dlg').puidialog({
          			    afterHide: function(event) {
          			    	 if (X==1)
          			    		 {
          			    		 window.open('http://srvags.sgc.gov.co/Archivos_Geoportal/Amenaza_Movimientos_Masa/CaucaZip.zip');
          			    		 }
          			    },
          		        minimize:function(event) {
          		        	 X=X+1
          		        	 $('#dlg').puidialog('hide');
          		        	$('#dlg').puidialog('toggleMinimize');
          		        }
          			});
        		
             }
         
         
              else if (data.Descripcion == 'Cesar')
              {
            	  $('#dlg').puidialog('show');
           		 
           		 var X=1
           		 $('#dlg').puidialog({
           			    afterHide: function(event) {
           			    	 if (X==1)
           			    		 {
           			    		 window.open('http://srvags.sgc.gov.co/Archivos_Geoportal/Amenaza_Movimientos_Masa/CesarZip.zip');
           			    		 }
           			    },
           		        minimize:function(event) {
           		        	 X=X+1
           		        	 $('#dlg').puidialog('hide');
           		        	 $('#dlg').puidialog('toggleMinimize');
           		        }
           			});
         		
         		
              }
              else if (data.Descripcion == 'Chocó')
              {
            	  $('#dlg').puidialog('show');
            		
            		 var X=1
            		 $('#dlg').puidialog({
            			    afterHide: function(event) {
            			    	 if (X==1)
            			    		 {
            			    		 window.open('http://srvags.sgc.gov.co/Archivos_Geoportal/Amenaza_Movimientos_Masa/ChocoZip.zip');
            			    		 }
            			    },
            		        minimize:function(event) {
            		        	 X=X+1
            		        	 $('#dlg').puidialog('hide');
            		        	 $('#dlg').puidialog('toggleMinimize');
            		        }
            			});
         		 
              }
              else if (data.Descripcion == 'Córdoba')
              {
            	  $('#dlg').puidialog('show');
         		
         		 var X=1
         		 $('#dlg').puidialog({
         			    afterHide: function(event) {
         			    	 if (X==1)
         			    		 {
         			    		 window.open('http://srvags.sgc.gov.co/Archivos_Geoportal/Amenaza_Movimientos_Masa/CordobaZip.zip');
         			    		 }
         			    },
         		        minimize:function(event) {
         		        	 X=X+1
         		        	 $('#dlg').puidialog('hide');
         		        	 $('#dlg').puidialog('toggleMinimize');
         		        }
         			});
         		
              }
         	 else if (data.Descripcion == 'Cundinamarca')
              {
         		$('#dlg').puidialog('show');
        		
        		 var X=1
        		 $('#dlg').puidialog({
        			    afterHide: function(event) {
        			    	 if (X==1)
        			    		 {
        			    		 window.open('http://srvags.sgc.gov.co/Archivos_Geoportal/Amenaza_Movimientos_Masa/CundinamarcaZip.zip');
        			    		 }
        			    },
        		        minimize:function(event) {
        		        	 X=X+1
        		        	 $('#dlg').puidialog('hide');
        		        	 $('#dlg').puidialog('toggleMinimize');
        		        }
        			});
         		 
              }
         	else if (data.Descripcion == 'Guainía')
            {
         		$('#dlg').puidialog('show');
       		 
       		 var X=1
       		 $('#dlg').puidialog({
       			    afterHide: function(event) {
       			    	 if (X==1)
       			    		 {
       			    		 window.open('http://srvags.sgc.gov.co/Archivos_Geoportal/Amenaza_Movimientos_Masa/GuainiaZip.zip');
       			    		 }
       			    },
       		        minimize:function(event) {
       		        	 X=X+1
       		        	 $('#dlg').puidialog('hide');
       		        	 $('#dlg').puidialog('toggleMinimize');
       		        }
       			});
       		
            }
         	 else if (data.Descripcion == 'Guaviare')
              {
         		 $('#dlg').puidialog('show');
          		 var X=1
          		 $('#dlg').puidialog({
          			    afterHide: function(event) {
          			    	 if (X==1)
          			    		 {
          			    		 window.open('http://srvags.sgc.gov.co/Archivos_Geoportal/Amenaza_Movimientos_Masa/GuaviareZip.zip');
          			    		 }
          			    },
          		        minimize:function(event) {
          		        	 X=X+1
          		        	 $('#dlg').puidialog('hide');
          		        	 $('#dlg').puidialog('toggleMinimize');
          		        }
          			});
         		
              }
         	 else if (data.Descripcion == 'Huila')
              {
         		$('#dlg').puidialog('show');
         		 var X=1
         		 $('#dlg').puidialog({
         			    afterHide: function(event) {
         			    	 if (X==1)
         			    		 {
         			    		window.open('http://srvags.sgc.gov.co/Archivos_Geoportal/Amenaza_Movimientos_Masa/HuilaZip.zip');
         			    		 }
         			    },
         		        minimize:function(event) {
         		        	 X=X+1
         		        	 $('#dlg').puidialog('hide');
         		        	 $('#dlg').puidialog('toggleMinimize');
         		        }
         			});
         		 
              }
               else if (data.Descripcion == 'La Guajira')
              {
            	 $('#dlg').puidialog('show');
           		 var X=1
           		 $('#dlg').puidialog({
           			    afterHide: function(event) {
           			    	 if (X==1)
           			    		 {
           			    		window.open('http://srvags.sgc.gov.co/Archivos_Geoportal/Amenaza_Movimientos_Masa/La GuajiraZip.zip');
           			    		 }
           			    },
           		        minimize:function(event) {
           		        	 X=X+1
           		        	 $('#dlg').puidialog('hide');
           		        	 $('#dlg').puidialog('toggleMinimize');
           		        }
           			});
         		 
              }
               else if (data.Descripcion == 'Magdalena')
              {
            	   $('#dlg').puidialog('show');
             		 var X=1
             		 $('#dlg').puidialog({
             			    afterHide: function(event) {
             			    	 if (X==1)
             			    		 {
             			    		window.open('http://srvags.sgc.gov.co/Archivos_Geoportal/Amenaza_Movimientos_Masa/MagdalenaZip.zip');
             			    		 }
             			    },
             		        minimize:function(event) {
             		        	 X=X+1
             		        	 $('#dlg').puidialog('hide');
             		        	 $('#dlg').puidialog('toggleMinimize');
             		        }
             			});
         		 
              }
              
               else if (data.Descripcion == 'Meta')
               {
            	   $('#dlg').puidialog('show');
           		 var X=1
           		 $('#dlg').puidialog({
           			    afterHide: function(event) {
           			    	 if (X==1)
           			    		 {
           			    		window.open('http://srvags.sgc.gov.co/Archivos_Geoportal/Amenaza_Movimientos_Masa/MetaZip.zip');
           			    		 }
           			    },
           		        minimize:function(event) {
           		        	 X=X+1
           		        	 $('#dlg').puidialog('hide');
           		        	 $('#dlg').puidialog('toggleMinimize');
           		        }
           			});
          		 
               }
               else if (data.Descripcion == 'Nariño')
               {
            	   $('#dlg').puidialog('show');
             		 var X=1
             		 $('#dlg').puidialog({
             			    afterHide: function(event) {
             			    	 if (X==1)
             			    		 {
             			    		window.open('http://srvags.sgc.gov.co/Archivos_Geoportal/Amenaza_Movimientos_Masa/NariñoZip.zip');
             			    		 }
             			    },
             		        minimize:function(event) {
             		        	 X=X+1
             		        	 $('#dlg').puidialog('hide');
             		        	 $('#dlg').puidialog('toggleMinimize');
             		        }
             			});
          		 
               }
          	 else if (data.Descripcion == 'Norte Santander')
               {
          		$('#dlg').puidialog('show');
        		 var X=1
        		 $('#dlg').puidialog({
        			    afterHide: function(event) {
        			    	 if (X==1)
        			    		 {
        			    		 window.open('http://srvags.sgc.gov.co/Archivos_Geoportal/Amenaza_Movimientos_Masa/Norte de SantanderZip.zip');
        			    		 }
        			    },
        		        minimize:function(event) {
        		        	 X=X+1
        		        	 $('#dlg').puidialog('hide');
        		        	 $('#dlg').puidialog('toggleMinimize');
        		        }
        			});
     		 
          		 
               }
          	 else if (data.Descripcion == 'Putumayo')
               {
          		$('#dlg').puidialog('show');
       		 var X=1
       		 $('#dlg').puidialog({
       			    afterHide: function(event) {
       			    	 if (X==1)
       			    		 {
       			    		window.open('http://srvags.sgc.gov.co/Archivos_Geoportal/Amenaza_Movimientos_Masa/PutumayoZip.zip');
       			    		 }
       			    },
       		        minimize:function(event) {
       		        	 X=X+1
       		        	 $('#dlg').puidialog('hide');
       		        	$('#dlg').puidialog('toggleMinimize');
       		        }
       			});
          		 
               }
          	else if (data.Descripcion == 'Quindío')
            {
          		$('#dlg').puidialog('show');
          		 var X=1
          		 $('#dlg').puidialog({
          			    afterHide: function(event) {
          			    	 if (X==1)
          			    		 {
          			    		window.open('http://srvags.sgc.gov.co/Archivos_Geoportal/Amenaza_Movimientos_Masa/QuindioZip.zip');
          			    		 }
          			    },
          		        minimize:function(event) {
          		        	 X=X+1
          		        	 $('#dlg').puidialog('hide');
          		        	$('#dlg').puidialog('toggleMinimize');
          		        }
          			});
       		 
            }
          	 else if (data.Descripcion == 'Risaralda')
               {
          		$('#dlg').puidialog('show');
         		 var X=1
         		 $('#dlg').puidialog({
         			    afterHide: function(event) {
         			    	 if (X==1)
         			    		 {
         			    		window.open('http://srvags.sgc.gov.co/Archivos_Geoportal/Amenaza_Movimientos_Masa/RisaraldaZip.zip');
         			    		 }
         			    },
         		        minimize:function(event) {
         		        	 X=X+1
         		        	 $('#dlg').puidialog('hide');
         		        	$('#dlg').puidialog('toggleMinimize');
         		        }
         			});
          		 
               }
                else if (data.Descripcion == 'Santander')
               {
                	$('#dlg').puidialog('show');
            		 var X=1
            		 $('#dlg').puidialog({
            			    afterHide: function(event) {
            			    	 if (X==1)
            			    		 {
            			    		 window.open('http://srvags.sgc.gov.co/Archivos_Geoportal/Amenaza_Movimientos_Masa/SantanderZip.zip');
            			    		 }
            			    },
            		        minimize:function(event) {
            		        	 X=X+1
            		        	 $('#dlg').puidialog('hide');
            		        	 $('#dlg').puidialog('toggleMinimize');
            		        }
            			});
          		 
               }
                else if (data.Descripcion == 'Sucre')
               {
                	$('#dlg').puidialog('show');
           		 var X=1
           		 $('#dlg').puidialog({
           			    afterHide: function(event) {
           			    	 if (X==1)
           			    		 {
           			    		 window.open('http://srvags.sgc.gov.co/Archivos_Geoportal/Amenaza_Movimientos_Masa/SucreZip.zip');
           			    		 }
           			    },
           		        minimize:function(event) {
           		        	 X=X+1
           		        	 $('#dlg').puidialog('hide');
           		        	$('#dlg').puidialog('toggleMinimize');
           		        }
           			});
          		
               }
                else if (data.Descripcion == 'Tolima')
                {
                	$('#dlg').puidialog('show');
              		 var X=1
              		 $('#dlg').puidialog({
              			    afterHide: function(event) {
              			    	 if (X==1)
              			    		 {
              			    		window.open(' http://srvags.sgc.gov.co/Archivos_Geoportal/Amenaza_Movimientos_Masa/TolimaZip.zip');
              			    		 }
              			    },
              		        minimize:function(event) {
              		        	 X=X+1
              		        	 $('#dlg').puidialog('hide');
              		        	$('#dlg').puidialog('toggleMinimize');
              		        }
              			});
           		 
                }
                 else if (data.Descripcion == 'Valle del Cauca')
                {
                	 $('#dlg').puidialog('show');
              		 var X=1
              		 $('#dlg').puidialog({
              			    afterHide: function(event) {
              			    	 if (X==1)
              			    		 {
              			    		window.open('http://srvags.sgc.gov.co/Archivos_Geoportal/Amenaza_Movimientos_Masa/Valle del CaucaZip.zip');
              			    		 }
              			    },
              		        minimize:function(event) {
              		        	 X=X+1
              		        	 $('#dlg').puidialog('hide');
              		        	$('#dlg').puidialog('toggleMinimize');
              		        }
              			});
           		 
                }
                 else if (data.Descripcion == 'Vaupés')
                 {
                	 $('#dlg').puidialog('show');
              		 var X=1
              		 $('#dlg').puidialog({
              			    afterHide: function(event) {
              			    	 if (X==1)
              			    		 {
              			    		window.open('http://srvags.sgc.gov.co/Archivos_Geoportal/Amenaza_Movimientos_Masa/VaupesZip.zip');
              			    		 }
              			    },
              		        minimize:function(event) {
              		        	 X=X+1
              		        	 $('#dlg').puidialog('hide');
              		        	$('#dlg').puidialog('toggleMinimize');
              		        }
              			});
            		 
                 }
        	 
        	 
                 else if (data.Descripcion == 'Vichada')
                 {
                	 $('#dlg').puidialog('show');
              		 var X=1
              		 $('#dlg').puidialog({
              			    afterHide: function(event) {
              			    	 if (X==1)
              			    		 {
              			    		window.open('http://srvags.sgc.gov.co/Archivos_Geoportal/Amenaza_Movimientos_Masa/VichadaZip.zip');
              			    		 }
              			    },
              		        minimize:function(event) {
              		        	 X=X+1
              		        	 $('#dlg').puidialog('hide');
              		        	$('#dlg').puidialog('toggleMinimize');
              		        }
              			});
            		 
                 }
        	 
        	 
        	       	 
         },
        
     });
 
 }); 
 
 </script>


 <div id="default" style="margin-bottom:20px" title="Archivo integrado nacional de susceptibilidad y amenaza relativa por movimientos en masa">
    <center>
    <a href='http://srvags.sgc.gov.co/Archivos_Geoportal/Amenaza_Movimientos_Masa/Amenaza_Nacional.zip' download>Archivo integrado nacional</a>
    <br>
    <a href='http://srvags.sgc.gov.co/Archivos_Geoportal/Amenaza_Movimientos_Masa/CondGenTermLicUso.pdf' download>Términos y condiciones de uso. </a>
     <a href='http://srvags.sgc.gov.co/Archivos_Geoportal/Amenaza_Movimientos_Masa/CondPropiedIntelectual.pdf' download>Términos de propiedad intelectual</a>
     
    </center>
</div>

<div id="tbllocal"></div>

<div id="dlg" title="TÉRMINOS GENERALES Y CONDICIONES"> 
<B>Los siguientes términos aplican de manera general a todos los productos/ información/datos que un usuario adquiere del SERVICIO GEOLÓGICO COLOMBIANO</B>
<br>
PRINCIPIO:  
<br> 

SERVICIO GEOLÓGICO COLOMBIANO no cede a ningún título la información generada o adquirida sino que concede licencia de uso para un fin específico y determinado. En consecuencia, los siguientes términos constituyen un Acuerdo de Licenciamiento de uso de Información.
<br> 
DEFINICIONES:
<br> 
LICENCIADO: a quien se le concede el permiso de uso de la información. Para los términos de SERVICIO GEOLÓGICO COLOMBIANO, el usuario.
<br> 
TÉRMINOS
<br> 
1.	Duración
<br> 
1.1	Sujeto a estas condiciones, la LICENCIA tomará efecto desde la fecha de firma del Acuerdo de Licenciamiento y terminará si ocurre alguno de los eventos descritos en el numeral 9 de este acuerdo.  
<br> 
2.	Licencia
<br> 
2.1	Estos términos y condiciones aplican a todos los datos LICENCIADOS, los cuales han sido adquiridos, o generados por SERVICIO GEOLÓGICO COLOMBIANO.

<br> 
2.2.	Todos los datos deben ser mantenidos exclusivamente para el uso de la parte licenciada y no pueden ser transmitidos, asignados, intercambiados o vendidos a ninguna tercera parte sin el consentimiento previo escrito de SERVICIO GEOLÓGICO COLOMBIANO.
<br> 
2.3.	El LICENCIADO no está autorizado a hacer copias de la información suministrada.
<br> 
3.	Propiedad
<br> 
3.1.	El LICENCIADO entiende que el SERVICIO GEOLÓGICO COLOMBIANO como Instituto Científico y Técnico adscrito al Ministerio de Minas y Energía y como parte del Sistema Nacional de Ciencia, Tecnología e Innovación - SNCTI retiene la propiedad de la información y los datos, bien en sus formas originales o en una forma modificada por el LICENCIADO y, de esta manera, también la propiedad intelectual de los mismos.
<br> 
4.	Cargos de licenciamiento
<br> 
4.1.	El cargo de licenciamiento no incluye impuestos, sobrecostos o cargos de transporte. Estos serán liquidados, en caso de ser necesarios, de manera separada.
<br> 
5.	Garantías
<br> 
5.1.	El SERVICIO GEOLÓGICO COLOMBIANO no garantiza que los datos estén libres de errores, pero avisará oportunamente de cualquier revisión o actualización a los datos, la cual puede ser hecha durante la validez de la LICENCIA.
<br> 
5.2.	El SERVICIO GEOLÓGICO COLOMBIANO garantiza que el licenciamiento no infringe los derechos de propiedad intelectual de ninguna persona o entidad.
<br> 
6.	Confidencialidad
<br> 
6.1.	El LICENCIADO efectuará todas las acciones necesarias para asegurar que ninguna persona, incluyendo, funcionarios, empleados, sub-contratistas o consultores contratados por el LICENCIADO, se acojan a las obligaciones establecidas en esta licencia. Se prohíbe usar la información para un propósito diferente al acordado en los términos de este acuerdo.
<br> 
7.	Explotación de los datos
<br> 
7.1.	El LICENCIADO no comercializará o intercambiará los datos, o producto o servicio alguno derivado o resultado de la incorporación de los datos sin autorización expresa por escrito de SERVICIO GEOLÓGICO COLOMBIANO. 
<br> 
7.2.	En los casos en que haya sido concedida autorización al LICENCIADO para llevar a efecto procesamiento adicional de los datos y que esté disponible para la venta a terceras partes, el SERVICIO GEOLÓGICO COLOMBIANO debe ser notificado y deberá recibir, libre de cualquier cargo, una copia de estos datos re-procesados en forma tanto digital como análoga.
<br> 
7.3.	Los datos no pueden ser usados en un prospecto de compañía o eslogan o publicados en ninguna forma sin autorización expresa por escrito de SERVICIO GEOLÓGICO COLOMBIANO.
<br> 
7.4.	Los datos usados en cualquier publicación o presentación pública resultante del uso de estos datos, deberán dar los respectivos créditos de manera apropiada al SERVICIO GEOLÓGICO COLOMBIANO, respetando siempre las normas de citación y referenciación bibliográfica. 
<br> 
8.	Liberación de responsabilidad 
<br> 
8.1.	El LICENCIADO acuerda liberar de toda responsabilidad al SERVICIO GEOLÓGICO COLOMBIANO, sus empleados, contratistas y cualquier parte reclamante bajo o a través del SERVICIO GEOLÓGICO COLOMBIANO con respecto a toda responsabilidad por pérdida o daños de los datos, causados por el uso que aquel haga de estos.
<br> 
8.2.	Las provisiones de esta condición sobrevivirán a la expiración o terminación temprana del Acuerdo de Licenciamiento.
<br> 
8.3.	Si los datos son dañados en tránsito, o son defectuosos en cualquier otra manera, ellos deben ser retornados al SERVICIO GEOLÓGICO COLOMBIANO en los siguientes 30 días. Un cargo de reemplazo será aplicado a los datos reemplazados después de este período.
<br> 
9.	Terminación
<br> 
9.1.	  El Acuerdo de Licenciamiento puede ser terminado: 
<br> 
(i)	Si cualquier parte viola alguno de los términos de este acuerdo, la otra parte deberá enviar una notificación escrita, especificando la violación en que incurrió y requiriendo remediar dicha situación de manera inmediata. Si pasados treinta (30) días calendario siguientes a la recepción de la notificación por la parte infractora sin que se haya remediado la violación, se dará por terminado este Acuerdo de Licenciamiento.  
<br> 
(ii)	Por cualquier parte mediante solicitud escrita, en la que manifieste su deseo de concluir el Acuerdo a la otra parte con un mes de anticipación a la fecha de la efectiva terminación. 
<br> 
10.	 Aplicación
<br> 
10.1.	  Las condiciones de licenciamiento establecidas aquí serán entendidas como el principio de acuerdo entre las partes.
<br> 
11.	 Acuerdo completo
<br> 
11.1.	 Este Acuerdo de Licenciamiento prevalecerá sobre todos los acuerdos y decisiones precedentes entre las partes relacionadas con los datos y constituye el acuerdo completo entre las partes. Ninguna adición o modificación del Acuerdo será anexada por las partes, a menos que se realice por escrito y cuente con el consentimiento libre y expreso de ambas partes.
<br> 
12.	 Notificaciones
<br> 
12.1.	Todas las notificaciones requeridas bajo el Acuerdo de Licenciamiento serán escritas y serán: (i) enviadas a la otra parte personalmente; o (ii) enviadas por fax a la otra parte, en cuyo caso la notificación se presumirá recibida a partir del recibo de confirmación del aparato de fax receptor; o (iii) enviada por correo certificado a la dirección de la otra parte.
<br> 
12.2.	El LICENCIADO no asignará, ni en parte ni en todo su conjunto, el beneficio o carga del Acuerdo de Licenciamiento, sin el consentimiento escrito previo del Director General del SERVICIO GEOLÓGICO COLOMBIANO.
<br> 
13.	 Ley Vigente
<br> 
13.1.	Este Acuerdo de Licenciamiento estará gobernado y constituido en concordancia con las leyes vigentes en el territorio colombiano.
<br> 
Acepto

 </div>
 
