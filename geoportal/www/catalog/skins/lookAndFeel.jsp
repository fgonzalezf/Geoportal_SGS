<%--
 See the NOTICE file distributed with
 this work for additional information regarding copyright ownership.
 Esri Inc. licenses this file to You under the Apache License, Version 2.0
 (the "License"); you may not use this file except in compliance with
 the License.  You may obtain a copy of the License at

     http://www.apache.org/licenses/LICENSE-2.0

 Unless required by applicable law or agreed to in writing, software
 distributed under the License is distributed on an "AS IS" BASIS,
 WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 See the License for the specific language governing permissions and
 limitations under the License.
--%>
<%
// Contains 'Look And Feel' declarations shared among all the pages
%>

<%
String VER = "v1";
String VER11 = "v1.1";
String VER112 = "v1.1.2";
String VER12 = "v1.2";
String VER121 = "v1.2.1";
String VER122 = "v1.2.2";
String VER123 = "v1.2.3";
String VER124 = "v1.2.4";
%>

<link rel="stylesheet" type="text/css" href="http://serverapi.arcgisonline.com/jsapi/arcgis/2.5/js/dojo/dijit/themes/tundra/tundra.css" />
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/catalog/skins/themes/green/main.css"  />
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/catalog/skins/themes/green/preview.css"  />
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/catalog/skins/themes/green/js/generic.css"  />
<!--  
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/catalog/skins/themes/green/js/js-image-slider.css"  />
-->
<link rel="icon" type="image/x-icon"   href="<%=request.getContextPath()%>/catalog/images/favicon.ico" />
<link rel="shortcut icon" type="image/x-icon" href="<%=request.getContextPath()%>/catalog/images/favicon.ico" />
<%--fgonzalez Aplicacion de stilos primeui --%>
<link href="<%=request.getContextPath()%>/catalog/skins/PrimeUI/themes/custom/jquery-ui-1.10.4.custom.css" rel="stylesheet">
<link href="<%=request.getContextPath()%>/catalog/skins/PrimeUI/primeui-1.0.RC1-min.css" rel="stylesheet">
<link rel="stylesheet" href="<%=request.getContextPath()%>/catalog/content/MagnificPopup/magnific-popup.css"> 

<script type="text/javascript">
  djConfig = {parseOnLoad: true, locale: 'es'};
</script>
<script type="text/javascript" src="<%=com.esri.gpt.framework.context.RequestContext.extract(request).getApplicationConfiguration().getInteractiveMap().getJsapiUrl()%>"></script>
<script type="text/javascript">
  esri.config.defaults.io.proxyUrl = "<%=request.getContextPath()%>/catalog/download/proxy.jsp";
</script>
<script type="text/javascript" src="<%=request.getContextPath()+"/catalog/js/" +VER+ "/GPTMapViewer.js"%>"></script>
<script type="text/javascript" src="<%=request.getContextPath()+"/catalog/js/" +VER+ "/jquery-1.2.3.pack.js"%>"></script>
<script type="text/javascript" src="<%=request.getContextPath()+"/catalog/js/" +VER+ "/ui.datepicker.packed.js"%>"></script>
<script type="text/javascript" src="<%=request.getContextPath()+"/catalog/js/" +VER12+ "/gpt.js"%>"></script>
<script type="text/javascript" src="<%=request.getContextPath()+"/catalog/js/" +VER+ "/Utils.js"%>"></script>
<script type="text/javascript" src="<%=request.getContextPath()+"/catalog/js/" +VER123+ "/livedata.js"%>"></script>
<script type="text/javascript" src="<%=request.getContextPath()+"/catalog/js/" +VER+ "/gpt-asn.js"%>"></script>
<script type="text/javascript" src="<%=request.getContextPath()+"/catalog/js/" +VER122+ "/gpt-browse.js"%>"></script>

<!--  
<script type="text/javascript" src="<%=request.getContextPath()+"/catalog/skins/themes/green/js/js-image-slider.js"%>"></script>
<script type="text/javascript" src="<%=request.getContextPath()+"/catalog/skins/themes/green/js/tooltip.js"%>"></script>
-->
<%--fgonzalez Aplicacion de script primeui --%>
<script type="text/javascript" src="<%=request.getContextPath()+"/catalog/skins/PrimeUI/js/jquery-1.10.2.js"%>"></script>
<script type="text/javascript" src="<%=request.getContextPath()+"/catalog/skins/PrimeUI/js/jquery-ui-1.10.4.custom.js"%>"></script>
<script type="text/javascript" src="<%=request.getContextPath()+"/catalog/skins/PrimeUI/primeui-1.0.RC1-min.js"%>"></script>
<script type="text/javascript" src="<%=request.getContextPath()+"/catalog/skins/PrimeUI/flash_detect_min.js"%>"></script>

<script type="text/javascript" src="<%=request.getContextPath()+"/catalog/content/MagnificPopup/jquery.magnific-popup.js"%>"></script>



