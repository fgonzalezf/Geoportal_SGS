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
	                text: 'S�',
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
        	 else if (data.Descripcion == 'Atl�ntico')
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
        	 else if (data.Descripcion == 'Bogot�')
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
        	 else if (data.Descripcion == 'Bol�var')
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
        	 else if (data.Descripcion == 'Boyac�')
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
              else if (data.Descripcion == 'Choc�')
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
              else if (data.Descripcion == 'C�rdoba')
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
         	else if (data.Descripcion == 'Guain�a')
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
               else if (data.Descripcion == 'Nari�o')
               {
            	   $('#dlg').puidialog('show');
             		 var X=1
             		 $('#dlg').puidialog({
             			    afterHide: function(event) {
             			    	 if (X==1)
             			    		 {
             			    		window.open('http://srvags.sgc.gov.co/Archivos_Geoportal/Amenaza_Movimientos_Masa/Nari�oZip.zip');
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
          	else if (data.Descripcion == 'Quind�o')
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
                 else if (data.Descripcion == 'Vaup�s')
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
    <a href='http://srvags.sgc.gov.co/Archivos_Geoportal/Amenaza_Movimientos_Masa/CondGenTermLicUso.pdf' download>T�rminos y condiciones de uso. </a>
     <a href='http://srvags.sgc.gov.co/Archivos_Geoportal/Amenaza_Movimientos_Masa/CondPropiedIntelectual.pdf' download>T�rminos de propiedad intelectual</a>
     
    </center>
</div>

<div id="tbllocal"></div>

<div id="dlg" title="T�RMINOS GENERALES Y CONDICIONES"> 
<B>Los siguientes t�rminos aplican de manera general a todos los productos/ informaci�n/datos que un usuario adquiere del SERVICIO GEOL�GICO COLOMBIANO</B>
<br>
PRINCIPIO:  
<br> 

SERVICIO GEOL�GICO COLOMBIANO no cede a ning�n t�tulo la informaci�n generada o adquirida sino que concede licencia de uso para un fin espec�fico y determinado. En consecuencia, los siguientes t�rminos constituyen un Acuerdo de Licenciamiento de uso de Informaci�n.
<br> 
DEFINICIONES:
<br> 
LICENCIADO: a quien se le concede el permiso de uso de la informaci�n. Para los t�rminos de SERVICIO GEOL�GICO COLOMBIANO, el usuario.
<br> 
T�RMINOS
<br> 
1.	Duraci�n
<br> 
1.1	Sujeto a estas condiciones, la LICENCIA tomar� efecto desde la fecha de firma del Acuerdo de Licenciamiento y terminar� si ocurre alguno de los eventos descritos en el numeral 9 de este acuerdo.  
<br> 
2.	Licencia
<br> 
2.1	Estos t�rminos y condiciones aplican a todos los datos LICENCIADOS, los cuales han sido adquiridos, o generados por SERVICIO GEOL�GICO COLOMBIANO.

<br> 
2.2.	Todos los datos deben ser mantenidos exclusivamente para el uso de la parte licenciada y no pueden ser transmitidos, asignados, intercambiados o vendidos a ninguna tercera parte sin el consentimiento previo escrito de SERVICIO GEOL�GICO COLOMBIANO.
<br> 
2.3.	El LICENCIADO no est� autorizado a hacer copias de la informaci�n suministrada.
<br> 
3.	Propiedad
<br> 
3.1.	El LICENCIADO entiende que el SERVICIO GEOL�GICO COLOMBIANO como Instituto Cient�fico y T�cnico adscrito al Ministerio de Minas y Energ�a y como parte del Sistema Nacional de Ciencia, Tecnolog�a e Innovaci�n - SNCTI retiene la propiedad de la informaci�n y los datos, bien en sus formas originales o en una forma modificada por el LICENCIADO y, de esta manera, tambi�n la propiedad intelectual de los mismos.
<br> 
4.	Cargos de licenciamiento
<br> 
4.1.	El cargo de licenciamiento no incluye impuestos, sobrecostos o cargos de transporte. Estos ser�n liquidados, en caso de ser necesarios, de manera separada.
<br> 
5.	Garant�as
<br> 
5.1.	El SERVICIO GEOL�GICO COLOMBIANO no garantiza que los datos est�n libres de errores, pero avisar� oportunamente de cualquier revisi�n o actualizaci�n a los datos, la cual puede ser hecha durante la validez de la LICENCIA.
<br> 
5.2.	El SERVICIO GEOL�GICO COLOMBIANO garantiza que el licenciamiento no infringe los derechos de propiedad intelectual de ninguna persona o entidad.
<br> 
6.	Confidencialidad
<br> 
6.1.	El LICENCIADO efectuar� todas las acciones necesarias para asegurar que ninguna persona, incluyendo, funcionarios, empleados, sub-contratistas o consultores contratados por el LICENCIADO, se acojan a las obligaciones establecidas en esta licencia. Se proh�be usar la informaci�n para un prop�sito diferente al acordado en los t�rminos de este acuerdo.
<br> 
7.	Explotaci�n de los datos
<br> 
7.1.	El LICENCIADO no comercializar� o intercambiar� los datos, o producto o servicio alguno derivado o resultado de la incorporaci�n de los datos sin autorizaci�n expresa por escrito de SERVICIO GEOL�GICO COLOMBIANO. 
<br> 
7.2.	En los casos en que haya sido concedida autorizaci�n al LICENCIADO para llevar a efecto procesamiento adicional de los datos y que est� disponible para la venta a terceras partes, el SERVICIO GEOL�GICO COLOMBIANO debe ser notificado y deber� recibir, libre de cualquier cargo, una copia de estos datos re-procesados en forma tanto digital como an�loga.
<br> 
7.3.	Los datos no pueden ser usados en un prospecto de compa��a o eslogan o publicados en ninguna forma sin autorizaci�n expresa por escrito de SERVICIO GEOL�GICO COLOMBIANO.
<br> 
7.4.	Los datos usados en cualquier publicaci�n o presentaci�n p�blica resultante del uso de estos datos, deber�n dar los respectivos cr�ditos de manera apropiada al SERVICIO GEOL�GICO COLOMBIANO, respetando siempre las normas de citaci�n y referenciaci�n bibliogr�fica. 
<br> 
8.	Liberaci�n de responsabilidad 
<br> 
8.1.	El LICENCIADO acuerda liberar de toda responsabilidad al SERVICIO GEOL�GICO COLOMBIANO, sus empleados, contratistas y cualquier parte reclamante bajo o a trav�s del SERVICIO GEOL�GICO COLOMBIANO con respecto a toda responsabilidad por p�rdida o da�os de los datos, causados por el uso que aquel haga de estos.
<br> 
8.2.	Las provisiones de esta condici�n sobrevivir�n a la expiraci�n o terminaci�n temprana del Acuerdo de Licenciamiento.
<br> 
8.3.	Si los datos son da�ados en tr�nsito, o son defectuosos en cualquier otra manera, ellos deben ser retornados al SERVICIO GEOL�GICO COLOMBIANO en los siguientes 30 d�as. Un cargo de reemplazo ser� aplicado a los datos reemplazados despu�s de este per�odo.
<br> 
9.	Terminaci�n
<br> 
9.1.	  El Acuerdo de Licenciamiento puede ser terminado: 
<br> 
(i)	Si cualquier parte viola alguno de los t�rminos de este acuerdo, la otra parte deber� enviar una notificaci�n escrita, especificando la violaci�n en que incurri� y requiriendo remediar dicha situaci�n de manera inmediata. Si pasados treinta (30) d�as calendario siguientes a la recepci�n de la notificaci�n por la parte infractora sin que se haya remediado la violaci�n, se dar� por terminado este Acuerdo de Licenciamiento.  
<br> 
(ii)	Por cualquier parte mediante solicitud escrita, en la que manifieste su deseo de concluir el Acuerdo a la otra parte con un mes de anticipaci�n a la fecha de la efectiva terminaci�n. 
<br> 
10.	 Aplicaci�n
<br> 
10.1.	  Las condiciones de licenciamiento establecidas aqu� ser�n entendidas como el principio de acuerdo entre las partes.
<br> 
11.	 Acuerdo completo
<br> 
11.1.	 Este Acuerdo de Licenciamiento prevalecer� sobre todos los acuerdos y decisiones precedentes entre las partes relacionadas con los datos y constituye el acuerdo completo entre las partes. Ninguna adici�n o modificaci�n del Acuerdo ser� anexada por las partes, a menos que se realice por escrito y cuente con el consentimiento libre y expreso de ambas partes.
<br> 
12.	 Notificaciones
<br> 
12.1.	Todas las notificaciones requeridas bajo el Acuerdo de Licenciamiento ser�n escritas y ser�n: (i) enviadas a la otra parte personalmente; o (ii) enviadas por fax a la otra parte, en cuyo caso la notificaci�n se presumir� recibida a partir del recibo de confirmaci�n del aparato de fax receptor; o (iii) enviada por correo certificado a la direcci�n de la otra parte.
<br> 
12.2.	El LICENCIADO no asignar�, ni en parte ni en todo su conjunto, el beneficio o carga del Acuerdo de Licenciamiento, sin el consentimiento escrito previo del Director General del SERVICIO GEOL�GICO COLOMBIANO.
<br> 
13.	 Ley Vigente
<br> 
13.1.	Este Acuerdo de Licenciamiento estar� gobernado y constituido en concordancia con las leyes vigentes en el territorio colombiano.
<br> 
Acepto

 </div>
 
