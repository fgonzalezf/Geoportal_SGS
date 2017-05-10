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
         caption: 'Atlas Geoqu�mico de Colombia 2016',
         paginator: {
             rows: 10
         },
         columns: [
             {field:'Nombre', headerText: 'Nombre', sortable:true},
             {field:'Descripcion', headerText: 'Descripci�n', sortable:true},
             {field:'Archivo', headerText: 'Archivo', sortable:true},
     
         ],
         datasource: [
             {'Nombre':'Atlas geoqu�mico','Descripcion': "Aluminio", 'Archivo':'Al.pdf'},
             {'Nombre':'Atlas geoqu�mico','Descripcion': "Ars�nico", 'Archivo':'As.pdf'},
             {'Nombre':'Atlas geoqu�mico','Descripcion': "Oro", 'Archivo':'Au.pdf'},
             {'Nombre':'Atlas geoqu�mico','Descripcion': "Bario", 'Archivo':'Ba.pdf'},
             {'Nombre':'Atlas geoqu�mico','Descripcion': "Berilio", 'Archivo':'Be.pdf'},
             {'Nombre':'Atlas geoqu�mico','Descripcion': "Calcio", 'Archivo':'CaO.pdf'},
             {'Nombre':'Atlas geoqu�mico','Descripcion': "Caldas", 'Archivo':'Cd.pdf'},
             {'Nombre':'Atlas geoqu�mico','Descripcion': "Cadmio", 'Archivo':'Ce.pdf'},
             {'Nombre':'Atlas geoqu�mico','Descripcion': "Cerio", 'Archivo':'Co.pdf'},
	     	 {'Nombre':'Atlas geoqu�mico','Descripcion': "Cobalto", 'Archivo':'Cr.pdf'},	     	  
	     	{'Nombre':'Atlas geoqu�mico','Descripcion': "Cromo", 'Archivo':'Cs.pdf'},
	     	{'Nombre':'Atlas geoqu�mico','Descripcion': "Cobre", 'Archivo':'Cu.pdf'},
	     	{'Nombre':'Atlas geoqu�mico','Descripcion': "Disprosio", 'Archivo':'Dy.pdf'},
            {'Nombre':'Atlas geoqu�mico','Descripcion': "Hierro", 'Archivo':'Fe2O3.pdf'},
            {'Nombre':'Atlas geoqu�mico','Descripcion': "Galio", 'Archivo':'Hg.pdf'},
            {'Nombre':'Atlas geoqu�mico','Descripcion': "Mercurio", 'Archivo':'Ho.pdf'},
            {'Nombre':'Atlas geoqu�mico','Descripcion': "Holmio", 'Archivo':'In.pdf'},
            {'Nombre':'Atlas geoqu�mico','Descripcion': "Indio", 'Archivo':'K2O.pdf'},
            {'Nombre':'Atlas geoqu�mico','Descripcion': "Potasio", 'Archivo':'La.pdf'},
	     	 {'Nombre':'Atlas geoqu�mico','Descripcion': "Lantano", 'Archivo':'Li.pdf'}, 
	     	{'Nombre':'Atlas geoqu�mico','Descripcion': "Litio", 'Archivo':'Lu.pdf'}, 
	     	{'Nombre':'Atlas geoqu�mico','Descripcion': "Lutecio", 'Archivo':'MgO.pdf'},
            {'Nombre':'Atlas geoqu�mico','Descripcion': "Magnesio", 'Archivo':'Mn.pdf'},
            {'Nombre':'Atlas geoqu�mico','Descripcion': "Sodio", 'Archivo':'Na2O.pdf'},
            {'Nombre':'Atlas geoqu�mico','Descripcion': "Neodimio", 'Archivo':'Nd.pdf'},
            {'Nombre':'Atlas geoqu�mico','Descripcion': "N�quel", 'Archivo':'Ni.pdf'},
            {'Nombre':'Atlas geoqu�mico','Descripcion': "F�sforo", 'Archivo':'P2O5.pdf'},
            {'Nombre':'Atlas geoqu�mico','Descripcion': "Praseodimio", 'Archivo':'Pr.pdf'},
	     	 {'Nombre':'Atlas geoqu�mico','Descripcion': "Rubidio",'Archivo':'Rb.pdf'},
	     	{'Nombre':'Atlas geoqu�mico','Descripcion': "Silicio", 'Archivo':'SiO2.pdf'},
	     	 {'Nombre':'Atlas geoqu�mico','Descripcion': "Torio", 'Archivo':'Th.pdf'},  	 
	     	{'Nombre':'Atlas geoqu�mico','Descripcion': "Titanio", 'Archivo':'TiO2.pdf'},
	     	 {'Nombre':'Atlas geoqu�mico','Descripcion': "Uranio",'Archivo':'U.pdf'},
	     	{'Nombre':'Atlas geoqu�mico','Descripcion': "Vanadio", 'Archivo':'V.pdf'},
	     	 {'Nombre':'Atlas geoqu�mico','Descripcion': "Zinc", 'Archivo':'Zn.pdf'},
	     	{'Nombre':'Atlas geoqu�mico','Descripcion': "Zirconio", 'Archivo':'Zr.pdf'},
                          
         ],
         selectionMode: 'single',
         rowSelect: function(event, data) {
        	 
        	 
        		 
   
        	
        	 if (data.Descripcion == 'Aluminio')
    		 {
        		 
        		 $('#dlg').puidialog('show');
        		
        		 var X=1
        		 $('#dlg').puidialog({
        			    afterHide: function(event) {
        			    	 if (X==1)
        			    		 {
        			    		    X=X+1
        			    	 		window.open('http://srvags.sgc.gov.co/Archivos_Geoportal/Recursos_Minerales/UNIDOS_ATLAS/Al.pdf');
        			    		    
        			    		 }
        			    },
        		        minimize:function(event) {
        		        	 X=X+1
        		        	 $('#dlg').puidialog('hide');
        		        	 $('#dlg').puidialog('toggleMinimize');
        		        }
        			});
        		
    		 }
        	 else if (data.Descripcion == 'Ars�nico')
             {
        		 $('#dlg').puidialog('show');
        		 
        		 var X=1
        		 $('#dlg').puidialog({
        			    afterHide: function(event) {
        			    	 if (X==1)
        			    		 {
        			    		 window.open('http://srvags.sgc.gov.co/Archivos_Geoportal/Recursos_Minerales/UNIDOS_ATLAS/As.pdf');
        			    		 }
        			    },
        		        minimize:function(event) {
        		        	 X=X+1
        		        	 $('#dlg').puidialog('hide');
        		        	 $('#dlg').puidialog('toggleMinimize');
        		        }
        			});
        		
             }
        	 else if (data.Descripcion == 'Oro')
             {
        		 $('#dlg').puidialog('show');
        		
        		 var X=1
        		 $('#dlg').puidialog({
        			    afterHide: function(event) {
        			    	 if (X==1)
        			    		 {
        			    		 window.open('http://srvags.sgc.gov.co/Archivos_Geoportal/Recursos_Minerales/UNIDOS_ATLAS/Au.pdf');
        			    		 }
        			    },
        		        minimize:function(event) {
        		        	 X=X+1
        		        	 $('#dlg').puidialog('hide');
        		        	 $('#dlg').puidialog('toggleMinimize');
        		        }
        			});
        		 
             }       	 
        	 else if (data.Descripcion == 'Bario')
             {
        		 $('#dlg').puidialog('show');
        		 
        		 var X=1
        		 $('#dlg').puidialog({
        			    afterHide: function(event) {
        			    	 if (X==1)
        			    		 {
        			    		 window.open('http://srvags.sgc.gov.co/Archivos_Geoportal/Recursos_Minerales/UNIDOS_ATLAS/Ba.pdf');
        			    		 }
        			    },
        		        minimize:function(event) {
        		        	 X=X+1
        		        	 $('#dlg').puidialog('hide');
        		        	 $('#dlg').puidialog('toggleMinimize');
        		        }
        			});
        		 
             }
        	 else if (data.Descripcion == 'Berilio')
             {
        		 $('#dlg').puidialog('show');
        		 
        		 var X=1
        		 $('#dlg').puidialog({
        			    afterHide: function(event) {
        			    	 if (X==1)
        			    		 {
        			    		 window.open('http://srvags.sgc.gov.co/Archivos_Geoportal/Recursos_Minerales/UNIDOS_ATLAS/Be.pdf');
        			    		 }
        			    },
        		        minimize:function(event) {
        		        	 X=X+1
        		        	 $('#dlg').puidialog('hide');
        		        	 $('#dlg').puidialog('toggleMinimize');
        		        }
        			});
        		
             }
        	 else if (data.Descripcion == 'Calcio')
             {
        		 $('#dlg').puidialog('show');
        		
        		 var X=1
        		 $('#dlg').puidialog({
        			    afterHide: function(event) {
        			    	 if (X==1)
        			    		 {
        			    		 window.open('http://srvags.sgc.gov.co/Archivos_Geoportal/Recursos_Minerales/UNIDOS_ATLAS/CaO.pdf');
        			    		 }
        			    },
        		        minimize:function(event) {
        		        	 X=X+1
        		        	 $('#dlg').puidialog('hide');
        		        	 $('#dlg').puidialog('toggleMinimize');
        		        }
        			});
        		 
             }
        	 else if (data.Descripcion == 'Cadmio')
             {
        		 $('#dlg').puidialog('show');
        		 
        		 var X=1
        		 $('#dlg').puidialog({
        			    afterHide: function(event) {
        			    	 if (X==1)
        			    		 {
        			    		 window.open('http://srvags.sgc.gov.co/Archivos_Geoportal/Recursos_Minerales/UNIDOS_ATLAS/Cd.pdf');
        			    		 }
        			    },
        		        minimize:function(event) {
        		        	 X=X+1
        		        	 $('#dlg').puidialog('hide');
        		        	 $('#dlg').puidialog('toggleMinimize');
        		        }
        			});
        		 
             }
        	 else if (data.Descripcion == 'Cerio')
             {
        		 $('#dlg').puidialog('show');
        		 
        		 var X=1
        		 $('#dlg').puidialog({
        			    afterHide: function(event) {
        			    	 if (X==1)
        			    		 {
        			    		 window.open('http://srvags.sgc.gov.co/Archivos_Geoportal/Recursos_Minerales/UNIDOS_ATLAS/Ce.pdf');
        			    		 }
        			    },
        		        minimize:function(event) {
        		        	 X=X+1
        		        	 $('#dlg').puidialog('hide');
        		        	 $('#dlg').puidialog('toggleMinimize');
        		        }
        			});
        		 
             }
              else if (data.Descripcion == 'Cobalto')
             {
            	 $('#dlg').puidialog('show');
         		 
         		 var X=1
         		 $('#dlg').puidialog({
         			    afterHide: function(event) {
         			    	 if (X==1)
         			    		 {
         			    		window.open('http://srvags.sgc.gov.co/Archivos_Geoportal/Recursos_Minerales/UNIDOS_ATLAS/Co.pdf');
         			    		 }
         			    },
         		        minimize:function(event) {
         		        	 X=X+1
         		        	 $('#dlg').puidialog('hide');
         		        	$('#dlg').puidialog('toggleMinimize');
         		        }
         			});
        		 
             }
              else if (data.Descripcion == 'Cromo')
             {
            	  $('#dlg').puidialog('show');
          		 
          		 var X=1
          		 $('#dlg').puidialog({
          			    afterHide: function(event) {
          			    	 if (X==1)
          			    		 {
          			    		 window.open('http://srvags.sgc.gov.co/Archivos_Geoportal/Recursos_Minerales/UNIDOS_ATLAS/Cr.pdf');
          			    		 }
          			    },
          		        minimize:function(event) {
          		        	 X=X+1
          		        	 $('#dlg').puidialog('hide');
          		        	$('#dlg').puidialog('toggleMinimize');
          		        }
          			});
        		
             }
         
         
              else if (data.Descripcion == 'Cesio')
              {
            	  $('#dlg').puidialog('show');
           		 
           		 var X=1
           		 $('#dlg').puidialog({
           			    afterHide: function(event) {
           			    	 if (X==1)
           			    		 {
           			    		 window.open('http://srvags.sgc.gov.co/Archivos_Geoportal/Recursos_Minerales/UNIDOS_ATLAS/Cs.pdf');
           			    		 }
           			    },
           		        minimize:function(event) {
           		        	 X=X+1
           		        	 $('#dlg').puidialog('hide');
           		        	 $('#dlg').puidialog('toggleMinimize');
           		        }
           			});
         		
         		
              }
              else if (data.Descripcion == 'Cobre')
              {
            	  $('#dlg').puidialog('show');
            		
            		 var X=1
            		 $('#dlg').puidialog({
            			    afterHide: function(event) {
            			    	 if (X==1)
            			    		 {
            			    		 window.open('http://srvags.sgc.gov.co/Archivos_Geoportal/Recursos_Minerales/UNIDOS_ATLAS/Cu.pdf');
            			    		 }
            			    },
            		        minimize:function(event) {
            		        	 X=X+1
            		        	 $('#dlg').puidialog('hide');
            		        	 $('#dlg').puidialog('toggleMinimize');
            		        }
            			});
         		 
              }
              else if (data.Descripcion == 'Disprosio')
              {
            	  $('#dlg').puidialog('show');
         		
         		 var X=1
         		 $('#dlg').puidialog({
         			    afterHide: function(event) {
         			    	 if (X==1)
         			    		 {
         			    		 window.open('http://srvags.sgc.gov.co/Archivos_Geoportal/Recursos_Minerales/UNIDOS_ATLAS/Dy.pdf');
         			    		 }
         			    },
         		        minimize:function(event) {
         		        	 X=X+1
         		        	 $('#dlg').puidialog('hide');
         		        	 $('#dlg').puidialog('toggleMinimize');
         		        }
         			});
         		
              }
         	 else if (data.Descripcion == 'Hierro')
              {
         		$('#dlg').puidialog('show');
        		
        		 var X=1
        		 $('#dlg').puidialog({
        			    afterHide: function(event) {
        			    	 if (X==1)
        			    		 {
        			    		 window.open('http://srvags.sgc.gov.co/Archivos_Geoportal/Recursos_Minerales/UNIDOS_ATLAS/Fe2O3.pdf');
        			    		 }
        			    },
        		        minimize:function(event) {
        		        	 X=X+1
        		        	 $('#dlg').puidialog('hide');
        		        	 $('#dlg').puidialog('toggleMinimize');
        		        }
        			});
         		 
              }
         	else if (data.Descripcion == 'Galio')
            {
         		$('#dlg').puidialog('show');
       		 
       		 var X=1
       		 $('#dlg').puidialog({
       			    afterHide: function(event) {
       			    	 if (X==1)
       			    		 {
       			    		 window.open('http://srvags.sgc.gov.co/Archivos_Geoportal/Recursos_Minerales/UNIDOS_ATLAS/Ga.pdf');
       			    		 }
       			    },
       		        minimize:function(event) {
       		        	 X=X+1
       		        	 $('#dlg').puidialog('hide');
       		        	 $('#dlg').puidialog('toggleMinimize');
       		        }
       			});
       		
            }
         	 else if (data.Descripcion == 'Mercurio')
              {
         		 $('#dlg').puidialog('show');
          		 var X=1
          		 $('#dlg').puidialog({
          			    afterHide: function(event) {
          			    	 if (X==1)
          			    		 {
          			    		 window.open('http://srvags.sgc.gov.co/Archivos_Geoportal/Recursos_Minerales/UNIDOS_ATLAS/Hg.pdf');
          			    		 }
          			    },
          		        minimize:function(event) {
          		        	 X=X+1
          		        	 $('#dlg').puidialog('hide');
          		        	 $('#dlg').puidialog('toggleMinimize');
          		        }
          			});
         		
              }
         	 else if (data.Descripcion == 'Holmio')
              {
         		$('#dlg').puidialog('show');
         		 var X=1
         		 $('#dlg').puidialog({
         			    afterHide: function(event) {
         			    	 if (X==1)
         			    		 {
         			    		window.open('http://srvags.sgc.gov.co/Archivos_Geoportal/Recursos_Minerales/UNIDOS_ATLAS/Ho.pdf');
         			    		 }
         			    },
         		        minimize:function(event) {
         		        	 X=X+1
         		        	 $('#dlg').puidialog('hide');
         		        	 $('#dlg').puidialog('toggleMinimize');
         		        }
         			});
         		 
              }
               else if (data.Descripcion == 'Indio')
              {
            	 $('#dlg').puidialog('show');
           		 var X=1
           		 $('#dlg').puidialog({
           			    afterHide: function(event) {
           			    	 if (X==1)
           			    		 {
           			    		window.open('http://srvags.sgc.gov.co/Archivos_Geoportal/Recursos_Minerales/UNIDOS_ATLAS/In.pdf');
           			    		 }
           			    },
           		        minimize:function(event) {
           		        	 X=X+1
           		        	 $('#dlg').puidialog('hide');
           		        	 $('#dlg').puidialog('toggleMinimize');
           		        }
           			});
         		 
              }
               else if (data.Descripcion == 'Potasio')
              {
            	   $('#dlg').puidialog('show');
             		 var X=1
             		 $('#dlg').puidialog({
             			    afterHide: function(event) {
             			    	 if (X==1)
             			    		 {
             			    		window.open('http://srvags.sgc.gov.co/Archivos_Geoportal/Recursos_Minerales/UNIDOS_ATLAS/K2O.pdf');
             			    		 }
             			    },
             		        minimize:function(event) {
             		        	 X=X+1
             		        	 $('#dlg').puidialog('hide');
             		        	 $('#dlg').puidialog('toggleMinimize');
             		        }
             			});
         		 
              }
              
               else if (data.Descripcion == 'Lantano')
               {
            	   $('#dlg').puidialog('show');
           		 var X=1
           		 $('#dlg').puidialog({
           			    afterHide: function(event) {
           			    	 if (X==1)
           			    		 {
           			    		window.open('http://srvags.sgc.gov.co/Archivos_Geoportal/Recursos_Minerales/UNIDOS_ATLAS/La.pdf');
           			    		 }
           			    },
           		        minimize:function(event) {
           		        	 X=X+1
           		        	 $('#dlg').puidialog('hide');
           		        	 $('#dlg').puidialog('toggleMinimize');
           		        }
           			});
          		 
               }
               else if (data.Descripcion == 'Litio')
               {
            	   $('#dlg').puidialog('show');
             		 var X=1
             		 $('#dlg').puidialog({
             			    afterHide: function(event) {
             			    	 if (X==1)
             			    		 {
             			    		window.open('http://srvags.sgc.gov.co/Archivos_Geoportal/Recursos_Minerales/UNIDOS_ATLAS/Li.pdf');
             			    		 }
             			    },
             		        minimize:function(event) {
             		        	 X=X+1
             		        	 $('#dlg').puidialog('hide');
             		        	 $('#dlg').puidialog('toggleMinimize');
             		        }
             			});
          		 
               }
          	 else if (data.Descripcion == 'Lutecio')
               {
          		$('#dlg').puidialog('show');
        		 var X=1
        		 $('#dlg').puidialog({
        			    afterHide: function(event) {
        			    	 if (X==1)
        			    		 {
        			    		 window.open('http://srvags.sgc.gov.co/Archivos_Geoportal/Recursos_Minerales/UNIDOS_ATLAS/Lu.pdf');
        			    		 }
        			    },
        		        minimize:function(event) {
        		        	 X=X+1
        		        	 $('#dlg').puidialog('hide');
        		        	 $('#dlg').puidialog('toggleMinimize');
        		        }
        			});
     		 
          		 
               }
          	 else if (data.Descripcion == 'Magnesio')
               {
          		$('#dlg').puidialog('show');
       		 var X=1
       		 $('#dlg').puidialog({
       			    afterHide: function(event) {
       			    	 if (X==1)
       			    		 {
       			    		window.open('http://srvags.sgc.gov.co/Archivos_Geoportal/Recursos_Minerales/UNIDOS_ATLAS/MgO.pdf');
       			    		 }
       			    },
       		        minimize:function(event) {
       		        	 X=X+1
       		        	 $('#dlg').puidialog('hide');
       		        	$('#dlg').puidialog('toggleMinimize');
       		        }
       			});
          		 
               }
          	else if (data.Descripcion == 'Maganeso')
            {
          		$('#dlg').puidialog('show');
          		 var X=1
          		 $('#dlg').puidialog({
          			    afterHide: function(event) {
          			    	 if (X==1)
          			    		 {
          			    		window.open('http://srvags.sgc.gov.co/Archivos_Geoportal/Recursos_Minerales/UNIDOS_ATLAS/Mn.pdf');
          			    		 }
          			    },
          		        minimize:function(event) {
          		        	 X=X+1
          		        	 $('#dlg').puidialog('hide');
          		        	$('#dlg').puidialog('toggleMinimize');
          		        }
          			});
       		 
            }
          	 else if (data.Descripcion == 'Sodio')
               {
          		$('#dlg').puidialog('show');
         		 var X=1
         		 $('#dlg').puidialog({
         			    afterHide: function(event) {
         			    	 if (X==1)
         			    		 {
         			    		window.open('http://srvags.sgc.gov.co/Archivos_Geoportal/Recursos_Minerales/UNIDOS_ATLAS/Na2O.pdf');
         			    		 }
         			    },
         		        minimize:function(event) {
         		        	 X=X+1
         		        	 $('#dlg').puidialog('hide');
         		        	$('#dlg').puidialog('toggleMinimize');
         		        }
         			});
          		 
               }
                else if (data.Descripcion == 'Neodimio')
               {
                	$('#dlg').puidialog('show');
            		 var X=1
            		 $('#dlg').puidialog({
            			    afterHide: function(event) {
            			    	 if (X==1)
            			    		 {
            			    		 window.open('http://srvags.sgc.gov.co/Archivos_Geoportal/Recursos_Minerales/UNIDOS_ATLAS/Nd.pdf');
            			    		 }
            			    },
            		        minimize:function(event) {
            		        	 X=X+1
            		        	 $('#dlg').puidialog('hide');
            		        	 $('#dlg').puidialog('toggleMinimize');
            		        }
            			});
          		 
               }
                else if (data.Descripcion == 'N�quel')
               {
                	$('#dlg').puidialog('show');
           		 var X=1
           		 $('#dlg').puidialog({
           			    afterHide: function(event) {
           			    	 if (X==1)
           			    		 {
           			    		 window.open('http://srvags.sgc.gov.co/Archivos_Geoportal/Recursos_Minerales/UNIDOS_ATLAS/Ni.pdf');
           			    		 }
           			    },
           		        minimize:function(event) {
           		        	 X=X+1
           		        	 $('#dlg').puidialog('hide');
           		        	$('#dlg').puidialog('toggleMinimize');
           		        }
           			});
          		
               }
                else if (data.Descripcion == 'F�sforo')
                {
                	$('#dlg').puidialog('show');
              		 var X=1
              		 $('#dlg').puidialog({
              			    afterHide: function(event) {
              			    	 if (X==1)
              			    		 {
              			    		window.open('http://srvags.sgc.gov.co/Archivos_Geoportal/Recursos_Minerales/UNIDOS_ATLAS/P2O5.pdf');
              			    		 }
              			    },
              		        minimize:function(event) {
              		        	 X=X+1
              		        	 $('#dlg').puidialog('hide');
              		        	$('#dlg').puidialog('toggleMinimize');
              		        }
              			});
           		 
                }
                 else if (data.Descripcion == 'Praseodimio')
                {
                	 $('#dlg').puidialog('show');
              		 var X=1
              		 $('#dlg').puidialog({
              			    afterHide: function(event) {
              			    	 if (X==1)
              			    		 {
              			    		window.open('http://srvags.sgc.gov.co/Archivos_Geoportal/Recursos_Minerales/UNIDOS_ATLAS/Pr.pdf');
              			    		 }
              			    },
              		        minimize:function(event) {
              		        	 X=X+1
              		        	 $('#dlg').puidialog('hide');
              		        	$('#dlg').puidialog('toggleMinimize');
              		        }
              			});
           		 
                }
                 else if (data.Descripcion == 'Silicio')
                 {
                	 $('#dlg').puidialog('show');
              		 var X=1
              		 $('#dlg').puidialog({
              			    afterHide: function(event) {
              			    	 if (X==1)
              			    		 {
              			    		window.open('http://srvags.sgc.gov.co/Archivos_Geoportal/Recursos_Minerales/UNIDOS_ATLAS/SiO2.pdf');
              			    		 }
              			    },
              		        minimize:function(event) {
              		        	 X=X+1
              		        	 $('#dlg').puidialog('hide');
              		        	$('#dlg').puidialog('toggleMinimize');
              		        }
              			});
            		 
                 }
        	 
        	 
                 else if (data.Descripcion == 'Torio')
                 {
                	 $('#dlg').puidialog('show');
              		 var X=1
              		 $('#dlg').puidialog({
              			    afterHide: function(event) {
              			    	 if (X==1)
              			    		 {
              			    		window.open('http://srvags.sgc.gov.co/Archivos_Geoportal/Recursos_Minerales/UNIDOS_ATLAS/Th.pdf');
              			    		 }
              			    },
              		        minimize:function(event) {
              		        	 X=X+1
              		        	 $('#dlg').puidialog('hide');
              		        	$('#dlg').puidialog('toggleMinimize');
              		        }
              			});
            		 
                 }
        	 
                 else if (data.Descripcion == 'Titanio')
                 {
                  	$('#dlg').puidialog('show');
             		 var X=1
             		 $('#dlg').puidialog({
             			    afterHide: function(event) {
             			    	 if (X==1)
             			    		 {
             			    		 window.open('http://srvags.sgc.gov.co/Archivos_Geoportal/Recursos_Minerales/UNIDOS_ATLAS/TiO2.pdf');
             			    		 }
             			    },
             		        minimize:function(event) {
             		        	 X=X+1
             		        	 $('#dlg').puidialog('hide');
             		        	$('#dlg').puidialog('toggleMinimize');
             		        }
             			});
            		
                 }
                  else if (data.Descripcion == 'Uranio')
                  {
                  	$('#dlg').puidialog('show');
                		 var X=1
                		 $('#dlg').puidialog({
                			    afterHide: function(event) {
                			    	 if (X==1)
                			    		 {
                			    		window.open('http://srvags.sgc.gov.co/Archivos_Geoportal/Recursos_Minerales/UNIDOS_ATLAS/U.pdf');
                			    		 }
                			    },
                		        minimize:function(event) {
                		        	 X=X+1
                		        	 $('#dlg').puidialog('hide');
                		        	$('#dlg').puidialog('toggleMinimize');
                		        }
                			});
             		 
                  }
                   else if (data.Descripcion == 'Vanadio')
                  {
                  	 $('#dlg').puidialog('show');
                		 var X=1
                		 $('#dlg').puidialog({
                			    afterHide: function(event) {
                			    	 if (X==1)
                			    		 {
                			    		window.open('http://srvags.sgc.gov.co/Archivos_Geoportal/Recursos_Minerales/UNIDOS_ATLAS/V.pdf');
                			    		 }
                			    },
                		        minimize:function(event) {
                		        	 X=X+1
                		        	 $('#dlg').puidialog('hide');
                		        	$('#dlg').puidialog('toggleMinimize');
                		        }
                			});
             		 
                  }
                   else if (data.Descripcion == 'Zinc')
                   {
                  	 $('#dlg').puidialog('show');
                		 var X=1
                		 $('#dlg').puidialog({
                			    afterHide: function(event) {
                			    	 if (X==1)
                			    		 {
                			    		window.open('http://srvags.sgc.gov.co/Archivos_Geoportal/Recursos_Minerales/UNIDOS_ATLAS/Zn.pdf');
                			    		 }
                			    },
                		        minimize:function(event) {
                		        	 X=X+1
                		        	 $('#dlg').puidialog('hide');
                		        	$('#dlg').puidialog('toggleMinimize');
                		        }
                			});
              		 
                   }
          	 
          	 
                   else if (data.Descripcion == 'Zirconio')
                   {
                  	 $('#dlg').puidialog('show');
                		 var X=1
                		 $('#dlg').puidialog({
                			    afterHide: function(event) {
                			    	 if (X==1)
                			    		 {
                			    		window.open('http://srvags.sgc.gov.co/Archivos_Geoportal/Recursos_Minerales/UNIDOS_ATLAS/Zr.pdf');
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


 <div id="default" style="margin-bottom:20px" title="">
    
     Conocimiento geoqu�mico del territorio nacional al servicio del pais
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