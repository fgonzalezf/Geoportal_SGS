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
<%@taglib prefix="f" uri="http://java.sun.com/jsf/core"%>
<%@taglib prefix="h" uri="http://java.sun.com/jsf/html"%>
<%@taglib prefix="tiles" uri="http://struts.apache.org/tags-tiles"  %>
<!--  
<h:form id="frmBanner">	
      
	<h:outputLink 
	  rendered="#{not empty PageContext.applicationConfiguration.catalogConfiguration.searchConfig.mapViewerUrl}"
	    id="openMapViewerMvs" 
	    value="#"
		onclick="javascript: mainOpenDefaultMapViewer(); return false;">
		<h:outputText value="#{gptMsg['catalog.menu.menuitem.launchMapViewer']}" />
	</h:outputLink>
	<h:outputLink 
    rendered="#{empty PageContext.applicationConfiguration.catalogConfiguration.searchConfig.mapViewerUrl and not empty PageContext.applicationConfiguration.catalogConfiguration.searchConfig.defaultViewerUrl }"
    id="openMapViewerGeneric" 
    onclick="#{PageContext.applicationConfiguration.catalogConfiguration.searchConfig.defaultViewerUrl}; return false;">
    <h:outputText value="#{gptMsg['catalog.menu.menuitem.launchMapViewer']}" />
  </h:outputLink>
</h:form>
-->
<h:form id="frmPrimaryNavigation">
	<h:commandLink
        id="mainHome" 
        action="catalog.main.home"
        value="#{gptMsg['catalog.main.home.menuCaption']}"
        styleClass="#{PageContext.tabStyleMap['catalog.main.home']}"/>
	<h:commandLink 
        id="searchHome" 
        action="catalog.search.home" 
        value="#{gptMsg['catalog.search.home.menuCaption']}"
        styleClass="#{PageContext.tabStyleMap['catalog.search.home']}"/>                 
    <h:commandLink 
        id="publicationManageMetadata"
        action="catalog.publication.manageMetadata" 
        styleClass="#{PageContext.tabStyleMap['catalog.publication']}"
        value="#{gptMsg['catalog.publication.manageMetadata.menuCaption']}"
        rendered="#{PageContext.roleMap['gptPublisher']}"
        actionListener="#{ManageMetadataController.processAction}" />
	<h:commandLink
        id="validationManageMetadata" 
        action="catalog.publication.validateMetadata"
        styleClass="#{PageContext.tabStyleMap['catalog.publication']}"
        value="#{gptMsg['catalog.publication.validateMetadata.menuCaption']}"
        rendered="#{PageContext.roleMap['gptRegisteredUser'] and not PageContext.roleMap['gptPublisher']}"/>
	<h:commandLink 
        id="extractDownload"
        action="catalog.download" 
        styleClass="#{PageContext.tabStyleMap['catalog.download']}"
        value="#{gptMsg['catalog.download.menuCaption']}"
        rendered="#{not empty PageContext.applicationConfiguration.downloadDataConfiguration.taskUrl}"/>
        <h:outputLink 
	  rendered="#{not empty PageContext.applicationConfiguration.catalogConfiguration.searchConfig.mapViewerUrl}"
	    id="openMapViewerMvs" 
	    value="#"
		onclick="javascript: mainOpenDefaultMapViewer(); return false;">
		<h:outputText value="#{gptMsg['catalog.menu.menuitem.launchMapViewer']}" />
	</h:outputLink>
		<h:outputLink 
    		rendered="#{empty PageContext.applicationConfiguration.catalogConfiguration.searchConfig.mapViewerUrl and not empty PageContext.applicationConfiguration.catalogConfiguration.searchConfig.defaultViewerUrl }"
    		id="openMapViewerGeneric" 
    		onclick="#{PageContext.applicationConfiguration.catalogConfiguration.searchConfig.defaultViewerUrl}; return false;">
    	<h:outputText value="#{gptMsg['catalog.menu.menuitem.launchMapViewer']}" />
  	</h:outputLink>
     <h:commandLink 
 		id="quicklinkHome" 
 		action="catalog.quicklink.home" 
 		value="#{gptMsg['catalog.quicklink.home.menuCaption']}" 
 		styleClass="#{PageContext.tabStyleMap['catalog.quicklink']}"/>
 	       <div id="Busqueda2" >
        		 <h:form>
					<h:inputText id="itxFilterKeywordText" 
					  onkeypress="if (event.keyCode == 13) return false;"
					  value="#{SearchFilterKeyword.searchText}" maxlength="400" style="width: 200px" />
					
					<h:commandButton id="btnDoSearch"
					  value="#{gptMsg['catalog.search.search.btnSearch']}"
					  action="#{SearchController.getNavigationOutcome}"
					  actionListener="#{SearchController.processAction}"
					  onkeypress="if (event.keyCode == 13) return false;">
					  <f:attribute name="#{SearchController.searchEvent.event}"
					    	value="#{SearchController.searchEvent.eventExecuteSearch}" />
					</h:commandButton>
 					</h:form >
    		</div>
</h:form>


   
   
  

<!--  
  <h:commandLink 
        id="browse"
        action="catalog.browse" 
        styleClass="#{PageContext.tabStyleMap['catalog.browse']}"
        value="#{gptMsg['catalog.browse.menuCaption']}"
        rendered="#{PageContext.tocsByKey['browseCatalog']}" />
 -->