'''  CityBuilder Generator
  A python script that allows creation of custom cities as well as providing a calculation for object placements.
  The script also allows building generations and some traffic simulation.
  inspired by Sim City and other city simulation games.
  inspired by Anthony Scavarelli's work from http://portfolio.anthony-scavarelli.com/2012/01/27/autodesk-maya-city-builder/
  inspired and reference from Ramesh Balachandran's script on AI Traffic from https://drive.google.com/folderview?id=0By0_WhpQpCZlWmNmaHYtMi1SbTQ&usp=sharing
  and https://www.youtube.com/watch?v=SYpBSe6G0m0 
'''

import maya.cmds as cmds
import math as math
import random as random

"""-------------------------------------------------------------
Listing road type options
-------------------------------------------------------------"""
#JunctionCurve_Rotate_-90
#JunctionCurve_Rotate_0
#JunctionCurve_Rotate_90
#JunctionCurve_Rotate_180

#JunctionT_Rotate_-90
#JunctionT_Rotate_0
#JunctionT_Rotate_90
#JunctionT_Rotate_180

#JunctionX_Rotate_All

"""-------------------------------------------------------------
Creating all the AI Lists and variables
-------------------------------------------------------------"""
juncList=[]
#Create the junctions. When we create the roads in the CityGenerator, each will be assign a junction type.
#0 = junction name
#1 = junction type

carList = []
#Create the car elements
#0 = car name
#1 = car state
#2 = car in junction or not (-1 if not in junction. else this is filled with the junction index the car is at)
#3 = car action count
#4 = car previous state
#5 = car state before stop
#6 = car previous junction count

trafficList = []
#Creates the traffic lights list that has no links and its corresponding states
#0 = traffic light name
#1 = current state
#2 = wait count

linked_trafficList = []
#Creates the traffic lights list that have links
#00 = All the traffic lights that are linked
#01 = All the traffic lights corresponding states
#02 = All the traffic lights corresponding wait count
#example list = [ [['t1','t2','t3'],[R,R,G],[2,2,4]] , [['t5','t7','t9',t10'],[R,R,R,G],[2,2,2,4]] ]

trafficRoadList = []
#Creates a list which contains the roads that have traffic lights on them
#0 = road name
#1 = traffic light name
#2 = rotation of traffic light

RoadList = []
#Creates a list which contains all the roads in the scene

CurveRoadList = []
#Creates a list which contains all the curve roads in the scene

T_J_RoadList = []
#Creates a list which contains all the T Junctions in the scene

X_J_RoadList = []
#Creates a list which contains all the Cross Junctions in the scene

straightRoadList = []
#Creates a list which contains all the straight roads in the scene

WorldPlane = None
#Contains the terrain

