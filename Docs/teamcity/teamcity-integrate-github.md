## Steps to setup Teamcity server on Ubuntu

*  Install Java

First of all install and setup default Java JDK using below command

sudo apt-get install default-jdk -y

  * Download & Install Team city Then download & install Teamcity tool using below commands
  
```bash
  wget https://download.jetbrains.com/teamcity/TeamCity-2020.1.tar.gz 
  tar -xzf TeamCity-2020.1.tar.gz 
```
    
*  Start Team City Service for evaluation purposes

If you want to simply start Team City for evaluation purposes then are now ready to start TeamCity and now all we have to do is.

./TeamCity/bin/runAll.sh start

* You should now be able to browse to your server location .ie http://192.168.1.9:8111/ and continue to configure and Install TeamCity using the Web Application front end.

*  Steps to integrate Teamcity server with GitHub Repository
We have below defined two approaches to integrate GitHub with  Teamcity
*  Teamcity default connection with repository URL
*  OAuth Configuration(Require GitHub Plugin)

*  Teamcity default connection with repository URL
* Click on New project in Teamcity web server as show in below screenshot

![](https://github.com/HimanshuSaini1666/MyData/blob/main/Docs/teamcity/pic/team1.png) 

* Provide the http URL of the GitHub repository to "Repository URL"
*  Provide Username that have access to the GitHub repository
*  Provide Password or access token of the user

![](https://github.com/HimanshuSaini1666/MyData/blob/main/Docs/teamcity/pic/team2.jpg) 

*  Click on proceed
*  Now enter configuration name and specify the branch to be monitor for changes as shown below

![](https://github.com/HimanshuSaini1666/MyData/blob/main/Docs/teamcity/pic/team3.jpg) 

*  OAuth Configuration(Require GitHub Plugin)
*  Firstly you have to install and enable Plugin(GitHub Commit Hooks) in Administration section

![](https://github.com/HimanshuSaini1666/MyData/blob/main/Docs/teamcity/pic/team4.jpg) 

*  Then you have to enable the Github connection by clicking on Root Project in projects section. You have to follow below steps:
*  Copy homepage URL and authorization callback URL from connection section
*  In GitHub create new OAuth app in developer settings and paste homepage URL and authorization callback URL copied in above section
*  Copy client ID, create and copy client secrets from the newly created application in GitHub and provide the same in Teamcity server.

![](https://github.com/HimanshuSaini1666/MyData/blob/main/Docs/teamcity/pic/team5.jpg) 

*  You can verify the Github connection as shown below:

![](https://github.com/HimanshuSaini1666/MyData/blob/main/Docs/teamcity/pic/team6.jpg) 

*  You have to restart the Teamcity server from the host machine
*  Now in create new projects sections you will be able to see From Github.com section as shown below

![](https://github.com/HimanshuSaini1666/MyData/blob/main/Docs/teamcity/pic/team7.jpg) 

*  Sign in to Github from the Teamcity server and authorize Teamcity to access Github repositories as shown below.

![](https://github.com/HimanshuSaini1666/MyData/blob/main/Docs/teamcity/pic/team8.jpg) 


*  Now you would be able to see all the repositories in same section in Teamcity server as shown below

![](https://github.com/HimanshuSaini1666/MyData/blob/main/Docs/teamcity/pic/team9.jpg) 

*  You can simply select and create pipeline from any of the repositories shown in the above section(From GitHub.com).

* Summary

This document briefly guide user to setup Teamcity server on Linux(Ubuntu) machine and integrate it with GitHub using basic connection as well as OAuth configuation. For detailed information follow the official documentations https://www.jetbrains.com/help/teamcity/2021.1/teamcity-documentation.html
