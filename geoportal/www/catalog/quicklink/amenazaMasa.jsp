<% // quicklink.jsp - Link pages (tiles definition) %>			
 <%@taglib uri="http://struts.apache.org/tags-tiles" prefix="tiles" %>			
 <%@taglib uri="http://www.esri.com/tags-gpt" prefix="gpt" %>						
 <% // initialize the page %>			
 <gpt:page id="catalog.amenazaMasa.home"/>			
 <tiles:insert definition=".gptLayout" flush="false" >	
 <tiles:put name="body" value="/catalog/quicklink/amenazaMasaBody.jsp"/>					
 </tiles:insert>