variables_reload = 0
#A global variable that will allow the above lists to be updated when the user presses the Create Traffic AI button in the UI
"""-------------------------------------------------------------
AI code runs from here
-------------------------------------------------------------"""
def update(frame):
	#AI script method approach (Using of Lists and updating accordingly) inspired and referenced from Ramesh Balachandran's script.
	#Code from Ramesh Balachandran's script starts here
	"""Main AI function that executes all car behaviour.
	Run in expression editor: python("update("+frame+")");"""
	#Code from Ramesh Balachandran's script ends here
	
	"""Renderer must be set to: Legacy Default Viewport"""

	"""//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	If the user click on the Create Traffic AI button, variables_reload will become 1 and the lists will be updated
	//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////"""
	global variables_reload
	while(variables_reload == 1):
		global juncList
		global carList
		global trafficList
		global linked_trafficList
		global trafficRoadList
		global RoadList
		global CurveRoadList
		global T_J_RoadList
		global X_J_RoadList
		global straightRoadList
		#Empty list for re-creation
		juncList=[]
		carList = []
		trafficList = []
		linked_trafficList = []
		trafficRoadList = []
		RoadList = []
		CurveRoadList = []
		T_J_RoadList = []
		X_J_RoadList = []
		straightRoadList = []
		"""//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
		Creating all the variables and lists for code to work
		//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////"""
		"""-------------------------------------------------------------
		Updating RoadList, CurveRoadList, T_J_RoadList, X_J_RoadList, juncList and straightRoadList
		-------------------------------------------------------------"""
		#Selecting All Roads
		if cmds.objExists('Road*'):
			cmds.select("Road*")	#Select all roads
			RoadList = cmds.ls(sl=True)
			counter = 0
			for i in range (0, len(RoadList)/2):	#Remove all the shape nodes
				del RoadList[len(RoadList)-(counter+1)]
				counter += 1

		else:
			RoadList = []

		#Selecting All Curve Roads
		if cmds.objExists('RoadRtCurve*'):
			cmds.select ("RoadRtCurve*")	#Selects all curve roads
			CurveRoadList = cmds.ls(sl=True)	#Creates a List
			counter = 0
			for i in range (0, len(CurveRoadList)/2):	#Remove all the shape nodes
				del CurveRoadList[len(CurveRoadList)-(counter+1)]
				counter += 1
		else:
			CurveRoadList = ['none']

		#Selecting All T Junctions
		if cmds.objExists('RoadTJunction*'):
			cmds.select ("RoadTJunction*")	#Selects all TJunction roads
			T_J_RoadList = cmds.ls(sl=True)	#Creates a List
			counter = 0
			for i in range (0, len(T_J_RoadList)/2):	#Remove all the shape nodes
				del T_J_RoadList[len(T_J_RoadList)-(counter+1)]
				counter += 1
		else:
			T_J_RoadList = ['none']

		#Selecting All Cross Junctions
		if cmds.objExists('RoadCrossJunction*'):
			cmds.select ("RoadCrossJunction*")	#Selects all curve roads
			X_J_RoadList = cmds.ls(sl=True)	#Creates a List
			counter = 0
			for i in range (0, len(X_J_RoadList)/2):	#Remove all the shape nodes
				del X_J_RoadList[len(X_J_RoadList)-(counter+1)]
				counter += 1

		else:
			X_J_RoadList = ['none']

		#Updating juncList
		if (RoadList != []):
			for i in RoadList:
				temp_list = []
				if i in CurveRoadList:
					temp_list.append(i)
					cmds.select(i)
					CurrentRotation = cmds.xform(i, ro=True, q=True)
					if (math.floor(CurrentRotation[1]) == 0 or math.ceil(CurrentRotation[1]) == 0):
						x = 'JunctionCurve_Rotate_0'
						temp_list.append(x)
					if (math.floor(CurrentRotation[1]) == -90 or math.ceil(CurrentRotation[1]) == -90):
						x = 'JunctionCurve_Rotate_-90'
						temp_list.append(x)
					if (math.ceil(CurrentRotation[1]) == 90 or math.floor(CurrentRotation[1]) == 90):
						x = 'JunctionCurve_Rotate_90'
						temp_list.append(x)
					if (math.ceil(CurrentRotation[1]) == 180 or math.floor(CurrentRotation[1]) == 180):
						x = 'JunctionCurve_Rotate_180'
						temp_list.append(x)
					juncList.append(temp_list)
				if i in T_J_RoadList:
					temp_list.append(i)
					cmds.select(i)
					CurrentRotation = cmds.xform(i, ro=True, q=True)
					if (math.floor(CurrentRotation[1]) == 0 or math.ceil(CurrentRotation[1]) == 0):
						x = 'JunctionT_Rotate_0'
						temp_list.append(x)
					if (math.floor(CurrentRotation[1]) == -90 or math.ceil(CurrentRotation[1]) == -90):
						x = 'JunctionT_Rotate_-90'
						temp_list.append(x)
					if (math.ceil(CurrentRotation[1]) == 90 or math.floor(CurrentRotation[1]) == 90):
						x = 'JunctionT_Rotate_90'
						temp_list.append(x)
					if (math.ceil(CurrentRotation[1]) == 180 or math.floor(CurrentRotation[1]) == 180):
						x = 'JunctionT_Rotate_180'
						temp_list.append(x)
					juncList.append(temp_list)
				if i in X_J_RoadList:
					temp_list.append(i)
					temp_list.append('JunctionX_Rotate_All')
					juncList.append(temp_list)
		else:
			cmds.error("There is no roads")
		
		#Updating straightRoadList
		straightRoadList = []
		if (RoadList != []):
			for i in RoadList:
				if i not in CurveRoadList:
					if i not in T_J_RoadList:
						if i not in X_J_RoadList:
							straightRoadList.append(i)

		"""-------------------------------------------------------------
		Updating carList
		-------------------------------------------------------------"""
		if cmds.objExists('car*'):
			cmds.select("car*")
			TempCarList = cmds.ls(sl=True)
			counter = 0
			for i in range (0, len(TempCarList)/2):	#Remove all the shape nodes
				del TempCarList[len(TempCarList)-(counter+1)]
				counter += 1
		else:
			TempCarList = []

		if (TempCarList!=[]):
			for i in TempCarList:
				junctionIndexTemp = 0
				temp_list = []
				temp_list.append(i)	#Append the car name, index 0
				carRotation = cmds.xform(i, ro=True, q=True)	# query the cars current rotation
				carAngle = carRotation[1]
				
				# Do a check to see if car is in junction
				for k in range (0, len(juncList)):
					if (inJunction(i, k)):
						junctionIndexTemp = k
						break
					else:
						junctionIndexTemp +=1	#The next junction to check

				#If car is not in any junction
				if (junctionIndexTemp == len(juncList)):
					temp_list.append(0)	#Append the car state, index 1
					temp_list.append(-1)	#Append the car junction state. not in any junction, index 2
					temp_list.append(0)	#Append car action count, index 3
					temp_list.append(0)	#Append car previous state, index 4
					temp_list.append(-99)	#Append car state before stop, index 5
					temp_list.append(-1)	#Append car previous junction count, index 6
					

				#If car is inside a junction
				elif (junctionIndexTemp < len(juncList)):
					#Car is inside a junction.
					if (juncList[junctionIndexTemp][1] == 'JunctionCurve_Rotate_-90'):
						if carAngle == -90:
							cmds.xform(i, ro=(0,-10,0), r=True, os=True, p=True)	#Rotates the car slightly to prevent late turning.
							temp_list.append(3)	#Append the car state, index 1
							temp_list.append(junctionIndexTemp)	#Append the car junction state, index 2
							temp_list.append(0)	#Append car action count, index 3
							temp_list.append(0)	#Append car previous state, index 4
							temp_list.append(-99)	#Append car state before stop, index 5
							temp_list.append(junctionIndexTemp)	#Append car previous junction count, index 6

						elif carAngle == 0:
							cmds.xform(i, ro=(0,30,0), r=True, os=True, p=True)	#Rotates the car slightly to prevent late turning.
							temp_list.append(2)	#Append the car state, index 1
							temp_list.append(junctionIndexTemp)	#Append the car junction state, index 2
							temp_list.append(0)	#Append car action count, index 3
							temp_list.append(0)	#Append car previous state, index 4
							temp_list.append(-99)	#Append car state before stop, index 5
							temp_list.append(junctionIndexTemp)	#Append car previous junction count, index 6
							
						else:
							temp_list.append(0)	#Append the car state, index 1
							temp_list.append(-1)	#Append the car junction state. not in any junction, index 2
							temp_list.append(0)	#Append car action count, index 3
							temp_list.append(0)	#Append car previous state, index 4
							temp_list.append(-99)	#Append car state before stop, index 5
							temp_list.append(-1)	#Append car previous junction count, index 6
							
					if (juncList[junctionIndexTemp][1] == 'JunctionCurve_Rotate_0'):
						if carAngle == 0:
							cmds.xform(i, ro=(0,-10,0), r=True, os=True, p=True)
							temp_list.append(3)	#Append the car state, index 1
							temp_list.append(junctionIndexTemp)	#Append the car junction state, index 2
							temp_list.append(0)	#Append car action count, index 3
							temp_list.append(0)	#Append car previous state, index 4
							temp_list.append(-99)	#Append car state before stop, index 5
							temp_list.append(junctionIndexTemp)	#Append car previous junction count, index 6
							
						elif carAngle == 90:
							cmds.xform(i, ro=(0,30,0), r=True, os=True, p=True)	#Rotates the car slightly to prevent late turning.
							temp_list.append(2)	#Append the car state, index 1
							temp_list.append(junctionIndexTemp)	#Append the car junction state, index 2
							temp_list.append(0)	#Append car action count, index 3
							temp_list.append(0)	#Append car previous state, index 4
							temp_list.append(-99)	#Append car state before stop, index 5
							temp_list.append(junctionIndexTemp)	#Append car previous junction count, index 6
							
						else:
							temp_list.append(0)	#Append the car state, index 1
							temp_list.append(-1)	#Append the car junction state. not in any junction, index 2
							temp_list.append(0)	#Append car action count, index 3
							temp_list.append(0)	#Append car previous state, index 4
							temp_list.append(-99)	#Append car state before stop, index 5
							temp_list.append(-1)	#Append car previous junction count, index 6

					if (juncList[junctionIndexTemp][1] == 'JunctionCurve_Rotate_90'):
						if carAngle == 90:
							cmds.xform(i, ro=(0,-10,0), r=True, os=True, p=True)
							temp_list.append(3)	#Append the car state, index 1
							temp_list.append(junctionIndexTemp)	#Append the car junction state, index 2
							temp_list.append(0)	#Append car action count, index 3
							temp_list.append(0)	#Append car previous state, index 4
							temp_list.append(-99)	#Append car state before stop, index 5
							temp_list.append(junctionIndexTemp)	#Append car previous junction count, index 6
							
						elif carAngle == 180:
							cmds.xform(i, ro=(0,30,0), r=True, os=True, p=True)	#Rotates the car slightly to prevent late turning.
							temp_list.append(2)	#Append the car state, index 1
							temp_list.append(junctionIndexTemp)	#Append the car junction state, index 2
							temp_list.append(0)	#Append car action count, index 3
							temp_list.append(0)	#Append car previous state, index 4
							temp_list.append(-99)	#Append car state before stop, index 5
							temp_list.append(junctionIndexTemp)	#Append car previous junction count, index 6
								
						else:
							temp_list.append(0)	#Append the car state, index 1
							temp_list.append(-1)	#Append the car junction state. not in any junction, index 2
							temp_list.append(0)	#Append car action count, index 3
							temp_list.append(0)	#Append car previous state, index 4
							temp_list.append(-99)	#Append car state before stop, index 5
							temp_list.append(-1)	#Append car previous junction count, index 6

					if (juncList[junctionIndexTemp][1] == 'JunctionCurve_Rotate_180'):
						if carAngle == 180:
							cmds.xform(i, ro=(0,-10,0), r=True, os=True, p=True)
							temp_list.append(3)	#Append the car state, index 1
							temp_list.append(junctionIndexTemp)	#Append the car junction state, index 2
							temp_list.append(0)	#Append car action count, index 3
							temp_list.append(0)	#Append car previous state, index 4
							temp_list.append(-99)	#Append car state before stop, index 5
							temp_list.append(junctionIndexTemp)	#Append car previous junction count, index 6
							
						elif carAngle == -90:
							cmds.xform(i, ro=(0,30,0), r=True, os=True, p=True)	#Rotates the car slightly to prevent late turning.
							temp_list.append(2)	#Append the car state, index 1
							temp_list.append(junctionIndexTemp)	#Append the car junction state, index 2
							temp_list.append(0)	#Append car action count, index 3
							temp_list.append(0)	#Append car previous state, index 4
							temp_list.append(-99)	#Append car state before stop, index 5
							temp_list.append(junctionIndexTemp)	#Append car previous junction count, index 6
							
						else:
							temp_list.append(0)	#Append the car state, index 1
							temp_list.append(-1)	#Append the car junction state. not in any junction, index 2
							temp_list.append(0)	#Append car action count, index 3
							temp_list.append(0)	#Append car previous state, index 4
							temp_list.append(-99)	#Append car state before stop, index 5
							temp_list.append(-1)	#Append car previous junction count, index 6

					if (juncList[junctionIndexTemp][1] == 'JunctionT_Rotate_-90'):
						if (carAngle == 0 or carAngle == -90):
							cmds.xform(i, ro=(0,30,0), r=True, os=True, p=True)	#Rotates the car slightly to prevent late turning.
							temp_list.append(2)	#Append the car state, index 1
							temp_list.append(junctionIndexTemp)	#Append the car junction state, index 2
							temp_list.append(0)	#Append car action count, index 3
							temp_list.append(0)	#Append car previous state, index 4
							temp_list.append(-99)	#Append car state before stop, index 5
							temp_list.append(junctionIndexTemp)	#Append car previous junction count, index 6
							
						else:
							temp_list.append(4)	#Append the car state, index 1
							temp_list.append(junctionIndexTemp)	#Append the car junction state, index 2
							temp_list.append(0)	#Append car action count, index 3
							temp_list.append(0)	#Append car previous state, index 4
							temp_list.append(-99)	#Append car state before stop, index 5
							temp_list.append(junctionIndexTemp)	#Append car previous junction count, index 6

					if (juncList[junctionIndexTemp][1] == 'JunctionT_Rotate_0'):
						if (carAngle == 90 or carAngle == 0):
							cmds.xform(i, ro=(0,30,0), r=True, os=True, p=True)	#Rotates the car slightly to prevent late turning.
							temp_list.append(2)	#Append the car state, index 1
							temp_list.append(junctionIndexTemp)	#Append the car junction state, index 2
							temp_list.append(0)	#Append car action count, index 3
							temp_list.append(0)	#Append car previous state, index 4
							temp_list.append(-99)	#Append car state before stop, index 5
							temp_list.append(junctionIndexTemp)	#Append car previous junction count, index 6
							
						else:
							temp_list.append(4)	#Append the car state, index 1
							temp_list.append(junctionIndexTemp)	#Append the car junction state, index 2
							temp_list.append(0)	#Append car action count, index 3
							temp_list.append(0)	#Append car previous state, index 4
							temp_list.append(-99)	#Append car state before stop, index 5
							temp_list.append(junctionIndexTemp)	#Append car previous junction count, index 6

					if (juncList[junctionIndexTemp][1] == 'JunctionT_Rotate_90'):
						if (carAngle == 180 or carAngle == 90):
							cmds.xform(i, ro=(0,30,0), r=True, os=True, p=True)	#Rotates the car slightly to prevent late turning.
							temp_list.append(2)	#Append the car state, index 1
							temp_list.append(junctionIndexTemp)	#Append the car junction state, index 2
							temp_list.append(0)	#Append car action count, index 3
							temp_list.append(0)	#Append car previous state, index 4
							temp_list.append(-99)	#Append car state before stop, index 5
							temp_list.append(junctionIndexTemp)	#Append car previous junction count, index 6
							
						else:
							temp_list.append(4)	#Append the car state, index 1
							temp_list.append(junctionIndexTemp)	#Append the car junction state, index 2
							temp_list.append(0)	#Append car action count, index 3
							temp_list.append(0)	#Append car previous state, index 4
							temp_list.append(-99)	#Append car state before stop, index 5
							temp_list.append(junctionIndexTemp)	#Append car previous junction count, index 6

					if (juncList[junctionIndexTemp][1] == 'JunctionT_Rotate_180'):
						if (carAngle == -90 or carAngle == 180):
							print "Condition holds true"
							cmds.xform(i, ro=(0,30,0), r=True, os=True, p=True)	#Rotates the car slightly to prevent late turning.
							temp_list.append(2)	#Append the car state, index 1
							temp_list.append(junctionIndexTemp)	#Append the car junction state, index 2
							temp_list.append(0)	#Append car action count, index 3
							temp_list.append(0)	#Append car previous state, index 4
							temp_list.append(-99)	#Append car state before stop, index 5
							temp_list.append(junctionIndexTemp)	#Append car previous junction count, index 6
							
						else:
							temp_list.append(4)	#Append the car state, index 1
							temp_list.append(junctionIndexTemp)	#Append the car junction state, index 2
							temp_list.append(0)	#Append car action count, index 3
							temp_list.append(0)	#Append car previous state, index 4
							temp_list.append(-99)	#Append car state before stop, index 5
							temp_list.append(junctionIndexTemp)	#Append car previous junction count, index 6

					if (juncList[junctionIndexTemp][1] == 'JunctionX_Rotate_All'):
						cmds.xform(i, ro=(0,30,0), r=True, os=True, p=True)	#Rotates the car slightly to prevent late turning.
						temp_list.append(2)	#Append the car state, index 1
						temp_list.append(junctionIndexTemp)	#Append the car junction state, index 2
						temp_list.append(0)	#Append car action count, index 3
						temp_list.append(0)	#Append car previous state, index 4
						temp_list.append(-99)	#Append car state before stop, index 5
						temp_list.append(junctionIndexTemp)	#Append car previous junction count, index 6
				
				carList.append(temp_list)

		"""-------------------------------------------------------------
		Updating linked_trafficList and trafficList with user traffic lights
		-------------------------------------------------------------"""
		#Updating linked_trafficList
		if cmds.objExists('Linked_Traffic_Grp*'):
			cmds.select('Linked_Traffic_Grp*')
			TempLinkedList = cmds.ls(sl=True)
			
			for i in TempLinkedList:
				tempAppendList = []
				tempState = []
				tempWait = []
				LinkedChildren = cmds.listRelatives(i)
				tempAppendList.append(LinkedChildren)

				for i in range(0,len(LinkedChildren)):
					if i == 0:
						tempState.append('G')
					else:
						tempState.append('R')
					
					#Create the wait list
					factor = (i-1)*20
					if i == 0:
						tempWait.append(0)
					else:
						tempWait.append(factor)
					
				tempAppendList.append(tempState)
				tempAppendList.append(tempWait)
				
				linked_trafficList.append(tempAppendList)

		#Update trafficList
		if cmds.objExists('Traffic_Light*'):
			cmds.select("Traffic_Light*")
			TempTrafficList = cmds.ls(sl=True)
			counter = 0
			for i in range (0, len(TempTrafficList)/2):	#Remove all the shape nodes
				del TempTrafficList[len(TempTrafficList)-(counter+1)]
				counter += 1
		else:
			TempTrafficList = []

		if (TempTrafficList!=[]):
			for i in TempTrafficList:
				tempList = []
				similar = 0
				for j in range(0,len(linked_trafficList)):
					for k in range(0,len(linked_trafficList[j][0])):
						if i == linked_trafficList[j][0][k]:
							similar = 1

				if similar == 0:
					tempList.append(i)
					lightShown = random.randint(0,1)
					if lightShown == 0:
						tempList.append('R')
					if lightShown == 1:
						tempList.append('G')
					tempList.append(0)
					trafficList.append(tempList)

		"""-------------------------------------------------------------
		Creating trafficRoadList which indicates which straight roads have a traffic light
		-------------------------------------------------------------"""
		for i in range(0,len(trafficList)):
			for j in range(0,len(straightRoadList)):
				if (onRoad(trafficList[i][0],j)):	#Check if a trafficLight has its bounding box colliding with a straight Road
					temp_trafficRoadList = []
					temp_trafficRoadList.append(straightRoadList[j])
					temp_trafficRoadList.append(trafficList[i][0])
					
					trafficLight_rotation = cmds.xform(trafficList[i][0],ro=True, q=True)
					trafficLight_rotation = trafficLight_rotation[1]
					if trafficLight_rotation == -0:
						trafficLight_rotation = 0
					
					temp_trafficRoadList.append(trafficLight_rotation)
					trafficRoadList.append(temp_trafficRoadList)

		for i in range(0,len(linked_trafficList)):
			for j in range(0, len(linked_trafficList[i][0])):
				for k in range(0,len(straightRoadList)):
					if (onRoad(linked_trafficList[i][0][j],k)):
						temp_trafficRoadList = []
						temp_trafficRoadList.append(straightRoadList[k])
						temp_trafficRoadList.append(linked_trafficList[i][0][j])
						
						trafficLight_rotation = cmds.xform(linked_trafficList[i][0][j],ro=True, q=True)
						trafficLight_rotation = trafficLight_rotation[1]
						if trafficLight_rotation == -0:
							trafficLight_rotation = 0
						
						temp_trafficRoadList.append(trafficLight_rotation)
						trafficRoadList.append(temp_trafficRoadList)

		"""-------------------------------------------------------------
		Creating the World Variable and enquire its bounding box
		-------------------------------------------------------------"""
		global WorldPlane
		WorldPlane = 'My_Unique_Terrain'

		#Check World Bounding Box
		WorldBoundingBox = cmds.exactWorldBoundingBox(WorldPlane)
		variables_reload = 0;
	
	"""//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////"""
	#Perform calculations for each updated frame.
	"""//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////"""
	"""-------------------------------------------------------------
	Checking and changing the state of traffic lights
	-------------------------------------------------------------"""
	for i in range(0,len(trafficList)):
		cmds.select('RedLight_'+str(trafficList[i][0]))
		trafficRedLight = cmds.ls(sl=True)	#Stores the RedLight object
		cmds.select('OrangeLight_'+str(trafficList[i][0]))
		trafficOrangeLight = cmds.ls(sl=True)	#Stores the OrangeLight object
		cmds.select('GreenLight_'+str(trafficList[i][0]))
		trafficGreenLight = cmds.ls(sl=True)	#Stores the GreenLight object
		
		#Adjusting transition in lights
		if (trafficList[i][2] > 20 and trafficList[i][1] == 'R'):
			#If it has been red for 20 turns
			trafficList[i][1] = 'G'
			trafficList[i][2] = 0
			
		elif (trafficList[i][2] > 5 and trafficList[i][1] == 'O'):
			#If it has been orange for 5 turns
			trafficList[i][1] = 'R'
			trafficList[i][2] = 0
		
		elif (trafficList[i][2] > 15 and trafficList[i][1] == 'G'):
			#If it has been green for 15 turns
			trafficList[i][1] = 'O'
			trafficList[i][2] = 0
		
		else:
			trafficList[i][2] += 1
		
		#Assigning colours accordingly
		if (trafficList[i][1] == 'R'):
			state_redLight(trafficRedLight, trafficOrangeLight, trafficGreenLight)
		if (trafficList[i][1] == 'O'):
			state_orangeLight(trafficRedLight, trafficOrangeLight, trafficGreenLight)
		if (trafficList[i][1] == 'G'):
			state_greenLight(trafficRedLight, trafficOrangeLight, trafficGreenLight)

	for i in range (0, len(linked_trafficList)):	# linked_trafficList[i] becomes = [['t1','t2','t3'],[R,R,G],[2,2,4]] etc
		for k in range (0, len(linked_trafficList[i][0])):	#linked_trafficList[i][0]= ['t1','t2','t3']
			cmds.select('RedLight_'+str(linked_trafficList[i][0][k]))
			trafficRedLight = cmds.ls(sl=True)	#Stores the RedLight object
			cmds.select('OrangeLight_'+str(linked_trafficList[i][0][k]))
			trafficOrangeLight = cmds.ls(sl=True)	#Stores the OrangeLight object
			cmds.select('GreenLight_'+str(linked_trafficList[i][0][k]))
			trafficGreenLight = cmds.ls(sl=True)	#Stores the GreenLight object
			
			#Getting information on how many turns it has to be red
			redTurns = ((len(linked_trafficList[i][0])-1)* 20)
			
			#Adjusting transition in lights
			if (linked_trafficList[i][2][k] >= (redTurns-1) and linked_trafficList[i][1][k] == 'R'):
				#If it has been red for redTurns amount of turns
				linked_trafficList[i][1][k] = 'G'
				linked_trafficList[i][2][k] = 0

			elif (linked_trafficList[i][2][k] >= 4 and linked_trafficList[i][1][k] == 'O'):
				#If it has been orange for 5 turns
				linked_trafficList[i][1][k] = 'R'
				linked_trafficList[i][2][k] = 0

			elif (linked_trafficList[i][2][k] >= 14 and linked_trafficList[i][1][k] == 'G'):
				#If it has been green for 15 turns
				linked_trafficList[i][1][k] = 'O'
				linked_trafficList[i][2][k] = 0
			
			else:
				linked_trafficList[i][2][k] += 1

			#Assigning colours accordingly
			if (linked_trafficList[i][1][k] == 'R'):
				state_redLight(trafficRedLight, trafficOrangeLight, trafficGreenLight)
			if (linked_trafficList[i][1][k] == 'O'):
				state_orangeLight(trafficRedLight, trafficOrangeLight, trafficGreenLight)
			if (linked_trafficList[i][1][k] == 'G'):
				state_greenLight(trafficRedLight, trafficOrangeLight, trafficGreenLight)

	#Variable to be used for decision making at junctions
	decision = -1
	"""-------------------------------------------------------------
	Checking 
	1)Clamp angles of cars
	2)Whether the car is still on the plane
	3)Clamp position of cars
	4)Updates car previous states
	-------------------------------------------------------------"""

	for i in range (0, len(carList)):
		AnglesTweak(i)	#Clamp the angles
		#Check if cars are still in world. If not, stop them
		if (inWorld(carList[i][0],WorldPlane) == False):	#not in world
			state_carCrash(carList[i][0])	#Change car state to stop
			carList[i][1]= -2	#Change car state registered
		carList[i][4] = carList[i][1]	#Update car previous state
		for i in range (0,len(carList)):	#Cycle through carList
			for k in range (0, len(straightRoadList)):	#Cycle throught straight road list
				if (carList[i][1] < 2 and carList[i][1]>=0):
					if (onRoad(carList[i][0],k)):
						PositionTweak(carList[i][0],straightRoadList[k])	#Make the car keep to its lane if it is on a straight road
						
	
	"""-------------------------------------------------------------
	Checking if car is at a traffic light road and
	what to do if it is.
	-------------------------------------------------------------"""
	
	for i in range(0, len(carList)):	#Cycle through carList
		for j in range(0,len(trafficRoadList)):	#Cycle through the straight roads which have traffic lights
			if (onTrafficRoad(carList[i][0],j)):	#If on a traffic light road
					carBoundingBox = cmds.exactWorldBoundingBox(carList[i][0])
					trafficLocation = cmds.exactWorldBoundingBox(trafficRoadList[j][1])
					carRotation = cmds.xform(carList[i][0], ro=True, q=True)	# query the cars current rotation
					carAngle = carRotation[1]
					trafficDistance = -99	#Variable to store the calculation of traffic Distance
					#Check if the car is facing the traffic light. If yes, perform the calculations
					if (carAngle == 180 and trafficRoadList[j][2] == 180):
						trafficLocation = (trafficLocation[2] + trafficLocation [5])/2
						trafficDistance = trafficLocation-carBoundingBox[2]
						
					if (carAngle == 0 and trafficRoadList[j][2] == 0):
						trafficLocation = (trafficLocation[2] + trafficLocation [5])/2
						trafficDistance = carBoundingBox[5] - trafficLocation
					
					if (carAngle == -90 and trafficRoadList[j][2] == -90):
						trafficLocation = (trafficLocation[0] + trafficLocation [3])/2
						trafficDistance = trafficLocation-carBoundingBox[0]
					
					if (carAngle == 90 and trafficRoadList[j][2] == 90):
						trafficLocation = (trafficLocation[0] + trafficLocation [3])/2
						trafficDistance = carBoundingBox[3]	- trafficLocation

					if (trafficDistance >-2 and trafficDistance <-1):	#If the distance is really close and the car has not cross the traffic light.
						linkedState = 'X'	#The light status of linked traffic lights. Adds a temp character
						trafficState = 'X'	#The light status of traffic lights. Adds a temp character
						
						#Check the state of the trafficLight that is close to the car's position.
						for k in range(0,len(linked_trafficList)):
							for l in range (0,len(linked_trafficList[k][0])):
								if linked_trafficList[k][0][l] == trafficRoadList[j][1]:
									linkedState = linked_trafficList[k][1][l]
						
						for k in range(0,len(trafficList)):
							if trafficList[k][0] == trafficRoadList[j][1]:
								trafficState = trafficList[k][1]
						
						#Check the state accordingly
						if(trafficState == 'R' or trafficState == 'O' or linkedState == 'R' or linkedState == 'O'):
							carList[i][1] = -1
							state_carStop(carList[i][0])
						else:
							carList[i][1] = 0
							state_goStraight(carList[i][0])
	
	"""-------------------------------------------------------------
	Checking if a car is too near another car and what it should do
	-------------------------------------------------------------"""
	for i in range (0,len(carList)):	#Check a car
		counter = 0
		for j in range (0,len(carList)):	#With every other car
			if i == j:	#If we are comparing the same car
				counter += 1
				continue
			checkDistance = distance(carList[i][0],carList[j][0])	#Check the distance between 2 cars.
			if (checkDistance<0.75):	#If the distance is below a certain amount
				break
			else:
				counter += 1

		if counter == (len(carList)):	#Car that is being checked is not too close to anycar
			if (carList[i][5]!=-99):	#It has previously stopped
				carList[i][1] = carList[i][5]	#Resumes its original state
				carList[i][5] = -99	#Resets it back
		
		if counter<(len(carList)):	#Car that is being checked is close to a car
			if (carList[i][5] == -99):	#If it wasn't stopped before
				carList[i][5] = carList[i][1]	#To store its initial state before stoping so it can resume after
				carList[i][1] = -1
				state_carStop(carList[i][0])	# Stop the car
			
			if (carList[i][5] != -99):	#If the car was stopped before
				carList[i][1] = -1
				state_carStop(carList[i][0])	#Continue to be stopped.
				

	"""-------------------------------------------------------------
	Checking if car is in a junction and what
	to do if it is.
	-------------------------------------------------------------"""
	for i in range (0,len(carList)):	#Cycle through carList

		if (carList[i][1] < 0):	# If car is in stop or crash state, continue
			continue
			
		carRotation = cmds.xform(carList[i][0], ro=True, q=True)	# query the cars current rotation
		carAngle = carRotation[1]
		junctionIndex = 0
		sameIndex = 0

		#Creates a checking loop to see if a car is in a Junction.
		#junctionIndex is used so if the loop breaks, the car is in the junction
		for k in range (0, len(juncList)):
			if (inJunction(carList[i][0], k)):
				if carList[i][6] != junctionIndex:	#If the car is located inbetween 2 junctions
					break
				elif carList[i][6] == junctionIndex:	#If the car is currently in that junction, ignore
					junctionIndex += 1
					sameIndex = 1
			else:
				junctionIndex +=1	#The next junction to check
		
		#If the car is not in any junction, set the states accordingly
		if (junctionIndex == len(juncList)) and (sameIndex == 0):
			carList[i][2] = -1
			carList[i][1] = 0
			carList[i][6] = -1

		#If car is in a junction and previously not in a junction
		if (junctionIndex < len(juncList) and carList[i][2] == -1):
			if carList[i][6] != junctionIndex:
				carList[i][2] = junctionIndex
				carList[i][6] = carList[i][2]
				j = junctionIndex

				#Determine how the car would behave according to which type of junction it is in
				#Behaviours when encountering curve roads
				if (juncList[j][1] == 'JunctionCurve_Rotate_-90'):
					if carAngle == -90:
						state_turnRight(carList[i][0])	#Change car state to turn Right
						carList[i][1] = 3	#Change car state registered
					elif carAngle == 0:
						state_turnLeft(carList[i][0])	#Change car state to turn Left
						carList[i][1] = 2	#Change car state registered

				if (juncList[j][1] == 'JunctionCurve_Rotate_0'):
					if carAngle == 0:
						state_turnRight(carList[i][0])	#Change car state to turn Right
						carList[i][1] = 3	#Change car state registered
					elif carAngle == 90:
						state_turnLeft(carList[i][0])	#Change car state to turn Left
						carList[i][1] = 2	#Change car state registered

				if (juncList[j][1] == 'JunctionCurve_Rotate_90'):
					if carAngle == 90:
						state_turnRight(carList[i][0])	#Change car state to turn Right
						carList[i][1] = 3	#Change car state registered
					elif carAngle == 180:
						state_turnLeft(carList[i][0])	#Change car state to turn Left
						carList[i][1] = 2	#Change car state registered
							
				if (juncList[j][1] == 'JunctionCurve_Rotate_180'):
					if carAngle == 180:
						state_turnRight(carList[i][0])	#Change car state to turn Right
						carList[i][1] = 3	#Change car state registered
					elif carAngle == -90:
						state_turnLeft(carList[i][0])	#Change car state to turn Left
						carList[i][1] = 2	#Change car state registered

				#Behaviours when encountering T-Junction roads
				if (juncList[j][1] == 'JunctionT_Rotate_-90'):
					decision = random.randint(0,1)
					if carAngle == 0:
						if decision == 0:
							state_continueStraight(carList[i][0])	#Change car state to continue Straight
							carList[i][1] = 4	#Change car state registered
						elif decision == 1:
							state_turnLeft(carList[i][0])	#Change car state to turn Left
							carList[i][1] = 2	#Change car state registered
					elif carAngle == -90:
						if decision == 0:
							state_turnLeft(carList[i][0])	#Change car state to turn Left
							carList[i][1] = 2	#Change car state registered
						elif decision == 1:
							state_turnRight(carList[i][0])	#Change car state to turn Left
							carList[i][1] = 3	#Change car state registered
					elif carAngle == 180:
						if decision == 0:
							state_continueStraight(carList[i][0])	#Change car state to continue Straight
							carList[i][1] = 4	#Change car state registered
						elif decision == 1:
							state_turnRight(carList[i][0])	#Change car state to turn Left
							carList[i][1] = 3	#Change car state registered

				if (juncList[j][1] == 'JunctionT_Rotate_0'):
					decision = random.randint(0,1)
					if carAngle == 90:
						if decision == 0:
							state_continueStraight(carList[i][0])	#Change car state to continue Straight
							carList[i][1] = 4	#Change car state registered
						elif decision == 1:
							state_turnLeft(carList[i][0])	#Change car state to turn Left
							carList[i][1] = 2	#Change car state registered
					elif carAngle == 0:
						if decision == 0:
							state_turnLeft(carList[i][0])	#Change car state to turn Left
							carList[i][1] = 2	#Change car state registered
						elif decision == 1:
							state_turnRight(carList[i][0])	#Change car state to turn Left
							carList[i][1] = 3	#Change car state registered
					elif carAngle == -90:
						if decision == 0:
							state_continueStraight(carList[i][0])	#Change car state to continue Straight
							carList[i][1] = 4	#Change car state registered
						elif decision == 1:
							state_turnRight(carList[i][0])	#Change car state to turn Left
							carList[i][1] = 3	#Change car state registered
				if (juncList[j][1] == 'JunctionT_Rotate_90'):
					decision = random.randint(0,1)
					if carAngle == 180:
						if decision == 0:
							state_continueStraight(carList[i][0])	#Change car state to continue Straight
							carList[i][1] = 4	#Change car state registered
						elif decision == 1:
							state_turnLeft(carList[i][0])	#Change car state to turn Left
							carList[i][1] = 2	#Change car state registered
					elif carAngle == 90:
						if decision == 0:
							state_turnLeft(carList[i][0])	#Change car state to turn Left
							carList[i][1] = 2	#Change car state registered
						elif decision == 1:
							state_turnRight(carList[i][0])	#Change car state to turn Left
							carList[i][1] = 3	#Change car state registered
					elif carAngle == 0:
						if decision == 0:
							state_continueStraight(carList[i][0])	#Change car state to continue Straight
							carList[i][1] = 4	#Change car state registered
						elif decision == 1:
							state_turnRight(carList[i][0])	#Change car state to turn Left
							carList[i][1] = 3	#Change car state registered
				if (juncList[j][1] == 'JunctionT_Rotate_180'):
					decision = random.randint(0,1)
					if carAngle == -90:
						if decision == 0:
							state_continueStraight(carList[i][0])	#Change car state to continue Straight
							carList[i][1] = 4	#Change car state registered
						elif decision == 1:
							state_turnLeft(carList[i][0])	#Change car state to turn Left
							carList[i][1] = 2	#Change car state registered
					elif carAngle == 180:
						if decision == 0:
							state_turnLeft(carList[i][0])	#Change car state to turn Left
							carList[i][1] = 2	#Change car state registered
						elif decision == 1:
							state_turnRight(carList[i][0])	#Change car state to turn Left
							carList[i][1] = 3	#Change car state registered
					elif carAngle == 90:
						if decision == 0:
							state_continueStraight(carList[i][0])	#Change car state to continue Straight
							carList[i][1] = 4	#Change car state registered
						elif decision == 1:
							state_turnRight(carList[i][0])	#Change car state to turn Left
							carList[i][1] = 3	#Change car state registered
				#Behaviours when encountering Cross-Junction roads
				if (juncList[j][1] == 'JunctionX_Rotate_All'):
					decision = random.randint(0,2)
					if decision == 0:
						state_continueStraight(carList[i][0])	#Change car state to continue Straight
						carList[i][1] = 4	#Change car state registered
					elif decision == 1:
						state_turnLeft(carList[i][0])	#Change car state to turn Left
						carList[i][1] = 2	#Change car state registered
					elif decision == 2:
						state_turnRight(carList[i][0])	#Change car state to turn Left
						carList[i][1] = 3	#Change car state registered
		
		
		#If car is still in the process of turning
		if carAngle%90.0 > 0.0 and carList[i][1] == 2:
			state_turnLeft(carList[i][0])
		elif carAngle%90.0 > 0.0 and carList[i][1] == 3:
		    state_turnRight(carList[i][0]) 
		
		#If car is continuing straight. Prevent it from getting its state back to 0.
		if carList[i][1] == 4:
			if carList[i][3]<6:
				state_continueStraight(carList[i][0])
				carList[i][3] +=1
			else:
				carList[i][1] = 0
				carList[i][3] = 0
		
		#If car has finished turning or it is not in the state of turning
		if carList[i][1] != 4:
			if (carAngle%90.0 == 0.0 or carList[i][1] == 0):
				state_goStraight(carList[i][0])
				'''If car is 
				1)in the midst of turning
				2)in a junction
				3)has completed his turn
				4)and its previous state is turning
				'''
				if (carList[i][1]>0 and carList[i][2]!=-1 and carAngle%90 == 0.0 and carList[i][4]!=0 and decision==-1):
					carList[i][2] = -1

