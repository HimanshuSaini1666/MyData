#!/bin/sh

##################################
# Add data to an existing XML file
##################################
STR1="<servlet><servlet-name>mixer<\/servlet-name><servlet-class>com.red5pro.mixer.servlet.NodeGraphServlet<\/servlet-class><\/servlet>\n"
STR2="<servlet-mapping><servlet-name>mixer<\/servlet-name><url-pattern>\/mixer\/*<\/url-pattern><\/servlet-mapping>\n"
STR3="<servlet><servlet-name>groups<\/servlet-name><servlet-class>com.red5pro.mixer.servlet.GroupsNotificationServlet<\/servlet-class><\/servlet>\n"
STR4="<servlet-mapping><servlet-name>groups<\/servlet-name><url-pattern>\/groups\/\*<\/url-pattern><\/servlet-mapping>\n"

if [ -f web.xml ]; then
  echo "add data in xml file"
  sudo sed -i "/<\/display-name>/a $STR1 $STR2 $STR3 $STR4" web.xml
else
  echo "web.xml file does not exists"
fi
