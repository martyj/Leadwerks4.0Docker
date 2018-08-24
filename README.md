
How to:

Download the latest Leadwerks to Leadwerks directory
Clone your LE Project into project/ (Keep the CMakeList)

Run """./b"""

Now you should have your docker container

Run """"./dr"""

This will launch your docker image and move you into /opt/project which is a volume mount of project/
Run """cmake .""" to generate make files
Run """make""" to compile