"""
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
Setting up a few global variables for Traffic Simulation
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
"""
#Create textures on road
"""-------------------------------------------------------------
Definining preset velocity
-------------------------------------------------------------"""
V_Slow = (0,0,0.5)
V_TurnLeft = (0,0,0.3)
V_TurnRight = (0,0,0.45)
V_Fast = (0,0,1)
V_Stop = (0,0,0)

"""-------------------------------------------------------------
Definining Car States
-------------------------------------------------------------"""
def state_carCrash(car):
	"""Cause the car to crash
	
	car	: The car to undergo the state
	State -2
	"""
	cmds.xform(car,t=V_Stop, r=True, os=True, p=True)
	
def state_carStop(car):
	"""Cause the car to stop
	car	: The car to undergo the state
	State -1
	"""
	cmds.xform(car,t=V_Stop, r=True, os=True, p=True)
	
def state_goStraight(car):
	"""Cause the car to move forward
	
	car	: The car to undergo the state
	State 0
	"""
	cmds.xform(car, t=V_Slow, r=True, os=True)
	
def state_turnLeft(car):
	"""Cause the car to turn left
	
	car	: The car to undergo the state
	State 2
	"""
	cmds.xform(car, t=V_TurnLeft, r=True, os=True)
    	cmds.xform(car, ro=(0,30,0), r=True, os=True, p=True)

def state_turnRight(car):
	"""Cause the car to turn right
	
	car	: The car to undergo the state
	State 3
	"""
	cmds.xform(car,t=V_TurnRight, r=True, os=True)
	cmds.xform(car, ro=(0,-10,0), r=True, os=True, p=True)

def state_continueStraight(car):
	"""Cause the car to continue straight
	
	car	: The car to undergo the state
	State 4
	"""
	cmds.xform(car, t=V_Slow, r=True, os=True)
	
def state_tiltLeft(car):
	"""Car tilts left based on direction it is facing
	
	car	: The car to undergo the state
	No State
	"""
	cmds.xform(car, t=(0.1,0,0), r=True, os=True, p=True)
	
def state_tiltRight(car):
	"""Car tilts right based on direction it is facing
	
	car	: The car to undergo the state
	No State
	"""
	cmds.xform(car, t=(-0.1,0,0), r=True, os=True, p=True)

"""-------------------------------------------------------------
Definining Traffic Light States
-------------------------------------------------------------"""
def state_redLight(trafficRedLight, trafficOrangeLight, trafficGreenLight):
	"""Change the state of the Traffic light to show a red light
	
	trafficRedLight	:The polysphere that represents the red light
	trafficOrangeLight	:The polysphere that represents the orange light
	trafficGreenLight	:The polysphere that represents the green light
	State R
	"""
	cmds.sets(trafficRedLight, edit=True, forceElement='RedShaderSG')
	cmds.sets(trafficOrangeLight, edit=True, forceElement='initialShadingGroup')
	cmds.sets(trafficGreenLight, edit=True, forceElement='initialShadingGroup')

def state_orangeLight(trafficRedLight, trafficOrangeLight, trafficGreenLight):
	"""Change the state of the Traffic light to show an Orange light
	
	trafficRedLight	:The polysphere that represents the red light
	trafficOrangeLight	:The polysphere that represents the orange light
	trafficGreenLight	:The polysphere that represents the green light
	State O
	"""
	cmds.sets(trafficRedLight, edit=True, forceElement='initialShadingGroup')
	cmds.sets(trafficOrangeLight, edit=True, forceElement='OrangeShaderSG')
	cmds.sets(trafficGreenLight, edit=True, forceElement='initialShadingGroup')

def state_greenLight(trafficRedLight, trafficOrangeLight, trafficGreenLight):
	"""Change the state of the Traffic light to show an Green light
	
	trafficRedLight	:The polysphere that represents the red light
	trafficOrangeLight	:The polysphere that represents the orange light
	trafficGreenLight	:The polysphere that represents the green light
	State G
	"""
	cmds.sets(trafficRedLight, edit=True, forceElement='initialShadingGroup')
	cmds.sets(trafficOrangeLight, edit=True, forceElement='initialShadingGroup')
	cmds.sets(trafficGreenLight, edit=True, forceElement='GreenShaderSG')


"""-------------------------------------------------------------
Definining Calculation Functions for AI
-------------------------------------------------------------"""

def distance(obj1,obj2):
	"""Get the distance between the 2 objects
	
	obj1	: is the first object to compare the distance with
	obj2	: is the second object to compare the distance with
	return	: the distance between obj1 and obj2
	"""
	frontCar= cmds.xform (str(obj1) + '.f[0]',q=True, t=True, ws=True)	#Query translation vectors of the 4 points of the selected face.	
	x1 = ( frontCar[0] + frontCar[3] + frontCar[6] + frontCar[9] ) / 4.0;	#Get the x axis center
	y1 = ( frontCar[1] + frontCar[4] + frontCar[7] + frontCar[10] ) / 4.0;	#Get the y axis center
	z1 = ( frontCar[2] + frontCar[5] + frontCar[8] + frontCar[11] ) / 4.0;	#Get the z axis center
	
	backCar= cmds.xform (str(obj2) + '.f[2]',q=True, t=True, ws=True)	#Query translation vectors of the 4 points of the selected face.	
	x2 = ( backCar[0] + backCar[3] + backCar[6] + backCar[9] ) / 4.0;	#Get the x axis center
	y2 = ( backCar[1] + backCar[4] + backCar[7] + backCar[10] ) / 4.0;	#Get the y axis center
	z2 = ( backCar[2] + backCar[5] + backCar[8] + backCar[11] ) / 4.0;	#Get the z axis center
	
	DistanceX = x1 - x2
	DistanceY = y1 - y2
	DistanceZ = z1 - z2
	
	#Using pythagoras to get distance
	distance = math.sqrt((DistanceX**2)+(DistanceY**2)+(DistanceZ**2))
	return distance

def detectCollision(car1,car2):
	"""Checks whether the bounding box of car1 and car2 collides
	
	car1	: is the first car to check
	car2	: is the second car to check
	return	: True if collided. False if not collided
	"""
	bbox1 = cmds.exactWorldBoundingBox(car1)
	bbox2 = cmds.exactWorldBoundingBox(car2)
	
	if (bbox2[2]>=bbox1[2] and bbox2[2]<=bbox1[5] or bbox2[5]>=bbox1[2] and bbox2[5]<=bbox1[5]) and (bbox2[0]>=bbox1[0] and bbox2[0]<=bbox1[3] or bbox2[3]>=bbox1[0] and bbox2[3]<=bbox1[3]):
		return True
	else:
		return False

def onRoad(car,roadIndex):
	"""Checks whether a car is on a straight road
	
	car	: is the car that is being check
	roadIndex	: is the road position in the straight road list
	return	: True if collided. False if not collided
	"""
	bbox1 = cmds.exactWorldBoundingBox (straightRoadList[roadIndex])
	bbox2 = cmds.exactWorldBoundingBox (car)
	if (bbox2[2]>=bbox1[2] and bbox2[2]<=bbox1[5] or bbox2[5]>=bbox1[2] and bbox2[5]<=bbox1[5]) and (bbox2[0]>=bbox1[0] and bbox2[0]<=bbox1[3] or bbox2[3]>=bbox1[0] and bbox2[3]<=bbox1[3]):
		return True
	else:
		return False

def onTrafficRoad(car,roadIndex):
	"""Checks whether a car is on a straight road
	
	car	: is the car that is being check
	roadIndex	: is the road index in the trafficRoadList
	return	: True if collided. False if not collided
	"""
	bbox1 = cmds.exactWorldBoundingBox (trafficRoadList[roadIndex][0])
	bbox2 = cmds.exactWorldBoundingBox (car)
	if (bbox2[2]>=bbox1[2] and bbox2[2]<=bbox1[5] or bbox2[5]>=bbox1[2] and bbox2[5]<=bbox1[5]) and (bbox2[0]>=bbox1[0] and bbox2[0]<=bbox1[3] or bbox2[3]>=bbox1[0] and bbox2[3]<=bbox1[3]):
		return True
	else:
		return False
		
def inJunction(car,juncIndex):
	"""Checks whether a car is in a junction
	
	car	: is the car that is being check
	juncIndex	: is the Junction index in the Junction list
	return	: True if collided. False if not collided
	"""
	bbox1 = cmds.exactWorldBoundingBox (juncList[juncIndex][0])
	bbox2 = cmds.exactWorldBoundingBox (car)
	if (bbox2[2]>=bbox1[2] and bbox2[2]<=bbox1[5] or bbox2[5]>=bbox1[2] and bbox2[5]<=bbox1[5]) and (bbox2[0]>=bbox1[0] and bbox2[0]<=bbox1[3] or bbox2[3]>=bbox1[0] and bbox2[3]<=bbox1[3]):
		return True
	else:
		return False

def inWorld(car,WorldPlane):
	"""Checks whether a car is on the plane
	
	car	: is the car that is being check
	WorldPlane	: is the string of the WorldPlane
	return	: True if still in the world. False if not in the world
	"""
	bbox1 = cmds.exactWorldBoundingBox (WorldPlane)
	bbox2 = cmds.exactWorldBoundingBox (car)
	if (bbox2[2]>=bbox1[2] and bbox2[2]<=bbox1[5] or bbox2[5]>=bbox1[2] and bbox2[5]<=bbox1[5]) and (bbox2[0]>=bbox1[0] and bbox2[0]<=bbox1[3] or bbox2[3]>=bbox1[0] and bbox2[3]<=bbox1[3]):
		return True
	else:
		return False

def AnglesTweak(listNum):
	"""Stops the car from turning at a Junction after reaching a certain threshold
	Helps to reposition the rotation of a car if its rotate Y is of a certain value.
	This is to make sure the car is going straight
	
	listNum	: is the car index position in the carList
	"""
	
	rotation = cmds.xform(carList[listNum][0], ro=True, q=True)
	angle = rotation[1]
	angle = int(angle)
	
	if (carList[listNum][1] < 5 and carList[listNum][1] >=0):	#if car is not in the stop state.
		if (angle >85 and angle <95):
			cmds.xform( carList[listNum][0], ro=(0,90,0), os=True, p=True)
			carList[listNum][1] == 0
		elif (angle >-95 and angle <-85):
			cmds.xform( carList[listNum][0], ro=(0,-90,0), os=True, p=True)
			carList[listNum][1] == 0
		elif (angle==0):
			cmds.xform( carList[listNum][0], ro=(0,0,0), os=True, p=True)
			carList[listNum][1] == 0
    		elif ((angle >= 175.0 and angle <= 185.0) or (angle >= -185.0 and angle <= -175.0)):
			cmds.xform( carList[listNum][0], ro=(0,180,0), os=True, p=True)
			carList[listNum][1] == 0  
		elif ((angle >= 265.0 and angle <= 275.0)):
			cmds.xform( carList[listNum][0], ro=(0,-90,0), os=True, p=True)
			carList[listNum][1] == 0 
		elif (angle == 360):
			cmds.xform( carList[listNum][0], ro=(0,0,0), os=True, p=True)
			carList[listNum][1] == 0
	
	if carList[listNum][1] == 0:	#If car is just heading straight.
		if angle > -45 and angle < 45:
		    cmds.xform(carList[listNum][0], ro=(0,0,0), os=True, p=True)
		elif angle > 45 and angle < 135:
		    cmds.xform(carList[listNum][0], ro=(0,90,0), os=True, p=True)
		elif angle > -135 and angle < -45:
		    cmds.xform(carList[listNum][0], ro=(0,-90,0), os=True, p=True)
		elif angle > 135 and angle < 225:
		    cmds.xform(carList[listNum][0], ro=(0,180,0), os=True, p=True)

def PositionTweak(car,road):
	"""Tweak the position of the car, to make the car keep to its lane
	
	car	: is the car that is being tweaked
	road: is the straight road the car is currently on
	"""
	bbox = cmds.exactWorldBoundingBox (road)
	position = cmds.xform(car, t=True, q=True)
	rotation = cmds.xform(car, ro=True, q=True)
	angle = rotation[1]
	angle = int(angle)
	
	if angle == 0:
		if ((position[0] - bbox[3])< -2.5):
			state_tiltLeft(car)
		if ((position[0] - bbox[3])> -1.5):
			state_tiltRight(car)
	
	if angle == -90:
		if ((position[2] - bbox[5])> 0.5):
			state_tiltRight(car)
		if ((position[2] - bbox[5])< -0.5):
			state_tiltLeft(car)
	
	if angle == 180:
		if ((position[0] - bbox[0])< 0.25):
			state_tiltRight(car)
		if ((position[0] - bbox[0])> 0.5):
			state_tiltLeft(car)
	
	if angle == 90:
		if ((position[2] - bbox[2])< 0.5):
			state_tiltRight(car)
		if ((position[2] - bbox[2])> 2.5):
			state_tiltLeft(car)

