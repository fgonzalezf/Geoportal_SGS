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
             {'Nombre':'Atlas geoquímico','Descripcion': "Cadmio", 'Archivo':'Cd.pdf'},
             {'Nombre':'Atlas geoquímico','Descripcion': "Cerio", 'Archivo':'Ce.pdf'},
             {'Nombre':'Atlas geoquímico','Descripcion': "Cobalto", 'Archivo':'Co.pdf'},
	     	 {'Nombre':'Atlas geoquímico','Descripcion': "Cromo", 'Archivo':'Cr.pdf'},	     	  
	     	{'Nombre':'Atlas geoquímico','Descripcion': "Cesio", 'Archivo':'Cs.pdf'},
	     	{'Nombre':'Atlas geoquímico','Descripcion': "Cobre", 'Archivo':'Cu.pdf'},
	     	{'Nombre':'Atlas geoquímico','Descripcion': "Disprosio", 'Archivo':'Dy.pdf'},
            {'Nombre':'Atlas geoquímico','Descripcion': "Hierro", 'Archivo':'Fe2O3.pdf'},
			{'Nombre':'Atlas geoquímico','Descripcion': "Galio", 'Archivo':'Ga.pdf'},
            {'Nombre':'Atlas geoquímico','Descripcion': "Mercurio", 'Archivo':'Hg.pdf'},
            {'Nombre':'Atlas geoquímico','Descripcion': "Holmio", 'Archivo':'Ho.pdf'},
            {'Nombre':'Atlas geoquímico','Descripcion': "Indio", 'Archivo':'In.pdf'},
            {'Nombre':'Atlas geoquímico','Descripcion': "Potasio", 'Archivo':'K2O.pdf'},
            {'Nombre':'Atlas geoquímico','Descripcion': "Lantano", 'Archivo':'La.pdf'},
	     	 {'Nombre':'Atlas geoquímico','Descripcion': "Litio", 'Archivo':'Li.pdf'}, 
	     	{'Nombre':'Atlas geoquímico','Descripcion': "Lutecio", 'Archivo':'Lu.pdf'}, 
	     	{'Nombre':'Atlas geoquímico','Descripcion': "Magnesio", 'Archivo':'MgO.pdf'},
            {'Nombre':'Atlas geoquímico','Descripcion': "Manganeso", 'Archivo':'Mn.pdf'},
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
			
			{'Nombre':'Atlas geoquímico','Descripcion': "Bismuto",'Archivo':'Bi.pdf'},
	     	{'Nombre':'Atlas geoquímico','Descripcion': "Escandio", 'Archivo':'Sc.pdf'},
	     	 {'Nombre':'Atlas geoquímico','Descripcion': "Estroncio", 'Archivo':'Sc.pdf'},
	     	
                          
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
				    else if (data.Descripcion == 'Bismuto')
                  {
                  	$('#dlg').puidialog('show');
                		 var X=1
                		 $('#dlg').puidialog({
                			    afterHide: function(event) {
                			    	 if (X==1)
                			    		 {
                			    		window.open('http://srvags.sgc.gov.co/Archivos_Geoportal/Recursos_Minerales/UNIDOS_ATLAS/Bi.pdf');
                			    		 }
                			    },
                		        minimize:function(event) {
                		        	 X=X+1
                		        	 $('#dlg').puidialog('hide');
                		        	$('#dlg').puidialog('toggleMinimize');
                		        }
                			});
             		 
                  }
                   
                   else if (data.Descripcion == 'Escandio')
                   {
                  	 $('#dlg').puidialog('show');
                		 var X=1
                		 $('#dlg').puidialog({
                			    afterHide: function(event) {
                			    	 if (X==1)
                			    		 {
                			    		window.open('http://srvags.sgc.gov.co/Archivos_Geoportal/Recursos_Minerales/UNIDOS_ATLAS/Sc.pdf');
                			    		 }
                			    },
                		        minimize:function(event) {
                		        	 X=X+1
                		        	 $('#dlg').puidialog('hide');
                		        	$('#dlg').puidialog('toggleMinimize');
                		        }
                			});
              		 
                   }
          	 
          	 
                   else if (data.Descripcion == 'Estroncio')
                   {
                  	 $('#dlg').puidialog('show');
                		 var X=1
                		 $('#dlg').puidialog({
                			    afterHide: function(event) {
                			    	 if (X==1)
                			    		 {
                			    		window.open('http://srvags.sgc.gov.co/Archivos_Geoportal/Recursos_Minerales/UNIDOS_ATLAS/Sr.pdf');
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

<!--  
 <div id="default" style="margin-bottom:20px" title="">
    
     Conocimiento geoquímico del territorio nacional al servicio del pais
    </center>
</div>


<div id="tbllocal"></div>
-->
<!DOCTYPE html>
<html>
	<head>
      <meta charset='utf-8'>
		<style>html {
  background: #787878;
  /* Old browsers */
  background: radial-gradient(ellipse at center, #454545 0%, #787878 100%);
  background-size: cover;
  height: 100%;
  font-family: Lato, "Helvetica Neue", Helvetica, Arial, sans-serif; }

body {
  width: 1000%;
  width: 100vw;
  heigt: 100%;
  
  color: black; }

h1 {
  text-align: center;
  font-size: 2.5rem;
  color: #000; }

.elements {
  font-size: 10px; }
  @media screen and (min-width: 400px) {
    .elements {
      font-size: calc(10px + 8 * ((100vw - 600px) / 1320)); } }
  @media screen and (min-width: 1920px) {
    .elements {
      font-size: 18px; } }

.element {
  display: none; }

.key {
  display: none; }

@media screen and (min-width: 600px) {
  .row {
    display: flex;
    text-align: center;
    height: 4vmin;
    justify-content: space-around; }
  .f-block .row {
    justify-content: flex-end; }
  .element {
    display: flex;
    font-weight: bold;
    align-items: center;
    justify-content: center;
    flex: 2vw 0 0;
    color: black;
    box-sizing: border-box;
    border-radius: 3px;
    margin: 1px;
    text-decoration: none; }
  .description {
    display: none; }
  .description:target {
    display: block; }
  .key {
    display: block;
    padding: 0;
    width: 60%;
    max-width: 650px;
    list-style-type: none;
    color: #fff;
    line-height: 1.8;
    font-weight: normal; }
  .key li {
    display: inline-block;
    margin: 0 .2rem;
    position: relative;
    padding-left: 20px;
    cursor: pointer; }
  .key li:before {
    content: '';
    display: block;
    position: absolute;
    left: 0;
    top: 50%;
    transform: translate(0, -50%);
    width: 16px;
    height: 16px; } }

.description {
  padding: 1em;
  margin: 2em 0;
  text-overflow: ellipsis; }
  .description h2 {
    margin: 0; }
  .description a {
    color: #1d2441;
    text-decoration: none; }
  .description a:visited {
    color: #3C4C88; }
  .description a:hover, .description a:focus {
    color: #3C4C88;
    text-decoration: underline; }
  .description .moz-link {
    position: relative;
    padding-left: 24px; }
  .description .moz-link:before {
    content: '';
    display: block;
    position: absolute;
    left: 0;
    top: 50%;
    background: url("moz.png");
    transform: translate(0, -50%);
    width: 16px;
    height: 16px; }

.element.group-base {
  background-color: #E115DA; }
  .element.group-base:hover {
    background-color: #F4A9F1; }

.description.group-base {
  background-color: rgba(225, 170, 173, 0.5); }
  .description.group-base:hover {
    background-color: rgba(212, 132, 137, 0.8); }

.key li.group-base:before {
  background-color: #E115DA; }

.hover-group-base .element {
  opacity: .3; }

.hover-group-base .element.group-base {
  opacity: 1; }

.element.group-metadata {
  background-color: #ACAEAB; }
  .element.group-metadata:hover {
    background-color: #FFFFFF; }

.description.group-metadata {
  background-color: rgba(225, 180, 170, 0.5); }
  .description.group-metadata:hover {
    background-color: rgba(212, 147, 132, 0.8); }

.key li.group-metadata:before {
  background-color: #ACAEAB; }

.hover-group-metadata .element {
  opacity: .3; }

.hover-group-metadata .element.group-metadata {
  opacity: 1; }

.element.group-sectioning {
  background-color: #d4a784; }
  .element.group-sectioning:hover {
    background-color: #e1c2aa; }

.description.group-sectioning {
  background-color: rgba(225, 194, 170, 0.5); }
  .description.group-sectioning:hover {
    background-color: rgba(212, 167, 132, 0.8); }

.key li.group-sectioning:before {
  background-color: #d4a784; }

.hover-group-sectioning .element {
  opacity: .5; }

.hover-group-sectioning .element.group-sectioning {
  opacity: 1; }

.element.group-text-content {
  background-color: #d4bb84; }
  .element.group-text-content:hover {
    background-color: #e1d0aa; }

.description.group-text-content {
  background-color: rgba(225, 208, 170, 0.5); }
  .description.group-text-content:hover {
    background-color: rgba(212, 187, 132, 0.8); }

.key li.group-text-content:before {
  background-color: #d4bb84; }

.hover-group-text-content .element {
  opacity: .5; }

.hover-group-text-content .element.group-text-content {
  opacity: 1; }

.element.group-text-semantics {
  background-color: #d4cf84; }
  .element.group-text-semantics:hover {
    background-color: #e1deaa; }

.description.group-text-semantics {
  background-color: rgba(225, 222, 170, 0.5); }
  .description.group-text-semantics:hover {
    background-color: rgba(212, 207, 132, 0.8); }

.key li.group-text-semantics:before {
  background-color: #d4cf84; }

.hover-group-text-semantics .element {
  opacity: .5; }

.hover-group-text-semantics .element.group-text-semantics {
  opacity: 1; }

.element.group-media {
  background-color: #c5d484; }
  .element.group-media:hover {
    background-color: #d7e1aa; }

.description.group-media {
  background-color: rgba(215, 225, 170, 0.5); }
  .description.group-media:hover {
    background-color: rgba(197, 212, 132, 0.8); }

.key li.group-media:before {
  background-color: #c5d484; }

.hover-group-media .element {
  opacity: .5; }

.hover-group-media .element.group-media {
  opacity: 1; }

.element.group-embedded {
  background-color: #b1d484; }
  .element.group-embedded:hover {
    background-color: #c9e1aa; }

.description.group-embedded {
  background-color: rgba(201, 225, 170, 0.5); }
  .description.group-embedded:hover {
    background-color: rgba(177, 212, 132, 0.8); }

.key li.group-embedded:before {
  background-color: #b1d484; }

.hover-group-embedded .element {
  opacity: .5; }

.hover-group-embedded .element.group-embedded {
  opacity: 1; }

.element.group-script {
  background-color: #9dd484; }
  .element.group-script:hover {
    background-color: #bbe1aa; }

.description.group-script {
  background-color: rgba(187, 225, 170, 0.5); }
  .description.group-script:hover {
    background-color: rgba(157, 212, 132, 0.8); }

.key li.group-script:before {
  background-color: #9dd484; }

.hover-group-script .element {
  opacity: .5; }

.hover-group-script .element.group-script {
  opacity: 1; }

.element.group-edits {
  background-color: #89d484; }
  .element.group-edits:hover {
    background-color: #ade1aa; }

.description.group-edits {
  background-color: rgba(173, 225, 170, 0.5); }
  .description.group-edits:hover {
    background-color: rgba(137, 212, 132, 0.8); }

.key li.group-edits:before {
  background-color: #89d484; }

.hover-group-edits .element {
  opacity: .5; }

.hover-group-edits .element.group-edits {
  opacity: 1; }

.element.group-table {
  background-color: #84d493; }
  .element.group-table:hover {
    background-color: #aae1b4; }

.description.group-table {
  background-color: rgba(170, 225, 180, 0.5); }
  .description.group-table:hover {
    background-color: rgba(132, 212, 147, 0.8); }

.key li.group-table:before {
  background-color: #84d493; }

.hover-group-table .element {
  opacity: .5; }

.hover-group-table .element.group-table {
  opacity: 1; }

.element.group-forms {
  background-color: #84d4a7; }
  .element.group-forms:hover {
    background-color: #aae1c2; }

.description.group-forms {
  background-color: rgba(170, 225, 194, 0.5); }
  .description.group-forms:hover {
    background-color: rgba(132, 212, 167, 0.8); }

.key li.group-forms:before {
  background-color: #84d4a7; }

.hover-group-forms .element {
  opacity: .5; }

.hover-group-forms .element.group-forms {
  opacity: 1; }

.element.group-interactive {
  background-color: #84d4bb; }
  .element.group-interactive:hover {
    background-color: #aae1d0; }

.description.group-interactive {
  background-color: rgba(170, 225, 208, 0.5); }
  .description.group-interactive:hover {
    background-color: rgba(132, 212, 187, 0.8); }

.key li.group-interactive:before {
  background-color: #84d4bb; }

.hover-group-interactive .element {
  opacity: .5; }

.hover-group-interactive .element.group-interactive {
  opacity: 1; }

.element.group-web-components {
  background-color: #84d4cf; }
  .element.group-web-components:hover {
    background-color: #aae1de; }

.description.group-web-components {
  background-color: rgba(170, 225, 222, 0.5); }
  .description.group-web-components:hover {
    background-color: rgba(132, 212, 207, 0.8); }

.key li.group-web-components:before {
  background-color: #84d4cf; }

.hover-group-web-components .element {
  opacity: .5; }

.hover-group-web-components .element.group-web-components {
  opacity: 1; }
</style>
	</head>
	<body>
		<main>
			<h1>Atlas Geoquímico de Colombia Versión 2016</h1>
			<div class="elements">
	<div class="row">
		<a href="#html" class="element group-metadata"><span>H</span></a>
		<div class="element empty-element"></div>
		<div class="element empty-element"></div>
		<div class="element empty-element"></div>
		<div class="element empty-element"></div>
		<div class="element empty-element"></div>
		<div class="element empty-element"></div>
		<div class="element empty-element"></div>
		<div class="element empty-element"></div>
		<div class="element empty-element"></div>
		<div class="element empty-element"></div>
		<div class="element empty-element"></div>
		<div class="element empty-element"></div>
		<div class="element empty-element"></div>
        <div class="element empty-element"></div>
       <div class="element empty-element"></div>
       <div class="element empty-element"></div>
		<a href="#output" class="element group-metadata"><span>He</span></a>
	</div>
	<div class="row">
		<a href="#base" class="element group-base"><span>Li</span></a>
		<a href="#h1-h6" class="element group-base"><span>Be</span></a>
		<div class="element empty-element"></div>
		<div class="element empty-element"></div>
		<div class="element empty-element"></div>
		<div class="element empty-element"></div>
		<div class="element empty-element"></div>
		<div class="element empty-element"></div>
        <div class="element empty-element"></div>
        <div class="element empty-element"></div>
        <div class="element empty-element"></div>
        <div class="element empty-element"></div>
		<a href="#strong" class="element group-metadata"><span>B</span></a>
		<a href="#area" class="element group-metadata"><span>C</span></a>
		<a href="#param" class="element group-metadata"><span>N</span></a>
		<a href="#caption" class="element group-metadata"><span>O</span></a>
		<a href="#th" class="element group-metadata"><span>F</span></a>
		<a href="#input" class="element group-metadata"><span>Ne</span></a>

	</div>
	<div class="row">
		<a href="#head" class="element group-base"><span>Na</span></a>
		<a href="#hgroup" class="element group-base"><span>Mg</span></a>
		<div class="element empty-element"></div>
		<div class="element empty-element"></div>
		<div class="element empty-element"></div>
		<div class="element empty-element"></div>
		<div class="element empty-element"></div>
		<div class="element empty-element"></div>
        <div class="element empty-element"></div>
        <div class="element empty-element"></div>
        <div class="element empty-element"></div>
      <div class="element empty-element"></div>
		<a href="#audio" class="element group-base"><span>Al</span></a>
		<a href="#source" class="element group-base"><span>Si</span></a>
		<a href="#col" class="element group-base"><span>P</span></a>
		<a href="#thead" class="element group-base"><span>S</span></a>
		<a href="#keygen" class="element group-metadata"><span>Ci</span></a>
		<a href="#select" class="element group-metadata"><span>Ar</span></a>
	</div>
	<div class="row">
		<a href="#style" class="element group-base"><span>K</span></a>
		<a href="#nav" class="element group-base"><span>Ca</span></a>
		<a href="#figcaption" class="element group-base"><span>Sc</span></a>
		<a href="#p" class="element group-base"><span>Ti</span></a>
		<a href="#bdi" class="element group-base"><span>V</span></a>
		<a href="#data" class="element group-base"><span>Cr</span></a>
		<a href="#mark" class="element group-base"><span>Mn</span></a>
		<a href="#ruby" class="element group-base"><span>Fe</span></a>
		<a href="#sup" class="element group-base"><span>Co</span></a>
		<a href="#map" class="element group-base"><span>Ni</span></a>
		<a href="#canvas" class="element group-base"><span>Cu</span></a>
		<a href="#colgroup" class="element group-base"><span>Zn</span></a>
		<a href="#tr" class="element group-base"><span>Ga</span></a>
		<a href="#label" class="element group-metadata"><span>Ge</span></a>
		<a href="#details" class="element group-base"><span>As</span></a>
        <a href="#tr" class="element group-base"><span>Se</span></a>
        <a href="#label" class="element group-metadata"><span>Br</span></a>
        <a href="#details" class="element group-metadata"><span>Kr</span></a>
	</div>
	<div class="row">
		<a href="#title" class="element group-base"><span>Rb</span></a>
		<a href="#section" class="element group-base"><span>Sr</span></a>
		<a href="#figure" class="element group-base"><span>Y</span></a>
		<a href="#pre" class="element group-base"><span>Zr</span></a>
		<a href="#bdo" class="element group-base"><span>Nb</span></a>
		<a href="#dfn" class="element group-base"><span>Mo</span></a>
		<a href="#q" class="element group-metadata"><span>Tc</span></a>
		<a href="#s" class="element group-metadata"><span>Ru</span></a>
		<a href="#time" class="element group-metadata"><span>Rh</span></a>
		<a href="#track" class="element group-metadata"><span>Pd</span></a>
		<a href="#noscript" class="element group-base"><span>Ag</span></a>
		<a href="#table" class="element group-base"><span>Cd</span></a>
		<a href="#button" class="element group-base"><span>In</span></a>
		<a href="#legend" class="element group-metadata"><span>Sn</span></a>
		<a href="#dialog" class="element group-base"><span>Sb</span></a>
        <a href="#button" class="element group-metadata"><span>Te</span></a>
        <a href="#legend" class="element group-metadata"><span>I</span></a>
        <a href="#dialog" class="element group-metadata"><span>Xe</span></a>
	</div>
	<div class="row">
		<a href="#address" class="element group-base"><span>Cs</span></a>
		<a href="#dd" class="element group-base"><span>Ba</span></a>
		<a href="#hr" class="element group-metadata"><span>57-71</span></a>
		<a href="#ul" class="element group-metadata"><span>Hf</span></a>
		<a href="#br" class="element group-metadata"><span>Ta</span></a>
		<a href="#em" class="element group-metadata"><span>W</span></a>
		<a href="#rp" class="element group-metadata"><span>Re</span></a>
		<a href="#samp" class="element group-metadata"><span>Os</span></a>
		<a href="#u" class="element group-metadata"><span>Ir</span></a>
		<a href="#video" class="element group-base"><span>Pt</span></a>
		<a href="#script" class="element group-base"><span>Au</span></a>
		<a href="#tbody" class="element group-base"><span>Hg</span></a>
		<a href="#datalist" class="element group-metadata"><span>Tl</span></a>
		<a href="#meter" class="element group-base"><span>Pb</span></a>
		<a href="#menu" class="element group-base"><span>Bi</span></a>
        <a href="#datalist" class="element group-metadata"><span>Po</span></a>
        <a href="#meter" class="element group-metadata"><span>At</span></a>
        <a href="#menu" class="element group-metadata"><span>Rn</span></a>
	</div>
	<div class="row">
		<a href="#article" class="element group-metadata"><span>Fr</span></a>
		<a href="#div" class="element group-metadata"><span>Ra</span></a>
		<a href="#li" class="element group-metadata"><span>89-103</span></a>
        <div class="element empty-element"></div>
        <div class="element empty-element"></div>
        <div class="element empty-element"></div>
        <div class="element empty-element"></div>
        <div class="element empty-element"></div>
        <div class="element empty-element"></div>
        <div class="element empty-element"></div>
        <div class="element empty-element"></div>
        <div class="element empty-element"></div>
        <div class="element empty-element"></div>
        <div class="element empty-element"></div>
        <div class="element empty-element"></div>
        <div class="element empty-element"></div>
        <div class="element empty-element"></div>
        <div class="element empty-element"></div>

	</div>
	<div class="row">
      <div class="element empty-element"></div>
      <div class="element empty-element"></div>
      <div class="element empty-element"></div>
		<a href="#b" class="element group-base"><span>la</span></a>
		<a href="#code" class="element group-base"><span>ce</span></a>
		<a href="#kbd" class="element group-base"><span>Pr</span></a>
		<a href="#rtc" class="element group-base"><span>Nd</span></a>
		<a href="#span" class="element group-metadata"><span>Pm</span></a>
		<a href="#wbr" class="element group-base"><span>Sm</span></a>
		<a href="#object" class="element group-base"><span>Eu</span></a>
		<a href="#ins" class="element group-base"><span>Gb</span></a>
		<a href="#tfoot" class="element group-base"><span>Tb</span></a>
		<a href="#form" class="element group-base"><span>Dy</span></a>
		<a href="#option" class="element group-base"><span>Ho</span></a>
		<a href="#summary" class="element group-base"><span>Er</span></a>
        <a href="#form" class="element group-base"><span>Tm</span></a>
        <a href="#option" class="element group-base"><span>Yb</span></a>
        <a href="#summary" class="element group-base"><span>Lu</span></a>
	</div>
	<div class="row">
      <div class="element empty-element"></div>
      <div class="element empty-element"></div>
      <div class="element empty-element"></div>
      <a href="#b" class="element group-metadata"><span>Ac</span></a>
      <a href="#code" class="element group-base"><span>Th</span></a>
      <a href="#kbd" class="element group-metadata"><span>Pa</span></a>
      <a href="#rtc" class="element group-base"><span>U</span></a>
      <a href="#span" class="element group-metadata"><span>Np</span></a>
      <a href="#wbr" class="element group-metadata"><span>Pu</span></a>
      <a href="#object" class="element group-metadata"><span>Am</span></a>
      <a href="#ins" class="element group-metadata"><span>Cm</span></a>
      <a href="#tfoot" class="element group-metadata"><span>Bk</span></a>
      <a href="#form" class="element group-metadata"><span>Cf</span></a>
      <a href="#option" class="element group-metadata"><span>Es</span></a>
      <a href="#summary" class="element group-metadata"><span>Fm</span></a>
      <a href="#form" class="element group-metadata"><span>Md</span></a>
      <a href="#option" class="element group-metadata"><span>No</span></a>
      <a href="#summary" class="element group-metadata"><span>Lr</span></a>
	</div>
</div>
          <!--
<div class="f-block elements">
	<div class="row">
	  <a href="#content" class="element group-web-components"><span>content</span></a>
	  <a href="#element" class="element group-web-components"><span>element</span></a>
	  <a href="#shadow" class="element group-web-components"><span>shadow</span></a>
	  <a href="#template" class="element group-web-components"><span>template</span></a>
	</div>
</div>
-->
<ul class="key">
	<li class="group-base">Elementos Incluidos en el Atlas Geoquímico Colombiano. Versión 2016</li>
	<li class="group-metadata">Elementos No Incluidos en el Atlas Geoquímico Colombiano. Versión 2016</li>

</ul>
<div class="descriptions">

</div>

		</main>
		<script type="text/javascript">
		(function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
		(i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
		m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
		})(window,document,'script','//www.google-analytics.com/analytics.js','ga');
		if (document.location.hostname === "madebymike.com.au") {
		  ga('create', 'UA-42027047-2', 'auto');
		  ga('send', 'pageview');
		}
		Array.prototype.forEach.call(document.querySelectorAll('.key li'), function(li){
			li.addEventListener('mouseenter', function(){
				document.body.classList.add('hover-'+this.className);
			});
			li.addEventListener('mouseleave', function(){
				document.body.classList.remove('hover-'+this.className);
			});
		});

		</script>
	</body>
</html>







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