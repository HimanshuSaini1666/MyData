#  Steps to add new agent 

*  Setup JDK (JRE) 1.8.0_161 or later (Java 8-11 are supported, but 1.8.0_161+ is recommended) on the agent computer.
*  On the agent computer, Setup JRE_HOME or JAVA_HOME environment variables (pointing to the installed JRE or JDK directory respectively).
* In the TeamCity web UI, navigate to the Agents tab.
*  Click the Install Build Agents link and select one of the two options to download the archive:
   *  Minimal ZIP file distribution: a regular build agent with no plugins
   * Full ZIP file distribution(since TeamCity 2020.1) : a full build agent prepacked with all plugins currently enabled on the server

![](https://github.com/HimanshuSaini1666/MyData/blob/main/Docs/teamcity/pic/agent1.jpg)

*  Extract the downloaded file into the desired directory.
*  Navigate to the <installation path>\conf directory, locate the file called buildAgent.dist.properties and rename it to buildAgent.properties.
*  Edit the buildAgent.properties file to specify the TeamCity server URL and the name of the agent. Refer below screenshot for configuration of build agent.

![](https://github.com/HimanshuSaini1666/MyData/blob/main/Docs/teamcity/pic/agent2.jpg)

*  After installation, configure the agent specifying its name and the address of the TeamCity server in the conf/buildAgent.properties file.
Note: Leave authorizationToken empty, As it is auto generated.
* Under Linux, you may need to give execution permissions to the bin/agent.sh
* The port where the TeamCity build agent starts and where it listens for the incoming data from the server is determined via the ownPort property (9090 by default). If the firewall is configured, make sure that the incoming connections for this port are allowed on the agent computer.
* Start the agent using below command
*  <installation path>\bin\agent.sh start
*  The build agent will display under unauthorized agent section. You have to authorize the agent by clicking on authorize button as shown in below screenshot
  
  ![](https://github.com/HimanshuSaini1666/MyData/blob/main/Docs/teamcity/pic/agent3.jpg)

 *  A dialog box will appear, In the dialog box you have to provide a description to the build agent also associate the build agent with the pool if required.
  
  ![](https://github.com/HimanshuSaini1666/MyData/blob/main/Docs/teamcity/pic/agent4.jpg)