"""
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
Functions to create some material types and shaders
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
"""
def createRedShader(currentShadingGroups):
	'''Creates a Red Lambert Shader
	
	currentShadingGroups	: Consists of all the shading networks
	'''
	shaderCreated = 0
	for i in currentShadingGroups:
		if i == 'RedShaderSG':
			shaderCreated = 1
			break
	if shaderCreated == 1:
		print "Shader exists"
	if shaderCreated == 0:
		RedSet = cmds.sets(name = 'RedShaderSG', renderable=True, empty = True)
		RedShader = cmds.shadingNode('lambert',asShader=True, n='RedShader')
		cmds.setAttr ('RedShader.color',1,0,0,type = 'double3')
		cmds.surfaceShaderList(RedShader, add=RedSet)

def createOrangeShader(currentShadingGroups):
	'''Creates a Orange Lambert Shader
	
	currentShadingGroups	: Consists of all the shading networks
	'''
	shaderCreated = 0
	for i in currentShadingGroups:
		if i == 'OrangeShaderSG':
			shaderCreated = 1
			break
	if shaderCreated == 1:
		print "Shader exists"
	if shaderCreated == 0:
		OrangeSet = cmds.sets(name = 'OrangeShaderSG', renderable=True, empty = True)
		OrangeShader = cmds.shadingNode('lambert',asShader=True, n='OrangeShader')
		cmds.setAttr ('OrangeShader.color',1,0.67,0,type = 'double3')
		cmds.surfaceShaderList(OrangeShader, add=OrangeSet)

def createGreenShader(currentShadingGroups):
	'''Creates a Green Lambert Shader
	
	currentShadingGroups	: Consists of all the shading networks
	'''
	shaderCreated = 0
	for i in currentShadingGroups:
		if i == 'GreenShaderSG':
			shaderCreated = 1
			break
	if shaderCreated == 1:
		print "Shader exists"
	if shaderCreated == 0:
		GreenSet = cmds.sets(name = 'GreenShaderSG', renderable=True, empty = True)
		GreenShader = cmds.shadingNode('lambert',asShader=True, n='GreenShader')
		cmds.setAttr ('GreenShader.color',0,1,0,type = 'double3')
		cmds.surfaceShaderList(GreenShader, add=GreenSet)

def createStraightRoadShader(currentShadingGroups):
	'''Creates a Straight Road Lambert Shader
	
	currentShadingGroups	: Consists of all the shading networks
	'''
	shaderCreated = 0
	for i in currentShadingGroups:
		if i == 'StraightRoadShaderSG':
			shaderCreated = 1
			break
	if shaderCreated == 1:
		print "Shader exists"
	if shaderCreated == 0:
		StraightRoadShader = cmds.shadingNode('lambert', asShader = True, n='StraightRoadShader')
		StraightRoadFile = cmds.shadingNode("file",asTexture = True)
		# defines location where texture is 
		file = ("sourceimages/StraightRoadTexture.png")
		StraightRoadSet = cmds.sets(name = 'StraightRoadShaderSG', noSurfaceShader = True, renderable = True, empty = True)
		cmds.setAttr( '%s.fileTextureName' % StraightRoadFile, file, type = "string")
		#Connect Shader to sg surface shader
		cmds.connectAttr('%s.outColor' %StraightRoadShader, '%s.surfaceShader' %StraightRoadSet)
		#Connect file node to shader color
		cmds.connectAttr('%s.outColor' %StraightRoadFile, '%s.color' %StraightRoadShader)
		
def createCrossJunctionShader(currentShadingGroups):
	'''Creates a Cross Junction Lambert Shader
	
	currentShadingGroups	: Consists of all the shading networks
	'''
	shaderCreated = 0
	for i in currentShadingGroups:
		if i == 'CrossJunctionShaderSG':
			shaderCreated = 1
			break
	if shaderCreated == 1:
		print "Shader exists"
	if shaderCreated == 0:
		CrossJunctionShader = cmds.shadingNode('lambert', asShader = True, n='CrossJunctionShader')
		CrossJunctionFile = cmds.shadingNode("file",asTexture = True)
		# defines location where texture is 
		file = ("sourceimages/CrossJunctionTexture.png")
		CrossJunctionSet = cmds.sets(name = 'CrossJunctionShaderSG', noSurfaceShader = True, renderable = True, empty = True)
		cmds.setAttr( '%s.fileTextureName' % CrossJunctionFile, file, type = "string")
		#Connect Shader to sg surface shader
		cmds.connectAttr('%s.outColor' %CrossJunctionShader, '%s.surfaceShader' %CrossJunctionSet)
		#Connect file node to shader color
		cmds.connectAttr('%s.outColor' %CrossJunctionFile, '%s.color' %CrossJunctionShader)
		
def createTJunctionShader(currentShadingGroups):
	'''Creates a TJunction Lambert Shader
	
	currentShadingGroups	: Consists of all the shading networks
	'''
	shaderCreated = 0
	for i in currentShadingGroups:
		if i == 'TJunctionShaderSG':
			shaderCreated = 1
			break
	if shaderCreated == 1:
		print "Shader exists"
	if shaderCreated == 0:
		TJunctionShader = cmds.shadingNode('lambert', asShader = True, n='TJunctionShader')
		TJunctionFile = cmds.shadingNode("file",asTexture = True)
		# defines location where texture is 
		file = ("sourceimages/T_JunctionTexture.png")
		TJunctionSet = cmds.sets(name = 'TJunctionShaderSG', noSurfaceShader = True, renderable = True, empty = True)
		cmds.setAttr( '%s.fileTextureName' % TJunctionFile, file, type = "string")
		#Connect Shader to sg surface shader
		cmds.connectAttr('%s.outColor' %TJunctionShader, '%s.surfaceShader' %TJunctionSet)
		#Connect file node to shader color
		cmds.connectAttr('%s.outColor' %TJunctionFile, '%s.color' %TJunctionShader)
		
def createCurveRoadShader(currentShadingGroups):
	'''Creates a Curve Road Lambert Shader
	
	currentShadingGroups	: Consists of all the shading networks
	'''
	shaderCreated = 0
	for i in currentShadingGroups:
		if i == 'CurveRoadShaderSG':
			shaderCreated = 1
			break
	if shaderCreated == 1:
		print "Shader exists"
	if shaderCreated == 0:
		CurveRoadShader = cmds.shadingNode('lambert', asShader = True, n='CurveRoadShader')
		CurveRoadFile = cmds.shadingNode("file",asTexture = True)
		# defines location where texture is 
		file = ("sourceimages/CurveRoadTexture.png")
		CurveRoadSet = cmds.sets(name = 'CurveRoadShaderSG', noSurfaceShader = True, renderable = True, empty = True)
		cmds.setAttr( '%s.fileTextureName' % CurveRoadFile, file, type = "string")
		#Connect Shader to sg surface shader
		cmds.connectAttr('%s.outColor' %CurveRoadShader, '%s.surfaceShader' %CurveRoadSet)
		#Connect file node to shader color
		cmds.connectAttr('%s.outColor' %CurveRoadFile, '%s.color' %CurveRoadShader)
		

def createAllShader():
	'''Creates all shaders required for the code.
	'''
	currentShadingGroups = cmds.ls(type= "shadingEngine")	#List all the shading networks
	#Create the shaders
	createRedShader(currentShadingGroups)
	createOrangeShader(currentShadingGroups)
	createGreenShader(currentShadingGroups)
	createStraightRoadShader(currentShadingGroups)
	createCurveRoadShader(currentShadingGroups)
	createCrossJunctionShader(currentShadingGroups)
	createTJunctionShader(currentShadingGroups)
	
"""
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
Functions to calculate where to build objects on a selected face
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
"""
def calculateSelectedFaces():
	''' Calculate and returns the list of all the selected Face/s
	
	return		: return a list of all the selected Face/s
	'''
	AllSelectedFaces = cmds.ls(sl=True)	#Currently selected face is assigned to list AllSelectedFaces
	AllSelectedFaces = cmds.filterExpand(ex=True, sm=34)	#Split selected faces into individual elements
	return AllSelectedFaces

def calculateFaceVector():
	''' Calculate and returns the vector translation of the selected Face/s
	
	return		: return the list of all the coordinate/s of the center of the selected Face/s
	'''
	AllSelectedFaces = calculateSelectedFaces()	#Get a list of all the selected faces
	faceCenterList = [] #Creates a list to store faceCenter			

	for i in range(len(AllSelectedFaces)):	#For each element in list, AllSelectedFaces
	    facePoints= cmds.xform (AllSelectedFaces[i],q=True, t=True, ws=True)	#Query translation vectors of the 4 points of the selected face.	
	    faceCenter=[]	#Creates a list, faceCenter, to store the values of the face center
	    x = ( facePoints[0] + facePoints[3] + facePoints[6] + facePoints[9] ) / 4.0;	#Get the x axis center
	    faceCenter.append(x)
	    y = ( facePoints[1] + facePoints[4] + facePoints[7] + facePoints[10] ) / 4.0;	#Get the y axis center
	    faceCenter.append(y)
	    z = ( facePoints[2] + facePoints[5] + facePoints[8] + facePoints[11] ) / 4.0;	#Get the z axis center
	    faceCenter.append(z)
	    faceCenterList.append(faceCenter)	
	return faceCenterList

def calculateNormalVector():
	''' Calculate and returns the vector of the normals of the selected Face/s
	
	return		: returns the list of all the vector/s of the averaged normals of the selected Face/s
	'''
	
	AllSelectedFaces = calculateSelectedFaces()	#Get a list of all the selected faces
	faceNormalList=[]	#Creates a list, faceNormalList, to store the values of the face normals

	for i in range (0,len(AllSelectedFaces)):
		print AllSelectedFaces[i]
		vtxfaces=cmds.polyListComponentConversion(AllSelectedFaces[i],ff=True,tvf=True)	#Convert AllSelectedFaces[i] into vertexface
		normalVector = cmds.polyNormalPerVertex(vtxfaces,q=True,xyz=True)	#Query the vectors of each vertexface
		faceNormal = []	#Creates a list to store the vectors of the average of the normals
		x = ( normalVector[0] + normalVector[3] + normalVector[6] + normalVector[9] ) / 4.0;	#Get the average normal for the x coordinates
		faceNormal.append(x)
		y = ( normalVector[1] + normalVector[4] + normalVector[7] + normalVector[10] ) / 4.0;	#Get the average normal for the y coordinates
		faceNormal.append(y)
		z = ( normalVector[2] + normalVector[5] + normalVector[8] + normalVector[11] ) / 4.0;	#Get the average normal for the z coordinates
		faceNormal.append(z)
		faceNormalList.append(faceNormal)	#Append the average normals to faceNormalList

	return faceNormalList
	
def calculateFaceRotation():
	''' Calculate and returns the rotation as a vector of the selected Face/s. 
	This is the first method which uses normals of the face and rotation X and Y. It is better suited for placing objects on curve surfaces.
	
	return		: returns a list of the vectors of the rotation of the selected Face/s
	'''
	
	AllSelectedFaces = calculateSelectedFaces()	#Get a list of all the selected faces
	angleList = []    #Creates a list to hold the angles
	faceNormalList = calculateNormalVector()
	
	for i in range(len(AllSelectedFaces)):
		individual_angleList = []
		#Create a guided polyplane
		cmds.polyPlane(sx=1,sy=1,n='Guided_PolyPlane')
			
		#Calculate Rotate X.
		#Dot product a.b = |a||b|cosX (Use for calculating the angles of rotation of the face)
		
		VectorA = [0,1,0]	#This is the vector of the normal of a default plane
		VectorB = faceNormalList[i]	#This is the vector of the normal of the plane for the objects to be build on
		
		# Dot Multiply A and B and C. Calculate Rotate X first.
		DotProductAB = VectorA[0]*VectorB[0]+VectorA[1]*VectorB[1]+VectorA[2]*VectorB[2]

		# Get |A| and |B|
		MagnitudeA = math.sqrt((VectorA[0]**2 + VectorA[1]**2 + VectorA[2]**2))
		MagnitudeB = math.sqrt((VectorB[0]**2 + VectorB[1]**2 + VectorB[2]**2))
	    
		# Get the transform angles between A and B in the X and Z axis
		Value = DotProductAB / (MagnitudeA * MagnitudeB)
		angleAB = math.acos(Value)
		angleAB = (angleAB*180)/math.pi
	
		individual_angleList.append(angleAB)
	
		#Obtain the new normals for Y rotation calculation
		temp_angleAB = angleAB
		if VectorB[2]<0:
		    temp_angleAB *= -1
		
		#Rotate the polyPlane Guide to obtain the new normals
		cmds.rotate(temp_angleAB,0,0,'Guided_PolyPlane.f[0]')
		cmds.select('Guided_PolyPlane.f[0]')
		VectorC = calculateNormalVector()
		
		#Calculating Rotate Y. X and Z planes will be used
		# Dot Multiply C and B
		DotProductCB = VectorC[0][0]*VectorB[0]+VectorC[0][2]*VectorB[2]

		# Get |C| and |B|
		MagnitudeC = math.sqrt((VectorC[0][0]**2 + VectorC[0][2]**2))
		MagnitudeB = math.sqrt((VectorB[0]**2 + VectorB[2]**2))
		
		if ((MagnitudeC*MagnitudeB) == 0):	#To prevent division by zero
			#If Vector B[0] is close to zero, angle CB is 0 or -180
			if VectorB[0]>=0 and 0.000001>VectorB[0]:
				angleCB = 0
			if VectorB[0]<0 and -0.000001<VectorB[0]:
				angleCB = 180
		else:
			# Get the transform angles between C and B in the Y axis
			Value = DotProductCB / (MagnitudeC * MagnitudeB)
			angleCB = math.acos(Value)
			angleCB = (angleCB*180)/math.pi
	
		individual_angleList.append(angleCB)
		
		#Delete the guide
		cmds.select('Guided_PolyPlane*')
		cmds.delete()
		#Return angles
		angleList.append(individual_angleList)

	return angleList         

def calculateFaceRotation_planeMethod():
	''' Calculate and returns the rotation as a vector of the selected Face/s. 
	This is the second method which uses normals of the face and rotation X and Z. 
	It is better suited for almost flat planes and creating straight roads.
	
	return		: returns a list of the vectors of the rotation of the selected Face/s
	'''
	
	AllSelectedFaces = calculateSelectedFaces()	#Get a list of all the selected faces
	angleList = []    #Creates a list to hold the angles
	faceNormalList = calculateNormalVector()
	
	for i in range(len(AllSelectedFaces)):
		individual_angleList = []
		#Dot product a.b = |a||b|cosX (Use for calculating the angles of rotation of the face)

		VectorA = [0,1,0]	#This is the vector of the normal of a default plane
		VectorB = faceNormalList[i]	#This is the vector of the normal of the plane for the objects to be build on
		
		#Getting values for rotate X
		# Dot Multiply A and B
		DotProductAB = VectorA[1]*VectorB[1]+VectorA[2]*VectorB[2]
		
		# Get |A| and |B|
		MagnitudeA = math.sqrt(VectorA[1]**2 + VectorA[2]**2)
		MagnitudeB = math.sqrt(VectorB[1]**2 + VectorB[2]**2)
		
		
		if((MagnitudeA * MagnitudeB)==0):
			angleAB = 0
		
		else:
			# Get the transform angles between A and B in the X and Z axis
			Value = DotProductAB / (MagnitudeA * MagnitudeB)
			angleAB = math.acos(Value)
			angleAB = (angleAB*180)/math.pi
			
		individual_angleList.append(angleAB)
		
		# Dot Multiply A and B for rotate Z
		DotProductCD = VectorA[0]*VectorB[0]+VectorA[1]*VectorB[1]

		# Get |C| and |D|
		MagnitudeC = math.sqrt(VectorA[0]**2 + VectorA[1]**2)
		MagnitudeD = math.sqrt(VectorB[0]**2 + VectorB[1]**2)
		if ((MagnitudeC*MagnitudeD) == 0):	#To prevent division by zero
			#If Vector B[0] is close to zero, angle CD is 0 or -180
			if VectorB[0]>=0 and 0.000001>VectorB[0]:
				angleCD = 0
			elif VectorB[0]<0 and -0.000001<VectorB[0]:
				angleCD = 180
		else:
			# Get the transform angles between C and B in the Y axis
			Value = DotProductCD / (MagnitudeC * MagnitudeD)
			angleCD = math.acos(Value)
			angleCD = (angleCD*180)/math.pi
			
		individual_angleList.append(angleCD)

		#Return angles
		angleList.append(individual_angleList)

	return angleList

"""
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
Functions for miscellaneous tools and UI
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
"""
def ConvertNumberStringToList(NumberString):
	''' Converts the NumberString to a list. This is for the function of building a skyscrapper from a plane.
	
	NumberString	: The number string inputed by the user
	return		: returns the NumberString converted into a list
	'''
	convertedList = []
	x=""
	for i in NumberString:	#For each time the loop meets a comma, whatever numbers before that is appended to the list as an element
	    if (i==','):
		convertedList.append(int(x))
		x = ""
	    else:
		x += i

	convertedList.append(int(x))
	return convertedList


def UserObjectSelected():
	''' Change and store the name of an object in the text field
	
	return		: returns the new name to be inputted in the text field
	'''
	UserObject = cmds.ls(sl=True)	#Get the user selected object and store in the variable, 'UserObject'

	if ((len(UserObject))==1):	#Check if there is only one object being selected
		x=str(UserObject)	
		x = x[3:]	#Get rid of the unneccesary characters in the string for selection later in the script
		x = x[:-2]
		return x
		
	else:
		cmds.error("Please select only one object",sl=False)	#If more than one object is selected, generate and print error message

def ResetUserObjectSelected():
	''' Resets the name of an object in the text field
	
	return		: returns the resetted string to be placed in the text field
	'''
	x = "Select own object to replace default"
	return x
	
