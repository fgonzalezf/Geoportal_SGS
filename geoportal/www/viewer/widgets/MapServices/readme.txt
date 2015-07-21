Author: David Galluzzo
email: gallod5@aol.com
Purpose: Reads map services from a xml file. Allows users to 
search keywords to find map services. Allows user to add map service
to map at runtime. Supports titled, dynamic, image map service
Note: tile map service must have same spatial reference as base map
-->

*****************************************************************************

Map Services Widget Readme

Version 1.1 for ArcGIS Flex 2.2 API Viewer
Update for Flex 3.1 API - 12/21/2012
*****************************************************************************

Directions:
-----------

Step 1:

UnZIP MapServices Copy the src/Widgets folder of your ArcGIS Viewer for Flex project.


Step 2:
 
Inside your ArcGIS Viewer for Flex properties add the map services mxml to the flex modules


Step 3:
 
add widget to config file:

  <widget label="Map Services" icon="assets/images/globe.png" config="widgets/MapServices/MapServices.xml" url="widgets/MapServices/MapServices.swf"/>


Step 4:
Test application and widget

Config File Attributes:
-----------------------

label: label and id for service
type: type of service (titled, dynamic, image) 
vivible: default visibility of service
alpha: Service Transparency
url: url of service
keywords: used for searching
previewExtent: used to zoomin during preview to a given extent (-128.2:19.89:-56.59:52.92)
description: description of service
loadBottom: values 1 = true 0 = false  determies if the layer is added to the top or bottom of the layer list

Sample ----------------------------
 <mapService label="Boundaries and Places" type="tiled" visible="true" alpha="1"
                   url="http://services.arcgisonline.com:80/arcgis/rest/services/Reference/ESRI_BoundariesPlaces_World_2D/MapServer"
                   keywords="county,state/province,place names"
                   previewExtent="-128.2:19.89:-56.59:52.92"
                   description="This map presents country, state/province, and county or equivalent boundaries and place names for the world.The map was developed by ESRI using administrative and cities data from ESRI and AND Mapping. This map is designed for use with services with lighter backgrounds, such as World Shaded Relief. For more information on this map, visit us online."
       			   loadBottom="1"
       />