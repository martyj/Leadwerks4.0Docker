
How to:


## Leadwerks Setup
Download the latest Leadwerks to Leadwerks directory


Leadwerks/ should look like this:
	dContainers.dll
	dCustomJoints.dll
	DLC/
	dropper.cur
	EULA.txt
	GLslang.txt
	Include/
	.keep
	Leadwerks
	Leadwerks.dll
	Leadwerks.exe
	Leadwerks.sh
	libcurl.dll
	libopenvr_api.so
	Library/
	libsteam_api.so
	lua51.dll
	MT19937.txt
	newton.dll*
	openvr_api.dll
	rotate.cur*
	Scripts/
	splash.bmp*
	steam_api.dll
	Templates/
	Tools/
	UI/


## Project Setup
Clone your LE Project into project/ (Keep the CMakeList)

project/ Should look like this:
	CMakeLists.txt
	libsteam_api.so
	Makefile
	Maps/
	Materials/
	Models/
	Shaders/
	Source/


## Compiling Code
Run *./b*

Now you should have your docker container

Run *./dr*

This will launch your docker image and move you into /opt/project which is a volume mount of project/
Run *cmake .* to generate make files
Run *make* to compile