"""
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
Functions to build objects
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
"""
def createBuilding(i):
	''' Creates the default Building 1
	
	return		: returns the Building
	'''
	BuildingTemp = cmds.polyCube(n='Building#')
	Building = BuildingTemp[0]
	cmds.move(0, -0.5, 0, str(Building) + ".scalePivot", str(Building) +".rotatePivot",r=True)
	cmds.move(0,0.5,0,Building)
	cmds.scale(2.5,2,2.5,Building)
	cmds.select(str(Building) + ".f[0]",str(Building) + ".f[2]",str(Building) + ".f[4:5]" )
	cmds.polyExtrudeFacet(kft=False, ls=(0.5,1,1), lt=(0,0,0.2))
	cmds.polyExtrudeFacet(kft=False, lt=(0,0,0.4))
	cmds.select(str(Building) + ".f[0]",str(Building) + ".f[2]",str(Building) + ".f[4:5]" )
	cmds.polyExtrudeFacet(kft=False, ls = (0.5,0.5,1))
	cmds.move(0,-0.5,0, r=True)
	cmds.polyExtrudeFacet(kft=False, ls = (0.8,0.8,0.8), lt=(0,0,-0.2))
	cmds.select(str(Building) + ".f[1]",str(Building) + ".f[8]",str(Building) + ".f[10]",str(Building) + ".f[16]",str(Building) + ".f[20]",str(Building) + ".f[24]",str(Building) + ".f[26]", str(Building) + ".f[32]",str(Building) + ".f[36]")
	cmds.polyExtrudeFacet(kft=True, ls = (0.35,0.35,0.35), lt=(0,0,0.3))
	cmds.polyExtrudeFacet(kft=True, ls = (0.35,0.35,0.35), lt=(0,0,0.5))
	cmds.select(str(Building)+".f[1]")
	cmds.polyExtrudeFacet(lt=(0,0,2))
	cmds.polyExtrudeFacet(lt=(0,0,0.2))
	cmds.polyExtrudeFacet(ls=(0,0,0),lt=(0,0,2))
	cmds.select(str(Building)+".f[110:113]")
	cmds.polyExtrudeFacet(kft=False, ls=(0.5,0.5,0.5))
	cmds.polyExtrudeFacet(kft=False, lt=(0,0,-0.3))
	cmds.select(str(Building)+".f[114:117]")
	cmds.polyExtrudeFacet(lt=(0,0,0.2))
	return Building

def createBuilding2(i):
	''' Creates the default Building 2
	
	return		: returns the Building
	'''
	BuildingTemp = cmds.polyCube(n='Building#', sx=3,sz=3)
	Building = BuildingTemp[0]
	cmds.move(0, -0.5, 0, str(Building) + ".scalePivot", str(Building) +".rotatePivot",r=True)
	cmds.move(0,0.5,0,Building)
	cmds.scale(2.5,1,2.5,Building)
	cmds.select(str(Building)+".e[1]",str(Building)+".e[4]",str(Building)+".e[7]",str(Building)+".e[10]",str(Building)+".e[13]",str(Building)+".e[16]",str(Building)+".e[19]",str(Building)+".e[22]" )
	cmds.polySplitRing(splitType = 2, divisions = 2, useEqualMultiplier = 1)
	cmds.scale(2.5,1,1, r=True)
	cmds.select(str(Building)+".e[32:35]",str(Building)+".e[48:51]",str(Building)+".e[66]",str(Building)+".e[74]",str(Building)+".e[82]",str(Building)+".e[90]" )
	cmds.polySplitRing(splitType = 2, divisions = 2, useEqualMultiplier = 1)
	cmds.scale(1,1,2.5, r=True)
	cmds.select(str(Building)+".f[38]",str(Building)+".f[42]")
	cmds.scale(1,1,0.8,r=True)
	cmds.select(str(Building)+".f[58]",str(Building)+".f[64]")
	cmds.scale(0.8,1,1,r=True)
	cmds.select(str(Building)+".f[3:11]",str(Building)+".f[31:33]",str(Building)+".f[39:41]",str(Building)+".f[53:57]",str(Building)+".f[65:69]")
	TopFaceSelection = cmds.ls(sl=True)
	RandomHeight = random.randint(2,4)
	j = 0
	while (j<RandomHeight):
	    cmds.select(TopFaceSelection)
	    cmds.polyExtrudeFacet(kft=True, ls=(0.005,0.005,0.005))
	    cmds.polyExtrudeFacet(kft=True, lt=(0,0,2))
	    j+=1
	return Building

def createBuilding3(i):
	''' Creates the default Building 3
	
	return		: returns the Building
	'''
	BuildingTemp = cmds.polyCube(n='Building#', sx=5, sd=5)
	Building = BuildingTemp[0]
	cmds.move(0, -0.5, 0, str(Building) + ".scalePivot", str(Building) +".rotatePivot",r=True)
	cmds.move(0,0.5,0,Building)
	cmds.scale(2.5,1,2.5,Building)
	cmds.select(str(Building) + ".f[5:29]")
	cmds.polyExtrudeFacet(kft=True)
	cmds.scale(0.7,1,0.7, r=True)
	cmds.polyExtrudeFacet(kft=True, lt =(0,0,1))
	cmds.polyExtrudeFacet(kft=True, lt =(0,0,1))
	cmds.polyExtrudeFacet(kft=True, lt =(0,0,1))
	cmds.polyExtrudeFacet(kft=True)
	cmds.scale(0.5,1,0.5, r=True)
	cmds.polyExtrudeFacet(kft=True, lt =(0,0,1))
	cmds.select(str(Building) + ".f[90:149]", str(Building) + ".f[170:189]")
	cmds.polyExtrudeFacet(kft=False, ls = (0.5,0.5,0.5))
	cmds.polyExtrudeFacet(kft=False, lt = (0,0,-0.2))
	cmds.select(str(Building) + ".f[2]",str(Building) + ".f[32]",str(Building) + ".f[62]",str(Building) + ".f[67]")
	cmds.polyExtrudeFacet(ls=(0.5,0.5,0.5))
	cmds.move(0,-0.25,0, r=True)
	cmds.polyExtrudeFacet(lt=(0,0,-0.5))
	return Building
	
def BuildingCreator(NumOfSeperation,Seperation):
	''' Creates a customised skyscrapper
	
	NumOfSeperation	: is the number of times a skyscrapper is shrunk inwards as it goes upwards
	Seperation	: is the number of floors inbetween each seperation
	
	return		: returns the skyscrapper
	'''	    
	base = cmds.ls(sl=True)    

	if (base!=[]):    #If a plane is selected, we create building from the selected plane
		cmds.select(base)
		cmds.rename('building')
		SelectBaseFaces = cmds.polyEvaluate(f=True)	#SelectBaseFaces contains how man faces that exist on the original Plane

	else:            #If nothing is selected, we create building from a newly created plane
		print "entered";
		base=cmds.polyPlane(w=1,h=2,n='building')	#Create a polyPlane with width 1 and height 2
		SelectBaseFaces = cmds.polyEvaluate(f=True)	#SelectBaseFaces contains how man faces that exist on the polyPlane

	WindowsSelection = []    #Create list of all faces to extrude windows
	
	#Building creation starts here
	cmds.select('building'+'.f[0:'+str(SelectBaseFaces-1)+']')	#Select all the faces of the plane
	counter = 0
	print Seperation
	
	for i in range(0,NumOfSeperation):
		for x in range(0, (Seperation[i])):
			cmds.polyExtrudeFacet(ty=random.uniform(0.1,0.3))	#Extrudes the partition
	    		cmds.polyExtrudeFacet(ty=random.uniform(0.5,1.2))	#Extrudes the windows
	    		counter += 2
	    		RoofTopSelection = cmds.ls(sl=True)	#Store the selection of the roof to continue extrusion later
	    
		    	#Selects the latest extruded faces around the building to create windows and store it in WindowsSelection list
		    	cmds.select('building')                
		    	TotalFaces = cmds.polyEvaluate(f=True)	#Get the total number of faces at that point of time
		    	WindowsFaces = (TotalFaces-(int(SelectBaseFaces)*2))/counter	#Get the number of faces created for each extrusion
		    	#Select only the faces which will become windows and not the partitions
		    	cmds.select('building' + '.f[' + str(TotalFaces-WindowsFaces) + ':' + str(TotalFaces-1) + ']')
		    	CurrentWindowsSelection = cmds.ls(sl=True)
		    	WindowsSelection.append(CurrentWindowsSelection)	#Append to the list to extrude all the windows later

		    	#Reselect top faces to continue extruding
		   	cmds.select(RoofTopSelection)	#Select the rooftop and continue the loop of extrusion
	    		
		cmds.polyExtrudeFacet(kft=True, s=(random.uniform(0.6,0.8),random.uniform(0.6,0.8), random.uniform(0.6,0.8)))	#Creates the seperation
		counter += 1

	#ExtrudeWindows
	cmds.select(clear=True)
	
	for i in WindowsSelection:
	    cmds.select(i, add=True)
	
	cmds.polyExtrudeFacet(kft=False, ls=(random.uniform(0.5,0.7),random.uniform(0.5,0.7), 0)) #Extrude Windows
	cmds.polyExtrudeFacet(ltz=-0.03)
	cmds.select('building')
	Skyscrapper_Created = cmds.rename('Skyscraper#')
	cmds.select(clear=True)
	return Skyscrapper_Created

def CreateStraightRoad():
    ''' Creates a Straight Road
    
    return		: The Straight Road
    '''
    StraightRoad = cmds.polyPlane(w=4, h=4, sx=3, sy=1, n="RoadStraight#")
    cmds.select (str(StraightRoad[0])+".e[5]",str(StraightRoad[0])+".e[3]")
    cmds.scale (2.25,1,1,r=True)
    cmds.select (str(StraightRoad[0])+".f[0]",str(StraightRoad[0])+".f[2]")
    cmds.polyExtrudeFacet(lt=(0,0,0.15))
    cmds.move(0,0.01,0, StraightRoad)
    cmds.select(StraightRoad)
    cmds.makeIdentity(apply=True, t=1, r=1, s=1, n=0)
    cmds.sets(StraightRoad, edit=True, forceElement='StraightRoadShaderSG')
    return StraightRoad

def CreateRtCurveRoad():
    ''' Creates a Curve Road
    
    return		: The Curve Road
    '''
    CurveRoad = cmds.polyPlane(w=4, h=4, sx=3, sy=1, n="RoadRtCurve#")
    cmds.select (str(CurveRoad[0])+".e[5]",str(CurveRoad[0])+".e[3]")
    cmds.scale (2.25,1,1,r=True)
    cmds.select (str(CurveRoad[0])+".e[1]", str(CurveRoad[0]) + ".e[3]", str(CurveRoad[0])+ ".e[5:6]")
    cmds.polySplitRing (splitType = 2, div = 2)
    cmds.scale (1,1,2.25,r=True)
    cmds.select (str(CurveRoad[0])+".f[0]",str(CurveRoad[0])+".f[2]",str(CurveRoad[0])+".f[5:8]")
    cmds.polyExtrudeFacet(lt=(0,0,0.15))
    cmds.move(0,0.01,0, CurveRoad)
    cmds.select(CurveRoad)
    cmds.makeIdentity(apply=True, t=1, r=1, s=1, n=0)
    cmds.sets(CurveRoad, edit=True, forceElement='CurveRoadShaderSG')
    return CurveRoad

def CreateTJunction():
    ''' Creates a T-Junction
    
    return		: The T-Junction
    '''
    TJunctionRoad = cmds.polyPlane(w=4, h=4, sx=3, sy=1, n="RoadTJunction#")
    cmds.select (str(TJunctionRoad[0])+".e[5]",str(TJunctionRoad[0])+".e[3]")
    cmds.scale (2.25,1,1,r=True)
    cmds.select (str(TJunctionRoad[0])+".e[1]", str(TJunctionRoad[0]) + ".e[3]", str(TJunctionRoad[0])+ ".e[5:6]")
    cmds.polySplitRing (splitType = 2, div = 2)
    cmds.scale (1,1,2.25,r=True)
    cmds.select (str(TJunctionRoad[0])+".f[0]",str(TJunctionRoad[0])+".f[2]",str(TJunctionRoad[0])+".f[6:8]")
    cmds.polyExtrudeFacet(lt=(0,0,0.15))
    cmds.move(0,0.01,0, TJunctionRoad)
    cmds.select(TJunctionRoad)
    cmds.makeIdentity(apply=True, t=1, r=1, s=1, n=0)
    cmds.sets(TJunctionRoad, edit=True, forceElement='TJunctionShaderSG')
    return TJunctionRoad

def CreateCrossJunction():
    ''' Creates a Cross-Junction
    
    return		: The Cross-Junction
    '''
    XJunctionRoad = cmds.polyPlane(w=4, h=4, sx=3, sy=1, n="RoadCrossJunction#")
    cmds.select (str(XJunctionRoad[0])+".e[5]",str(XJunctionRoad[0])+".e[3]")
    cmds.scale (2.25,1,1,r=True)
    cmds.select (str(XJunctionRoad[0])+".e[1]", str(XJunctionRoad[0]) + ".e[3]", str(XJunctionRoad[0])+ ".e[5:6]")
    cmds.polySplitRing (splitType = 2, div = 2)
    cmds.scale (1,1,2.25,r=True)
    cmds.select (str(XJunctionRoad[0])+".f[0]",str(XJunctionRoad[0])+".f[2]",str(XJunctionRoad[0])+".f[6]",str(XJunctionRoad[0])+".f[8]")
    cmds.polyExtrudeFacet(lt=(0,0,0.15))
    cmds.move(0,0.01,0, XJunctionRoad)
    cmds.select(XJunctionRoad)
    cmds.makeIdentity(apply=True, t=1, r=1, s=1, n=0)
    cmds.sets(XJunctionRoad, edit=True, forceElement='CrossJunctionShaderSG')
    return XJunctionRoad

def CreateCar():
	''' Creates a Simple Car. Only used for traffic simulation
	
	return		: A simple Car
	'''
	car = cmds.polyCube(h=0.5, w=0.5, n='car#')
	cmds.move(1,0,-1,car)
	cmds.select(car)
	cmds.makeIdentity(apply=True, t=1, r=1, s=1, n=0)
	return car

def CreateTrafficLight():
    ''' Creates a Traffic Light
    
    return		: The Traffic Light
    '''
    TrafficLight = cmds.polyCube(w= 0.1, h=1, d =0.1, sy=2, n='Traffic_Light#')
    cmds.move(0,0.490,0,TrafficLight, r=True)
    cmds.select (str(TrafficLight[0]) + '.e[1]', str(TrafficLight[0]) + '.e[4]' , str(TrafficLight[0]) + '.e[18:19]')
    cmds.move(0,0.1,0, r=True)
    cmds.select(str(TrafficLight[0]) + '.f[1]',str(TrafficLight[0]) + '.f[3]',str(TrafficLight[0]) + '.f[7]',str(TrafficLight[0]) + '.f[9]')
    cmds.polyExtrudeFacet(lt = (0,0,0.13))
    
    RedLight = cmds.polySphere(sx =8, sy = 8, r=0.05, n=('RedLight_' + str(TrafficLight[0])))
    cmds.move(0,0.91,-0.115, RedLight)
    OrangeLight = cmds.polySphere(sx =8, sy = 8, r=0.05, n=('OrangeLight_' + str(TrafficLight[0])))
    cmds.move(0,0.79,-0.115, OrangeLight)
    GreenLight = cmds.polySphere(sx =8, sy = 8, r=0.05, n=('GreenLight_' + str(TrafficLight[0])))
    cmds.move(0,0.67,-0.115, GreenLight)
    
    cmds.parent(RedLight[0], TrafficLight[0])
    cmds.parent(OrangeLight[0], TrafficLight[0])
    cmds.parent(GreenLight[0], TrafficLight[0])
    
    cmds.move(1.765,0.6,1.75, TrafficLight)
    cmds.scale(1.3,1.3,1.3, TrafficLight)
    cmds.select(TrafficLight, RedLight, OrangeLight, GreenLight)
    cmds.makeIdentity(apply=True, t=1, r=1, s=1, n=0)
    cmds.DeleteHistory()
    
    return TrafficLight
    
"""
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
Functions to generate city
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
"""
"""
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Creating Terrain
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
"""
def createTerrain(size):
	'''Creates the Terrain for the objects to be build on

	  size   : the size of the terrain with each individual face being 4 units wide and long
	  return      : returns the Terrain that is being created
	'''
	
	if(cmds.objExists("My_Unique_Terrain")):
    		cmds.select("My_Unique_Terrain")
    		cmds.delete()	#Delete terrain if it already exists
    		
	DivisionScale = (2*(size-1))+1	#Generates dimensions to create a plane with each face having a distance of 4 unit
	Terrain = cmds.polyPlane(w=DivisionScale*4,h=DivisionScale*4,sx=DivisionScale,sy=DivisionScale,n="My_Unique_Terrain") #Creates a plane with each face having a distance of 4 unit
	cmds.hilite(Terrain[0], r=True)	#Highlight Terrain
	cmds.selectMode(component=True)	#Change to component selection
	cmds.selectType (allComponents = False, facet=True)	#Change to face selection
	return Terrain

def createTerrainNoise(noiseIntensity,noiseHeight,Terrain,size):
	'''Creates noise on the Terrain
	  
	  noiseIntensity      : is the intensity of how much Noise is applied from 0 to 1
	  noiseHeight      : is the translate Y of the Noise that is being applied
	  Terrain	: is the terrain created to apply the noise to
	  size   : the size of the terrain with each individual face being 4 units wide and long
	  return      : returns the Terrain that is being created
	'''
	
	cmds.select(Terrain)	#Select the terrain
	VerticesofTerrain = ((size*2)**2)	#Calculate how many vertices are on the Terrain
	#Select all vertices of terrain and assign a polyMoveVertex construction history
	noiseCreation = cmds.polyMoveVertex(("My_Unique_Terrain"+".vtx[0:" + str(VerticesofTerrain-1) +"]"),constructionHistory=True, random=noiseIntensity)
	cmds.select(noiseCreation)
	cmds.setAttr((str(noiseCreation[0]) + ".localTranslateZ"),noiseHeight)	#Set the attribute of the height of the noise
	cmds.move(0.0,((-1)*(noiseHeight)),0.0, Terrain)	#Compensate the noise height with the translateY of the terrain

