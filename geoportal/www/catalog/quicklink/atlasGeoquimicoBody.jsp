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
         caption: 'Atlas Geoquímico de Colombia 2016',
         paginator: {
             rows: 10
         },
         columns: [
             {field:'Nombre', headerText: 'Nombre', sortable:true},
             {field:'Descripcion', headerText: 'Descripción', sortable:true},
             {field:'Archivo', headerText: 'Archivo', sortable:true},
     
         ],
         datasource: [
             {'Nombre':'Atlas geoquímico','Descripcion': "Aluminio", 'Archivo':'Al.pdf'},
             {'Nombre':'Atlas geoquímico','Descripcion': "Arsénico", 'Archivo':'As.pdf'},
             {'Nombre':'Atlas geoquímico','Descripcion': "Oro", 'Archivo':'Au.pdf'},
             {'Nombre':'Atlas geoquímico','Descripcion': "Bario", 'Archivo':'Ba.pdf'},
             {'Nombre':'Atlas geoquímico','Descripcion': "Berilio", 'Archivo':'Be.pdf'},
             {'Nombre':'Atlas geoquímico','Descripcion': "Calcio", 'Archivo':'CaO.pdf'},
             {'Nombre':'Atlas geoquímico','Descripcion': "Caldas", 'Archivo':'Cd.pdf'},
             {'Nombre':'Atlas geoquímico','Descripcion': "Cadmio", 'Archivo':'Ce.pdf'},
             {'Nombre':'Atlas geoquímico','Descripcion': "Cerio", 'Archivo':'Co.pdf'},
	     	 {'Nombre':'Atlas geoquímico','Descripcion': "Cobalto", 'Archivo':'Cr.pdf'},	     	  
	     	{'Nombre':'Atlas geoquímico','Descripcion': "Cromo", 'Archivo':'Cs.pdf'},
	     	{'Nombre':'Atlas geoquímico','Descripcion': "Cobre", 'Archivo':'Cu.pdf'},
	     	{'Nombre':'Atlas geoquímico','Descripcion': "Disprosio", 'Archivo':'Dy.pdf'},
            {'Nombre':'Atlas geoquímico','Descripcion': "Hierro", 'Archivo':'Fe2O3.pdf'},
            {'Nombre':'Atlas geoquímico','Descripcion': "Galio", 'Archivo':'Hg.pdf'},
            {'Nombre':'Atlas geoquímico','Descripcion': "Mercurio", 'Archivo':'Ho.pdf'},
            {'Nombre':'Atlas geoquímico','Descripcion': "Holmio", 'Archivo':'In.pdf'},
            {'Nombre':'Atlas geoquímico','Descripcion': "Indio", 'Archivo':'K2O.pdf'},
            {'Nombre':'Atlas geoquímico','Descripcion': "Potasio", 'Archivo':'La.pdf'},
	     	 {'Nombre':'Atlas geoquímico','Descripcion': "Lantano", 'Archivo':'Li.pdf'}, 
	     	{'Nombre':'Atlas geoquímico','Descripcion': "Litio", 'Archivo':'Lu.pdf'}, 
	     	{'Nombre':'Atlas geoquímico','Descripcion': "Lutecio", 'Archivo':'MgO.pdf'},
            {'Nombre':'Atlas geoquímico','Descripcion': "Magnesio", 'Archivo':'Mn.pdf'},
            {'Nombre':'Atlas geoquímico','Descripcion': "Sodio", 'Archivo':'Na2O.pdf'},
            {'Nombre':'Atlas geoquímico','Descripcion': "Neodimio", 'Archivo':'Nd.pdf'},
            {'Nombre':'Atlas geoquímico','Descripcion': "Níquel", 'Archivo':'Ni.pdf'},
            {'Nombre':'Atlas geoquímico','Descripcion': "Fósforo", 'Archivo':'P2O5.pdf'},
            {'Nombre':'Atlas geoquímico','Descripcion': "Praseodimio", 'Archivo':'Pr.pdf'},
	     	 {'Nombre':'Atlas geoquímico','Descripcion': "Rubidio",'Archivo':'Rb.pdf'},
	     	{'Nombre':'Atlas geoquímico','Descripcion': "Silicio", 'Archivo':'SiO2.pdf'},
	     	 {'Nombre':'Atlas geoquímico','Descripcion': "Torio", 'Archivo':'Th.pdf'},  	 
	     	{'Nombre':'Atlas geoquímico','Descripcion': "Titanio", 'Archivo':'TiO2.pdf'},
	     	 {'Nombre':'Atlas geoquímico','Descripcion': "Uranio",'Archivo':'U.pdf'},
	     	{'Nombre':'Atlas geoquímico','Descripcion': "Vanadio", 'Archivo':'V.pdf'},
	     	 {'Nombre':'Atlas geoquímico','Descripcion': "Zinc", 'Archivo':'Zn.pdf'},
	     	{'Nombre':'Atlas geoquímico','Descripcion': "Zirconio", 'Archivo':'Zr.pdf'},
                          
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
        	 else if (data.Descripcion == 'Arsénico')
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
                else if (data.Descripcion == 'Níquel')
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
                else if (data.Descripcion == 'Fósforo')
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
    
     Conocimiento geoquímico del territorio nacional al servicio del pais
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