"""
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Generating objects
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
"""
def generateSkyscrapper(Skyscrapper_Name,AllSelectedFaces):
	'''Generates the Skyscrapper
	  
	  Skyscrapper_Name	: is a list containing the name of the default or the user-inputed objects
	  AllSelectedFaces	: is the list of faces that are selected
	  return      : returns a list of the generated Skyscrappers
	'''
	SkyscrapperGeneratedList = []	#Creates a list to hold all the Skyscrappers generated
	for i in range(0,len(AllSelectedFaces)):
		if ((len(Skyscrapper_Name))>1):	#If the user has chosen the option to generate random buildings out of the selection. Which is in the UI, slider option 0
			RandomNumber = random.randint(0,len(Skyscrapper_Name))	#Generates a random number for choosing a random element

			if (Skyscrapper_Name[RandomNumber-1] == "DefaultSkyscrapper1"):#If random number points to Skyscrapper1 with no user-input, use default
				Building = createBuilding(i)
			elif (Skyscrapper_Name[RandomNumber-1] == "DefaultSkyscrapper2"):#If random number points to Skyscrapper2 with no user-input, use default
				Building = createBuilding2(i)
			elif (Skyscrapper_Name[RandomNumber-1] == "DefaultSkyscrapper3"):#If random number points to Skyscrapper3 with no user-input, use default
				Building = createBuilding3(i)
			else:
				cmds.select(Skyscrapper_Name[RandomNumber-1])	#If the random number points to a building with a user-inputed object, use this
		    		DuplicatedObject = cmds.duplicate()
		    		cmds.select(DuplicatedObject)
		    		cmds.rename("Building#")
		    		cmds.showHidden()
		    		Building = cmds.ls(sl=True)
		
		if ((len(Skyscrapper_Name))==1):	#If the user chose to specify which type of building to create
		    	if (Skyscrapper_Name[0]=="DefaultSkyscrapper1"):	#If there is no user inputed object in option 1, use default
		    		Building = createBuilding(i)
		    	elif (Skyscrapper_Name[0]=="DefaultSkyscrapper2"):	#If there is no user inputed object in option 2, use default
		    		Building = createBuilding2(i)
		    	elif (Skyscrapper_Name[0]=="DefaultSkyscrapper3"):	#If there is no user inputed object in option 3, use default
		    		Building = createBuilding3(i)	
		    		
		    	#elif (object_name[0]!="DefaultSkyscrapper*"):	#If there is a user inputed object, use it
		    	else:
		    		cmds.select(Skyscrapper_Name)
		    		DuplicatedObject = cmds.duplicate()
		    		cmds.select(DuplicatedObject)
		    		cmds.rename("Building#")
		    		cmds.showHidden()
		    		Building = cmds.ls(sl=True)
		SkyscrapperGeneratedList.append(Building)
	return SkyscrapperGeneratedList

def generateStraightRoadList(AllSelectedFaces):
	'''Generates the Straight Roads
	  
	  AllSelectedFaces	: is the list of faces that are selected
	  return      : returns a list of the generated Straight Roads
	'''
	generatedStraightRoadList = []
	for i in range (0,len(AllSelectedFaces)):
		StraightRoad = CreateStraightRoad()
		generatedStraightRoadList.append(StraightRoad[0])
	return generatedStraightRoadList

def generateRtCurveRoadList(AllSelectedFaces):
	'''Generates the Rt_Curve Roads
	  
	  AllSelectedFaces	: is the list of faces that are selected
	  return      : returns a list of the generated Rt_Curve Roads
	'''
	generatedRtCurveRoadList = []
	for i in range (0,len(AllSelectedFaces)):
		RtCurveRoad = CreateRtCurveRoad()
		generatedRtCurveRoadList.append(RtCurveRoad[0])
	return generatedRtCurveRoadList
	
def generateTJunctionRoadList(AllSelectedFaces):
	'''Generates the T_Junction Roads
	
	  AllSelectedFaces	: is the list of faces that are selected
	  return      : returns a list of the generated T_Junctions
	'''
	generatedTJunctionRoadList = []
	for i in range (0,len(AllSelectedFaces)):
		TJunctionRoad = CreateTJunction()
		generatedTJunctionRoadList.append(TJunctionRoad[0])
	return generatedTJunctionRoadList

def generateCrossJunctionRoadList(AllSelectedFaces):
	'''Generates the Cross_Junction Roads
	
	  AllSelectedFaces	: is the list of faces that are selected
	  return	: returns a list of the generated Cross Junctions
	'''
	generatedCrossJunctionRoadList = []
	for i in range (0,len(AllSelectedFaces)):
		XJunctionRoad = CreateCrossJunction()
		generatedCrossJunctionRoadList.append(XJunctionRoad[0])
	return generatedCrossJunctionRoadList

def generateCarTempList(AllSelectedFaces):
	'''Generates a simple car
	  
	  AllSelectedFaces	: is the list of faces that are selected
	  return      : returns a list of the generated Cars
	'''		
	generatedCarTempList = []
	for i in range(0,len(AllSelectedFaces)):
		TempCar = CreateCar()
		generatedCarTempList.append(TempCar[0])
	return generatedCarTempList

def generateTrafficLightList(AllSelectedFaces):
	'''Generates Traffic Lights
	
	  AllSelectedFaces	: is the list of faces that are selected
	  return	: retuns a list of the generated Traffic Lights
	  '''
	generatedTrafficLightList = []
	for i in range (0, len(AllSelectedFaces)):
		Traffic_Light = CreateTrafficLight()
		generatedTrafficLightList.append(Traffic_Light[0])
	return generatedTrafficLightList

"""
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Placing objects on terrain
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
"""
def placeStructure(object_name,AllSelectedFaces,rotationMethod):
	'''Generates the structure on the selected face
	  
	  object_name	: is a list containing the names of all the objects to be placed
	  AllSelectedFaces	: is the list of faces that are selected
	  rotationMethod	: is the method of rotation during placement that the user has chosen
	'''
	cmds.select(AllSelectedFaces)
	faceCenterVector = calculateFaceVector()	#Assign faceCenterVector with the vector coordinates of each face center
	faceNormalVector = calculateNormalVector()	#Assign faceNormalVector with the vector cooridinates of each face normal

	if (rotationMethod == 1):
		faceCenterRotation = calculateFaceRotation()
	if (rotationMethod == 2):
		faceCenterRotation = calculateFaceRotation_planeMethod()
	
	for i in range(0,len(faceCenterVector)):  
		cmds.select(object_name[i])	#Select the name of the object
		Building = cmds.ls(sl=True)
		#Move the structure to the selected face
		cmds.move(float(faceCenterVector[i][0]),float(faceCenterVector[i][1]),float(faceCenterVector[i][2]),Building)

		#Rotate the structure according to the method chosen
		cmds.select(object_name[i])
	
		if (rotationMethod == 1):
			if (faceNormalVector[i][2]==0):
				if (faceNormalVector[i][1]>0):
					if(faceNormalVector[i][0]>0):
						cmds.rotate(float((1.0)*(faceCenterRotation[i][0])),float((1.0)*(faceCenterRotation[i][1])),0.0,Building)
					elif(faceNormalVector[i][0]<=0):
						cmds.rotate(float((-1.0)*(faceCenterRotation[i][0])),float((1.0)*(faceCenterRotation[i][1])),0.0,Building)
		
				elif (faceNormalVector[i][1]<=0):
					if(faceNormalVector[i][0]>0):
						cmds.rotate(float((1.0)*(faceCenterRotation[i][0])),float((1.0)*(faceCenterRotation[i][1])),0.0,Building)
					elif(faceNormalVector[i][0]<=0):
						cmds.rotate(float((-1.0)*(faceCenterRotation[i][0])),float((1.0)*(faceCenterRotation[i][1])),0.0,Building)
			   
			elif (faceNormalVector[i][2]<0):
				if (faceNormalVector[i][1]>0):
					if(faceNormalVector[i][0]>0):
						cmds.rotate(float((-1.0)*(faceCenterRotation[i][0])),float((-1.0)*(faceCenterRotation[i][1])),0.0,Building)
					elif(faceNormalVector[i][0]<0):
						cmds.rotate(float((-1.0)*(faceCenterRotation[i][0])),float((1.0)*(faceCenterRotation[i][1])),0.0,Building)
					elif(faceNormalVector[i][0]==0):
					   	cmds.rotate(float((-1.0)*(faceCenterRotation[i][0])),float((-1.0)*(faceCenterRotation[i][1])),0.0,Building)
		
				elif (faceNormalVector[i][1]<=0):
					if(faceNormalVector[i][0]>0):
						cmds.rotate(float((-1.0)*(faceCenterRotation[i][0])),float((-1.0)*(faceCenterRotation[i][1])),0.0,Building)
					elif(faceNormalVector[i][0]<0):
						cmds.rotate(float((-1.0)*(faceCenterRotation[i][0])),float((1.0)*(faceCenterRotation[i][1])),0.0,Building)
					elif(faceNormalVector[i][0]==0):
						cmds.rotate(float((-1.0)*(faceCenterRotation[i][0])),float((-1.0)*(faceCenterRotation[i][1])),0.0,Building)
				
			elif (faceNormalVector[i][2]>0):
				if (faceNormalVector[i][1]>0):
					if(faceNormalVector[i][0]>0):
						cmds.rotate(float((1.0)*(faceCenterRotation[i][0])),float((1.0)*(faceCenterRotation[i][1])),0.0,Building)
					elif(faceNormalVector[i][0]<=0):
						cmds.rotate(float((1.0)*(faceCenterRotation[i][0])),float((-1.0)*(faceCenterRotation[i][1])),0.0,Building)
		
				elif (faceNormalVector[i][1]<=0):
					if(faceNormalVector[i][0]>0):
						cmds.rotate(float((1.0)*(faceCenterRotation[i][0])),float((1.0)*(faceCenterRotation[i][1])),0.0,Building)
					elif(faceNormalVector[i][0]<=0):
						cmds.rotate(float((1.0)*(faceCenterRotation[i][0])),float((-1.0)*(faceCenterRotation[i][1])),0.0,Building)
	
		if (rotationMethod == 2):
			if (faceNormalVector[i][2]==0):
				if (faceNormalVector[i][1]>0):
					if(faceNormalVector[i][0]>0):
						cmds.rotate(0.0,0.0,float((-1.0)*(faceCenterRotation[i][0])),Building)
					elif(faceNormalVector[i][0]<=0):
						cmds.rotate(0.0,0.0,float((1.0)*(faceCenterRotation[i][0])),Building)
		
				elif (faceNormalVector[i][1]<=0):
					if(faceNormalVector[i][0]>0):
						cmds.rotate(0.0,0.0,float((-1.0)*(faceCenterRotation[i][1])),Building)
					elif(faceNormalVector[i][0]<=0):
						cmds.rotate(0.0,0.0,float((1.0)*(faceCenterRotation[i][1])),Building)
	    
			elif (faceNormalVector[i][2]<0):
				if(faceNormalVector[i][1]>0):
					if(faceNormalVector[i][0]>0):
						cmds.rotate(float((-1.0)*(faceCenterRotation[i][0])),0.0,float((-1.0)*(faceCenterRotation[i][1])),Building)
					elif(faceNormalVector[i][0]<0):
						cmds.rotate(float((-1.0)*(faceCenterRotation[i][0])),0.0,float((1.0)*(faceCenterRotation[i][1])),Building)
					elif(faceNormalVector[i][0]==0):
							cmds.rotate(float((-1.0)*(faceCenterRotation[i][0])),0.0,float((-1.0)*(faceCenterRotation[i][1])),Building)
	        
				elif (faceNormalVector[i][1]<=0):
					if(faceNormalVector[i][0]>0):
						cmds.rotate(float((-1.0)*(faceCenterRotation[i][0])),0.0,float((-1.0)*(faceCenterRotation[i][1])),Building)
					elif(faceNormalVector[i][0]<0):
						cmds.rotate(float((-1.0)*(faceCenterRotation[i][0])),0.0,float((1.0)*(faceCenterRotation[i][1])),Building)
					elif(faceNormalVector[i][0]==0):
						cmds.rotate(float((-1.0)*(faceCenterRotation[i][0])),0.0,float((-1.0)*(faceCenterRotation[i][1])),Building)
					
			elif (faceNormalVector[i][2]>0):
				if (faceNormalVector[i][1]>0):
					if(faceNormalVector[i][0]>0):
						cmds.rotate(float((1.0)*(faceCenterRotation[i][0])),0.0,float((-1.0)*(faceCenterRotation[i][1])),Building)
					elif(faceNormalVector[i][0]<=0):
						cmds.rotate(float((1.0)*(faceCenterRotation[i][0])),0.0,float((1.0)*(faceCenterRotation[i][1])),Building)
		
				elif (faceNormalVector[i][1]<=0):
					if(faceNormalVector[i][0]>0):
						cmds.rotate(float((1.0)*(faceCenterRotation[i][0])),0.0,float((1.0)*(faceCenterRotation[i][1])),Building)
					elif(faceNormalVector[i][0]<=0):
						cmds.rotate(float((1.0)*(faceCenterRotation[i][0])),0.0,float((-1.0)*(faceCenterRotation[i][1])),Building)

	Terrain = cmds.select("My_Unique_Terrain*")	#Get back to face selection mode for the user to continue generating objects
	cmds.hilite(Terrain, r=True)	#Highlight Terrain
	cmds.selectMode(component=True)	#Change to component selection
	cmds.selectType (allComponents = False, facet=True)	#Change to face selection
	    

"""
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
Functions to building a UI
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
"""
"""
+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Create the Functions to be executed after pushing the UI buttons
+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
"""

def actionGenerateTerrain(TerrainSize, NoiseIntensity, NoiseHeight, UsingOwnTerrainCheckBox, UserTerrainInput, *pArgs):
	'''Generates the Terrain
	  
	  TerrainSize      : is how big the user wants the terrain to be. The number is not representive of its dimensions.
	  NoiseIntensity	: is the intensity of how much Noise is applied from 0 to 1
	  NoiseHeight      : is the translate Y of the Noise that is being applied
	  UsingOwnTerrainCheckBox	: Check if the user is using his own terrain or not
	  UserTerrainInput	: If the user is using his own terrain, the string will be stored in this input
	'''
	print "UsingOwnTerrainCheckBox is " + str(UsingOwnTerrainCheckBox)
	if (UsingOwnTerrainCheckBox == False):
		Terrain = createTerrain(TerrainSize)
		createTerrainNoise(NoiseIntensity,NoiseHeight,Terrain,TerrainSize)
	elif (UsingOwnTerrainCheckBox == True):
		cmds.select(UserTerrainInput)
		if UserTerrainInput[:17] != "My_Unique_Terrain":
			cmds.rename("My_Unique_Terrain_" + str(UserTerrainInput))



def actionConfirm(OwnTerrainUIList,DefaultTerrainUIList, NoiseIntensity, NoiseHeight, AIUIList, UsingOwnTerrainCheckBox, CreationList, *args):
	'''Confirm all actions in Creating Terrain and makes the 'Create Landscape' UI untouchable
	  
	  OwnTerrainUIList      : is a list of the UI which allows the User to create his own terrain
	  DefaultTerrainUIList	: is a list of the UI which allows the User to use the default terrain
	  NoiseIntensity	: is the intensity of how much Noise is applied from 0 to 1
	  NoiseHeight      : is the translate Y of the Noise that is being applied
	  AIUIList	: is a list of the UI which allows the User to create traffic simulation
	  UsingOwnTerrainCheckBox	: is the checkbox that holds the value of whether the user is using his own terrain or not
	  CreationList	: is a list of the UI elements to generate the buildings/objects and roads
	'''
	#Unpackaging the User Terrain UI List
	UserTerrainInput = OwnTerrainUIList[0]
	SelectOwnTerrainButton = OwnTerrainUIList[1]
	ResetOwnTerrainButton = OwnTerrainUIList[2]
	UsingOwnTerrainCheckBox = OwnTerrainUIList[3]
	
	cmds.textField(UserTerrainInput, edit=True, enable=False)
	cmds.button(SelectOwnTerrainButton, edit=True, enable=False)
	cmds.button(ResetOwnTerrainButton,edit=True, enable=False)
	cmds.checkBox(UsingOwnTerrainCheckBox, edit=True,enable=False)
	
	# Unpackaging the Default Terrain UI List
	TerrainSliderGroup = DefaultTerrainUIList[0]
	TerrainNoiseIntensityGroup = DefaultTerrainUIList[1]
	TerrainNoiseHeightGroup = DefaultTerrainUIList[2]
	ApplyLandscapeCreationButton = DefaultTerrainUIList[3]
	ConfirmLandscapeCreationButton = DefaultTerrainUIList[4]
	
	cmds.intSliderGrp(TerrainSliderGroup, edit=True, enable=False)
	cmds.floatSliderGrp(TerrainNoiseIntensityGroup, edit=True, enable=False)
	cmds.floatSliderGrp(TerrainNoiseHeightGroup, edit=True, enable=False)
	cmds.button(ApplyLandscapeCreationButton,edit=True, enable=False)
	cmds.button(ConfirmLandscapeCreationButton,edit=True, enable=False)
	
	# Unpackaging CreationList
	buttonSkyscrapper = CreationList[0]
	buttonRotateUtility = CreationList[1]
	buttonStraightRoad = CreationList[2]
	buttonCurveRoad = CreationList[3]
	buttonTJ = CreationList[4]
	buttonXJ = CreationList[5]
	buttonRotateRoad = CreationList[6]
	
	cmds.button(buttonSkyscrapper, edit=True, enable=True)
	cmds.button(buttonRotateUtility, edit=True, enable=True)
	cmds.button(buttonStraightRoad, edit=True, enable=True)
	cmds.button(buttonCurveRoad, edit=True, enable=True)
	cmds.button(buttonTJ, edit=True, enable=True)
	cmds.button(buttonXJ, edit=True, enable=True)
	cmds.button(buttonRotateRoad, edit=True, enable=True)
	
	#Check if it is using flat plane. If yes, enable UI
	UsingOwnTerrainCheckBox = cmds.checkBox(UsingOwnTerrainCheckBox, q=True, v=True)
	if ((UsingOwnTerrainCheckBox == False) and (NoiseIntensity == 0) and (NoiseHeight == 0)):
		#flat plane is used
		ButtonTrafficLight = AIUIList[0]
		ButtonTrafficLightLink = AIUIList[1]
		ButtonRotateTrafficLight = AIUIList[2]
		ButtonCreateCar = AIUIList[3]
		ButtonRotateCar = AIUIList[4]
		ButtonAI = AIUIList[5]
		
		cmds.button(ButtonTrafficLight, edit=True, enable=True)
		cmds.button(ButtonTrafficLightLink, edit=True, enable=True)
		cmds.button(ButtonRotateTrafficLight, edit=True, enable=True)
		cmds.button(ButtonCreateCar, edit=True, enable=True)
		cmds.button(ButtonRotateCar, edit=True, enable=True)
		cmds.button(ButtonAI, edit=True, enable=True)

def actionUsingOwnTerrain(OwnTerrainUIList,DefaultTerrainUIList,*args):
	'''Switches on and off UI elements when clicking on the "Use Own Terrain" checkbox
	  
	  OwnTerrainUIList      : is a list of the UI which allows the User to create his own terrain
	  DefaultTerrainUIList	: is a list of the UI which allows the User to use the default terrain
	'''
	#Unpackaging the User Terrain UI List
	UserTerrainInput = OwnTerrainUIList[0]
	SelectOwnTerrainButton = OwnTerrainUIList[1]
	ResetOwnTerrainButton = OwnTerrainUIList[2]
	
	cmds.textField(UserTerrainInput, edit=True, enable=True)
	cmds.button(SelectOwnTerrainButton, edit=True, enable=True)
	cmds.button(ResetOwnTerrainButton,edit=True, enable=True)
	
	# Unpackaging the Default Terrain UI List
	TerrainSliderGroup = DefaultTerrainUIList[0]
	TerrainNoiseIntensityGroup = DefaultTerrainUIList[1]
	TerrainNoiseHeightGroup = DefaultTerrainUIList[2]
	
	cmds.intSliderGrp(TerrainSliderGroup, edit=True, enable=False)
	cmds.floatSliderGrp(TerrainNoiseIntensityGroup, edit=True, enable=False)
	cmds.floatSliderGrp(TerrainNoiseHeightGroup, edit=True, enable=False)
	

def actionNotUsingOwnTerrain(OwnTerrainUIList,DefaultTerrainUIList,*args):
	'''Switches on and off UI elements when clicking on the "Use Own Terrain" checkbox
	  
	  OwnTerrainUIList      : is a list of the UI which allows the User to create his own terrain
	  DefaultTerrainUIList	: is a list of the UI which allows the User to use the default terrain
	'''	
	#Unpackaging the User Terrain UI List
	UserTerrainInput = OwnTerrainUIList[0]
	SelectOwnTerrainButton = OwnTerrainUIList[1]
	ResetOwnTerrainButton = OwnTerrainUIList[2]
	
	cmds.textField(UserTerrainInput, edit=True, enable=False)
	cmds.button(SelectOwnTerrainButton, edit=True, enable=False)
	cmds.button(ResetOwnTerrainButton,edit=True, enable=False)
	
	# Unpackaging the Default Terrain UI List
	TerrainSliderGroup = DefaultTerrainUIList[0]
	TerrainNoiseIntensityGroup = DefaultTerrainUIList[1]
	TerrainNoiseHeightGroup = DefaultTerrainUIList[2]
	
	cmds.intSliderGrp(TerrainSliderGroup, edit=True, enable=True)
	cmds.floatSliderGrp(TerrainNoiseIntensityGroup, edit=True, enable=True)
	cmds.floatSliderGrp(TerrainNoiseHeightGroup, edit=True, enable=True)

def actionSelect(objectSelect,*pArgs):
	print "This function is just to pass arguments"

def actionCreateSkyscrapperFromPlane(NoOfSeperationsSliderGroup,FloorsPerSeperationString,*pArgs):
	''' Creates a customised skyscrapper
	
	NoOfSeperationsSliderGroup	: is the number of times a skyscrapper is shrunk inwards as it goes upwards
	FloorsPerSeperationString	: is the number of floors inbetween each seperation
	'''	    
	FloorsPerSeperation = ConvertNumberStringToList(FloorsPerSeperationString)
	NoOfSeperations = NoOfSeperationsSliderGroup
	if (NoOfSeperations != len(FloorsPerSeperation)):
		cmds.error("Match the number of seperations with number of seperations for floors")
	BuildingCreator(NoOfSeperations,FloorsPerSeperation)

def actionGenerateSkyscrapper(SkyscrapperSelection,Skyscrapper1,Skyscrapper2,Skyscrapper3,rotationMethod,*pArgs):
	'''Generate a random or specified Skyscrapper on a selected face/s.
	  
	  SkyscrapperSelection      : is the slider to allow the user to decide a random skyscrapper or a specified skyscrapper would be generated. 0 = random
	  Skyscrapper1	: is the stored string in the Building Tab, Skyscrapper1 textfield
	  Skyscrapper2	: is the stored string in the Building Tab, Skyscrapper2 textfield
	  Skyscrapper3	: is the stored string in the Building Tab, Skyscrapper3 textfield
	  rotationMethod	: is the chosen method of rotation out of the 2 options given
	'''
	AllSelectedFaces = calculateSelectedFaces()
	if (Skyscrapper1 == "Select own object to replace default"):	#If there is no user-inputed objects
		Skyscrapper1 = "DefaultSkyscrapper1"	# assigned the variable to be "DefaultSkyscrapper1"
		
	if (Skyscrapper2 == "Select own object to replace default"):	#If there is no user-inputed objects
		Skyscrapper2 = "DefaultSkyscrapper2"	# assigned the variable to be "DefaultSkyscrapper2"
		
	if (Skyscrapper3 == "Select own object to replace default"):	#If there is no user-inputed objects
		Skyscrapper3 = "DefaultSkyscrapper3"	# assigned the variable to be "DefaultSkyscrapper3"
		
	if (rotationMethod == True):
		rotationMethod = 1
	
	else:
		rotationMethod = 2
	
	if (SkyscrapperSelection == 0):	#If the user chose to randomly generate a skyscrapper from the list of skyscrappers
		Skyscrapper_Name = []	#Creates a list to pass all the different skyscrappers options
		Skyscrapper_Name.append(Skyscrapper1)
		Skyscrapper_Name.append(Skyscrapper2)
		Skyscrapper_Name.append(Skyscrapper3)
		Object_List = generateSkyscrapper(Skyscrapper_Name,AllSelectedFaces)	#Generate the skyscrapper
		if cmds.objExists('GrpAllBuildings'):
			for i in range(0, len(Object_List)):
				cmds.select(Object_List[i])
				selection = cmds.ls(sl=True)
				cmds.parent(selection,'GrpAllBuildings', relative=True)
		else:
			cmds.group(n='GrpAllBuildings', empty=True)
			for i in range(0, len(Object_List)):
				cmds.select(Object_List[i])
				selection = cmds.ls(sl=True)
				cmds.parent(selection,'GrpAllBuildings', relative=True)
		placeStructure(Object_List,AllSelectedFaces,rotationMethod)	#Place the Structure
	
	
	elif (SkyscrapperSelection == 1):
		Skyscrapper_Name = []
		Skyscrapper_Name.append(Skyscrapper1)
		Object_List = generateSkyscrapper(Skyscrapper_Name,AllSelectedFaces)	#Generate the skyscrapper
		if cmds.objExists('GrpAllBuildings'):
			for i in range(0, len(Object_List)):
				cmds.select(Object_List[i])
				selection = cmds.ls(sl=True)
				cmds.parent(selection,'GrpAllBuildings', relative=True)
		else:
			cmds.group(n='GrpAllBuildings', empty=True)
			for i in range(0, len(Object_List)):
				cmds.select(Object_List[i])
				selection = cmds.ls(sl=True)
				cmds.parent(selection,'GrpAllBuildings', relative=True)
		placeStructure(Object_List,AllSelectedFaces,rotationMethod)	#Place the Structure
	
	
	elif (SkyscrapperSelection == 2):
		Skyscrapper_Name = []
		Skyscrapper_Name.append(Skyscrapper2)
		Object_List = generateSkyscrapper(Skyscrapper_Name,AllSelectedFaces)	#Generate the skyscrapper
		if cmds.objExists('GrpAllBuildings'):
			for i in range(0, len(Object_List)):
				cmds.select(Object_List[i])
				selection = cmds.ls(sl=True)
				cmds.parent(selection,'GrpAllBuildings', relative=True)
		else:
			cmds.group(n='GrpAllBuildings', empty=True)
			for i in range(0, len(Object_List)):
				cmds.select(Object_List[i])
				selection = cmds.ls(sl=True)
				cmds.parent(selection,'GrpAllBuildings', relative=True)
		placeStructure(Object_List,AllSelectedFaces,rotationMethod)	#Place the Structure
	
	elif (SkyscrapperSelection == 3):
		Skyscrapper_Name = []
		Skyscrapper_Name.append(Skyscrapper3)
		Object_List = generateSkyscrapper(Skyscrapper_Name,AllSelectedFaces)	#Generate the skyscrapper
		if cmds.objExists('GrpAllBuildings'):
			for i in range(0, len(Object_List)):
				cmds.select(Object_List[i])
				selection = cmds.ls(sl=True)
				cmds.parent(selection,'GrpAllBuildings', relative=True)
		else:
			cmds.group(n='GrpAllBuildings', empty=True)
			for i in range(0, len(Object_List)):
				cmds.select(Object_List[i])
				selection = cmds.ls(sl=True)
				cmds.parent(selection,'GrpAllBuildings', relative=True)
		placeStructure(Object_List,AllSelectedFaces,rotationMethod)	#Place the Structure

def actionGenerateStraightRoad(rotationMethod,*pArgs):
	'''Generate a Straight Road on a selected face/s.
	
	rotationMethod	:is the chosen method of rotation out of the 2 options given
	'''
	AllSelectedFaces = calculateSelectedFaces()
	if (rotationMethod == True):
		rotationMethod = 1
	
	else:
		rotationMethod = 2
	Road_List = []
	Road_List = generateStraightRoadList(AllSelectedFaces)
	if cmds.objExists('GrpStraightRoad'):
		for i in range(0, len(Road_List)):
			cmds.parent(str(Road_List[i]),'GrpStraightRoad', relative=True)
	else:
		cmds.group(n='GrpStraightRoad', empty=True)
		for i in range(0, len(Road_List)):
			cmds.parent(str(Road_List[i]),'GrpStraightRoad', relative=True)
	
	placeStructure(Road_List,AllSelectedFaces,rotationMethod)

def actionGenerateRtCurveRoad(rotationMethod,*pArgs):
	'''Generate a Rt Curve Road on a selected face/s.
	
	rotationMethod	:is the chosen method of rotation out of the 2 options given
	'''
	AllSelectedFaces = calculateSelectedFaces()
	if (rotationMethod == True):
		rotationMethod = 1
	
	else:
		rotationMethod = 2
	Road_List = []
	Road_List = generateRtCurveRoadList(AllSelectedFaces)
	if cmds.objExists('GrpCurveRoad'):
		for i in range(0, len(Road_List)):
			cmds.parent(str(Road_List[i]),'GrpCurveRoad', relative=True)
	else:
		cmds.group(n='GrpCurveRoad', empty=True)
		for i in range(0, len(Road_List)):
			cmds.parent(str(Road_List[i]),'GrpCurveRoad', relative=True)
	placeStructure(Road_List,AllSelectedFaces,rotationMethod)

def actionGenerateTJunctionRoad(rotationMethod, *pArgs):
	'''Generate a TJunction on a selected face/s
	
	rotationMethod	:is the chosen method of rotation out of the 2 options given
	'''
	AllSelectedFaces = calculateSelectedFaces()
	if (rotationMethod == True):
		rotationMethod = 1
	else:
		rotationMethod = 2
	Road_List = []
	Road_List = generateTJunctionRoadList(AllSelectedFaces)
	if cmds.objExists('GrpTJunction'):
		for i in range(0, len(Road_List)):
			cmds.parent(str(Road_List[i]),'GrpTJunction', relative=True)
	else:
		cmds.group(n='GrpTJunction', empty=True)
		for i in range(0, len(Road_List)):
			cmds.parent(str(Road_List[i]),'GrpTJunction', relative=True)
	placeStructure(Road_List, AllSelectedFaces, rotationMethod)

def actionGenerateCrossJunctionRoad(rotationMethod, *pArgs):
	'''Generate a CrossJunction on a selected face/s
	
	rotationMethod	:is the chosen method of rotation out of the 2 options given
	'''
	AllSelectedFaces = calculateSelectedFaces()
	if (rotationMethod == True):
		rotationMethod = 1
	else:
		rotationMethod = 2
	Road_List = []
	Road_List = generateCrossJunctionRoadList(AllSelectedFaces)
	if cmds.objExists('GrpXJunction'):
		for i in range(0, len(Road_List)):
			cmds.parent(str(Road_List[i]),'GrpXJunction', relative=True)
	else:
		cmds.group(n='GrpXJunction', empty=True)
		for i in range(0, len(Road_List)):
			cmds.parent(str(Road_List[i]),'GrpXJunction', relative=True)
	placeStructure(Road_List, AllSelectedFaces, rotationMethod)

def actionRotateRoad():
	'''Rotate one or more selected roads
	'''
	SelectedRoad = cmds.ls(sl=True)
	print SelectedRoad

	for i in SelectedRoad:
		if i[:4] != 'Road':
			cmds.error("Please select only roads",sl=False)
		else:
			cmds.rotate(0,-90,0, i, r=True,os=True)
			rotation = cmds.xform(i, ro=True, q=True)
			print rotation
			print rotation[0]
			if (math.floor(rotation[1])==-180 and rotation[0]/180==0 and rotation[2]/360==0):
				cmds.xform(i, ro=(0,180,0), os=True)

def actionGenerateCar(rotationMethod,*pArgs):
	'''Generates a car on a selected face/s
	
	rotationMethod	:is the chosen method of rotation out of the 2 options given
	'''
	
	AllSelectedFaces = calculateSelectedFaces()
	if (rotationMethod == True):
		rotationMethod = 1
	
	else:
		rotationMethod = 2
	Car_Temp_List = []
	Car_Temp_List = generateCarTempList(AllSelectedFaces)
	if cmds.objExists('GrpCar'):
		for i in range(0, len(Car_Temp_List)):
			cmds.parent(str(Car_Temp_List[i]),'GrpCar', relative=True)
	else:
		cmds.group(n='GrpCar', empty=True)
		for i in range(0, len(Car_Temp_List)):
			cmds.parent(str(Car_Temp_List[i]),'GrpCar', relative=True)
	placeStructure(Car_Temp_List, AllSelectedFaces,rotationMethod)

def actionGenerateTrafficLight(rotationMethod, *pArgs):
	'''Generates a traffic light on a selected face/s
	
	rotationMethod	:is the chosen method of rotation out of the 2 options given
	'''
	AllSelectedFaces = calculateSelectedFaces()
	if (rotationMethod == True):
		rotationMethod = 1
	
	else:
		rotationMethod = 2
	Traffic_Light_Temp_List = []
	Traffic_Light_Temp_List = generateTrafficLightList(AllSelectedFaces)
	if cmds.objExists('GrpAllTrafficLights'):
		for i in range(0, len(Traffic_Light_Temp_List)):
			cmds.parent(str(Traffic_Light_Temp_List[i]),'GrpAllTrafficLights', relative=True)
	else:
		cmds.group(n='GrpAllTrafficLights', empty=True)
		for i in range(0, len(Traffic_Light_Temp_List)):
			cmds.parent(str(Traffic_Light_Temp_List[i]),'GrpAllTrafficLights', relative=True)
	placeStructure(Traffic_Light_Temp_List, AllSelectedFaces, rotationMethod)

def actionRotateCar():
	'''Rotate Selected Cars on a Left Hand Drive Road
	'''
	SelectedCarList = cmds.ls(sl=True)
	
	for i in range(0,len(SelectedCarList)):
		print SelectedCarList[i][:3]
		if SelectedCarList[i][:3] != 'car':
			cmds.error("Please select only cars",sl=False)
			
		CurrentRotation=cmds.xform(SelectedCarList[i], ro=True, q=True)

		if (math.floor(CurrentRotation[1]) == -90):
			cmds.rotate(0,180,0,SelectedCarList[i], os=True)
			cmds.move(2,0,0,SelectedCarList[i],r=True,os=True)
		if (math.ceil(CurrentRotation[1]) == 180):
			cmds.rotate(0,90,0,SelectedCarList[i], os=True)
			cmds.move(2,0,0,SelectedCarList[i],r=True,os=True)
		if (math.ceil(CurrentRotation[1]) == 90):
			cmds.rotate(0,0,0,SelectedCarList[i], os=True)
			cmds.move(2,0,0,SelectedCarList[i],r=True,os=True)
		if (math.ceil(CurrentRotation[1]) == 0):
			cmds.rotate(0,-90,0,SelectedCarList[i], os=True)
			cmds.move(2,0,0,SelectedCarList[i],r=True,os=True)

def actionRotateTrafficLight():
	'''Rotate Selected Traffic Light on a Left Hand Drive Road
	'''
	SelectedTrafficLightList = cmds.ls(sl=True)
	print SelectedTrafficLightList
	
	for i in range(0,len(SelectedTrafficLightList)):
		print SelectedTrafficLightList[i][:13]
		if SelectedTrafficLightList[i][:13] != 'Traffic_Light':
			cmds.error("Please select only Traffic Lights",sl=False)
		
		CurrentRotation = cmds.xform(SelectedTrafficLightList[i], ro=True, q=True)
		
		print CurrentRotation
		if (math.floor(CurrentRotation[1]) == -90):
			cmds.move(-3.5,0,0,SelectedTrafficLightList[i],r=True, os=True)
			cmds.rotate(0,180,0,SelectedTrafficLightList[i], os=True)
		if (math.ceil(CurrentRotation[1]) == 180):
			cmds.move(-3.5,0,0,SelectedTrafficLightList[i],r=True, os=True)
			cmds.rotate(0,90,0,SelectedTrafficLightList[i], os=True)
		if (math.ceil(CurrentRotation[1]) == 90):
			cmds.move(-3.5,0,0,SelectedTrafficLightList[i],r=True, os=True)
			cmds.rotate(0,0,0,SelectedTrafficLightList[i], os=True)
		if (math.ceil(CurrentRotation[1]) == 0):
			cmds.move(-3.5,0,0,SelectedTrafficLightList[i],r=True, os=True)
			cmds.rotate(0,-90,0,SelectedTrafficLightList[i], os=True)

def actionRotateObject():
	'''Rotate Selected Object
	'''
	SelectedObjectList = cmds.ls(sl=True)
	for i in range(0,len(SelectedObjectList)):
		if (SelectedObjectList[i][:13] == "Traffic_Light") or (SelectedObjectList[i][:3] == 'car') or (SelectedObjectList[i][:4] == 'Road'):
			cmds.error("Please use the correct rotation buttons for " + str(SelectedObjectList[i]) , sl=False)
		else:
			cmds.rotate(0,-90,0, SelectedObjectList[i], r=True,os=True)
			rotation = cmds.xform(SelectedObjectList[i], ro=True, q=True)
			print rotation
			print rotation[0]
			if (math.floor(rotation[1])==-180 and rotation[0]/180==0 and rotation[2]/360==0):
				cmds.xform(SelectedObjectList[i], ro=(0,180,0), os=True)

def actionCreateTrafficLinks():
	'''Groups traffic lights together to create a traffic link such that if
	one traffic light is green, the rest is red'''
	SelectedTrafficLight = cmds.ls(sl=True)
	counter = 0
	for i in range(0, len(SelectedTrafficLight)):
		if SelectedTrafficLight[i][:13] != "Traffic_Light":
			cmds.error("Please select only traffic lights")
		else:
			counter += 1
	
	if counter == len(SelectedTrafficLight):
		cmds.group(SelectedTrafficLight, n='Linked_Traffic_Grp#')


def actionAIPrep():
	'''Prepare the lists required for AI to work
	'''
	global variables_reload
	variables_reload = 1
	
"""
+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Create the actual UI
+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
"""	

def createUI():
	'''Generates the UI
	
	'''
	
	windowID = "myWindowID"
	if cmds.window(windowID, exists=True):	#Check if window exist. If it does, delete the UI.
		cmds.deleteUI(windowID)

	cmds.window(windowID, title="My_CityBuilder")	#Creates the UI
	form = cmds.formLayout()	#Creates a foam layout
	tabs = cmds.tabLayout()	#Creates a tab layout
	#Make the foam layout stick to the sides of the screen	
	cmds.formLayout( form, edit=True, attachForm=((tabs, 'top', 0), (tabs, 'left', 0), (tabs, 'bottom', 0), (tabs, 'right', 0)) )	

	"""
	+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
	Create the BuildTools Tab
	+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
	"""
	BuildTools = cmds.rowColumnLayout(numberOfColumns=4)

	#__Create row 1__
	cmds.text( bgc= [0.2,0.2,0.5],label='Store Skyscrappers', align='left')
	cmds.separator (bgc= [0.2,0.2,0.5],style='none')	#Fills the rest of the row
	cmds.separator (bgc= [0.2,0.2,0.5],style='none')
	cmds.separator (bgc= [0.2,0.2,0.5],style='none')
	
	#__Create row 2__
	cmds.text(label='Skyscrapper1')
	Skyscrapper1 = cmds.textField(text='Select own object to replace default', w=300, ed=False, bgc=[0,0,0])
	#Creates a button for the user to store his own selected object to replace the default
	cmds.button(label = "Select", command = lambda *args: actionSelect(cmds.textField(Skyscrapper1, edit=True, text=UserObjectSelected() )))
	#Creates a button to reset and replace with default
	cmds.button(label = "Reset", command = lambda *args: actionSelect(cmds.textField(Skyscrapper1, edit=True, text=ResetUserObjectSelected() )))
	
	#__Create row 3__
	cmds.text(label='Skyscrapper2')
	Skyscrapper2 = cmds.textField(text='Select own object to replace default', w=300, ed=False, bgc=[0,0,0])
	#Creates a button for the user to store his own selected object to replace the default
	cmds.button(label = "Select", command = lambda *args: actionSelect(cmds.textField(Skyscrapper2, edit=True, text=UserObjectSelected() )))
	#Creates a button to reset and replace with default
	cmds.button(label = "Reset", command = lambda *args: actionSelect(cmds.textField(Skyscrapper2, edit=True, text=ResetUserObjectSelected() )))
	
	#__Create row 4__
	cmds.text(label='Skyscrapper3')
	Skyscrapper3 = cmds.textField(text='Select own object to replace default', w=300, ed=False, bgc=[0,0,0])
	#Creates a button for the user to store his own selected object to replace the default
	cmds.button(label = "Select", command = lambda *args: actionSelect(cmds.textField(Skyscrapper3, edit=True, text=UserObjectSelected() )))
	#Creates a button to reset and replace with default
	cmds.button(label = "Reset", command = lambda *args: actionSelect(cmds.textField(Skyscrapper3, edit=True, text=ResetUserObjectSelected() )))
	
	#__Create row 5__	
	cmds.text( bgc= [0.2,0.2,0.5],label='Create Skyscrappers from Plane', align='left')
	cmds.separator (bgc= [0.2,0.2,0.5],style='none')	#Fills the rest of the row
	cmds.separator (bgc= [0.2,0.2,0.5],style='none')
	cmds.separator (bgc= [0.2,0.2,0.5],style='none')
	
	#__Create row 6__
	NoOfSeperationsSliderGroup = cmds.intSliderGrp(cw=[1,140],label='Number Of Seperations', minValue=1, maxValue=10, value=3, field=True, cat=[1,"left",1])
	cmds.separator (style='none')
	cmds.separator (style='none')	#Fills the rest of the row
	cmds.separator (style='none')
	
	#__Create row 7__
	cmds.text(label='Type the NUMBER of floors, seperate by a COMMA, for each Seperation')
	cmds.separator (style='none')
	cmds.separator (style='none')	#Fills the rest of the row
	cmds.separator (style='none')
	
	
	#__Create row 8__
	FloorsPerSeperationString = cmds.textField(text='2,2,2', w=300, bgc=[0,0,0])
	#Creates a button for the user to store his own selected object to replace the default
	cmds.button(label = "Create", command = lambda *args: actionCreateSkyscrapperFromPlane(cmds.intSliderGrp(NoOfSeperationsSliderGroup, query=True, value=True),cmds.textField(FloorsPerSeperationString, q=True, text=True)))
	
	cmds.separator (style='none')
	cmds.separator (style='none')
	
	
	
	
	cmds.setParent( '..' )	#Move the parent up a hierachy back to the tabs menu so the rename of the tabs are possible

	"""
	+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
	Create the GenerationTools Tab
	+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
	"""
	GenerateTools = cmds.rowColumnLayout(numberOfColumns=3)	#Assign number of columns in the GenerateTools Tab
	#Create lists to store UI elements for easy passing to functions to enable and disable them
	OwnTerrainUIList = []
	DefaultTerrainUIList = []
	ManualGenerationUIList = []
	CreationList = []
	AIUIList = []
	
	#__Create row 1__
	cmds.text( bgc= [0.2,0.7,0.2],label='Create Landscape', align='left')	#Creates a text which labels the landscape generation
	cmds.separator (bgc= [0.2,0.7,0.2],style='none')	#Fills the rest of the row
	cmds.separator (bgc= [0.2,0.7,0.2],style='none')
	
	#__Create row 2__
	cmds.text(label="Select own object to replace terrain")	
	#Creates a checkbox for the user to choose if he wants to use his own terrain or not
	UsingOwnTerrainCheckBox = cmds.checkBox(label = 'Use Own Terrain',onc = lambda *args: actionUsingOwnTerrain(OwnTerrainUIList,DefaultTerrainUIList), ofc = lambda *args: actionNotUsingOwnTerrain(OwnTerrainUIList,DefaultTerrainUIList))
	
	cmds.separator (style='none',h=10)
	
	#__Create row 3__
	UserTerrainInput = cmds.textField(text='Select own object to replace default', w=300, ed=False, bgc=[0,0,0],enable=False)
	
	#Creates a button for the user to store his own selected object to replace the default
	SelectOwnTerrainButton = cmds.button(label = "Select", command = lambda *args: actionSelect(cmds.textField(UserTerrainInput, edit=True, text=UserObjectSelected())),enable=False)
	
	#Creates a button to reset and replace with default
	ResetOwnTerrainButton = cmds.button(label = "Reset", command = lambda *args: actionSelect(cmds.textField(UserTerrainInput, edit=True, text=ResetUserObjectSelected())),enable=False)
	
	#Stores the UI elements for easier selection
	OwnTerrainUIList.append(UserTerrainInput)
	OwnTerrainUIList.append(SelectOwnTerrainButton)
	OwnTerrainUIList.append(ResetOwnTerrainButton)
	OwnTerrainUIList.append(UsingOwnTerrainCheckBox)
	
	#__Create row 4__
	#Controls the size of the terrain
	TerrainSliderGroup = cmds.intSliderGrp(cw=[1,80],label='Terrain', minValue=1, maxValue=500, value=8, field=True, cat=[1,"left",1],enable=True)
	cmds.separator (style='none')
	cmds.separator (style='none')
	
	#__Create row 5__
	#Controls the noise of the terrain
	TerrainNoiseIntensityGroup = cmds.floatSliderGrp(cw=[1,80],label='NoiseIntensity', minValue=0, maxValue=1, value=0, field=True, cat=[1,"left",1])
	TerrainNoiseHeightGroup = cmds.floatSliderGrp(cw=[1,80],label='NoiseHeight', minValue=0, maxValue=3, value=0, field=True, cat=[1,"left",1])
	cmds.separator (style='none')
	
	#__Create row 6__
	cmds.separator (style='none',h=10)	#Creates a seperator for neatness
	cmds.separator (style='none',h=10)
	cmds.separator (style='none',h=10)
	
	#__Create row 7__
	#Creates a button to apply terrain generation and a confirm button to confirm creation. The confirm button will prevent the user from tweaking the landscape generation tools after.
	ApplyLandscapeCreationButton = cmds.button(label = "Apply", command = lambda *args: actionGenerateTerrain(cmds.intSliderGrp(TerrainSliderGroup, query=True, value=True), cmds.floatSliderGrp(TerrainNoiseIntensityGroup, query=True, value=True), cmds.floatSliderGrp(TerrainNoiseHeightGroup, query=True, value=True), cmds.checkBox(UsingOwnTerrainCheckBox, query=True, v=True),cmds.textField(UserTerrainInput, query=True, text=True) ))
	
	ConfirmLandscapeCreationButton = cmds.button(label = "Confirm", command = lambda *args: actionConfirm(OwnTerrainUIList,DefaultTerrainUIList,cmds.floatSliderGrp(TerrainNoiseIntensityGroup, query=True, value=True), cmds.floatSliderGrp(TerrainNoiseHeightGroup, query=True, value=True), AIUIList, UsingOwnTerrainCheckBox, CreationList))
	cmds.separator (style='none')
	
	#Stores the UI elements for easier selection
	DefaultTerrainUIList.append(TerrainSliderGroup)
	DefaultTerrainUIList.append(TerrainNoiseIntensityGroup)
	DefaultTerrainUIList.append(TerrainNoiseHeightGroup)
	DefaultTerrainUIList.append(ApplyLandscapeCreationButton)
	DefaultTerrainUIList.append(ConfirmLandscapeCreationButton)
	
	#__Create row 8__
	cmds.separator (h=10,style='none')	#Creates a seperator for neatness
	cmds.separator (h=10,style='none')
	cmds.separator (h=10,style='none')
	
	#__Create row 9__
	cmds.text( bgc= [0,0,0],label='Manual Generation', align='left')	#Creates a text which labels the Manual generation
	cmds.separator (bgc= [0,0,0], w=10 , style='none')	#Fills the rest of the row
	cmds.separator (bgc= [0,0,0], w=10 , style='none')
	
	#__Create row 10__
	#Create a radioCollection UI that allows the user to choose the method of rotation.
	cmds.radioCollection()
	RotationMethod1 = cmds.radioButton(label = 'Place object using face normals rotation', select=True)
	RotationMethod2 = cmds.radioButton(label = 'Place object according to plane direction')
	cmds.separator (style='none')
	
	#__Create row 11__
	cmds.text( bgc= [0.2,0.5,0.2],label='Create Buildings', align='left')	#Creates a text which labels the buildings creation
	cmds.separator (bgc= [0.2,0.5,0.2],style='none')	#Fills the rest of the row
	cmds.separator (bgc= [0.2,0.5,0.2],style='none')
	
	#__Create row 12__
	#Creates a button to generate the skyscrapper or user's object if replaced.
	buttonSkyscrapper = cmds.button(label = "Generate Skyscrapper", enable = False, command = lambda *args: actionGenerateSkyscrapper(cmds.intSliderGrp(SkyscrapperTypeGroup, query=True, value=True),cmds.textField(Skyscrapper1, q=True, text=True), cmds.textField(Skyscrapper2, q=True, text=True), cmds.textField(Skyscrapper3, q=True, text=True),cmds.radioButton(RotationMethod1,q=True,select=True)))	#Creates a button to generate a Skyscrapper
	#Allows user to choose either random or manual selection of building generation
	SkyscrapperTypeGroup = cmds.intSliderGrp(label='Skyscrapper Selection', cw=[1,130], minValue=0, maxValue=3, value=0, field=True, cat=[1,"left",1])
	cmds.text(label = "  0 = random")	#Have a label that tells the user that 0 means random generation
	
	#__Create row 13__
	cmds.separator (style='none',h=10)	#Creates a seperator for neatness
	cmds.separator (style='none',h=10)
	cmds.separator (style='none',h=10)
	
	#__Create row 14__
	cmds.text( bgc= [0.2,0.5,0.2],label='Helpful Utilities', align='left')	#Creates a text which labels helpful utilities
	cmds.separator (bgc= [0.2,0.5,0.2],style='none')	#Fills the rest of the row
	cmds.separator (bgc= [0.2,0.5,0.2],style='none')
	
	#__Create row 15__
	buttonRotateUtility = cmds.button(label = "Rotate selected object", enable = False, command = 'actionRotateObject()')
	cmds.separator (h=10,style='none')
	cmds.separator (h=10,style='none')
	
	#__Create row 16__
	cmds.separator (style='none',h=10)	#Creates a seperator for neatness
	cmds.separator (style='none',h=10)
	cmds.separator (style='none',h=10)
	
	#__Create row 17__
	cmds.text( bgc= [0.2,0.5,0.2],label='Create Roads', align='left')	#Creates a text which labels the creation of roads
	cmds.separator (bgc= [0.2,0.5,0.2],style='none')	#Fills the rest of the row
	cmds.separator (bgc= [0.2,0.5,0.2],style='none')
	
	#__Create row 18__
	buttonStraightRoad = cmds.button(label = "Create Straight Road", enable = False, command = lambda *args: actionGenerateStraightRoad(cmds.radioButton(RotationMethod1,q=True,select=True)) )
	buttonCurveRoad = cmds.button(label = "Create Curve Road",enable = False, command = lambda *args: actionGenerateRtCurveRoad(cmds.radioButton(RotationMethod1,q=True,select=True)))
	cmds.separator (h=10,style='none')
	
	#__Create row 19__
	buttonTJ = cmds.button(label = "Create T-Junction", enable = False, command = lambda *args: actionGenerateTJunctionRoad(cmds.radioButton(RotationMethod1,q=True,select=True)))
	buttonXJ = cmds.button(label = "Create Cross-Junction", enable = False, command = lambda *args: actionGenerateCrossJunctionRoad(cmds.radioButton(RotationMethod1,q=True,select=True)))
	cmds.separator (h=10,style='none')
	
	#__Create row 20__
	buttonRotateRoad = cmds.button(label = "Rotate Selected Road", enable = False, command='actionRotateRoad()')
	cmds.separator (h=10,style='none')
	cmds.separator (h=10,style='none')
	
	#__Create row 21__
	cmds.separator (style='none',h=10)	#Creates a seperator for neatness
	cmds.separator (style='none',h=10)
	cmds.separator (style='none',h=10)
	
	#Stores the UI for the skyscrapper and road creations
	CreationList.append(buttonSkyscrapper)
	CreationList.append(buttonRotateUtility)
	CreationList.append(buttonStraightRoad)
	CreationList.append(buttonCurveRoad)
	CreationList.append(buttonTJ)
	CreationList.append(buttonXJ)
	CreationList.append(buttonRotateRoad)
	
	#__Create row 22__
	cmds.text( bgc= [0.8,0.2,0.2],label='AI Specific Buttons. !!! Applicable only on flat terrain !!!', align='left')	#Creates a text which labels the AI UI elements
	cmds.separator (bgc= [0.8,0.2,0.2],style='none')	#Fills the rest of the row
	cmds.separator (bgc= [0.8,0.2,0.2],style='none')
	
	#__Create row 23__
	ButtonTrafficLight = cmds.button(label = "Create Traffic Light ", en=False, command = lambda *args: actionGenerateTrafficLight(cmds.radioButton(RotationMethod1,q=True,select=True)))
	cmds.text(label = 'AI works better if created on straight roads', align = 'center')
	cmds.separator (h=10,style='none')
	
	#__Create row 24__
	ButtonTrafficLightLink = cmds.button(label = "Create Traffic Light Link System", en=False, command = 'actionCreateTrafficLinks()')
	cmds.separator (h=10,style='none')
	cmds.separator (h=10,style='none')

	#__Create row 25__
	ButtonRotateTrafficLight = cmds.button(label = "Rotate Selected Traffic Light", en=False,command='actionRotateTrafficLight()')
	cmds.text(label = 'For AI to work, traffic light must face against the direction of the traveling car', align = 'center')
	cmds.separator (h=10,style='none')

	#__Create row 26__
	cmds.separator (style='none',h=10)	#Creates a seperator for neatness
	cmds.separator (style='none',h=10)
	cmds.separator (style='none',h=10)
	
	#__Create row 27__
	ButtonCreateCar = cmds.button(label = "Create Car",en=False,command = lambda *args: actionGenerateCar(cmds.radioButton(RotationMethod1,q=True,select=True)))
	cmds.separator (h=10,style='none')
	cmds.separator (h=10,style='none')

	#__Create row 28__
	ButtonRotateCar = cmds.button(label = "Rotate Car",en=False,command = 'actionRotateCar()')
	cmds.separator (h=10,style='none')
	cmds.separator (h=10,style='none')
	
	#__Create row 29__
	cmds.separator (style='none',h=10)	#Creates a seperator for neatness
	cmds.separator (style='none',h=10)
	cmds.separator (style='none',h=10)
	
	#__Create row 30__
	ButtonAI = cmds.button(label = "Create Traffic AI",en=False,command = 'actionAIPrep()')
	cmds.text (label = 'Applicable only for default flat terrain.' , align='center')
	cmds.separator (h=10,style='none')
	
	#Stores the UI for AI
	AIUIList.append(ButtonTrafficLight)
	AIUIList.append(ButtonTrafficLightLink)
	AIUIList.append(ButtonRotateTrafficLight)
	AIUIList.append(ButtonCreateCar)
	AIUIList.append(ButtonRotateCar)
	AIUIList.append(ButtonAI)
	"""
	+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
	Naming the Tabs
	+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
	"""
	#Name the tabs available
	cmds.tabLayout( tabs, edit=True, tabLabel=((BuildTools, 'Building Tools'), (GenerateTools, 'Generation Tools')) )

	cmds.showWindow()
	


"""
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!        
		Creates UI
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
"""

if __name__ == "__main__":
	createUI()

#Creates all shaders
createAllShader()
#Clears all selections
cmds.select(clear=True)

