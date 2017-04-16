//Maya ASCII 2015 scene
//Name: Example_SceneFile.ma
//Last modified: Mon, May 18, 2015 03:35:05 AM
//Codeset: 1252
requires maya "2015";
requires -nodeType "mentalrayFramebuffer" -nodeType "mentalrayOptions" -nodeType "mentalrayGlobals"
		 -nodeType "mentalrayItemsList" -dataType "byteArray" "Mayatomr" "2015.0 - 3.12.1.18 ";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2015";
fileInfo "version" "2015";
fileInfo "cutIdentifier" "201503261530-955654";
fileInfo "osv" "Microsoft Windows 8 Home Premium Edition, 64-bit  (Build 9200)\n";
fileInfo "license" "student";
createNode transform -s -n "persp";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 2.1839503828884093 117.56688252335601 41.210061916789101 ;
	setAttr ".r" -type "double3" 288.86164727034907 -1080.9999999998854 0 ;
createNode camera -s -n "perspShape" -p "persp";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 120.52970250351925;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" 21.764999985694885 0.60000002384185702 5.7175000309944153 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 100.1 0 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 100.1 ;
createNode camera -s -n "frontShape" -p "front";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 8.2639877888098532;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 100.1 0 0 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode transform -n "GrpStraightRoad";
createNode transform -n "RoadStraight1" -p "GrpStraightRoad";
	setAttr ".t" -type "double3" 20 -4.4408920985006262e-015 20 ;
	setAttr ".rp" -type "double3" 0 0.01 0 ;
	setAttr ".sp" -type "double3" 0 0.01 0 ;
createNode mesh -n "RoadStraight1Shape" -p "RoadStraight1";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "RoadStraight2" -p "GrpStraightRoad";
	setAttr ".t" -type "double3" 20 -3.5527136788005009e-015 16 ;
	setAttr ".rp" -type "double3" 0 0.01 0 ;
	setAttr ".sp" -type "double3" 0 0.01 0 ;
createNode mesh -n "RoadStraight2Shape" -p "RoadStraight2";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "RoadStraight4" -p "GrpStraightRoad";
	setAttr ".t" -type "double3" 20 -1.7763568394002505e-015 8 ;
	setAttr ".rp" -type "double3" 0 0.01 0 ;
	setAttr ".sp" -type "double3" 0 0.01 0 ;
createNode mesh -n "RoadStraight4Shape" -p "RoadStraight4";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "RoadStraight5" -p "GrpStraightRoad";
	setAttr ".t" -type "double3" 20 -8.8817841970012523e-016 4 ;
	setAttr ".rp" -type "double3" 0 0.01 0 ;
	setAttr ".sp" -type "double3" 0 0.01 0 ;
createNode mesh -n "RoadStraight5Shape" -p "RoadStraight5";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "RoadStraight6" -p "GrpStraightRoad";
	setAttr ".t" -type "double3" 20 0 0 ;
	setAttr ".rp" -type "double3" 0 0.01 0 ;
	setAttr ".sp" -type "double3" 0 0.01 0 ;
createNode mesh -n "RoadStraight6Shape" -p "RoadStraight6";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "RoadStraight7" -p "GrpStraightRoad";
	setAttr ".t" -type "double3" 20 8.8817841970012523e-016 -4 ;
	setAttr ".rp" -type "double3" 0 0.01 0 ;
	setAttr ".sp" -type "double3" 0 0.01 0 ;
createNode mesh -n "RoadStraight7Shape" -p "RoadStraight7";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "RoadStraight8" -p "GrpStraightRoad";
	setAttr ".t" -type "double3" 20 1.7763568394002505e-015 -8 ;
	setAttr ".rp" -type "double3" 0 0.01 0 ;
	setAttr ".sp" -type "double3" 0 0.01 0 ;
createNode mesh -n "RoadStraight8Shape" -p "RoadStraight8";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "RoadStraight9" -p "GrpStraightRoad";
	setAttr ".t" -type "double3" 20 2.6645352591003757e-015 -12 ;
	setAttr ".rp" -type "double3" 0 0.01 0 ;
	setAttr ".sp" -type "double3" 0 0.01 0 ;
createNode mesh -n "RoadStraight9Shape" -p "RoadStraight9";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "RoadStraight10" -p "GrpStraightRoad";
	setAttr ".t" -type "double3" 20 3.5527136788005009e-015 -16 ;
	setAttr ".rp" -type "double3" 0 0.01 0 ;
	setAttr ".sp" -type "double3" 0 0.01 0 ;
createNode mesh -n "RoadStraight10Shape" -p "RoadStraight10";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "RoadStraight11" -p "GrpStraightRoad";
	setAttr ".t" -type "double3" -16 -4.4408920985006262e-015 20 ;
	setAttr ".rp" -type "double3" 0 0.01 0 ;
	setAttr ".sp" -type "double3" 0 0.01 0 ;
createNode mesh -n "RoadStraight11Shape" -p "RoadStraight11";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "RoadStraight12" -p "GrpStraightRoad";
	setAttr ".t" -type "double3" -16 -3.5527136788005009e-015 16 ;
	setAttr ".rp" -type "double3" 0 0.01 0 ;
	setAttr ".sp" -type "double3" 0 0.01 0 ;
createNode mesh -n "RoadStraight12Shape" -p "RoadStraight12";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "RoadStraight14" -p "GrpStraightRoad";
	setAttr ".t" -type "double3" -16 -1.7763568394002505e-015 8 ;
	setAttr ".rp" -type "double3" 0 0.01 0 ;
	setAttr ".sp" -type "double3" 0 0.01 0 ;
createNode mesh -n "RoadStraight14Shape" -p "RoadStraight14";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "RoadStraight15" -p "GrpStraightRoad";
	setAttr ".t" -type "double3" -8 8.8817841970012523e-016 -4 ;
	setAttr ".r" -type "double3" 0 -89.999999999999986 0 ;
	setAttr ".rp" -type "double3" 0 0.01 0 ;
	setAttr ".sp" -type "double3" 0 0.01 0 ;
createNode mesh -n "RoadStraight15Shape" -p "RoadStraight15";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "RoadStraight16" -p "GrpStraightRoad";
	setAttr ".t" -type "double3" -4 8.8817841970012523e-016 -4 ;
	setAttr ".r" -type "double3" 0 -89.999999999999986 0 ;
	setAttr ".rp" -type "double3" 0 0.01 0 ;
	setAttr ".sp" -type "double3" 0 0.01 0 ;
createNode mesh -n "RoadStraight16Shape" -p "RoadStraight16";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "RoadStraight18" -p "GrpStraightRoad";
	setAttr ".t" -type "double3" 4 8.8817841970012523e-016 -4 ;
	setAttr ".r" -type "double3" 0 -89.999999999999986 0 ;
	setAttr ".rp" -type "double3" 0 0.01 0 ;
	setAttr ".sp" -type "double3" 0 0.01 0 ;
createNode mesh -n "RoadStraight18Shape" -p "RoadStraight18";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "RoadStraight19" -p "GrpStraightRoad";
	setAttr ".t" -type "double3" 8 8.8817841970012523e-016 -4 ;
	setAttr ".r" -type "double3" 0 -89.999999999999986 0 ;
	setAttr ".rp" -type "double3" 0 0.01 0 ;
	setAttr ".sp" -type "double3" 0 0.01 0 ;
createNode mesh -n "RoadStraight19Shape" -p "RoadStraight19";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "RoadStraight20" -p "GrpStraightRoad";
	setAttr ".t" -type "double3" 12 1.7763568394002505e-015 -8 ;
	setAttr ".rp" -type "double3" 0 0.01 0 ;
	setAttr ".sp" -type "double3" 0 0.01 0 ;
createNode mesh -n "RoadStraight20Shape" -p "RoadStraight20";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "RoadStraight21" -p "GrpStraightRoad";
	setAttr ".t" -type "double3" 12 2.6645352591003757e-015 -12 ;
	setAttr ".rp" -type "double3" 0 0.01 0 ;
	setAttr ".sp" -type "double3" 0 0.01 0 ;
createNode mesh -n "RoadStraight21Shape" -p "RoadStraight21";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "RoadStraight22" -p "GrpStraightRoad";
	setAttr ".t" -type "double3" 12 3.5527136788005009e-015 -16 ;
	setAttr ".rp" -type "double3" 0 0.01 0 ;
	setAttr ".sp" -type "double3" 0 0.01 0 ;
createNode mesh -n "RoadStraight22Shape" -p "RoadStraight22";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "RoadStraight23" -p "GrpStraightRoad";
	setAttr ".t" -type "double3" -12 4.4408920985006262e-015 -20 ;
	setAttr ".r" -type "double3" 0 -89.999999999999986 0 ;
	setAttr ".rp" -type "double3" 0 0.01 0 ;
	setAttr ".sp" -type "double3" 0 0.01 0 ;
createNode mesh -n "RoadStraight23Shape" -p "RoadStraight23";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "RoadStraight24" -p "GrpStraightRoad";
	setAttr ".t" -type "double3" -8 4.4408920985006262e-015 -20 ;
	setAttr ".r" -type "double3" 0 -89.999999999999986 0 ;
	setAttr ".rp" -type "double3" 0 0.01 0 ;
	setAttr ".sp" -type "double3" 0 0.01 0 ;
createNode mesh -n "RoadStraight24Shape" -p "RoadStraight24";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "RoadStraight25" -p "GrpStraightRoad";
	setAttr ".t" -type "double3" -4 4.4408920985006262e-015 -20 ;
	setAttr ".r" -type "double3" 0 -89.999999999999986 0 ;
	setAttr ".rp" -type "double3" 0 0.01 0 ;
	setAttr ".sp" -type "double3" 0 0.01 0 ;
createNode mesh -n "RoadStraight25Shape" -p "RoadStraight25";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "RoadStraight26" -p "GrpStraightRoad";
	setAttr ".t" -type "double3" 0 4.4408920985006262e-015 -20 ;
	setAttr ".r" -type "double3" 0 -89.999999999999986 0 ;
	setAttr ".rp" -type "double3" 0 0.01 0 ;
	setAttr ".sp" -type "double3" 0 0.01 0 ;
createNode mesh -n "RoadStraight26Shape" -p "RoadStraight26";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "RoadStraight27" -p "GrpStraightRoad";
	setAttr ".t" -type "double3" 4 4.4408920985006262e-015 -20 ;
	setAttr ".r" -type "double3" 0 -89.999999999999986 0 ;
	setAttr ".rp" -type "double3" 0 0.01 0 ;
	setAttr ".sp" -type "double3" 0 0.01 0 ;
createNode mesh -n "RoadStraight27Shape" -p "RoadStraight27";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "RoadStraight28" -p "GrpStraightRoad";
	setAttr ".t" -type "double3" 8 4.4408920985006262e-015 -20 ;
	setAttr ".r" -type "double3" 0 -89.999999999999986 0 ;
	setAttr ".rp" -type "double3" 0 0.01 0 ;
	setAttr ".sp" -type "double3" 0 0.01 0 ;
createNode mesh -n "RoadStraight28Shape" -p "RoadStraight28";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "RoadStraight29" -p "GrpStraightRoad";
	setAttr ".t" -type "double3" 16 4.4408920985006262e-015 -20 ;
	setAttr ".r" -type "double3" 0 -89.999999999999986 0 ;
	setAttr ".rp" -type "double3" 0 0.01 0 ;
	setAttr ".sp" -type "double3" 0 0.01 0 ;
createNode mesh -n "RoadStraight29Shape" -p "RoadStraight29";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "RoadStraight30" -p "GrpStraightRoad";
	setAttr ".t" -type "double3" -4 -5.3290705182007514e-015 24 ;
	setAttr ".r" -type "double3" 0 -89.999999999999986 0 ;
	setAttr ".rp" -type "double3" 0 0.01 0 ;
	setAttr ".sp" -type "double3" 0 0.01 0 ;
createNode mesh -n "RoadStraight30Shape" -p "RoadStraight30";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "RoadStraight31" -p "GrpStraightRoad";
	setAttr ".t" -type "double3" 4 -5.3290705182007514e-015 24 ;
	setAttr ".r" -type "double3" 0 -89.999999999999986 0 ;
	setAttr ".rp" -type "double3" 0 0.01 0 ;
	setAttr ".sp" -type "double3" 0 0.01 0 ;
createNode mesh -n "RoadStraight31Shape" -p "RoadStraight31";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "RoadStraight32" -p "GrpStraightRoad";
	setAttr ".t" -type "double3" 8 -5.3290705182007514e-015 24 ;
	setAttr ".r" -type "double3" 0 -89.999999999999986 0 ;
	setAttr ".rp" -type "double3" 0 0.01 0 ;
	setAttr ".sp" -type "double3" 0 0.01 0 ;
createNode mesh -n "RoadStraight32Shape" -p "RoadStraight32";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "RoadStraight33" -p "GrpStraightRoad";
	setAttr ".t" -type "double3" 12 -5.3290705182007514e-015 24 ;
	setAttr ".r" -type "double3" 0 -89.999999999999986 0 ;
	setAttr ".rp" -type "double3" 0 0.01 0 ;
	setAttr ".sp" -type "double3" 0 0.01 0 ;
createNode mesh -n "RoadStraight33Shape" -p "RoadStraight33";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "RoadStraight34" -p "GrpStraightRoad";
	setAttr ".t" -type "double3" 16 -5.3290705182007514e-015 24 ;
	setAttr ".r" -type "double3" 0 -89.999999999999986 0 ;
	setAttr ".rp" -type "double3" 0 0.01 0 ;
	setAttr ".sp" -type "double3" 0 0.01 0 ;
createNode mesh -n "RoadStraight34Shape" -p "RoadStraight34";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "RoadStraight35" -p "GrpStraightRoad";
	setAttr ".t" -type "double3" 0 -4.4408920985006262e-015 20 ;
	setAttr ".rp" -type "double3" 0 0.01 0 ;
	setAttr ".sp" -type "double3" 0 0.01 0 ;
createNode mesh -n "RoadStraight35Shape" -p "RoadStraight35";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "RoadStraight36" -p "GrpStraightRoad";
	setAttr ".t" -type "double3" 0 -3.5527136788005009e-015 16 ;
	setAttr ".rp" -type "double3" 0 0.01 0 ;
	setAttr ".sp" -type "double3" 0 0.01 0 ;
createNode mesh -n "RoadStraight36Shape" -p "RoadStraight36";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "RoadStraight37" -p "GrpStraightRoad";
	setAttr ".t" -type "double3" -12 -2.6645352591003757e-015 12 ;
	setAttr ".r" -type "double3" 0 -89.999999999999986 0 ;
	setAttr ".rp" -type "double3" 0 0.01 0 ;
	setAttr ".sp" -type "double3" 0 0.01 0 ;
createNode mesh -n "RoadStraight37Shape" -p "RoadStraight37";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "RoadStraight38" -p "GrpStraightRoad";
	setAttr ".t" -type "double3" -8 -2.6645352591003757e-015 12 ;
	setAttr ".r" -type "double3" 0 -89.999999999999986 0 ;
	setAttr ".rp" -type "double3" 0 0.01 0 ;
	setAttr ".sp" -type "double3" 0 0.01 0 ;
createNode mesh -n "RoadStraight38Shape" -p "RoadStraight38";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "RoadStraight39" -p "GrpStraightRoad";
	setAttr ".t" -type "double3" -4 -2.6645352591003757e-015 12 ;
	setAttr ".r" -type "double3" 0 -89.999999999999986 0 ;
	setAttr ".rp" -type "double3" 0 0.01 0 ;
	setAttr ".sp" -type "double3" 0 0.01 0 ;
createNode mesh -n "RoadStraight39Shape" -p "RoadStraight39";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "RoadStraight40" -p "GrpStraightRoad";
	setAttr ".t" -type "double3" 4 -2.6645352591003757e-015 12 ;
	setAttr ".r" -type "double3" 0 -89.999999999999986 0 ;
	setAttr ".rp" -type "double3" 0 0.01 0 ;
	setAttr ".sp" -type "double3" 0 0.01 0 ;
createNode mesh -n "RoadStraight40Shape" -p "RoadStraight40";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "RoadStraight41" -p "GrpStraightRoad";
	setAttr ".t" -type "double3" 8 -2.6645352591003757e-015 12 ;
	setAttr ".r" -type "double3" 0 -89.999999999999986 0 ;
	setAttr ".rp" -type "double3" 0 0.01 0 ;
	setAttr ".sp" -type "double3" 0 0.01 0 ;
createNode mesh -n "RoadStraight41Shape" -p "RoadStraight41";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "RoadStraight42" -p "GrpStraightRoad";
	setAttr ".t" -type "double3" 12 -2.6645352591003757e-015 12 ;
	setAttr ".r" -type "double3" 0 -89.999999999999986 0 ;
	setAttr ".rp" -type "double3" 0 0.01 0 ;
	setAttr ".sp" -type "double3" 0 0.01 0 ;
createNode mesh -n "RoadStraight42Shape" -p "RoadStraight42";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "RoadStraight43" -p "GrpStraightRoad";
	setAttr ".t" -type "double3" 16 -2.6645352591003757e-015 12 ;
	setAttr ".r" -type "double3" 0 -89.999999999999986 0 ;
	setAttr ".rp" -type "double3" 0 0.01 0 ;
	setAttr ".sp" -type "double3" 0 0.01 0 ;
createNode mesh -n "RoadStraight43Shape" -p "RoadStraight43";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "RoadStraight44" -p "GrpStraightRoad";
	setAttr ".t" -type "double3" 0 -1.7763568394002505e-015 8 ;
	setAttr ".rp" -type "double3" 0 0.01 0 ;
	setAttr ".sp" -type "double3" 0 0.01 0 ;
createNode mesh -n "RoadStraight44Shape" -p "RoadStraight44";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "RoadStraight45" -p "GrpStraightRoad";
	setAttr ".t" -type "double3" 0 -8.8817841970012523e-016 4 ;
	setAttr ".rp" -type "double3" 0 0.01 0 ;
	setAttr ".sp" -type "double3" 0 0.01 0 ;
createNode mesh -n "RoadStraight45Shape" -p "RoadStraight45";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "RoadStraight46" -p "GrpStraightRoad";
	setAttr ".rp" -type "double3" 0 0.01 0 ;
	setAttr ".sp" -type "double3" 0 0.01 0 ;
createNode mesh -n "RoadStraight46Shape" -p "RoadStraight46";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "RoadStraight47" -p "GrpStraightRoad";
	setAttr ".t" -type "double3" -12 -5.3290705182007514e-015 24 ;
	setAttr ".r" -type "double3" 0 -89.999999999999986 0 ;
	setAttr ".rp" -type "double3" 0 0.01 0 ;
	setAttr ".sp" -type "double3" 0 0.01 0 ;
createNode mesh -n "RoadStraight47Shape" -p "RoadStraight47";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "RoadStraight48" -p "GrpStraightRoad";
	setAttr ".t" -type "double3" -8 -5.3290705182007514e-015 24 ;
	setAttr ".r" -type "double3" 0 -89.999999999999986 0 ;
	setAttr ".rp" -type "double3" 0 0.01 0 ;
	setAttr ".sp" -type "double3" 0 0.01 0 ;
createNode mesh -n "RoadStraight48Shape" -p "RoadStraight48";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "RoadStraight49" -p "GrpStraightRoad";
	setAttr ".t" -type "double3" -16 -8.8817841970012523e-016 4 ;
	setAttr ".rp" -type "double3" 0 0.01 0 ;
	setAttr ".sp" -type "double3" 0 0.01 0 ;
createNode mesh -n "RoadStraight49Shape" -p "RoadStraight49";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "RoadStraight50" -p "GrpStraightRoad";
	setAttr ".t" -type "double3" -16 0 0 ;
	setAttr ".rp" -type "double3" 0 0.01 0 ;
	setAttr ".sp" -type "double3" 0 0.01 0 ;
createNode mesh -n "RoadStraight50Shape" -p "RoadStraight50";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "RoadStraight51" -p "GrpStraightRoad";
	setAttr ".t" -type "double3" -12 8.8817841970012523e-016 -4 ;
	setAttr ".r" -type "double3" 0 -89.999999999999986 0 ;
	setAttr ".rp" -type "double3" 0 0.01 0 ;
	setAttr ".sp" -type "double3" 0 0.01 0 ;
createNode mesh -n "RoadStraight51Shape" -p "RoadStraight51";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "RoadStraight52" -p "GrpStraightRoad";
	setAttr ".t" -type "double3" -16 1.7763568394002505e-015 -8 ;
	setAttr ".rp" -type "double3" 0 0.01 0 ;
	setAttr ".sp" -type "double3" 0 0.01 0 ;
createNode mesh -n "RoadStraight52Shape" -p "RoadStraight52";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "RoadStraight53" -p "GrpStraightRoad";
	setAttr ".t" -type "double3" -16 2.6645352591003757e-015 -12 ;
	setAttr ".rp" -type "double3" 0 0.01 0 ;
	setAttr ".sp" -type "double3" 0 0.01 0 ;
createNode mesh -n "RoadStraight53Shape" -p "RoadStraight53";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "RoadStraight54" -p "GrpStraightRoad";
	setAttr ".t" -type "double3" -16 3.5527136788005009e-015 -16 ;
	setAttr ".rp" -type "double3" 0 0.01 0 ;
	setAttr ".sp" -type "double3" 0 0.01 0 ;
createNode mesh -n "RoadStraight54Shape" -p "RoadStraight54";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "GrpCurveRoad";
createNode transform -n "RoadRtCurve1" -p "GrpCurveRoad";
	setAttr ".t" -type "double3" 20 -5.3290705182007514e-015 24 ;
	setAttr ".rp" -type "double3" 0 0.01 0 ;
	setAttr ".sp" -type "double3" 0 0.01 0 ;
createNode mesh -n "RoadRtCurve1Shape" -p "RoadRtCurve1";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "RoadRtCurve2" -p "GrpCurveRoad";
	setAttr ".t" -type "double3" 20 4.4408920985006262e-015 -20 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
	setAttr ".rp" -type "double3" 0 0.01 0 ;
	setAttr ".sp" -type "double3" 0 0.01 0 ;
createNode mesh -n "RoadRtCurve2Shape" -p "RoadRtCurve2";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "RoadRtCurve3" -p "GrpCurveRoad";
	setAttr ".t" -type "double3" -16 -5.3290705182007514e-015 24 ;
	setAttr ".r" -type "double3" 0 -89.999999999999986 0 ;
	setAttr ".rp" -type "double3" 0 0.01 0 ;
	setAttr ".sp" -type "double3" 0 0.01 0 ;
createNode mesh -n "RoadRtCurve3Shape" -p "RoadRtCurve3";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "RoadRtCurve4" -p "GrpCurveRoad";
	setAttr ".t" -type "double3" -16 4.4408920985006262e-015 -20 ;
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".rp" -type "double3" 0 0.01 0 ;
	setAttr ".sp" -type "double3" 0 0.01 0 ;
createNode mesh -n "RoadRtCurve4Shape" -p "RoadRtCurve4";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "RoadRtCurve5" -p "GrpCurveRoad";
	setAttr ".t" -type "double3" 12 8.8817841970012523e-016 -4 ;
	setAttr ".rp" -type "double3" 0 0.01 0 ;
	setAttr ".sp" -type "double3" 0 0.01 0 ;
createNode mesh -n "RoadRtCurve5Shape" -p "RoadRtCurve5";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "GrpTJunction";
createNode transform -n "RoadTJunction2" -p "GrpTJunction";
	setAttr ".t" -type "double3" -16 8.8817841970012523e-016 -4 ;
	setAttr ".r" -type "double3" 0 -89.999999999999986 0 ;
	setAttr ".rp" -type "double3" 0 0.01 0 ;
	setAttr ".sp" -type "double3" 0 0.01 0 ;
createNode mesh -n "RoadTJunction2Shape" -p "RoadTJunction2";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "RoadTJunction3" -p "GrpTJunction";
	setAttr ".t" -type "double3" 12 4.4408920985006262e-015 -20 ;
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".rp" -type "double3" 0 0.01 0 ;
	setAttr ".sp" -type "double3" 0 0.01 0 ;
createNode mesh -n "RoadTJunction3Shape" -p "RoadTJunction3";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "RoadTJunction4" -p "GrpTJunction";
	setAttr ".t" -type "double3" -16 -2.6645352591003757e-015 12 ;
	setAttr ".r" -type "double3" 0 -89.999999999999986 0 ;
	setAttr ".rp" -type "double3" 0 0.01 0 ;
	setAttr ".sp" -type "double3" 0 0.01 0 ;
createNode mesh -n "RoadTJunction4Shape" -p "RoadTJunction4";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "RoadTJunction5" -p "GrpTJunction";
	setAttr ".t" -type "double3" 20 -2.6645352591003757e-015 12 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
	setAttr ".rp" -type "double3" 0 0.01 0 ;
	setAttr ".sp" -type "double3" 0 0.01 0 ;
createNode mesh -n "RoadTJunction5Shape" -p "RoadTJunction5";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "RoadTJunction6" -p "GrpTJunction";
	setAttr ".t" -type "double3" 0 -5.3290705182007514e-015 24 ;
	setAttr ".rp" -type "double3" 0 0.01 0 ;
	setAttr ".sp" -type "double3" 0 0.01 0 ;
createNode mesh -n "RoadTJunction6Shape" -p "RoadTJunction6";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "RoadTJunction7" -p "GrpTJunction";
	setAttr ".t" -type "double3" 0 8.8817841970012523e-016 -4 ;
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".rp" -type "double3" 0 0.01 0 ;
	setAttr ".sp" -type "double3" 0 0.01 0 ;
createNode mesh -n "RoadTJunction7Shape" -p "RoadTJunction7";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "GrpXJunction";
createNode transform -n "RoadCrossJunction1" -p "GrpXJunction";
	setAttr ".t" -type "double3" 0 -2.6645352591003757e-015 12 ;
	setAttr ".rp" -type "double3" 0 0.01 0 ;
	setAttr ".sp" -type "double3" 0 0.01 0 ;
createNode mesh -n "RoadCrossJunction1Shape" -p "RoadCrossJunction1";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "GrpAllTrafficLights";
createNode transform -n "Traffic_Light1" -p "GrpAllTrafficLights";
	setAttr ".t" -type "double3" 8.5 -5.3290705182007514e-015 24 ;
	setAttr ".r" -type "double3" 0 -90 0 ;
	setAttr ".rp" -type "double3" 1.765 0.6 1.75 ;
	setAttr ".sp" -type "double3" 1.765 0.6 1.75 ;
createNode mesh -n "Traffic_Light1Shape" -p "Traffic_Light1";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 32 ".uvst[0].uvsp[0:31]" -type "float2" 0.33000001 0 0.66333336
		 0 0.33000001 0.125 0.66333336 0.125 0.33000001 0.25 0.66333336 0.25 0.33000001 0.5
		 0.66333336 0.5 0.33000001 0.625 0.66333336 0.625 0.33000001 0.75 0.66333336 0.75
		 0.33000001 1 0.66333336 1 1 0 1 0.125 1 0.25 0 0 0 0.125 0 0.25 0.33000001 0.125
		 0.66333336 0.125 0.66333336 0.25 0.33000001 0.25 0.33000001 0.5 0.66333336 0.5 0.66333336
		 0.625 0.33000001 0.625 1 0.125 1 0.25 0 0.125 0 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 20 ".vt[0:19]"  1.70000005 -0.049999952 1.81500006 1.82999992 -0.049999952 1.81500006
		 1.70000005 0.73000002 1.81500006 1.82999992 0.73000002 1.81500006 1.70000005 1.25 1.81500006
		 1.82999992 1.25 1.81500006 1.70000005 1.25 1.68499994 1.82999992 1.25 1.68499994
		 1.70000005 0.73000002 1.68499994 1.82999992 0.73000002 1.68499994 1.70000005 -0.049999952 1.68499994
		 1.82999992 -0.049999952 1.68499994 1.61549997 0.73000002 1.89950001 1.9145 0.73000002 1.89950001
		 1.9145 1.25 1.89950001 1.61549997 1.25 1.89950001 1.61549997 1.25 1.60049999 1.9145 1.25 1.60049999
		 1.9145 0.73000002 1.60049999 1.61549997 0.73000002 1.60049999;
	setAttr -s 36 ".ed[0:35]"  0 1 0 2 3 0 4 5 1 6 7 1 8 9 0 10 11 0 0 2 0
		 1 3 0 4 6 1 5 7 1 8 10 0 9 11 0 10 0 0 11 1 0 9 3 0 8 2 0 2 12 1 3 13 1 12 13 0 5 14 1
		 13 14 0 4 15 1 15 14 0 12 15 0 6 16 1 7 17 1 16 17 0 9 18 1 17 18 0 8 19 1 19 18 0
		 16 19 0 18 13 0 14 17 0 19 12 0 15 16 0;
	setAttr -s 18 -ch 72 ".fc[0:17]" -type "polyFaces" 
		f 4 0 7 -2 -7
		mu 0 4 0 1 3 2
		f 4 18 20 -23 -24
		mu 0 4 20 21 22 23
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 26 28 -31 -32
		mu 0 4 24 25 26 27
		f 4 4 11 -6 -11
		mu 0 4 8 9 11 10
		f 4 5 13 -1 -13
		mu 0 4 10 11 13 12
		f 4 -14 -12 14 -8
		mu 0 4 1 14 15 3
		f 4 -33 -29 -34 -21
		mu 0 4 21 28 29 22
		f 4 12 6 -16 10
		mu 0 4 17 0 2 18
		f 4 34 23 35 31
		mu 0 4 30 20 23 31
		f 4 1 17 -19 -17
		mu 0 4 2 3 21 20
		f 4 -3 21 22 -20
		mu 0 4 5 4 23 22
		f 4 3 25 -27 -25
		mu 0 4 6 7 25 24
		f 4 -5 29 30 -28
		mu 0 4 9 8 27 26
		f 4 -15 27 32 -18
		mu 0 4 3 15 28 21
		f 4 -10 19 33 -26
		mu 0 4 16 5 22 29
		f 4 15 16 -35 -30
		mu 0 4 18 2 20 30
		f 4 8 24 -36 -22
		mu 0 4 4 19 31 23;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "RedLight_Traffic_Light1" -p "Traffic_Light1";
	setAttr ".rp" -type "double3" 1.765 1.146 1.6005 ;
	setAttr ".sp" -type "double3" 1.765 1.146 1.6005 ;
createNode mesh -n "RedLight_Traffic_Light1Shape" -p "RedLight_Traffic_Light1";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 79 ".uvst[0].uvsp[0:78]" -type "float2" 0 0.125 0.125 0.125
		 0.25 0.125 0.375 0.125 0.5 0.125 0.625 0.125 0.75 0.125 0.875 0.125 1 0.125 0 0.25
		 0.125 0.25 0.25 0.25 0.375 0.25 0.5 0.25 0.625 0.25 0.75 0.25 0.875 0.25 1 0.25 0
		 0.375 0.125 0.375 0.25 0.375 0.375 0.375 0.5 0.375 0.625 0.375 0.75 0.375 0.875 0.375
		 1 0.375 0 0.5 0.125 0.5 0.25 0.5 0.375 0.5 0.5 0.5 0.625 0.5 0.75 0.5 0.875 0.5 1
		 0.5 0 0.625 0.125 0.625 0.25 0.625 0.375 0.625 0.5 0.625 0.625 0.625 0.75 0.625 0.875
		 0.625 1 0.625 0 0.75 0.125 0.75 0.25 0.75 0.375 0.75 0.5 0.75 0.625 0.75 0.75 0.75
		 0.875 0.75 1 0.75 0 0.875 0.125 0.875 0.25 0.875 0.375 0.875 0.5 0.875 0.625 0.875
		 0.75 0.875 0.875 0.875 1 0.875 0.0625 0 0.1875 0 0.3125 0 0.4375 0 0.5625 0 0.6875
		 0 0.8125 0 0.9375 0 0.0625 1 0.1875 1 0.3125 1 0.4375 1 0.5625 1 0.6875 1 0.8125
		 1 0.9375 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 58 ".vt[0:57]"  1.78258884 1.085947871 1.58291113 1.76499999 1.085947871 1.57562554
		 1.74741113 1.085947871 1.58291113 1.74012554 1.085947871 1.60049999 1.74741113 1.085947871 1.61808884
		 1.76499999 1.085947871 1.62537444 1.78258884 1.085947871 1.61808884 1.78987443 1.085947871 1.60049999
		 1.79750001 1.10003805 1.56799996 1.76499999 1.10003805 1.55453801 1.73249996 1.10003805 1.56799996
		 1.71903801 1.10003805 1.60049999 1.73249996 1.10003805 1.63300002 1.76499999 1.10003805 1.64646196
		 1.79750001 1.10003805 1.63300002 1.81096196 1.10003805 1.60049999 1.80746329 1.12112558 1.55803668
		 1.76499999 1.12112558 1.54044783 1.72253668 1.12112558 1.55803668 1.70494783 1.12112558 1.60049999
		 1.72253668 1.12112558 1.64296329 1.76499999 1.12112558 1.66055214 1.80746329 1.12112558 1.64296329
		 1.82505214 1.12112558 1.60049999 1.81096196 1.14600003 1.55453801 1.76499999 1.14600003 1.53550005
		 1.71903801 1.14600003 1.55453801 1.70000005 1.14600003 1.60049999 1.71903801 1.14600003 1.64646196
		 1.76499999 1.14600003 1.66549993 1.81096196 1.14600003 1.64646196 1.82999992 1.14600003 1.60049999
		 1.80746329 1.17087448 1.55803668 1.76499999 1.17087448 1.54044783 1.72253668 1.17087448 1.55803668
		 1.70494783 1.17087448 1.60049999 1.72253668 1.17087448 1.64296329 1.76499999 1.17087448 1.66055214
		 1.80746329 1.17087448 1.64296329 1.82505214 1.17087448 1.60049999 1.79750001 1.191962 1.56799996
		 1.76499999 1.191962 1.55453801 1.73249996 1.191962 1.56799996 1.71903801 1.191962 1.60049999
		 1.73249996 1.191962 1.63300002 1.76499999 1.191962 1.64646196 1.79750001 1.191962 1.63300002
		 1.81096196 1.191962 1.60049999 1.78258884 1.20605218 1.58291113 1.76499999 1.20605218 1.57562554
		 1.74741113 1.20605218 1.58291113 1.74012554 1.20605218 1.60049999 1.74741113 1.20605218 1.61808884
		 1.76499999 1.20605218 1.62537444 1.78258884 1.20605218 1.61808884 1.78987443 1.20605218 1.60049999
		 1.76499999 1.08100009 1.60049999 1.76499999 1.21099997 1.60049999;
	setAttr -s 120 ".ed[0:119]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 0 0 8 9 0 9 10 0 10 11 0 11 12 0 12 13 0 13 14 0 14 15 0 15 8 0 16 17 0 17 18 0
		 18 19 0 19 20 0 20 21 0 21 22 0 22 23 0 23 16 0 24 25 0 25 26 0 26 27 0 27 28 0 28 29 0
		 29 30 0 30 31 0 31 24 0 32 33 0 33 34 0 34 35 0 35 36 0 36 37 0 37 38 0 38 39 0 39 32 0
		 40 41 0 41 42 0 42 43 0 43 44 0 44 45 0 45 46 0 46 47 0 47 40 0 48 49 0 49 50 0 50 51 0
		 51 52 0 52 53 0 53 54 0 54 55 0 55 48 0 0 8 0 1 9 0 2 10 0 3 11 0 4 12 0 5 13 0 6 14 0
		 7 15 0 8 16 0 9 17 0 10 18 0 11 19 0 12 20 0 13 21 0 14 22 0 15 23 0 16 24 0 17 25 0
		 18 26 0 19 27 0 20 28 0 21 29 0 22 30 0 23 31 0 24 32 0 25 33 0 26 34 0 27 35 0 28 36 0
		 29 37 0 30 38 0 31 39 0 32 40 0 33 41 0 34 42 0 35 43 0 36 44 0 37 45 0 38 46 0 39 47 0
		 40 48 0 41 49 0 42 50 0 43 51 0 44 52 0 45 53 0 46 54 0 47 55 0 56 0 0 56 1 0 56 2 0
		 56 3 0 56 4 0 56 5 0 56 6 0 56 7 0 48 57 0 49 57 0 50 57 0 51 57 0 52 57 0 53 57 0
		 54 57 0 55 57 0;
	setAttr -s 64 -ch 240 ".fc[0:63]" -type "polyFaces" 
		f 4 0 57 -9 -57
		mu 0 4 0 1 10 9
		f 4 1 58 -10 -58
		mu 0 4 1 2 11 10
		f 4 2 59 -11 -59
		mu 0 4 2 3 12 11
		f 4 3 60 -12 -60
		mu 0 4 3 4 13 12
		f 4 4 61 -13 -61
		mu 0 4 4 5 14 13
		f 4 5 62 -14 -62
		mu 0 4 5 6 15 14
		f 4 6 63 -15 -63
		mu 0 4 6 7 16 15
		f 4 7 56 -16 -64
		mu 0 4 7 8 17 16
		f 4 8 65 -17 -65
		mu 0 4 9 10 19 18
		f 4 9 66 -18 -66
		mu 0 4 10 11 20 19
		f 4 10 67 -19 -67
		mu 0 4 11 12 21 20
		f 4 11 68 -20 -68
		mu 0 4 12 13 22 21
		f 4 12 69 -21 -69
		mu 0 4 13 14 23 22
		f 4 13 70 -22 -70
		mu 0 4 14 15 24 23
		f 4 14 71 -23 -71
		mu 0 4 15 16 25 24
		f 4 15 64 -24 -72
		mu 0 4 16 17 26 25
		f 4 16 73 -25 -73
		mu 0 4 18 19 28 27
		f 4 17 74 -26 -74
		mu 0 4 19 20 29 28
		f 4 18 75 -27 -75
		mu 0 4 20 21 30 29
		f 4 19 76 -28 -76
		mu 0 4 21 22 31 30
		f 4 20 77 -29 -77
		mu 0 4 22 23 32 31
		f 4 21 78 -30 -78
		mu 0 4 23 24 33 32
		f 4 22 79 -31 -79
		mu 0 4 24 25 34 33
		f 4 23 72 -32 -80
		mu 0 4 25 26 35 34
		f 4 24 81 -33 -81
		mu 0 4 27 28 37 36
		f 4 25 82 -34 -82
		mu 0 4 28 29 38 37
		f 4 26 83 -35 -83
		mu 0 4 29 30 39 38
		f 4 27 84 -36 -84
		mu 0 4 30 31 40 39
		f 4 28 85 -37 -85
		mu 0 4 31 32 41 40
		f 4 29 86 -38 -86
		mu 0 4 32 33 42 41
		f 4 30 87 -39 -87
		mu 0 4 33 34 43 42
		f 4 31 80 -40 -88
		mu 0 4 34 35 44 43
		f 4 32 89 -41 -89
		mu 0 4 36 37 46 45
		f 4 33 90 -42 -90
		mu 0 4 37 38 47 46
		f 4 34 91 -43 -91
		mu 0 4 38 39 48 47
		f 4 35 92 -44 -92
		mu 0 4 39 40 49 48
		f 4 36 93 -45 -93
		mu 0 4 40 41 50 49
		f 4 37 94 -46 -94
		mu 0 4 41 42 51 50
		f 4 38 95 -47 -95
		mu 0 4 42 43 52 51
		f 4 39 88 -48 -96
		mu 0 4 43 44 53 52
		f 4 40 97 -49 -97
		mu 0 4 45 46 55 54
		f 4 41 98 -50 -98
		mu 0 4 46 47 56 55
		f 4 42 99 -51 -99
		mu 0 4 47 48 57 56
		f 4 43 100 -52 -100
		mu 0 4 48 49 58 57
		f 4 44 101 -53 -101
		mu 0 4 49 50 59 58
		f 4 45 102 -54 -102
		mu 0 4 50 51 60 59
		f 4 46 103 -55 -103
		mu 0 4 51 52 61 60
		f 4 47 96 -56 -104
		mu 0 4 52 53 62 61
		f 3 -1 -105 105
		mu 0 3 1 0 63
		f 3 -2 -106 106
		mu 0 3 2 1 64
		f 3 -3 -107 107
		mu 0 3 3 2 65
		f 3 -4 -108 108
		mu 0 3 4 3 66
		f 3 -5 -109 109
		mu 0 3 5 4 67
		f 3 -6 -110 110
		mu 0 3 6 5 68
		f 3 -7 -111 111
		mu 0 3 7 6 69
		f 3 -8 -112 104
		mu 0 3 8 7 70
		f 3 48 113 -113
		mu 0 3 54 55 71
		f 3 49 114 -114
		mu 0 3 55 56 72
		f 3 50 115 -115
		mu 0 3 56 57 73
		f 3 51 116 -116
		mu 0 3 57 58 74
		f 3 52 117 -117
		mu 0 3 58 59 75
		f 3 53 118 -118
		mu 0 3 59 60 76
		f 3 54 119 -119
		mu 0 3 60 61 77
		f 3 55 112 -120
		mu 0 3 61 62 78;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "OrangeLight_Traffic_Light1" -p "Traffic_Light1";
	setAttr ".rp" -type "double3" 1.765 0.99 1.6005 ;
	setAttr ".sp" -type "double3" 1.765 0.99 1.6005 ;
createNode mesh -n "OrangeLight_Traffic_Light1Shape" -p "OrangeLight_Traffic_Light1";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 79 ".uvst[0].uvsp[0:78]" -type "float2" 0 0.125 0.125 0.125
		 0.25 0.125 0.375 0.125 0.5 0.125 0.625 0.125 0.75 0.125 0.875 0.125 1 0.125 0 0.25
		 0.125 0.25 0.25 0.25 0.375 0.25 0.5 0.25 0.625 0.25 0.75 0.25 0.875 0.25 1 0.25 0
		 0.375 0.125 0.375 0.25 0.375 0.375 0.375 0.5 0.375 0.625 0.375 0.75 0.375 0.875 0.375
		 1 0.375 0 0.5 0.125 0.5 0.25 0.5 0.375 0.5 0.5 0.5 0.625 0.5 0.75 0.5 0.875 0.5 1
		 0.5 0 0.625 0.125 0.625 0.25 0.625 0.375 0.625 0.5 0.625 0.625 0.625 0.75 0.625 0.875
		 0.625 1 0.625 0 0.75 0.125 0.75 0.25 0.75 0.375 0.75 0.5 0.75 0.625 0.75 0.75 0.75
		 0.875 0.75 1 0.75 0 0.875 0.125 0.875 0.25 0.875 0.375 0.875 0.5 0.875 0.625 0.875
		 0.75 0.875 0.875 0.875 1 0.875 0.0625 0 0.1875 0 0.3125 0 0.4375 0 0.5625 0 0.6875
		 0 0.8125 0 0.9375 0 0.0625 1 0.1875 1 0.3125 1 0.4375 1 0.5625 1 0.6875 1 0.8125
		 1 0.9375 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 58 ".vt[0:57]"  1.78258884 0.92994785 1.58291113 1.76499999 0.92994785 1.57562554
		 1.74741113 0.92994785 1.58291113 1.74012554 0.92994785 1.60049999 1.74741113 0.92994785 1.61808884
		 1.76499999 0.92994785 1.62537444 1.78258884 0.92994785 1.61808884 1.78987443 0.92994785 1.60049999
		 1.79750001 0.94403809 1.56799996 1.76499999 0.94403809 1.55453801 1.73249996 0.94403809 1.56799996
		 1.71903801 0.94403809 1.60049999 1.73249996 0.94403809 1.63300002 1.76499999 0.94403809 1.64646196
		 1.79750001 0.94403809 1.63300002 1.81096196 0.94403809 1.60049999 1.80746329 0.96512556 1.55803668
		 1.76499999 0.96512556 1.54044783 1.72253668 0.96512556 1.55803668 1.70494783 0.96512556 1.60049999
		 1.72253668 0.96512556 1.64296329 1.76499999 0.96512556 1.66055214 1.80746329 0.96512556 1.64296329
		 1.82505214 0.96512556 1.60049999 1.81096196 0.99000001 1.55453801 1.76499999 0.99000001 1.53550005
		 1.71903801 0.99000001 1.55453801 1.70000005 0.99000001 1.60049999 1.71903801 0.99000001 1.64646196
		 1.76499999 0.99000001 1.66549993 1.81096196 0.99000001 1.64646196 1.82999992 0.99000001 1.60049999
		 1.80746329 1.014874458 1.55803668 1.76499999 1.014874458 1.54044783 1.72253668 1.014874458 1.55803668
		 1.70494783 1.014874458 1.60049999 1.72253668 1.014874458 1.64296329 1.76499999 1.014874458 1.66055214
		 1.80746329 1.014874458 1.64296329 1.82505214 1.014874458 1.60049999 1.79750001 1.035961986 1.56799996
		 1.76499999 1.035961986 1.55453801 1.73249996 1.035961986 1.56799996 1.71903801 1.035961986 1.60049999
		 1.73249996 1.035961986 1.63300002 1.76499999 1.035961986 1.64646196 1.79750001 1.035961986 1.63300002
		 1.81096196 1.035961986 1.60049999 1.78258884 1.050052166 1.58291113 1.76499999 1.050052166 1.57562554
		 1.74741113 1.050052166 1.58291113 1.74012554 1.050052166 1.60049999 1.74741113 1.050052166 1.61808884
		 1.76499999 1.050052166 1.62537444 1.78258884 1.050052166 1.61808884 1.78987443 1.050052166 1.60049999
		 1.76499999 0.92500001 1.60049999 1.76499999 1.055000067 1.60049999;
	setAttr -s 120 ".ed[0:119]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 0 0 8 9 0 9 10 0 10 11 0 11 12 0 12 13 0 13 14 0 14 15 0 15 8 0 16 17 0 17 18 0
		 18 19 0 19 20 0 20 21 0 21 22 0 22 23 0 23 16 0 24 25 0 25 26 0 26 27 0 27 28 0 28 29 0
		 29 30 0 30 31 0 31 24 0 32 33 0 33 34 0 34 35 0 35 36 0 36 37 0 37 38 0 38 39 0 39 32 0
		 40 41 0 41 42 0 42 43 0 43 44 0 44 45 0 45 46 0 46 47 0 47 40 0 48 49 0 49 50 0 50 51 0
		 51 52 0 52 53 0 53 54 0 54 55 0 55 48 0 0 8 0 1 9 0 2 10 0 3 11 0 4 12 0 5 13 0 6 14 0
		 7 15 0 8 16 0 9 17 0 10 18 0 11 19 0 12 20 0 13 21 0 14 22 0 15 23 0 16 24 0 17 25 0
		 18 26 0 19 27 0 20 28 0 21 29 0 22 30 0 23 31 0 24 32 0 25 33 0 26 34 0 27 35 0 28 36 0
		 29 37 0 30 38 0 31 39 0 32 40 0 33 41 0 34 42 0 35 43 0 36 44 0 37 45 0 38 46 0 39 47 0
		 40 48 0 41 49 0 42 50 0 43 51 0 44 52 0 45 53 0 46 54 0 47 55 0 56 0 0 56 1 0 56 2 0
		 56 3 0 56 4 0 56 5 0 56 6 0 56 7 0 48 57 0 49 57 0 50 57 0 51 57 0 52 57 0 53 57 0
		 54 57 0 55 57 0;
	setAttr -s 64 -ch 240 ".fc[0:63]" -type "polyFaces" 
		f 4 0 57 -9 -57
		mu 0 4 0 1 10 9
		f 4 1 58 -10 -58
		mu 0 4 1 2 11 10
		f 4 2 59 -11 -59
		mu 0 4 2 3 12 11
		f 4 3 60 -12 -60
		mu 0 4 3 4 13 12
		f 4 4 61 -13 -61
		mu 0 4 4 5 14 13
		f 4 5 62 -14 -62
		mu 0 4 5 6 15 14
		f 4 6 63 -15 -63
		mu 0 4 6 7 16 15
		f 4 7 56 -16 -64
		mu 0 4 7 8 17 16
		f 4 8 65 -17 -65
		mu 0 4 9 10 19 18
		f 4 9 66 -18 -66
		mu 0 4 10 11 20 19
		f 4 10 67 -19 -67
		mu 0 4 11 12 21 20
		f 4 11 68 -20 -68
		mu 0 4 12 13 22 21
		f 4 12 69 -21 -69
		mu 0 4 13 14 23 22
		f 4 13 70 -22 -70
		mu 0 4 14 15 24 23
		f 4 14 71 -23 -71
		mu 0 4 15 16 25 24
		f 4 15 64 -24 -72
		mu 0 4 16 17 26 25
		f 4 16 73 -25 -73
		mu 0 4 18 19 28 27
		f 4 17 74 -26 -74
		mu 0 4 19 20 29 28
		f 4 18 75 -27 -75
		mu 0 4 20 21 30 29
		f 4 19 76 -28 -76
		mu 0 4 21 22 31 30
		f 4 20 77 -29 -77
		mu 0 4 22 23 32 31
		f 4 21 78 -30 -78
		mu 0 4 23 24 33 32
		f 4 22 79 -31 -79
		mu 0 4 24 25 34 33
		f 4 23 72 -32 -80
		mu 0 4 25 26 35 34
		f 4 24 81 -33 -81
		mu 0 4 27 28 37 36
		f 4 25 82 -34 -82
		mu 0 4 28 29 38 37
		f 4 26 83 -35 -83
		mu 0 4 29 30 39 38
		f 4 27 84 -36 -84
		mu 0 4 30 31 40 39
		f 4 28 85 -37 -85
		mu 0 4 31 32 41 40
		f 4 29 86 -38 -86
		mu 0 4 32 33 42 41
		f 4 30 87 -39 -87
		mu 0 4 33 34 43 42
		f 4 31 80 -40 -88
		mu 0 4 34 35 44 43
		f 4 32 89 -41 -89
		mu 0 4 36 37 46 45
		f 4 33 90 -42 -90
		mu 0 4 37 38 47 46
		f 4 34 91 -43 -91
		mu 0 4 38 39 48 47
		f 4 35 92 -44 -92
		mu 0 4 39 40 49 48
		f 4 36 93 -45 -93
		mu 0 4 40 41 50 49
		f 4 37 94 -46 -94
		mu 0 4 41 42 51 50
		f 4 38 95 -47 -95
		mu 0 4 42 43 52 51
		f 4 39 88 -48 -96
		mu 0 4 43 44 53 52
		f 4 40 97 -49 -97
		mu 0 4 45 46 55 54
		f 4 41 98 -50 -98
		mu 0 4 46 47 56 55
		f 4 42 99 -51 -99
		mu 0 4 47 48 57 56
		f 4 43 100 -52 -100
		mu 0 4 48 49 58 57
		f 4 44 101 -53 -101
		mu 0 4 49 50 59 58
		f 4 45 102 -54 -102
		mu 0 4 50 51 60 59
		f 4 46 103 -55 -103
		mu 0 4 51 52 61 60
		f 4 47 96 -56 -104
		mu 0 4 52 53 62 61
		f 3 -1 -105 105
		mu 0 3 1 0 63
		f 3 -2 -106 106
		mu 0 3 2 1 64
		f 3 -3 -107 107
		mu 0 3 3 2 65
		f 3 -4 -108 108
		mu 0 3 4 3 66
		f 3 -5 -109 109
		mu 0 3 5 4 67
		f 3 -6 -110 110
		mu 0 3 6 5 68
		f 3 -7 -111 111
		mu 0 3 7 6 69
		f 3 -8 -112 104
		mu 0 3 8 7 70
		f 3 48 113 -113
		mu 0 3 54 55 71
		f 3 49 114 -114
		mu 0 3 55 56 72
		f 3 50 115 -115
		mu 0 3 56 57 73
		f 3 51 116 -116
		mu 0 3 57 58 74
		f 3 52 117 -117
		mu 0 3 58 59 75
		f 3 53 118 -118
		mu 0 3 59 60 76
		f 3 54 119 -119
		mu 0 3 60 61 77
		f 3 55 112 -120
		mu 0 3 61 62 78;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "GreenLight_Traffic_Light1" -p "Traffic_Light1";
	setAttr ".rp" -type "double3" 1.765 0.83400000000000007 1.6005 ;
	setAttr ".sp" -type "double3" 1.765 0.83400000000000007 1.6005 ;
createNode mesh -n "GreenLight_Traffic_Light1Shape" -p "GreenLight_Traffic_Light1";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 79 ".uvst[0].uvsp[0:78]" -type "float2" 0 0.125 0.125 0.125
		 0.25 0.125 0.375 0.125 0.5 0.125 0.625 0.125 0.75 0.125 0.875 0.125 1 0.125 0 0.25
		 0.125 0.25 0.25 0.25 0.375 0.25 0.5 0.25 0.625 0.25 0.75 0.25 0.875 0.25 1 0.25 0
		 0.375 0.125 0.375 0.25 0.375 0.375 0.375 0.5 0.375 0.625 0.375 0.75 0.375 0.875 0.375
		 1 0.375 0 0.5 0.125 0.5 0.25 0.5 0.375 0.5 0.5 0.5 0.625 0.5 0.75 0.5 0.875 0.5 1
		 0.5 0 0.625 0.125 0.625 0.25 0.625 0.375 0.625 0.5 0.625 0.625 0.625 0.75 0.625 0.875
		 0.625 1 0.625 0 0.75 0.125 0.75 0.25 0.75 0.375 0.75 0.5 0.75 0.625 0.75 0.75 0.75
		 0.875 0.75 1 0.75 0 0.875 0.125 0.875 0.25 0.875 0.375 0.875 0.5 0.875 0.625 0.875
		 0.75 0.875 0.875 0.875 1 0.875 0.0625 0 0.1875 0 0.3125 0 0.4375 0 0.5625 0 0.6875
		 0 0.8125 0 0.9375 0 0.0625 1 0.1875 1 0.3125 1 0.4375 1 0.5625 1 0.6875 1 0.8125
		 1 0.9375 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 58 ".vt[0:57]"  1.78258884 0.77394783 1.58291113 1.76499999 0.77394783 1.57562554
		 1.74741113 0.77394783 1.58291113 1.74012554 0.77394783 1.60049999 1.74741113 0.77394783 1.61808884
		 1.76499999 0.77394783 1.62537444 1.78258884 0.77394783 1.61808884 1.78987443 0.77394783 1.60049999
		 1.79750001 0.78803807 1.56799996 1.76499999 0.78803807 1.55453801 1.73249996 0.78803807 1.56799996
		 1.71903801 0.78803807 1.60049999 1.73249996 0.78803807 1.63300002 1.76499999 0.78803807 1.64646196
		 1.79750001 0.78803807 1.63300002 1.81096196 0.78803807 1.60049999 1.80746329 0.80912554 1.55803668
		 1.76499999 0.80912554 1.54044783 1.72253668 0.80912554 1.55803668 1.70494783 0.80912554 1.60049999
		 1.72253668 0.80912554 1.64296329 1.76499999 0.80912554 1.66055214 1.80746329 0.80912554 1.64296329
		 1.82505214 0.80912554 1.60049999 1.81096196 0.83399999 1.55453801 1.76499999 0.83399999 1.53550005
		 1.71903801 0.83399999 1.55453801 1.70000005 0.83399999 1.60049999 1.71903801 0.83399999 1.64646196
		 1.76499999 0.83399999 1.66549993 1.81096196 0.83399999 1.64646196 1.82999992 0.83399999 1.60049999
		 1.80746329 0.85887444 1.55803668 1.76499999 0.85887444 1.54044783 1.72253668 0.85887444 1.55803668
		 1.70494783 0.85887444 1.60049999 1.72253668 0.85887444 1.64296329 1.76499999 0.85887444 1.66055214
		 1.80746329 0.85887444 1.64296329 1.82505214 0.85887444 1.60049999 1.79750001 0.87996191 1.56799996
		 1.76499999 0.87996191 1.55453801 1.73249996 0.87996191 1.56799996 1.71903801 0.87996191 1.60049999
		 1.73249996 0.87996191 1.63300002 1.76499999 0.87996191 1.64646196 1.79750001 0.87996191 1.63300002
		 1.81096196 0.87996191 1.60049999 1.78258884 0.89405215 1.58291113 1.76499999 0.89405215 1.57562554
		 1.74741113 0.89405215 1.58291113 1.74012554 0.89405215 1.60049999 1.74741113 0.89405215 1.61808884
		 1.76499999 0.89405215 1.62537444 1.78258884 0.89405215 1.61808884 1.78987443 0.89405215 1.60049999
		 1.76499999 0.76899999 1.60049999 1.76499999 0.89899999 1.60049999;
	setAttr -s 120 ".ed[0:119]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 0 0 8 9 0 9 10 0 10 11 0 11 12 0 12 13 0 13 14 0 14 15 0 15 8 0 16 17 0 17 18 0
		 18 19 0 19 20 0 20 21 0 21 22 0 22 23 0 23 16 0 24 25 0 25 26 0 26 27 0 27 28 0 28 29 0
		 29 30 0 30 31 0 31 24 0 32 33 0 33 34 0 34 35 0 35 36 0 36 37 0 37 38 0 38 39 0 39 32 0
		 40 41 0 41 42 0 42 43 0 43 44 0 44 45 0 45 46 0 46 47 0 47 40 0 48 49 0 49 50 0 50 51 0
		 51 52 0 52 53 0 53 54 0 54 55 0 55 48 0 0 8 0 1 9 0 2 10 0 3 11 0 4 12 0 5 13 0 6 14 0
		 7 15 0 8 16 0 9 17 0 10 18 0 11 19 0 12 20 0 13 21 0 14 22 0 15 23 0 16 24 0 17 25 0
		 18 26 0 19 27 0 20 28 0 21 29 0 22 30 0 23 31 0 24 32 0 25 33 0 26 34 0 27 35 0 28 36 0
		 29 37 0 30 38 0 31 39 0 32 40 0 33 41 0 34 42 0 35 43 0 36 44 0 37 45 0 38 46 0 39 47 0
		 40 48 0 41 49 0 42 50 0 43 51 0 44 52 0 45 53 0 46 54 0 47 55 0 56 0 0 56 1 0 56 2 0
		 56 3 0 56 4 0 56 5 0 56 6 0 56 7 0 48 57 0 49 57 0 50 57 0 51 57 0 52 57 0 53 57 0
		 54 57 0 55 57 0;
	setAttr -s 64 -ch 240 ".fc[0:63]" -type "polyFaces" 
		f 4 0 57 -9 -57
		mu 0 4 0 1 10 9
		f 4 1 58 -10 -58
		mu 0 4 1 2 11 10
		f 4 2 59 -11 -59
		mu 0 4 2 3 12 11
		f 4 3 60 -12 -60
		mu 0 4 3 4 13 12
		f 4 4 61 -13 -61
		mu 0 4 4 5 14 13
		f 4 5 62 -14 -62
		mu 0 4 5 6 15 14
		f 4 6 63 -15 -63
		mu 0 4 6 7 16 15
		f 4 7 56 -16 -64
		mu 0 4 7 8 17 16
		f 4 8 65 -17 -65
		mu 0 4 9 10 19 18
		f 4 9 66 -18 -66
		mu 0 4 10 11 20 19
		f 4 10 67 -19 -67
		mu 0 4 11 12 21 20
		f 4 11 68 -20 -68
		mu 0 4 12 13 22 21
		f 4 12 69 -21 -69
		mu 0 4 13 14 23 22
		f 4 13 70 -22 -70
		mu 0 4 14 15 24 23
		f 4 14 71 -23 -71
		mu 0 4 15 16 25 24
		f 4 15 64 -24 -72
		mu 0 4 16 17 26 25
		f 4 16 73 -25 -73
		mu 0 4 18 19 28 27
		f 4 17 74 -26 -74
		mu 0 4 19 20 29 28
		f 4 18 75 -27 -75
		mu 0 4 20 21 30 29
		f 4 19 76 -28 -76
		mu 0 4 21 22 31 30
		f 4 20 77 -29 -77
		mu 0 4 22 23 32 31
		f 4 21 78 -30 -78
		mu 0 4 23 24 33 32
		f 4 22 79 -31 -79
		mu 0 4 24 25 34 33
		f 4 23 72 -32 -80
		mu 0 4 25 26 35 34
		f 4 24 81 -33 -81
		mu 0 4 27 28 37 36
		f 4 25 82 -34 -82
		mu 0 4 28 29 38 37
		f 4 26 83 -35 -83
		mu 0 4 29 30 39 38
		f 4 27 84 -36 -84
		mu 0 4 30 31 40 39
		f 4 28 85 -37 -85
		mu 0 4 31 32 41 40
		f 4 29 86 -38 -86
		mu 0 4 32 33 42 41
		f 4 30 87 -39 -87
		mu 0 4 33 34 43 42
		f 4 31 80 -40 -88
		mu 0 4 34 35 44 43
		f 4 32 89 -41 -89
		mu 0 4 36 37 46 45
		f 4 33 90 -42 -90
		mu 0 4 37 38 47 46
		f 4 34 91 -43 -91
		mu 0 4 38 39 48 47
		f 4 35 92 -44 -92
		mu 0 4 39 40 49 48
		f 4 36 93 -45 -93
		mu 0 4 40 41 50 49
		f 4 37 94 -46 -94
		mu 0 4 41 42 51 50
		f 4 38 95 -47 -95
		mu 0 4 42 43 52 51
		f 4 39 88 -48 -96
		mu 0 4 43 44 53 52
		f 4 40 97 -49 -97
		mu 0 4 45 46 55 54
		f 4 41 98 -50 -98
		mu 0 4 46 47 56 55
		f 4 42 99 -51 -99
		mu 0 4 47 48 57 56
		f 4 43 100 -52 -100
		mu 0 4 48 49 58 57
		f 4 44 101 -53 -101
		mu 0 4 49 50 59 58
		f 4 45 102 -54 -102
		mu 0 4 50 51 60 59
		f 4 46 103 -55 -103
		mu 0 4 51 52 61 60
		f 4 47 96 -56 -104
		mu 0 4 52 53 62 61
		f 3 -1 -105 105
		mu 0 3 1 0 63
		f 3 -2 -106 106
		mu 0 3 2 1 64
		f 3 -3 -107 107
		mu 0 3 3 2 65
		f 3 -4 -108 108
		mu 0 3 4 3 66
		f 3 -5 -109 109
		mu 0 3 5 4 67
		f 3 -6 -110 110
		mu 0 3 6 5 68
		f 3 -7 -111 111
		mu 0 3 7 6 69
		f 3 -8 -112 104
		mu 0 3 8 7 70
		f 3 48 113 -113
		mu 0 3 54 55 71
		f 3 49 114 -114
		mu 0 3 55 56 72
		f 3 50 115 -115
		mu 0 3 56 57 73
		f 3 51 116 -116
		mu 0 3 57 58 74
		f 3 52 117 -117
		mu 0 3 58 59 75
		f 3 53 118 -118
		mu 0 3 59 60 76
		f 3 54 119 -119
		mu 0 3 60 61 77
		f 3 55 112 -120
		mu 0 3 61 62 78;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Traffic_Light6" -p "GrpAllTrafficLights";
	setAttr ".t" -type "double3" 20 -8.8817841970012523e-016 4 ;
	setAttr ".rp" -type "double3" 1.765 0.6 1.75 ;
	setAttr ".sp" -type "double3" 1.765 0.6 1.75 ;
createNode mesh -n "Traffic_Light6Shape" -p "Traffic_Light6";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 32 ".uvst[0].uvsp[0:31]" -type "float2" 0.33000001 0 0.66333336
		 0 0.33000001 0.125 0.66333336 0.125 0.33000001 0.25 0.66333336 0.25 0.33000001 0.5
		 0.66333336 0.5 0.33000001 0.625 0.66333336 0.625 0.33000001 0.75 0.66333336 0.75
		 0.33000001 1 0.66333336 1 1 0 1 0.125 1 0.25 0 0 0 0.125 0 0.25 0.33000001 0.125
		 0.66333336 0.125 0.66333336 0.25 0.33000001 0.25 0.33000001 0.5 0.66333336 0.5 0.66333336
		 0.625 0.33000001 0.625 1 0.125 1 0.25 0 0.125 0 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 20 ".vt[0:19]"  1.70000005 -0.049999952 1.81500006 1.82999992 -0.049999952 1.81500006
		 1.70000005 0.73000002 1.81500006 1.82999992 0.73000002 1.81500006 1.70000005 1.25 1.81500006
		 1.82999992 1.25 1.81500006 1.70000005 1.25 1.68499994 1.82999992 1.25 1.68499994
		 1.70000005 0.73000002 1.68499994 1.82999992 0.73000002 1.68499994 1.70000005 -0.049999952 1.68499994
		 1.82999992 -0.049999952 1.68499994 1.61549997 0.73000002 1.89950001 1.9145 0.73000002 1.89950001
		 1.9145 1.25 1.89950001 1.61549997 1.25 1.89950001 1.61549997 1.25 1.60049999 1.9145 1.25 1.60049999
		 1.9145 0.73000002 1.60049999 1.61549997 0.73000002 1.60049999;
	setAttr -s 36 ".ed[0:35]"  0 1 0 2 3 0 4 5 1 6 7 1 8 9 0 10 11 0 0 2 0
		 1 3 0 4 6 1 5 7 1 8 10 0 9 11 0 10 0 0 11 1 0 9 3 0 8 2 0 2 12 1 3 13 1 12 13 0 5 14 1
		 13 14 0 4 15 1 15 14 0 12 15 0 6 16 1 7 17 1 16 17 0 9 18 1 17 18 0 8 19 1 19 18 0
		 16 19 0 18 13 0 14 17 0 19 12 0 15 16 0;
	setAttr -s 18 -ch 72 ".fc[0:17]" -type "polyFaces" 
		f 4 0 7 -2 -7
		mu 0 4 0 1 3 2
		f 4 18 20 -23 -24
		mu 0 4 20 21 22 23
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 26 28 -31 -32
		mu 0 4 24 25 26 27
		f 4 4 11 -6 -11
		mu 0 4 8 9 11 10
		f 4 5 13 -1 -13
		mu 0 4 10 11 13 12
		f 4 -14 -12 14 -8
		mu 0 4 1 14 15 3
		f 4 -33 -29 -34 -21
		mu 0 4 21 28 29 22
		f 4 12 6 -16 10
		mu 0 4 17 0 2 18
		f 4 34 23 35 31
		mu 0 4 30 20 23 31
		f 4 1 17 -19 -17
		mu 0 4 2 3 21 20
		f 4 -3 21 22 -20
		mu 0 4 5 4 23 22
		f 4 3 25 -27 -25
		mu 0 4 6 7 25 24
		f 4 -5 29 30 -28
		mu 0 4 9 8 27 26
		f 4 -15 27 32 -18
		mu 0 4 3 15 28 21
		f 4 -10 19 33 -26
		mu 0 4 16 5 22 29
		f 4 15 16 -35 -30
		mu 0 4 18 2 20 30
		f 4 8 24 -36 -22
		mu 0 4 4 19 31 23;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "RedLight_Traffic_Light6" -p "Traffic_Light6";
	setAttr ".rp" -type "double3" 1.765 1.146 1.6005 ;
	setAttr ".sp" -type "double3" 1.765 1.146 1.6005 ;
createNode mesh -n "RedLight_Traffic_Light6Shape" -p "RedLight_Traffic_Light6";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 79 ".uvst[0].uvsp[0:78]" -type "float2" 0 0.125 0.125 0.125
		 0.25 0.125 0.375 0.125 0.5 0.125 0.625 0.125 0.75 0.125 0.875 0.125 1 0.125 0 0.25
		 0.125 0.25 0.25 0.25 0.375 0.25 0.5 0.25 0.625 0.25 0.75 0.25 0.875 0.25 1 0.25 0
		 0.375 0.125 0.375 0.25 0.375 0.375 0.375 0.5 0.375 0.625 0.375 0.75 0.375 0.875 0.375
		 1 0.375 0 0.5 0.125 0.5 0.25 0.5 0.375 0.5 0.5 0.5 0.625 0.5 0.75 0.5 0.875 0.5 1
		 0.5 0 0.625 0.125 0.625 0.25 0.625 0.375 0.625 0.5 0.625 0.625 0.625 0.75 0.625 0.875
		 0.625 1 0.625 0 0.75 0.125 0.75 0.25 0.75 0.375 0.75 0.5 0.75 0.625 0.75 0.75 0.75
		 0.875 0.75 1 0.75 0 0.875 0.125 0.875 0.25 0.875 0.375 0.875 0.5 0.875 0.625 0.875
		 0.75 0.875 0.875 0.875 1 0.875 0.0625 0 0.1875 0 0.3125 0 0.4375 0 0.5625 0 0.6875
		 0 0.8125 0 0.9375 0 0.0625 1 0.1875 1 0.3125 1 0.4375 1 0.5625 1 0.6875 1 0.8125
		 1 0.9375 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 58 ".vt[0:57]"  1.78258884 1.085947871 1.58291113 1.76499999 1.085947871 1.57562554
		 1.74741113 1.085947871 1.58291113 1.74012554 1.085947871 1.60049999 1.74741113 1.085947871 1.61808884
		 1.76499999 1.085947871 1.62537444 1.78258884 1.085947871 1.61808884 1.78987443 1.085947871 1.60049999
		 1.79750001 1.10003805 1.56799996 1.76499999 1.10003805 1.55453801 1.73249996 1.10003805 1.56799996
		 1.71903801 1.10003805 1.60049999 1.73249996 1.10003805 1.63300002 1.76499999 1.10003805 1.64646196
		 1.79750001 1.10003805 1.63300002 1.81096196 1.10003805 1.60049999 1.80746329 1.12112558 1.55803668
		 1.76499999 1.12112558 1.54044783 1.72253668 1.12112558 1.55803668 1.70494783 1.12112558 1.60049999
		 1.72253668 1.12112558 1.64296329 1.76499999 1.12112558 1.66055214 1.80746329 1.12112558 1.64296329
		 1.82505214 1.12112558 1.60049999 1.81096196 1.14600003 1.55453801 1.76499999 1.14600003 1.53550005
		 1.71903801 1.14600003 1.55453801 1.70000005 1.14600003 1.60049999 1.71903801 1.14600003 1.64646196
		 1.76499999 1.14600003 1.66549993 1.81096196 1.14600003 1.64646196 1.82999992 1.14600003 1.60049999
		 1.80746329 1.17087448 1.55803668 1.76499999 1.17087448 1.54044783 1.72253668 1.17087448 1.55803668
		 1.70494783 1.17087448 1.60049999 1.72253668 1.17087448 1.64296329 1.76499999 1.17087448 1.66055214
		 1.80746329 1.17087448 1.64296329 1.82505214 1.17087448 1.60049999 1.79750001 1.191962 1.56799996
		 1.76499999 1.191962 1.55453801 1.73249996 1.191962 1.56799996 1.71903801 1.191962 1.60049999
		 1.73249996 1.191962 1.63300002 1.76499999 1.191962 1.64646196 1.79750001 1.191962 1.63300002
		 1.81096196 1.191962 1.60049999 1.78258884 1.20605218 1.58291113 1.76499999 1.20605218 1.57562554
		 1.74741113 1.20605218 1.58291113 1.74012554 1.20605218 1.60049999 1.74741113 1.20605218 1.61808884
		 1.76499999 1.20605218 1.62537444 1.78258884 1.20605218 1.61808884 1.78987443 1.20605218 1.60049999
		 1.76499999 1.08100009 1.60049999 1.76499999 1.21099997 1.60049999;
	setAttr -s 120 ".ed[0:119]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 0 0 8 9 0 9 10 0 10 11 0 11 12 0 12 13 0 13 14 0 14 15 0 15 8 0 16 17 0 17 18 0
		 18 19 0 19 20 0 20 21 0 21 22 0 22 23 0 23 16 0 24 25 0 25 26 0 26 27 0 27 28 0 28 29 0
		 29 30 0 30 31 0 31 24 0 32 33 0 33 34 0 34 35 0 35 36 0 36 37 0 37 38 0 38 39 0 39 32 0
		 40 41 0 41 42 0 42 43 0 43 44 0 44 45 0 45 46 0 46 47 0 47 40 0 48 49 0 49 50 0 50 51 0
		 51 52 0 52 53 0 53 54 0 54 55 0 55 48 0 0 8 0 1 9 0 2 10 0 3 11 0 4 12 0 5 13 0 6 14 0
		 7 15 0 8 16 0 9 17 0 10 18 0 11 19 0 12 20 0 13 21 0 14 22 0 15 23 0 16 24 0 17 25 0
		 18 26 0 19 27 0 20 28 0 21 29 0 22 30 0 23 31 0 24 32 0 25 33 0 26 34 0 27 35 0 28 36 0
		 29 37 0 30 38 0 31 39 0 32 40 0 33 41 0 34 42 0 35 43 0 36 44 0 37 45 0 38 46 0 39 47 0
		 40 48 0 41 49 0 42 50 0 43 51 0 44 52 0 45 53 0 46 54 0 47 55 0 56 0 0 56 1 0 56 2 0
		 56 3 0 56 4 0 56 5 0 56 6 0 56 7 0 48 57 0 49 57 0 50 57 0 51 57 0 52 57 0 53 57 0
		 54 57 0 55 57 0;
	setAttr -s 64 -ch 240 ".fc[0:63]" -type "polyFaces" 
		f 4 0 57 -9 -57
		mu 0 4 0 1 10 9
		f 4 1 58 -10 -58
		mu 0 4 1 2 11 10
		f 4 2 59 -11 -59
		mu 0 4 2 3 12 11
		f 4 3 60 -12 -60
		mu 0 4 3 4 13 12
		f 4 4 61 -13 -61
		mu 0 4 4 5 14 13
		f 4 5 62 -14 -62
		mu 0 4 5 6 15 14
		f 4 6 63 -15 -63
		mu 0 4 6 7 16 15
		f 4 7 56 -16 -64
		mu 0 4 7 8 17 16
		f 4 8 65 -17 -65
		mu 0 4 9 10 19 18
		f 4 9 66 -18 -66
		mu 0 4 10 11 20 19
		f 4 10 67 -19 -67
		mu 0 4 11 12 21 20
		f 4 11 68 -20 -68
		mu 0 4 12 13 22 21
		f 4 12 69 -21 -69
		mu 0 4 13 14 23 22
		f 4 13 70 -22 -70
		mu 0 4 14 15 24 23
		f 4 14 71 -23 -71
		mu 0 4 15 16 25 24
		f 4 15 64 -24 -72
		mu 0 4 16 17 26 25
		f 4 16 73 -25 -73
		mu 0 4 18 19 28 27
		f 4 17 74 -26 -74
		mu 0 4 19 20 29 28
		f 4 18 75 -27 -75
		mu 0 4 20 21 30 29
		f 4 19 76 -28 -76
		mu 0 4 21 22 31 30
		f 4 20 77 -29 -77
		mu 0 4 22 23 32 31
		f 4 21 78 -30 -78
		mu 0 4 23 24 33 32
		f 4 22 79 -31 -79
		mu 0 4 24 25 34 33
		f 4 23 72 -32 -80
		mu 0 4 25 26 35 34
		f 4 24 81 -33 -81
		mu 0 4 27 28 37 36
		f 4 25 82 -34 -82
		mu 0 4 28 29 38 37
		f 4 26 83 -35 -83
		mu 0 4 29 30 39 38
		f 4 27 84 -36 -84
		mu 0 4 30 31 40 39
		f 4 28 85 -37 -85
		mu 0 4 31 32 41 40
		f 4 29 86 -38 -86
		mu 0 4 32 33 42 41
		f 4 30 87 -39 -87
		mu 0 4 33 34 43 42
		f 4 31 80 -40 -88
		mu 0 4 34 35 44 43
		f 4 32 89 -41 -89
		mu 0 4 36 37 46 45
		f 4 33 90 -42 -90
		mu 0 4 37 38 47 46
		f 4 34 91 -43 -91
		mu 0 4 38 39 48 47
		f 4 35 92 -44 -92
		mu 0 4 39 40 49 48
		f 4 36 93 -45 -93
		mu 0 4 40 41 50 49
		f 4 37 94 -46 -94
		mu 0 4 41 42 51 50
		f 4 38 95 -47 -95
		mu 0 4 42 43 52 51
		f 4 39 88 -48 -96
		mu 0 4 43 44 53 52
		f 4 40 97 -49 -97
		mu 0 4 45 46 55 54
		f 4 41 98 -50 -98
		mu 0 4 46 47 56 55
		f 4 42 99 -51 -99
		mu 0 4 47 48 57 56
		f 4 43 100 -52 -100
		mu 0 4 48 49 58 57
		f 4 44 101 -53 -101
		mu 0 4 49 50 59 58
		f 4 45 102 -54 -102
		mu 0 4 50 51 60 59
		f 4 46 103 -55 -103
		mu 0 4 51 52 61 60
		f 4 47 96 -56 -104
		mu 0 4 52 53 62 61
		f 3 -1 -105 105
		mu 0 3 1 0 63
		f 3 -2 -106 106
		mu 0 3 2 1 64
		f 3 -3 -107 107
		mu 0 3 3 2 65
		f 3 -4 -108 108
		mu 0 3 4 3 66
		f 3 -5 -109 109
		mu 0 3 5 4 67
		f 3 -6 -110 110
		mu 0 3 6 5 68
		f 3 -7 -111 111
		mu 0 3 7 6 69
		f 3 -8 -112 104
		mu 0 3 8 7 70
		f 3 48 113 -113
		mu 0 3 54 55 71
		f 3 49 114 -114
		mu 0 3 55 56 72
		f 3 50 115 -115
		mu 0 3 56 57 73
		f 3 51 116 -116
		mu 0 3 57 58 74
		f 3 52 117 -117
		mu 0 3 58 59 75
		f 3 53 118 -118
		mu 0 3 59 60 76
		f 3 54 119 -119
		mu 0 3 60 61 77
		f 3 55 112 -120
		mu 0 3 61 62 78;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "OrangeLight_Traffic_Light6" -p "Traffic_Light6";
	setAttr ".rp" -type "double3" 1.765 0.99 1.6005 ;
	setAttr ".sp" -type "double3" 1.765 0.99 1.6005 ;
createNode mesh -n "OrangeLight_Traffic_Light6Shape" -p "OrangeLight_Traffic_Light6";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 79 ".uvst[0].uvsp[0:78]" -type "float2" 0 0.125 0.125 0.125
		 0.25 0.125 0.375 0.125 0.5 0.125 0.625 0.125 0.75 0.125 0.875 0.125 1 0.125 0 0.25
		 0.125 0.25 0.25 0.25 0.375 0.25 0.5 0.25 0.625 0.25 0.75 0.25 0.875 0.25 1 0.25 0
		 0.375 0.125 0.375 0.25 0.375 0.375 0.375 0.5 0.375 0.625 0.375 0.75 0.375 0.875 0.375
		 1 0.375 0 0.5 0.125 0.5 0.25 0.5 0.375 0.5 0.5 0.5 0.625 0.5 0.75 0.5 0.875 0.5 1
		 0.5 0 0.625 0.125 0.625 0.25 0.625 0.375 0.625 0.5 0.625 0.625 0.625 0.75 0.625 0.875
		 0.625 1 0.625 0 0.75 0.125 0.75 0.25 0.75 0.375 0.75 0.5 0.75 0.625 0.75 0.75 0.75
		 0.875 0.75 1 0.75 0 0.875 0.125 0.875 0.25 0.875 0.375 0.875 0.5 0.875 0.625 0.875
		 0.75 0.875 0.875 0.875 1 0.875 0.0625 0 0.1875 0 0.3125 0 0.4375 0 0.5625 0 0.6875
		 0 0.8125 0 0.9375 0 0.0625 1 0.1875 1 0.3125 1 0.4375 1 0.5625 1 0.6875 1 0.8125
		 1 0.9375 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 58 ".vt[0:57]"  1.78258884 0.92994785 1.58291113 1.76499999 0.92994785 1.57562554
		 1.74741113 0.92994785 1.58291113 1.74012554 0.92994785 1.60049999 1.74741113 0.92994785 1.61808884
		 1.76499999 0.92994785 1.62537444 1.78258884 0.92994785 1.61808884 1.78987443 0.92994785 1.60049999
		 1.79750001 0.94403809 1.56799996 1.76499999 0.94403809 1.55453801 1.73249996 0.94403809 1.56799996
		 1.71903801 0.94403809 1.60049999 1.73249996 0.94403809 1.63300002 1.76499999 0.94403809 1.64646196
		 1.79750001 0.94403809 1.63300002 1.81096196 0.94403809 1.60049999 1.80746329 0.96512556 1.55803668
		 1.76499999 0.96512556 1.54044783 1.72253668 0.96512556 1.55803668 1.70494783 0.96512556 1.60049999
		 1.72253668 0.96512556 1.64296329 1.76499999 0.96512556 1.66055214 1.80746329 0.96512556 1.64296329
		 1.82505214 0.96512556 1.60049999 1.81096196 0.99000001 1.55453801 1.76499999 0.99000001 1.53550005
		 1.71903801 0.99000001 1.55453801 1.70000005 0.99000001 1.60049999 1.71903801 0.99000001 1.64646196
		 1.76499999 0.99000001 1.66549993 1.81096196 0.99000001 1.64646196 1.82999992 0.99000001 1.60049999
		 1.80746329 1.014874458 1.55803668 1.76499999 1.014874458 1.54044783 1.72253668 1.014874458 1.55803668
		 1.70494783 1.014874458 1.60049999 1.72253668 1.014874458 1.64296329 1.76499999 1.014874458 1.66055214
		 1.80746329 1.014874458 1.64296329 1.82505214 1.014874458 1.60049999 1.79750001 1.035961986 1.56799996
		 1.76499999 1.035961986 1.55453801 1.73249996 1.035961986 1.56799996 1.71903801 1.035961986 1.60049999
		 1.73249996 1.035961986 1.63300002 1.76499999 1.035961986 1.64646196 1.79750001 1.035961986 1.63300002
		 1.81096196 1.035961986 1.60049999 1.78258884 1.050052166 1.58291113 1.76499999 1.050052166 1.57562554
		 1.74741113 1.050052166 1.58291113 1.74012554 1.050052166 1.60049999 1.74741113 1.050052166 1.61808884
		 1.76499999 1.050052166 1.62537444 1.78258884 1.050052166 1.61808884 1.78987443 1.050052166 1.60049999
		 1.76499999 0.92500001 1.60049999 1.76499999 1.055000067 1.60049999;
	setAttr -s 120 ".ed[0:119]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 0 0 8 9 0 9 10 0 10 11 0 11 12 0 12 13 0 13 14 0 14 15 0 15 8 0 16 17 0 17 18 0
		 18 19 0 19 20 0 20 21 0 21 22 0 22 23 0 23 16 0 24 25 0 25 26 0 26 27 0 27 28 0 28 29 0
		 29 30 0 30 31 0 31 24 0 32 33 0 33 34 0 34 35 0 35 36 0 36 37 0 37 38 0 38 39 0 39 32 0
		 40 41 0 41 42 0 42 43 0 43 44 0 44 45 0 45 46 0 46 47 0 47 40 0 48 49 0 49 50 0 50 51 0
		 51 52 0 52 53 0 53 54 0 54 55 0 55 48 0 0 8 0 1 9 0 2 10 0 3 11 0 4 12 0 5 13 0 6 14 0
		 7 15 0 8 16 0 9 17 0 10 18 0 11 19 0 12 20 0 13 21 0 14 22 0 15 23 0 16 24 0 17 25 0
		 18 26 0 19 27 0 20 28 0 21 29 0 22 30 0 23 31 0 24 32 0 25 33 0 26 34 0 27 35 0 28 36 0
		 29 37 0 30 38 0 31 39 0 32 40 0 33 41 0 34 42 0 35 43 0 36 44 0 37 45 0 38 46 0 39 47 0
		 40 48 0 41 49 0 42 50 0 43 51 0 44 52 0 45 53 0 46 54 0 47 55 0 56 0 0 56 1 0 56 2 0
		 56 3 0 56 4 0 56 5 0 56 6 0 56 7 0 48 57 0 49 57 0 50 57 0 51 57 0 52 57 0 53 57 0
		 54 57 0 55 57 0;
	setAttr -s 64 -ch 240 ".fc[0:63]" -type "polyFaces" 
		f 4 0 57 -9 -57
		mu 0 4 0 1 10 9
		f 4 1 58 -10 -58
		mu 0 4 1 2 11 10
		f 4 2 59 -11 -59
		mu 0 4 2 3 12 11
		f 4 3 60 -12 -60
		mu 0 4 3 4 13 12
		f 4 4 61 -13 -61
		mu 0 4 4 5 14 13
		f 4 5 62 -14 -62
		mu 0 4 5 6 15 14
		f 4 6 63 -15 -63
		mu 0 4 6 7 16 15
		f 4 7 56 -16 -64
		mu 0 4 7 8 17 16
		f 4 8 65 -17 -65
		mu 0 4 9 10 19 18
		f 4 9 66 -18 -66
		mu 0 4 10 11 20 19
		f 4 10 67 -19 -67
		mu 0 4 11 12 21 20
		f 4 11 68 -20 -68
		mu 0 4 12 13 22 21
		f 4 12 69 -21 -69
		mu 0 4 13 14 23 22
		f 4 13 70 -22 -70
		mu 0 4 14 15 24 23
		f 4 14 71 -23 -71
		mu 0 4 15 16 25 24
		f 4 15 64 -24 -72
		mu 0 4 16 17 26 25
		f 4 16 73 -25 -73
		mu 0 4 18 19 28 27
		f 4 17 74 -26 -74
		mu 0 4 19 20 29 28
		f 4 18 75 -27 -75
		mu 0 4 20 21 30 29
		f 4 19 76 -28 -76
		mu 0 4 21 22 31 30
		f 4 20 77 -29 -77
		mu 0 4 22 23 32 31
		f 4 21 78 -30 -78
		mu 0 4 23 24 33 32
		f 4 22 79 -31 -79
		mu 0 4 24 25 34 33
		f 4 23 72 -32 -80
		mu 0 4 25 26 35 34
		f 4 24 81 -33 -81
		mu 0 4 27 28 37 36
		f 4 25 82 -34 -82
		mu 0 4 28 29 38 37
		f 4 26 83 -35 -83
		mu 0 4 29 30 39 38
		f 4 27 84 -36 -84
		mu 0 4 30 31 40 39
		f 4 28 85 -37 -85
		mu 0 4 31 32 41 40
		f 4 29 86 -38 -86
		mu 0 4 32 33 42 41
		f 4 30 87 -39 -87
		mu 0 4 33 34 43 42
		f 4 31 80 -40 -88
		mu 0 4 34 35 44 43
		f 4 32 89 -41 -89
		mu 0 4 36 37 46 45
		f 4 33 90 -42 -90
		mu 0 4 37 38 47 46
		f 4 34 91 -43 -91
		mu 0 4 38 39 48 47
		f 4 35 92 -44 -92
		mu 0 4 39 40 49 48
		f 4 36 93 -45 -93
		mu 0 4 40 41 50 49
		f 4 37 94 -46 -94
		mu 0 4 41 42 51 50
		f 4 38 95 -47 -95
		mu 0 4 42 43 52 51
		f 4 39 88 -48 -96
		mu 0 4 43 44 53 52
		f 4 40 97 -49 -97
		mu 0 4 45 46 55 54
		f 4 41 98 -50 -98
		mu 0 4 46 47 56 55
		f 4 42 99 -51 -99
		mu 0 4 47 48 57 56
		f 4 43 100 -52 -100
		mu 0 4 48 49 58 57
		f 4 44 101 -53 -101
		mu 0 4 49 50 59 58
		f 4 45 102 -54 -102
		mu 0 4 50 51 60 59
		f 4 46 103 -55 -103
		mu 0 4 51 52 61 60
		f 4 47 96 -56 -104
		mu 0 4 52 53 62 61
		f 3 -1 -105 105
		mu 0 3 1 0 63
		f 3 -2 -106 106
		mu 0 3 2 1 64
		f 3 -3 -107 107
		mu 0 3 3 2 65
		f 3 -4 -108 108
		mu 0 3 4 3 66
		f 3 -5 -109 109
		mu 0 3 5 4 67
		f 3 -6 -110 110
		mu 0 3 6 5 68
		f 3 -7 -111 111
		mu 0 3 7 6 69
		f 3 -8 -112 104
		mu 0 3 8 7 70
		f 3 48 113 -113
		mu 0 3 54 55 71
		f 3 49 114 -114
		mu 0 3 55 56 72
		f 3 50 115 -115
		mu 0 3 56 57 73
		f 3 51 116 -116
		mu 0 3 57 58 74
		f 3 52 117 -117
		mu 0 3 58 59 75
		f 3 53 118 -118
		mu 0 3 59 60 76
		f 3 54 119 -119
		mu 0 3 60 61 77
		f 3 55 112 -120
		mu 0 3 61 62 78;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "GreenLight_Traffic_Light6" -p "Traffic_Light6";
	setAttr ".rp" -type "double3" 1.765 0.83400000000000007 1.6005 ;
	setAttr ".sp" -type "double3" 1.765 0.83400000000000007 1.6005 ;
createNode mesh -n "GreenLight_Traffic_Light6Shape" -p "GreenLight_Traffic_Light6";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 79 ".uvst[0].uvsp[0:78]" -type "float2" 0 0.125 0.125 0.125
		 0.25 0.125 0.375 0.125 0.5 0.125 0.625 0.125 0.75 0.125 0.875 0.125 1 0.125 0 0.25
		 0.125 0.25 0.25 0.25 0.375 0.25 0.5 0.25 0.625 0.25 0.75 0.25 0.875 0.25 1 0.25 0
		 0.375 0.125 0.375 0.25 0.375 0.375 0.375 0.5 0.375 0.625 0.375 0.75 0.375 0.875 0.375
		 1 0.375 0 0.5 0.125 0.5 0.25 0.5 0.375 0.5 0.5 0.5 0.625 0.5 0.75 0.5 0.875 0.5 1
		 0.5 0 0.625 0.125 0.625 0.25 0.625 0.375 0.625 0.5 0.625 0.625 0.625 0.75 0.625 0.875
		 0.625 1 0.625 0 0.75 0.125 0.75 0.25 0.75 0.375 0.75 0.5 0.75 0.625 0.75 0.75 0.75
		 0.875 0.75 1 0.75 0 0.875 0.125 0.875 0.25 0.875 0.375 0.875 0.5 0.875 0.625 0.875
		 0.75 0.875 0.875 0.875 1 0.875 0.0625 0 0.1875 0 0.3125 0 0.4375 0 0.5625 0 0.6875
		 0 0.8125 0 0.9375 0 0.0625 1 0.1875 1 0.3125 1 0.4375 1 0.5625 1 0.6875 1 0.8125
		 1 0.9375 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 58 ".vt[0:57]"  1.78258884 0.77394783 1.58291113 1.76499999 0.77394783 1.57562554
		 1.74741113 0.77394783 1.58291113 1.74012554 0.77394783 1.60049999 1.74741113 0.77394783 1.61808884
		 1.76499999 0.77394783 1.62537444 1.78258884 0.77394783 1.61808884 1.78987443 0.77394783 1.60049999
		 1.79750001 0.78803807 1.56799996 1.76499999 0.78803807 1.55453801 1.73249996 0.78803807 1.56799996
		 1.71903801 0.78803807 1.60049999 1.73249996 0.78803807 1.63300002 1.76499999 0.78803807 1.64646196
		 1.79750001 0.78803807 1.63300002 1.81096196 0.78803807 1.60049999 1.80746329 0.80912554 1.55803668
		 1.76499999 0.80912554 1.54044783 1.72253668 0.80912554 1.55803668 1.70494783 0.80912554 1.60049999
		 1.72253668 0.80912554 1.64296329 1.76499999 0.80912554 1.66055214 1.80746329 0.80912554 1.64296329
		 1.82505214 0.80912554 1.60049999 1.81096196 0.83399999 1.55453801 1.76499999 0.83399999 1.53550005
		 1.71903801 0.83399999 1.55453801 1.70000005 0.83399999 1.60049999 1.71903801 0.83399999 1.64646196
		 1.76499999 0.83399999 1.66549993 1.81096196 0.83399999 1.64646196 1.82999992 0.83399999 1.60049999
		 1.80746329 0.85887444 1.55803668 1.76499999 0.85887444 1.54044783 1.72253668 0.85887444 1.55803668
		 1.70494783 0.85887444 1.60049999 1.72253668 0.85887444 1.64296329 1.76499999 0.85887444 1.66055214
		 1.80746329 0.85887444 1.64296329 1.82505214 0.85887444 1.60049999 1.79750001 0.87996191 1.56799996
		 1.76499999 0.87996191 1.55453801 1.73249996 0.87996191 1.56799996 1.71903801 0.87996191 1.60049999
		 1.73249996 0.87996191 1.63300002 1.76499999 0.87996191 1.64646196 1.79750001 0.87996191 1.63300002
		 1.81096196 0.87996191 1.60049999 1.78258884 0.89405215 1.58291113 1.76499999 0.89405215 1.57562554
		 1.74741113 0.89405215 1.58291113 1.74012554 0.89405215 1.60049999 1.74741113 0.89405215 1.61808884
		 1.76499999 0.89405215 1.62537444 1.78258884 0.89405215 1.61808884 1.78987443 0.89405215 1.60049999
		 1.76499999 0.76899999 1.60049999 1.76499999 0.89899999 1.60049999;
	setAttr -s 120 ".ed[0:119]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 0 0 8 9 0 9 10 0 10 11 0 11 12 0 12 13 0 13 14 0 14 15 0 15 8 0 16 17 0 17 18 0
		 18 19 0 19 20 0 20 21 0 21 22 0 22 23 0 23 16 0 24 25 0 25 26 0 26 27 0 27 28 0 28 29 0
		 29 30 0 30 31 0 31 24 0 32 33 0 33 34 0 34 35 0 35 36 0 36 37 0 37 38 0 38 39 0 39 32 0
		 40 41 0 41 42 0 42 43 0 43 44 0 44 45 0 45 46 0 46 47 0 47 40 0 48 49 0 49 50 0 50 51 0
		 51 52 0 52 53 0 53 54 0 54 55 0 55 48 0 0 8 0 1 9 0 2 10 0 3 11 0 4 12 0 5 13 0 6 14 0
		 7 15 0 8 16 0 9 17 0 10 18 0 11 19 0 12 20 0 13 21 0 14 22 0 15 23 0 16 24 0 17 25 0
		 18 26 0 19 27 0 20 28 0 21 29 0 22 30 0 23 31 0 24 32 0 25 33 0 26 34 0 27 35 0 28 36 0
		 29 37 0 30 38 0 31 39 0 32 40 0 33 41 0 34 42 0 35 43 0 36 44 0 37 45 0 38 46 0 39 47 0
		 40 48 0 41 49 0 42 50 0 43 51 0 44 52 0 45 53 0 46 54 0 47 55 0 56 0 0 56 1 0 56 2 0
		 56 3 0 56 4 0 56 5 0 56 6 0 56 7 0 48 57 0 49 57 0 50 57 0 51 57 0 52 57 0 53 57 0
		 54 57 0 55 57 0;
	setAttr -s 64 -ch 240 ".fc[0:63]" -type "polyFaces" 
		f 4 0 57 -9 -57
		mu 0 4 0 1 10 9
		f 4 1 58 -10 -58
		mu 0 4 1 2 11 10
		f 4 2 59 -11 -59
		mu 0 4 2 3 12 11
		f 4 3 60 -12 -60
		mu 0 4 3 4 13 12
		f 4 4 61 -13 -61
		mu 0 4 4 5 14 13
		f 4 5 62 -14 -62
		mu 0 4 5 6 15 14
		f 4 6 63 -15 -63
		mu 0 4 6 7 16 15
		f 4 7 56 -16 -64
		mu 0 4 7 8 17 16
		f 4 8 65 -17 -65
		mu 0 4 9 10 19 18
		f 4 9 66 -18 -66
		mu 0 4 10 11 20 19
		f 4 10 67 -19 -67
		mu 0 4 11 12 21 20
		f 4 11 68 -20 -68
		mu 0 4 12 13 22 21
		f 4 12 69 -21 -69
		mu 0 4 13 14 23 22
		f 4 13 70 -22 -70
		mu 0 4 14 15 24 23
		f 4 14 71 -23 -71
		mu 0 4 15 16 25 24
		f 4 15 64 -24 -72
		mu 0 4 16 17 26 25
		f 4 16 73 -25 -73
		mu 0 4 18 19 28 27
		f 4 17 74 -26 -74
		mu 0 4 19 20 29 28
		f 4 18 75 -27 -75
		mu 0 4 20 21 30 29
		f 4 19 76 -28 -76
		mu 0 4 21 22 31 30
		f 4 20 77 -29 -77
		mu 0 4 22 23 32 31
		f 4 21 78 -30 -78
		mu 0 4 23 24 33 32
		f 4 22 79 -31 -79
		mu 0 4 24 25 34 33
		f 4 23 72 -32 -80
		mu 0 4 25 26 35 34
		f 4 24 81 -33 -81
		mu 0 4 27 28 37 36
		f 4 25 82 -34 -82
		mu 0 4 28 29 38 37
		f 4 26 83 -35 -83
		mu 0 4 29 30 39 38
		f 4 27 84 -36 -84
		mu 0 4 30 31 40 39
		f 4 28 85 -37 -85
		mu 0 4 31 32 41 40
		f 4 29 86 -38 -86
		mu 0 4 32 33 42 41
		f 4 30 87 -39 -87
		mu 0 4 33 34 43 42
		f 4 31 80 -40 -88
		mu 0 4 34 35 44 43
		f 4 32 89 -41 -89
		mu 0 4 36 37 46 45
		f 4 33 90 -42 -90
		mu 0 4 37 38 47 46
		f 4 34 91 -43 -91
		mu 0 4 38 39 48 47
		f 4 35 92 -44 -92
		mu 0 4 39 40 49 48
		f 4 36 93 -45 -93
		mu 0 4 40 41 50 49
		f 4 37 94 -46 -94
		mu 0 4 41 42 51 50
		f 4 38 95 -47 -95
		mu 0 4 42 43 52 51
		f 4 39 88 -48 -96
		mu 0 4 43 44 53 52
		f 4 40 97 -49 -97
		mu 0 4 45 46 55 54
		f 4 41 98 -50 -98
		mu 0 4 46 47 56 55
		f 4 42 99 -51 -99
		mu 0 4 47 48 57 56
		f 4 43 100 -52 -100
		mu 0 4 48 49 58 57
		f 4 44 101 -53 -101
		mu 0 4 49 50 59 58
		f 4 45 102 -54 -102
		mu 0 4 50 51 60 59
		f 4 46 103 -55 -103
		mu 0 4 51 52 61 60
		f 4 47 96 -56 -104
		mu 0 4 52 53 62 61
		f 3 -1 -105 105
		mu 0 3 1 0 63
		f 3 -2 -106 106
		mu 0 3 2 1 64
		f 3 -3 -107 107
		mu 0 3 3 2 65
		f 3 -4 -108 108
		mu 0 3 4 3 66
		f 3 -5 -109 109
		mu 0 3 5 4 67
		f 3 -6 -110 110
		mu 0 3 6 5 68
		f 3 -7 -111 111
		mu 0 3 7 6 69
		f 3 -8 -112 104
		mu 0 3 8 7 70
		f 3 48 113 -113
		mu 0 3 54 55 71
		f 3 49 114 -114
		mu 0 3 55 56 72
		f 3 50 115 -115
		mu 0 3 56 57 73
		f 3 51 116 -116
		mu 0 3 57 58 74
		f 3 52 117 -117
		mu 0 3 58 59 75
		f 3 53 118 -118
		mu 0 3 59 60 76
		f 3 54 119 -119
		mu 0 3 60 61 77
		f 3 55 112 -120
		mu 0 3 61 62 78;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Traffic_Light10" -p "GrpAllTrafficLights";
	setAttr ".t" -type "double3" -4.0000000000000009 4.4408920985006262e-015 -23.5 ;
	setAttr ".r" -type "double3" 0 90 0 ;
	setAttr ".rp" -type "double3" 1.765 0.6 1.75 ;
	setAttr ".sp" -type "double3" 1.765 0.6 1.75 ;
createNode mesh -n "Traffic_Light10Shape" -p "Traffic_Light10";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 32 ".uvst[0].uvsp[0:31]" -type "float2" 0.33000001 0 0.66333336
		 0 0.33000001 0.125 0.66333336 0.125 0.33000001 0.25 0.66333336 0.25 0.33000001 0.5
		 0.66333336 0.5 0.33000001 0.625 0.66333336 0.625 0.33000001 0.75 0.66333336 0.75
		 0.33000001 1 0.66333336 1 1 0 1 0.125 1 0.25 0 0 0 0.125 0 0.25 0.33000001 0.125
		 0.66333336 0.125 0.66333336 0.25 0.33000001 0.25 0.33000001 0.5 0.66333336 0.5 0.66333336
		 0.625 0.33000001 0.625 1 0.125 1 0.25 0 0.125 0 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 20 ".vt[0:19]"  1.70000005 -0.049999952 1.81500006 1.82999992 -0.049999952 1.81500006
		 1.70000005 0.73000002 1.81500006 1.82999992 0.73000002 1.81500006 1.70000005 1.25 1.81500006
		 1.82999992 1.25 1.81500006 1.70000005 1.25 1.68499994 1.82999992 1.25 1.68499994
		 1.70000005 0.73000002 1.68499994 1.82999992 0.73000002 1.68499994 1.70000005 -0.049999952 1.68499994
		 1.82999992 -0.049999952 1.68499994 1.61549997 0.73000002 1.89950001 1.9145 0.73000002 1.89950001
		 1.9145 1.25 1.89950001 1.61549997 1.25 1.89950001 1.61549997 1.25 1.60049999 1.9145 1.25 1.60049999
		 1.9145 0.73000002 1.60049999 1.61549997 0.73000002 1.60049999;
	setAttr -s 36 ".ed[0:35]"  0 1 0 2 3 0 4 5 1 6 7 1 8 9 0 10 11 0 0 2 0
		 1 3 0 4 6 1 5 7 1 8 10 0 9 11 0 10 0 0 11 1 0 9 3 0 8 2 0 2 12 1 3 13 1 12 13 0 5 14 1
		 13 14 0 4 15 1 15 14 0 12 15 0 6 16 1 7 17 1 16 17 0 9 18 1 17 18 0 8 19 1 19 18 0
		 16 19 0 18 13 0 14 17 0 19 12 0 15 16 0;
	setAttr -s 18 -ch 72 ".fc[0:17]" -type "polyFaces" 
		f 4 0 7 -2 -7
		mu 0 4 0 1 3 2
		f 4 18 20 -23 -24
		mu 0 4 20 21 22 23
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 26 28 -31 -32
		mu 0 4 24 25 26 27
		f 4 4 11 -6 -11
		mu 0 4 8 9 11 10
		f 4 5 13 -1 -13
		mu 0 4 10 11 13 12
		f 4 -14 -12 14 -8
		mu 0 4 1 14 15 3
		f 4 -33 -29 -34 -21
		mu 0 4 21 28 29 22
		f 4 12 6 -16 10
		mu 0 4 17 0 2 18
		f 4 34 23 35 31
		mu 0 4 30 20 23 31
		f 4 1 17 -19 -17
		mu 0 4 2 3 21 20
		f 4 -3 21 22 -20
		mu 0 4 5 4 23 22
		f 4 3 25 -27 -25
		mu 0 4 6 7 25 24
		f 4 -5 29 30 -28
		mu 0 4 9 8 27 26
		f 4 -15 27 32 -18
		mu 0 4 3 15 28 21
		f 4 -10 19 33 -26
		mu 0 4 16 5 22 29
		f 4 15 16 -35 -30
		mu 0 4 18 2 20 30
		f 4 8 24 -36 -22
		mu 0 4 4 19 31 23;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "RedLight_Traffic_Light10" -p "Traffic_Light10";
	setAttr ".rp" -type "double3" 1.765 1.146 1.6005 ;
	setAttr ".sp" -type "double3" 1.765 1.146 1.6005 ;
createNode mesh -n "RedLight_Traffic_Light10Shape" -p "RedLight_Traffic_Light10";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 79 ".uvst[0].uvsp[0:78]" -type "float2" 0 0.125 0.125 0.125
		 0.25 0.125 0.375 0.125 0.5 0.125 0.625 0.125 0.75 0.125 0.875 0.125 1 0.125 0 0.25
		 0.125 0.25 0.25 0.25 0.375 0.25 0.5 0.25 0.625 0.25 0.75 0.25 0.875 0.25 1 0.25 0
		 0.375 0.125 0.375 0.25 0.375 0.375 0.375 0.5 0.375 0.625 0.375 0.75 0.375 0.875 0.375
		 1 0.375 0 0.5 0.125 0.5 0.25 0.5 0.375 0.5 0.5 0.5 0.625 0.5 0.75 0.5 0.875 0.5 1
		 0.5 0 0.625 0.125 0.625 0.25 0.625 0.375 0.625 0.5 0.625 0.625 0.625 0.75 0.625 0.875
		 0.625 1 0.625 0 0.75 0.125 0.75 0.25 0.75 0.375 0.75 0.5 0.75 0.625 0.75 0.75 0.75
		 0.875 0.75 1 0.75 0 0.875 0.125 0.875 0.25 0.875 0.375 0.875 0.5 0.875 0.625 0.875
		 0.75 0.875 0.875 0.875 1 0.875 0.0625 0 0.1875 0 0.3125 0 0.4375 0 0.5625 0 0.6875
		 0 0.8125 0 0.9375 0 0.0625 1 0.1875 1 0.3125 1 0.4375 1 0.5625 1 0.6875 1 0.8125
		 1 0.9375 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 58 ".vt[0:57]"  1.78258884 1.085947871 1.58291113 1.76499999 1.085947871 1.57562554
		 1.74741113 1.085947871 1.58291113 1.74012554 1.085947871 1.60049999 1.74741113 1.085947871 1.61808884
		 1.76499999 1.085947871 1.62537444 1.78258884 1.085947871 1.61808884 1.78987443 1.085947871 1.60049999
		 1.79750001 1.10003805 1.56799996 1.76499999 1.10003805 1.55453801 1.73249996 1.10003805 1.56799996
		 1.71903801 1.10003805 1.60049999 1.73249996 1.10003805 1.63300002 1.76499999 1.10003805 1.64646196
		 1.79750001 1.10003805 1.63300002 1.81096196 1.10003805 1.60049999 1.80746329 1.12112558 1.55803668
		 1.76499999 1.12112558 1.54044783 1.72253668 1.12112558 1.55803668 1.70494783 1.12112558 1.60049999
		 1.72253668 1.12112558 1.64296329 1.76499999 1.12112558 1.66055214 1.80746329 1.12112558 1.64296329
		 1.82505214 1.12112558 1.60049999 1.81096196 1.14600003 1.55453801 1.76499999 1.14600003 1.53550005
		 1.71903801 1.14600003 1.55453801 1.70000005 1.14600003 1.60049999 1.71903801 1.14600003 1.64646196
		 1.76499999 1.14600003 1.66549993 1.81096196 1.14600003 1.64646196 1.82999992 1.14600003 1.60049999
		 1.80746329 1.17087448 1.55803668 1.76499999 1.17087448 1.54044783 1.72253668 1.17087448 1.55803668
		 1.70494783 1.17087448 1.60049999 1.72253668 1.17087448 1.64296329 1.76499999 1.17087448 1.66055214
		 1.80746329 1.17087448 1.64296329 1.82505214 1.17087448 1.60049999 1.79750001 1.191962 1.56799996
		 1.76499999 1.191962 1.55453801 1.73249996 1.191962 1.56799996 1.71903801 1.191962 1.60049999
		 1.73249996 1.191962 1.63300002 1.76499999 1.191962 1.64646196 1.79750001 1.191962 1.63300002
		 1.81096196 1.191962 1.60049999 1.78258884 1.20605218 1.58291113 1.76499999 1.20605218 1.57562554
		 1.74741113 1.20605218 1.58291113 1.74012554 1.20605218 1.60049999 1.74741113 1.20605218 1.61808884
		 1.76499999 1.20605218 1.62537444 1.78258884 1.20605218 1.61808884 1.78987443 1.20605218 1.60049999
		 1.76499999 1.08100009 1.60049999 1.76499999 1.21099997 1.60049999;
	setAttr -s 120 ".ed[0:119]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 0 0 8 9 0 9 10 0 10 11 0 11 12 0 12 13 0 13 14 0 14 15 0 15 8 0 16 17 0 17 18 0
		 18 19 0 19 20 0 20 21 0 21 22 0 22 23 0 23 16 0 24 25 0 25 26 0 26 27 0 27 28 0 28 29 0
		 29 30 0 30 31 0 31 24 0 32 33 0 33 34 0 34 35 0 35 36 0 36 37 0 37 38 0 38 39 0 39 32 0
		 40 41 0 41 42 0 42 43 0 43 44 0 44 45 0 45 46 0 46 47 0 47 40 0 48 49 0 49 50 0 50 51 0
		 51 52 0 52 53 0 53 54 0 54 55 0 55 48 0 0 8 0 1 9 0 2 10 0 3 11 0 4 12 0 5 13 0 6 14 0
		 7 15 0 8 16 0 9 17 0 10 18 0 11 19 0 12 20 0 13 21 0 14 22 0 15 23 0 16 24 0 17 25 0
		 18 26 0 19 27 0 20 28 0 21 29 0 22 30 0 23 31 0 24 32 0 25 33 0 26 34 0 27 35 0 28 36 0
		 29 37 0 30 38 0 31 39 0 32 40 0 33 41 0 34 42 0 35 43 0 36 44 0 37 45 0 38 46 0 39 47 0
		 40 48 0 41 49 0 42 50 0 43 51 0 44 52 0 45 53 0 46 54 0 47 55 0 56 0 0 56 1 0 56 2 0
		 56 3 0 56 4 0 56 5 0 56 6 0 56 7 0 48 57 0 49 57 0 50 57 0 51 57 0 52 57 0 53 57 0
		 54 57 0 55 57 0;
	setAttr -s 64 -ch 240 ".fc[0:63]" -type "polyFaces" 
		f 4 0 57 -9 -57
		mu 0 4 0 1 10 9
		f 4 1 58 -10 -58
		mu 0 4 1 2 11 10
		f 4 2 59 -11 -59
		mu 0 4 2 3 12 11
		f 4 3 60 -12 -60
		mu 0 4 3 4 13 12
		f 4 4 61 -13 -61
		mu 0 4 4 5 14 13
		f 4 5 62 -14 -62
		mu 0 4 5 6 15 14
		f 4 6 63 -15 -63
		mu 0 4 6 7 16 15
		f 4 7 56 -16 -64
		mu 0 4 7 8 17 16
		f 4 8 65 -17 -65
		mu 0 4 9 10 19 18
		f 4 9 66 -18 -66
		mu 0 4 10 11 20 19
		f 4 10 67 -19 -67
		mu 0 4 11 12 21 20
		f 4 11 68 -20 -68
		mu 0 4 12 13 22 21
		f 4 12 69 -21 -69
		mu 0 4 13 14 23 22
		f 4 13 70 -22 -70
		mu 0 4 14 15 24 23
		f 4 14 71 -23 -71
		mu 0 4 15 16 25 24
		f 4 15 64 -24 -72
		mu 0 4 16 17 26 25
		f 4 16 73 -25 -73
		mu 0 4 18 19 28 27
		f 4 17 74 -26 -74
		mu 0 4 19 20 29 28
		f 4 18 75 -27 -75
		mu 0 4 20 21 30 29
		f 4 19 76 -28 -76
		mu 0 4 21 22 31 30
		f 4 20 77 -29 -77
		mu 0 4 22 23 32 31
		f 4 21 78 -30 -78
		mu 0 4 23 24 33 32
		f 4 22 79 -31 -79
		mu 0 4 24 25 34 33
		f 4 23 72 -32 -80
		mu 0 4 25 26 35 34
		f 4 24 81 -33 -81
		mu 0 4 27 28 37 36
		f 4 25 82 -34 -82
		mu 0 4 28 29 38 37
		f 4 26 83 -35 -83
		mu 0 4 29 30 39 38
		f 4 27 84 -36 -84
		mu 0 4 30 31 40 39
		f 4 28 85 -37 -85
		mu 0 4 31 32 41 40
		f 4 29 86 -38 -86
		mu 0 4 32 33 42 41
		f 4 30 87 -39 -87
		mu 0 4 33 34 43 42
		f 4 31 80 -40 -88
		mu 0 4 34 35 44 43
		f 4 32 89 -41 -89
		mu 0 4 36 37 46 45
		f 4 33 90 -42 -90
		mu 0 4 37 38 47 46
		f 4 34 91 -43 -91
		mu 0 4 38 39 48 47
		f 4 35 92 -44 -92
		mu 0 4 39 40 49 48
		f 4 36 93 -45 -93
		mu 0 4 40 41 50 49
		f 4 37 94 -46 -94
		mu 0 4 41 42 51 50
		f 4 38 95 -47 -95
		mu 0 4 42 43 52 51
		f 4 39 88 -48 -96
		mu 0 4 43 44 53 52
		f 4 40 97 -49 -97
		mu 0 4 45 46 55 54
		f 4 41 98 -50 -98
		mu 0 4 46 47 56 55
		f 4 42 99 -51 -99
		mu 0 4 47 48 57 56
		f 4 43 100 -52 -100
		mu 0 4 48 49 58 57
		f 4 44 101 -53 -101
		mu 0 4 49 50 59 58
		f 4 45 102 -54 -102
		mu 0 4 50 51 60 59
		f 4 46 103 -55 -103
		mu 0 4 51 52 61 60
		f 4 47 96 -56 -104
		mu 0 4 52 53 62 61
		f 3 -1 -105 105
		mu 0 3 1 0 63
		f 3 -2 -106 106
		mu 0 3 2 1 64
		f 3 -3 -107 107
		mu 0 3 3 2 65
		f 3 -4 -108 108
		mu 0 3 4 3 66
		f 3 -5 -109 109
		mu 0 3 5 4 67
		f 3 -6 -110 110
		mu 0 3 6 5 68
		f 3 -7 -111 111
		mu 0 3 7 6 69
		f 3 -8 -112 104
		mu 0 3 8 7 70
		f 3 48 113 -113
		mu 0 3 54 55 71
		f 3 49 114 -114
		mu 0 3 55 56 72
		f 3 50 115 -115
		mu 0 3 56 57 73
		f 3 51 116 -116
		mu 0 3 57 58 74
		f 3 52 117 -117
		mu 0 3 58 59 75
		f 3 53 118 -118
		mu 0 3 59 60 76
		f 3 54 119 -119
		mu 0 3 60 61 77
		f 3 55 112 -120
		mu 0 3 61 62 78;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "OrangeLight_Traffic_Light10" -p "Traffic_Light10";
	setAttr ".rp" -type "double3" 1.765 0.99 1.6005 ;
	setAttr ".sp" -type "double3" 1.765 0.99 1.6005 ;
createNode mesh -n "OrangeLight_Traffic_Light10Shape" -p "OrangeLight_Traffic_Light10";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 79 ".uvst[0].uvsp[0:78]" -type "float2" 0 0.125 0.125 0.125
		 0.25 0.125 0.375 0.125 0.5 0.125 0.625 0.125 0.75 0.125 0.875 0.125 1 0.125 0 0.25
		 0.125 0.25 0.25 0.25 0.375 0.25 0.5 0.25 0.625 0.25 0.75 0.25 0.875 0.25 1 0.25 0
		 0.375 0.125 0.375 0.25 0.375 0.375 0.375 0.5 0.375 0.625 0.375 0.75 0.375 0.875 0.375
		 1 0.375 0 0.5 0.125 0.5 0.25 0.5 0.375 0.5 0.5 0.5 0.625 0.5 0.75 0.5 0.875 0.5 1
		 0.5 0 0.625 0.125 0.625 0.25 0.625 0.375 0.625 0.5 0.625 0.625 0.625 0.75 0.625 0.875
		 0.625 1 0.625 0 0.75 0.125 0.75 0.25 0.75 0.375 0.75 0.5 0.75 0.625 0.75 0.75 0.75
		 0.875 0.75 1 0.75 0 0.875 0.125 0.875 0.25 0.875 0.375 0.875 0.5 0.875 0.625 0.875
		 0.75 0.875 0.875 0.875 1 0.875 0.0625 0 0.1875 0 0.3125 0 0.4375 0 0.5625 0 0.6875
		 0 0.8125 0 0.9375 0 0.0625 1 0.1875 1 0.3125 1 0.4375 1 0.5625 1 0.6875 1 0.8125
		 1 0.9375 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 58 ".vt[0:57]"  1.78258884 0.92994785 1.58291113 1.76499999 0.92994785 1.57562554
		 1.74741113 0.92994785 1.58291113 1.74012554 0.92994785 1.60049999 1.74741113 0.92994785 1.61808884
		 1.76499999 0.92994785 1.62537444 1.78258884 0.92994785 1.61808884 1.78987443 0.92994785 1.60049999
		 1.79750001 0.94403809 1.56799996 1.76499999 0.94403809 1.55453801 1.73249996 0.94403809 1.56799996
		 1.71903801 0.94403809 1.60049999 1.73249996 0.94403809 1.63300002 1.76499999 0.94403809 1.64646196
		 1.79750001 0.94403809 1.63300002 1.81096196 0.94403809 1.60049999 1.80746329 0.96512556 1.55803668
		 1.76499999 0.96512556 1.54044783 1.72253668 0.96512556 1.55803668 1.70494783 0.96512556 1.60049999
		 1.72253668 0.96512556 1.64296329 1.76499999 0.96512556 1.66055214 1.80746329 0.96512556 1.64296329
		 1.82505214 0.96512556 1.60049999 1.81096196 0.99000001 1.55453801 1.76499999 0.99000001 1.53550005
		 1.71903801 0.99000001 1.55453801 1.70000005 0.99000001 1.60049999 1.71903801 0.99000001 1.64646196
		 1.76499999 0.99000001 1.66549993 1.81096196 0.99000001 1.64646196 1.82999992 0.99000001 1.60049999
		 1.80746329 1.014874458 1.55803668 1.76499999 1.014874458 1.54044783 1.72253668 1.014874458 1.55803668
		 1.70494783 1.014874458 1.60049999 1.72253668 1.014874458 1.64296329 1.76499999 1.014874458 1.66055214
		 1.80746329 1.014874458 1.64296329 1.82505214 1.014874458 1.60049999 1.79750001 1.035961986 1.56799996
		 1.76499999 1.035961986 1.55453801 1.73249996 1.035961986 1.56799996 1.71903801 1.035961986 1.60049999
		 1.73249996 1.035961986 1.63300002 1.76499999 1.035961986 1.64646196 1.79750001 1.035961986 1.63300002
		 1.81096196 1.035961986 1.60049999 1.78258884 1.050052166 1.58291113 1.76499999 1.050052166 1.57562554
		 1.74741113 1.050052166 1.58291113 1.74012554 1.050052166 1.60049999 1.74741113 1.050052166 1.61808884
		 1.76499999 1.050052166 1.62537444 1.78258884 1.050052166 1.61808884 1.78987443 1.050052166 1.60049999
		 1.76499999 0.92500001 1.60049999 1.76499999 1.055000067 1.60049999;
	setAttr -s 120 ".ed[0:119]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 0 0 8 9 0 9 10 0 10 11 0 11 12 0 12 13 0 13 14 0 14 15 0 15 8 0 16 17 0 17 18 0
		 18 19 0 19 20 0 20 21 0 21 22 0 22 23 0 23 16 0 24 25 0 25 26 0 26 27 0 27 28 0 28 29 0
		 29 30 0 30 31 0 31 24 0 32 33 0 33 34 0 34 35 0 35 36 0 36 37 0 37 38 0 38 39 0 39 32 0
		 40 41 0 41 42 0 42 43 0 43 44 0 44 45 0 45 46 0 46 47 0 47 40 0 48 49 0 49 50 0 50 51 0
		 51 52 0 52 53 0 53 54 0 54 55 0 55 48 0 0 8 0 1 9 0 2 10 0 3 11 0 4 12 0 5 13 0 6 14 0
		 7 15 0 8 16 0 9 17 0 10 18 0 11 19 0 12 20 0 13 21 0 14 22 0 15 23 0 16 24 0 17 25 0
		 18 26 0 19 27 0 20 28 0 21 29 0 22 30 0 23 31 0 24 32 0 25 33 0 26 34 0 27 35 0 28 36 0
		 29 37 0 30 38 0 31 39 0 32 40 0 33 41 0 34 42 0 35 43 0 36 44 0 37 45 0 38 46 0 39 47 0
		 40 48 0 41 49 0 42 50 0 43 51 0 44 52 0 45 53 0 46 54 0 47 55 0 56 0 0 56 1 0 56 2 0
		 56 3 0 56 4 0 56 5 0 56 6 0 56 7 0 48 57 0 49 57 0 50 57 0 51 57 0 52 57 0 53 57 0
		 54 57 0 55 57 0;
	setAttr -s 64 -ch 240 ".fc[0:63]" -type "polyFaces" 
		f 4 0 57 -9 -57
		mu 0 4 0 1 10 9
		f 4 1 58 -10 -58
		mu 0 4 1 2 11 10
		f 4 2 59 -11 -59
		mu 0 4 2 3 12 11
		f 4 3 60 -12 -60
		mu 0 4 3 4 13 12
		f 4 4 61 -13 -61
		mu 0 4 4 5 14 13
		f 4 5 62 -14 -62
		mu 0 4 5 6 15 14
		f 4 6 63 -15 -63
		mu 0 4 6 7 16 15
		f 4 7 56 -16 -64
		mu 0 4 7 8 17 16
		f 4 8 65 -17 -65
		mu 0 4 9 10 19 18
		f 4 9 66 -18 -66
		mu 0 4 10 11 20 19
		f 4 10 67 -19 -67
		mu 0 4 11 12 21 20
		f 4 11 68 -20 -68
		mu 0 4 12 13 22 21
		f 4 12 69 -21 -69
		mu 0 4 13 14 23 22
		f 4 13 70 -22 -70
		mu 0 4 14 15 24 23
		f 4 14 71 -23 -71
		mu 0 4 15 16 25 24
		f 4 15 64 -24 -72
		mu 0 4 16 17 26 25
		f 4 16 73 -25 -73
		mu 0 4 18 19 28 27
		f 4 17 74 -26 -74
		mu 0 4 19 20 29 28
		f 4 18 75 -27 -75
		mu 0 4 20 21 30 29
		f 4 19 76 -28 -76
		mu 0 4 21 22 31 30
		f 4 20 77 -29 -77
		mu 0 4 22 23 32 31
		f 4 21 78 -30 -78
		mu 0 4 23 24 33 32
		f 4 22 79 -31 -79
		mu 0 4 24 25 34 33
		f 4 23 72 -32 -80
		mu 0 4 25 26 35 34
		f 4 24 81 -33 -81
		mu 0 4 27 28 37 36
		f 4 25 82 -34 -82
		mu 0 4 28 29 38 37
		f 4 26 83 -35 -83
		mu 0 4 29 30 39 38
		f 4 27 84 -36 -84
		mu 0 4 30 31 40 39
		f 4 28 85 -37 -85
		mu 0 4 31 32 41 40
		f 4 29 86 -38 -86
		mu 0 4 32 33 42 41
		f 4 30 87 -39 -87
		mu 0 4 33 34 43 42
		f 4 31 80 -40 -88
		mu 0 4 34 35 44 43
		f 4 32 89 -41 -89
		mu 0 4 36 37 46 45
		f 4 33 90 -42 -90
		mu 0 4 37 38 47 46
		f 4 34 91 -43 -91
		mu 0 4 38 39 48 47
		f 4 35 92 -44 -92
		mu 0 4 39 40 49 48
		f 4 36 93 -45 -93
		mu 0 4 40 41 50 49
		f 4 37 94 -46 -94
		mu 0 4 41 42 51 50
		f 4 38 95 -47 -95
		mu 0 4 42 43 52 51
		f 4 39 88 -48 -96
		mu 0 4 43 44 53 52
		f 4 40 97 -49 -97
		mu 0 4 45 46 55 54
		f 4 41 98 -50 -98
		mu 0 4 46 47 56 55
		f 4 42 99 -51 -99
		mu 0 4 47 48 57 56
		f 4 43 100 -52 -100
		mu 0 4 48 49 58 57
		f 4 44 101 -53 -101
		mu 0 4 49 50 59 58
		f 4 45 102 -54 -102
		mu 0 4 50 51 60 59
		f 4 46 103 -55 -103
		mu 0 4 51 52 61 60
		f 4 47 96 -56 -104
		mu 0 4 52 53 62 61
		f 3 -1 -105 105
		mu 0 3 1 0 63
		f 3 -2 -106 106
		mu 0 3 2 1 64
		f 3 -3 -107 107
		mu 0 3 3 2 65
		f 3 -4 -108 108
		mu 0 3 4 3 66
		f 3 -5 -109 109
		mu 0 3 5 4 67
		f 3 -6 -110 110
		mu 0 3 6 5 68
		f 3 -7 -111 111
		mu 0 3 7 6 69
		f 3 -8 -112 104
		mu 0 3 8 7 70
		f 3 48 113 -113
		mu 0 3 54 55 71
		f 3 49 114 -114
		mu 0 3 55 56 72
		f 3 50 115 -115
		mu 0 3 56 57 73
		f 3 51 116 -116
		mu 0 3 57 58 74
		f 3 52 117 -117
		mu 0 3 58 59 75
		f 3 53 118 -118
		mu 0 3 59 60 76
		f 3 54 119 -119
		mu 0 3 60 61 77
		f 3 55 112 -120
		mu 0 3 61 62 78;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "GreenLight_Traffic_Light10" -p "Traffic_Light10";
	setAttr ".rp" -type "double3" 1.765 0.83400000000000007 1.6005 ;
	setAttr ".sp" -type "double3" 1.765 0.83400000000000007 1.6005 ;
createNode mesh -n "GreenLight_Traffic_Light10Shape" -p "GreenLight_Traffic_Light10";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 79 ".uvst[0].uvsp[0:78]" -type "float2" 0 0.125 0.125 0.125
		 0.25 0.125 0.375 0.125 0.5 0.125 0.625 0.125 0.75 0.125 0.875 0.125 1 0.125 0 0.25
		 0.125 0.25 0.25 0.25 0.375 0.25 0.5 0.25 0.625 0.25 0.75 0.25 0.875 0.25 1 0.25 0
		 0.375 0.125 0.375 0.25 0.375 0.375 0.375 0.5 0.375 0.625 0.375 0.75 0.375 0.875 0.375
		 1 0.375 0 0.5 0.125 0.5 0.25 0.5 0.375 0.5 0.5 0.5 0.625 0.5 0.75 0.5 0.875 0.5 1
		 0.5 0 0.625 0.125 0.625 0.25 0.625 0.375 0.625 0.5 0.625 0.625 0.625 0.75 0.625 0.875
		 0.625 1 0.625 0 0.75 0.125 0.75 0.25 0.75 0.375 0.75 0.5 0.75 0.625 0.75 0.75 0.75
		 0.875 0.75 1 0.75 0 0.875 0.125 0.875 0.25 0.875 0.375 0.875 0.5 0.875 0.625 0.875
		 0.75 0.875 0.875 0.875 1 0.875 0.0625 0 0.1875 0 0.3125 0 0.4375 0 0.5625 0 0.6875
		 0 0.8125 0 0.9375 0 0.0625 1 0.1875 1 0.3125 1 0.4375 1 0.5625 1 0.6875 1 0.8125
		 1 0.9375 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 58 ".vt[0:57]"  1.78258884 0.77394783 1.58291113 1.76499999 0.77394783 1.57562554
		 1.74741113 0.77394783 1.58291113 1.74012554 0.77394783 1.60049999 1.74741113 0.77394783 1.61808884
		 1.76499999 0.77394783 1.62537444 1.78258884 0.77394783 1.61808884 1.78987443 0.77394783 1.60049999
		 1.79750001 0.78803807 1.56799996 1.76499999 0.78803807 1.55453801 1.73249996 0.78803807 1.56799996
		 1.71903801 0.78803807 1.60049999 1.73249996 0.78803807 1.63300002 1.76499999 0.78803807 1.64646196
		 1.79750001 0.78803807 1.63300002 1.81096196 0.78803807 1.60049999 1.80746329 0.80912554 1.55803668
		 1.76499999 0.80912554 1.54044783 1.72253668 0.80912554 1.55803668 1.70494783 0.80912554 1.60049999
		 1.72253668 0.80912554 1.64296329 1.76499999 0.80912554 1.66055214 1.80746329 0.80912554 1.64296329
		 1.82505214 0.80912554 1.60049999 1.81096196 0.83399999 1.55453801 1.76499999 0.83399999 1.53550005
		 1.71903801 0.83399999 1.55453801 1.70000005 0.83399999 1.60049999 1.71903801 0.83399999 1.64646196
		 1.76499999 0.83399999 1.66549993 1.81096196 0.83399999 1.64646196 1.82999992 0.83399999 1.60049999
		 1.80746329 0.85887444 1.55803668 1.76499999 0.85887444 1.54044783 1.72253668 0.85887444 1.55803668
		 1.70494783 0.85887444 1.60049999 1.72253668 0.85887444 1.64296329 1.76499999 0.85887444 1.66055214
		 1.80746329 0.85887444 1.64296329 1.82505214 0.85887444 1.60049999 1.79750001 0.87996191 1.56799996
		 1.76499999 0.87996191 1.55453801 1.73249996 0.87996191 1.56799996 1.71903801 0.87996191 1.60049999
		 1.73249996 0.87996191 1.63300002 1.76499999 0.87996191 1.64646196 1.79750001 0.87996191 1.63300002
		 1.81096196 0.87996191 1.60049999 1.78258884 0.89405215 1.58291113 1.76499999 0.89405215 1.57562554
		 1.74741113 0.89405215 1.58291113 1.74012554 0.89405215 1.60049999 1.74741113 0.89405215 1.61808884
		 1.76499999 0.89405215 1.62537444 1.78258884 0.89405215 1.61808884 1.78987443 0.89405215 1.60049999
		 1.76499999 0.76899999 1.60049999 1.76499999 0.89899999 1.60049999;
	setAttr -s 120 ".ed[0:119]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 0 0 8 9 0 9 10 0 10 11 0 11 12 0 12 13 0 13 14 0 14 15 0 15 8 0 16 17 0 17 18 0
		 18 19 0 19 20 0 20 21 0 21 22 0 22 23 0 23 16 0 24 25 0 25 26 0 26 27 0 27 28 0 28 29 0
		 29 30 0 30 31 0 31 24 0 32 33 0 33 34 0 34 35 0 35 36 0 36 37 0 37 38 0 38 39 0 39 32 0
		 40 41 0 41 42 0 42 43 0 43 44 0 44 45 0 45 46 0 46 47 0 47 40 0 48 49 0 49 50 0 50 51 0
		 51 52 0 52 53 0 53 54 0 54 55 0 55 48 0 0 8 0 1 9 0 2 10 0 3 11 0 4 12 0 5 13 0 6 14 0
		 7 15 0 8 16 0 9 17 0 10 18 0 11 19 0 12 20 0 13 21 0 14 22 0 15 23 0 16 24 0 17 25 0
		 18 26 0 19 27 0 20 28 0 21 29 0 22 30 0 23 31 0 24 32 0 25 33 0 26 34 0 27 35 0 28 36 0
		 29 37 0 30 38 0 31 39 0 32 40 0 33 41 0 34 42 0 35 43 0 36 44 0 37 45 0 38 46 0 39 47 0
		 40 48 0 41 49 0 42 50 0 43 51 0 44 52 0 45 53 0 46 54 0 47 55 0 56 0 0 56 1 0 56 2 0
		 56 3 0 56 4 0 56 5 0 56 6 0 56 7 0 48 57 0 49 57 0 50 57 0 51 57 0 52 57 0 53 57 0
		 54 57 0 55 57 0;
	setAttr -s 64 -ch 240 ".fc[0:63]" -type "polyFaces" 
		f 4 0 57 -9 -57
		mu 0 4 0 1 10 9
		f 4 1 58 -10 -58
		mu 0 4 1 2 11 10
		f 4 2 59 -11 -59
		mu 0 4 2 3 12 11
		f 4 3 60 -12 -60
		mu 0 4 3 4 13 12
		f 4 4 61 -13 -61
		mu 0 4 4 5 14 13
		f 4 5 62 -14 -62
		mu 0 4 5 6 15 14
		f 4 6 63 -15 -63
		mu 0 4 6 7 16 15
		f 4 7 56 -16 -64
		mu 0 4 7 8 17 16
		f 4 8 65 -17 -65
		mu 0 4 9 10 19 18
		f 4 9 66 -18 -66
		mu 0 4 10 11 20 19
		f 4 10 67 -19 -67
		mu 0 4 11 12 21 20
		f 4 11 68 -20 -68
		mu 0 4 12 13 22 21
		f 4 12 69 -21 -69
		mu 0 4 13 14 23 22
		f 4 13 70 -22 -70
		mu 0 4 14 15 24 23
		f 4 14 71 -23 -71
		mu 0 4 15 16 25 24
		f 4 15 64 -24 -72
		mu 0 4 16 17 26 25
		f 4 16 73 -25 -73
		mu 0 4 18 19 28 27
		f 4 17 74 -26 -74
		mu 0 4 19 20 29 28
		f 4 18 75 -27 -75
		mu 0 4 20 21 30 29
		f 4 19 76 -28 -76
		mu 0 4 21 22 31 30
		f 4 20 77 -29 -77
		mu 0 4 22 23 32 31
		f 4 21 78 -30 -78
		mu 0 4 23 24 33 32
		f 4 22 79 -31 -79
		mu 0 4 24 25 34 33
		f 4 23 72 -32 -80
		mu 0 4 25 26 35 34
		f 4 24 81 -33 -81
		mu 0 4 27 28 37 36
		f 4 25 82 -34 -82
		mu 0 4 28 29 38 37
		f 4 26 83 -35 -83
		mu 0 4 29 30 39 38
		f 4 27 84 -36 -84
		mu 0 4 30 31 40 39
		f 4 28 85 -37 -85
		mu 0 4 31 32 41 40
		f 4 29 86 -38 -86
		mu 0 4 32 33 42 41
		f 4 30 87 -39 -87
		mu 0 4 33 34 43 42
		f 4 31 80 -40 -88
		mu 0 4 34 35 44 43
		f 4 32 89 -41 -89
		mu 0 4 36 37 46 45
		f 4 33 90 -42 -90
		mu 0 4 37 38 47 46
		f 4 34 91 -43 -91
		mu 0 4 38 39 48 47
		f 4 35 92 -44 -92
		mu 0 4 39 40 49 48
		f 4 36 93 -45 -93
		mu 0 4 40 41 50 49
		f 4 37 94 -46 -94
		mu 0 4 41 42 51 50
		f 4 38 95 -47 -95
		mu 0 4 42 43 52 51
		f 4 39 88 -48 -96
		mu 0 4 43 44 53 52
		f 4 40 97 -49 -97
		mu 0 4 45 46 55 54
		f 4 41 98 -50 -98
		mu 0 4 46 47 56 55
		f 4 42 99 -51 -99
		mu 0 4 47 48 57 56
		f 4 43 100 -52 -100
		mu 0 4 48 49 58 57
		f 4 44 101 -53 -101
		mu 0 4 49 50 59 58
		f 4 45 102 -54 -102
		mu 0 4 50 51 60 59
		f 4 46 103 -55 -103
		mu 0 4 51 52 61 60
		f 4 47 96 -56 -104
		mu 0 4 52 53 62 61
		f 3 -1 -105 105
		mu 0 3 1 0 63
		f 3 -2 -106 106
		mu 0 3 2 1 64
		f 3 -3 -107 107
		mu 0 3 3 2 65
		f 3 -4 -108 108
		mu 0 3 4 3 66
		f 3 -5 -109 109
		mu 0 3 5 4 67
		f 3 -6 -110 110
		mu 0 3 6 5 68
		f 3 -7 -111 111
		mu 0 3 7 6 69
		f 3 -8 -112 104
		mu 0 3 8 7 70
		f 3 48 113 -113
		mu 0 3 54 55 71
		f 3 49 114 -114
		mu 0 3 55 56 72
		f 3 50 115 -115
		mu 0 3 56 57 73
		f 3 51 116 -116
		mu 0 3 57 58 74
		f 3 52 117 -117
		mu 0 3 58 59 75
		f 3 53 118 -118
		mu 0 3 59 60 76
		f 3 54 119 -119
		mu 0 3 60 61 77
		f 3 55 112 -120
		mu 0 3 61 62 78;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Linked_Traffic_Grp1" -p "GrpAllTrafficLights";
	setAttr ".rp" -type "double3" 0.014999999999998792 0.60000002384185525 12 ;
	setAttr ".sp" -type "double3" 0.014999999999998792 0.60000002384185525 12 ;
createNode transform -n "Traffic_Light3" -p "Linked_Traffic_Grp1";
	setAttr ".t" -type "double3" -4.0000000000000009 -2.6645352591003757e-015 8.5 ;
	setAttr ".r" -type "double3" 0 90 0 ;
	setAttr ".rp" -type "double3" 1.765 0.6 1.75 ;
	setAttr ".sp" -type "double3" 1.765 0.6 1.75 ;
createNode mesh -n "Traffic_Light3Shape" -p "Traffic_Light3";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 32 ".uvst[0].uvsp[0:31]" -type "float2" 0.33000001 0 0.66333336
		 0 0.33000001 0.125 0.66333336 0.125 0.33000001 0.25 0.66333336 0.25 0.33000001 0.5
		 0.66333336 0.5 0.33000001 0.625 0.66333336 0.625 0.33000001 0.75 0.66333336 0.75
		 0.33000001 1 0.66333336 1 1 0 1 0.125 1 0.25 0 0 0 0.125 0 0.25 0.33000001 0.125
		 0.66333336 0.125 0.66333336 0.25 0.33000001 0.25 0.33000001 0.5 0.66333336 0.5 0.66333336
		 0.625 0.33000001 0.625 1 0.125 1 0.25 0 0.125 0 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 20 ".vt[0:19]"  1.70000005 -0.049999952 1.81500006 1.82999992 -0.049999952 1.81500006
		 1.70000005 0.73000002 1.81500006 1.82999992 0.73000002 1.81500006 1.70000005 1.25 1.81500006
		 1.82999992 1.25 1.81500006 1.70000005 1.25 1.68499994 1.82999992 1.25 1.68499994
		 1.70000005 0.73000002 1.68499994 1.82999992 0.73000002 1.68499994 1.70000005 -0.049999952 1.68499994
		 1.82999992 -0.049999952 1.68499994 1.61549997 0.73000002 1.89950001 1.9145 0.73000002 1.89950001
		 1.9145 1.25 1.89950001 1.61549997 1.25 1.89950001 1.61549997 1.25 1.60049999 1.9145 1.25 1.60049999
		 1.9145 0.73000002 1.60049999 1.61549997 0.73000002 1.60049999;
	setAttr -s 36 ".ed[0:35]"  0 1 0 2 3 0 4 5 1 6 7 1 8 9 0 10 11 0 0 2 0
		 1 3 0 4 6 1 5 7 1 8 10 0 9 11 0 10 0 0 11 1 0 9 3 0 8 2 0 2 12 1 3 13 1 12 13 0 5 14 1
		 13 14 0 4 15 1 15 14 0 12 15 0 6 16 1 7 17 1 16 17 0 9 18 1 17 18 0 8 19 1 19 18 0
		 16 19 0 18 13 0 14 17 0 19 12 0 15 16 0;
	setAttr -s 18 -ch 72 ".fc[0:17]" -type "polyFaces" 
		f 4 0 7 -2 -7
		mu 0 4 0 1 3 2
		f 4 18 20 -23 -24
		mu 0 4 20 21 22 23
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 26 28 -31 -32
		mu 0 4 24 25 26 27
		f 4 4 11 -6 -11
		mu 0 4 8 9 11 10
		f 4 5 13 -1 -13
		mu 0 4 10 11 13 12
		f 4 -14 -12 14 -8
		mu 0 4 1 14 15 3
		f 4 -33 -29 -34 -21
		mu 0 4 21 28 29 22
		f 4 12 6 -16 10
		mu 0 4 17 0 2 18
		f 4 34 23 35 31
		mu 0 4 30 20 23 31
		f 4 1 17 -19 -17
		mu 0 4 2 3 21 20
		f 4 -3 21 22 -20
		mu 0 4 5 4 23 22
		f 4 3 25 -27 -25
		mu 0 4 6 7 25 24
		f 4 -5 29 30 -28
		mu 0 4 9 8 27 26
		f 4 -15 27 32 -18
		mu 0 4 3 15 28 21
		f 4 -10 19 33 -26
		mu 0 4 16 5 22 29
		f 4 15 16 -35 -30
		mu 0 4 18 2 20 30
		f 4 8 24 -36 -22
		mu 0 4 4 19 31 23;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "RedLight_Traffic_Light3" -p "Traffic_Light3";
	setAttr ".rp" -type "double3" 1.765 1.146 1.6005 ;
	setAttr ".sp" -type "double3" 1.765 1.146 1.6005 ;
createNode mesh -n "RedLight_Traffic_Light3Shape" -p "RedLight_Traffic_Light3";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 79 ".uvst[0].uvsp[0:78]" -type "float2" 0 0.125 0.125 0.125
		 0.25 0.125 0.375 0.125 0.5 0.125 0.625 0.125 0.75 0.125 0.875 0.125 1 0.125 0 0.25
		 0.125 0.25 0.25 0.25 0.375 0.25 0.5 0.25 0.625 0.25 0.75 0.25 0.875 0.25 1 0.25 0
		 0.375 0.125 0.375 0.25 0.375 0.375 0.375 0.5 0.375 0.625 0.375 0.75 0.375 0.875 0.375
		 1 0.375 0 0.5 0.125 0.5 0.25 0.5 0.375 0.5 0.5 0.5 0.625 0.5 0.75 0.5 0.875 0.5 1
		 0.5 0 0.625 0.125 0.625 0.25 0.625 0.375 0.625 0.5 0.625 0.625 0.625 0.75 0.625 0.875
		 0.625 1 0.625 0 0.75 0.125 0.75 0.25 0.75 0.375 0.75 0.5 0.75 0.625 0.75 0.75 0.75
		 0.875 0.75 1 0.75 0 0.875 0.125 0.875 0.25 0.875 0.375 0.875 0.5 0.875 0.625 0.875
		 0.75 0.875 0.875 0.875 1 0.875 0.0625 0 0.1875 0 0.3125 0 0.4375 0 0.5625 0 0.6875
		 0 0.8125 0 0.9375 0 0.0625 1 0.1875 1 0.3125 1 0.4375 1 0.5625 1 0.6875 1 0.8125
		 1 0.9375 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 58 ".vt[0:57]"  1.78258884 1.085947871 1.58291113 1.76499999 1.085947871 1.57562554
		 1.74741113 1.085947871 1.58291113 1.74012554 1.085947871 1.60049999 1.74741113 1.085947871 1.61808884
		 1.76499999 1.085947871 1.62537444 1.78258884 1.085947871 1.61808884 1.78987443 1.085947871 1.60049999
		 1.79750001 1.10003805 1.56799996 1.76499999 1.10003805 1.55453801 1.73249996 1.10003805 1.56799996
		 1.71903801 1.10003805 1.60049999 1.73249996 1.10003805 1.63300002 1.76499999 1.10003805 1.64646196
		 1.79750001 1.10003805 1.63300002 1.81096196 1.10003805 1.60049999 1.80746329 1.12112558 1.55803668
		 1.76499999 1.12112558 1.54044783 1.72253668 1.12112558 1.55803668 1.70494783 1.12112558 1.60049999
		 1.72253668 1.12112558 1.64296329 1.76499999 1.12112558 1.66055214 1.80746329 1.12112558 1.64296329
		 1.82505214 1.12112558 1.60049999 1.81096196 1.14600003 1.55453801 1.76499999 1.14600003 1.53550005
		 1.71903801 1.14600003 1.55453801 1.70000005 1.14600003 1.60049999 1.71903801 1.14600003 1.64646196
		 1.76499999 1.14600003 1.66549993 1.81096196 1.14600003 1.64646196 1.82999992 1.14600003 1.60049999
		 1.80746329 1.17087448 1.55803668 1.76499999 1.17087448 1.54044783 1.72253668 1.17087448 1.55803668
		 1.70494783 1.17087448 1.60049999 1.72253668 1.17087448 1.64296329 1.76499999 1.17087448 1.66055214
		 1.80746329 1.17087448 1.64296329 1.82505214 1.17087448 1.60049999 1.79750001 1.191962 1.56799996
		 1.76499999 1.191962 1.55453801 1.73249996 1.191962 1.56799996 1.71903801 1.191962 1.60049999
		 1.73249996 1.191962 1.63300002 1.76499999 1.191962 1.64646196 1.79750001 1.191962 1.63300002
		 1.81096196 1.191962 1.60049999 1.78258884 1.20605218 1.58291113 1.76499999 1.20605218 1.57562554
		 1.74741113 1.20605218 1.58291113 1.74012554 1.20605218 1.60049999 1.74741113 1.20605218 1.61808884
		 1.76499999 1.20605218 1.62537444 1.78258884 1.20605218 1.61808884 1.78987443 1.20605218 1.60049999
		 1.76499999 1.08100009 1.60049999 1.76499999 1.21099997 1.60049999;
	setAttr -s 120 ".ed[0:119]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 0 0 8 9 0 9 10 0 10 11 0 11 12 0 12 13 0 13 14 0 14 15 0 15 8 0 16 17 0 17 18 0
		 18 19 0 19 20 0 20 21 0 21 22 0 22 23 0 23 16 0 24 25 0 25 26 0 26 27 0 27 28 0 28 29 0
		 29 30 0 30 31 0 31 24 0 32 33 0 33 34 0 34 35 0 35 36 0 36 37 0 37 38 0 38 39 0 39 32 0
		 40 41 0 41 42 0 42 43 0 43 44 0 44 45 0 45 46 0 46 47 0 47 40 0 48 49 0 49 50 0 50 51 0
		 51 52 0 52 53 0 53 54 0 54 55 0 55 48 0 0 8 0 1 9 0 2 10 0 3 11 0 4 12 0 5 13 0 6 14 0
		 7 15 0 8 16 0 9 17 0 10 18 0 11 19 0 12 20 0 13 21 0 14 22 0 15 23 0 16 24 0 17 25 0
		 18 26 0 19 27 0 20 28 0 21 29 0 22 30 0 23 31 0 24 32 0 25 33 0 26 34 0 27 35 0 28 36 0
		 29 37 0 30 38 0 31 39 0 32 40 0 33 41 0 34 42 0 35 43 0 36 44 0 37 45 0 38 46 0 39 47 0
		 40 48 0 41 49 0 42 50 0 43 51 0 44 52 0 45 53 0 46 54 0 47 55 0 56 0 0 56 1 0 56 2 0
		 56 3 0 56 4 0 56 5 0 56 6 0 56 7 0 48 57 0 49 57 0 50 57 0 51 57 0 52 57 0 53 57 0
		 54 57 0 55 57 0;
	setAttr -s 64 -ch 240 ".fc[0:63]" -type "polyFaces" 
		f 4 0 57 -9 -57
		mu 0 4 0 1 10 9
		f 4 1 58 -10 -58
		mu 0 4 1 2 11 10
		f 4 2 59 -11 -59
		mu 0 4 2 3 12 11
		f 4 3 60 -12 -60
		mu 0 4 3 4 13 12
		f 4 4 61 -13 -61
		mu 0 4 4 5 14 13
		f 4 5 62 -14 -62
		mu 0 4 5 6 15 14
		f 4 6 63 -15 -63
		mu 0 4 6 7 16 15
		f 4 7 56 -16 -64
		mu 0 4 7 8 17 16
		f 4 8 65 -17 -65
		mu 0 4 9 10 19 18
		f 4 9 66 -18 -66
		mu 0 4 10 11 20 19
		f 4 10 67 -19 -67
		mu 0 4 11 12 21 20
		f 4 11 68 -20 -68
		mu 0 4 12 13 22 21
		f 4 12 69 -21 -69
		mu 0 4 13 14 23 22
		f 4 13 70 -22 -70
		mu 0 4 14 15 24 23
		f 4 14 71 -23 -71
		mu 0 4 15 16 25 24
		f 4 15 64 -24 -72
		mu 0 4 16 17 26 25
		f 4 16 73 -25 -73
		mu 0 4 18 19 28 27
		f 4 17 74 -26 -74
		mu 0 4 19 20 29 28
		f 4 18 75 -27 -75
		mu 0 4 20 21 30 29
		f 4 19 76 -28 -76
		mu 0 4 21 22 31 30
		f 4 20 77 -29 -77
		mu 0 4 22 23 32 31
		f 4 21 78 -30 -78
		mu 0 4 23 24 33 32
		f 4 22 79 -31 -79
		mu 0 4 24 25 34 33
		f 4 23 72 -32 -80
		mu 0 4 25 26 35 34
		f 4 24 81 -33 -81
		mu 0 4 27 28 37 36
		f 4 25 82 -34 -82
		mu 0 4 28 29 38 37
		f 4 26 83 -35 -83
		mu 0 4 29 30 39 38
		f 4 27 84 -36 -84
		mu 0 4 30 31 40 39
		f 4 28 85 -37 -85
		mu 0 4 31 32 41 40
		f 4 29 86 -38 -86
		mu 0 4 32 33 42 41
		f 4 30 87 -39 -87
		mu 0 4 33 34 43 42
		f 4 31 80 -40 -88
		mu 0 4 34 35 44 43
		f 4 32 89 -41 -89
		mu 0 4 36 37 46 45
		f 4 33 90 -42 -90
		mu 0 4 37 38 47 46
		f 4 34 91 -43 -91
		mu 0 4 38 39 48 47
		f 4 35 92 -44 -92
		mu 0 4 39 40 49 48
		f 4 36 93 -45 -93
		mu 0 4 40 41 50 49
		f 4 37 94 -46 -94
		mu 0 4 41 42 51 50
		f 4 38 95 -47 -95
		mu 0 4 42 43 52 51
		f 4 39 88 -48 -96
		mu 0 4 43 44 53 52
		f 4 40 97 -49 -97
		mu 0 4 45 46 55 54
		f 4 41 98 -50 -98
		mu 0 4 46 47 56 55
		f 4 42 99 -51 -99
		mu 0 4 47 48 57 56
		f 4 43 100 -52 -100
		mu 0 4 48 49 58 57
		f 4 44 101 -53 -101
		mu 0 4 49 50 59 58
		f 4 45 102 -54 -102
		mu 0 4 50 51 60 59
		f 4 46 103 -55 -103
		mu 0 4 51 52 61 60
		f 4 47 96 -56 -104
		mu 0 4 52 53 62 61
		f 3 -1 -105 105
		mu 0 3 1 0 63
		f 3 -2 -106 106
		mu 0 3 2 1 64
		f 3 -3 -107 107
		mu 0 3 3 2 65
		f 3 -4 -108 108
		mu 0 3 4 3 66
		f 3 -5 -109 109
		mu 0 3 5 4 67
		f 3 -6 -110 110
		mu 0 3 6 5 68
		f 3 -7 -111 111
		mu 0 3 7 6 69
		f 3 -8 -112 104
		mu 0 3 8 7 70
		f 3 48 113 -113
		mu 0 3 54 55 71
		f 3 49 114 -114
		mu 0 3 55 56 72
		f 3 50 115 -115
		mu 0 3 56 57 73
		f 3 51 116 -116
		mu 0 3 57 58 74
		f 3 52 117 -117
		mu 0 3 58 59 75
		f 3 53 118 -118
		mu 0 3 59 60 76
		f 3 54 119 -119
		mu 0 3 60 61 77
		f 3 55 112 -120
		mu 0 3 61 62 78;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "OrangeLight_Traffic_Light3" -p "Traffic_Light3";
	setAttr ".rp" -type "double3" 1.765 0.99 1.6005 ;
	setAttr ".sp" -type "double3" 1.765 0.99 1.6005 ;
createNode mesh -n "OrangeLight_Traffic_Light3Shape" -p "OrangeLight_Traffic_Light3";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 79 ".uvst[0].uvsp[0:78]" -type "float2" 0 0.125 0.125 0.125
		 0.25 0.125 0.375 0.125 0.5 0.125 0.625 0.125 0.75 0.125 0.875 0.125 1 0.125 0 0.25
		 0.125 0.25 0.25 0.25 0.375 0.25 0.5 0.25 0.625 0.25 0.75 0.25 0.875 0.25 1 0.25 0
		 0.375 0.125 0.375 0.25 0.375 0.375 0.375 0.5 0.375 0.625 0.375 0.75 0.375 0.875 0.375
		 1 0.375 0 0.5 0.125 0.5 0.25 0.5 0.375 0.5 0.5 0.5 0.625 0.5 0.75 0.5 0.875 0.5 1
		 0.5 0 0.625 0.125 0.625 0.25 0.625 0.375 0.625 0.5 0.625 0.625 0.625 0.75 0.625 0.875
		 0.625 1 0.625 0 0.75 0.125 0.75 0.25 0.75 0.375 0.75 0.5 0.75 0.625 0.75 0.75 0.75
		 0.875 0.75 1 0.75 0 0.875 0.125 0.875 0.25 0.875 0.375 0.875 0.5 0.875 0.625 0.875
		 0.75 0.875 0.875 0.875 1 0.875 0.0625 0 0.1875 0 0.3125 0 0.4375 0 0.5625 0 0.6875
		 0 0.8125 0 0.9375 0 0.0625 1 0.1875 1 0.3125 1 0.4375 1 0.5625 1 0.6875 1 0.8125
		 1 0.9375 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 58 ".vt[0:57]"  1.78258884 0.92994785 1.58291113 1.76499999 0.92994785 1.57562554
		 1.74741113 0.92994785 1.58291113 1.74012554 0.92994785 1.60049999 1.74741113 0.92994785 1.61808884
		 1.76499999 0.92994785 1.62537444 1.78258884 0.92994785 1.61808884 1.78987443 0.92994785 1.60049999
		 1.79750001 0.94403809 1.56799996 1.76499999 0.94403809 1.55453801 1.73249996 0.94403809 1.56799996
		 1.71903801 0.94403809 1.60049999 1.73249996 0.94403809 1.63300002 1.76499999 0.94403809 1.64646196
		 1.79750001 0.94403809 1.63300002 1.81096196 0.94403809 1.60049999 1.80746329 0.96512556 1.55803668
		 1.76499999 0.96512556 1.54044783 1.72253668 0.96512556 1.55803668 1.70494783 0.96512556 1.60049999
		 1.72253668 0.96512556 1.64296329 1.76499999 0.96512556 1.66055214 1.80746329 0.96512556 1.64296329
		 1.82505214 0.96512556 1.60049999 1.81096196 0.99000001 1.55453801 1.76499999 0.99000001 1.53550005
		 1.71903801 0.99000001 1.55453801 1.70000005 0.99000001 1.60049999 1.71903801 0.99000001 1.64646196
		 1.76499999 0.99000001 1.66549993 1.81096196 0.99000001 1.64646196 1.82999992 0.99000001 1.60049999
		 1.80746329 1.014874458 1.55803668 1.76499999 1.014874458 1.54044783 1.72253668 1.014874458 1.55803668
		 1.70494783 1.014874458 1.60049999 1.72253668 1.014874458 1.64296329 1.76499999 1.014874458 1.66055214
		 1.80746329 1.014874458 1.64296329 1.82505214 1.014874458 1.60049999 1.79750001 1.035961986 1.56799996
		 1.76499999 1.035961986 1.55453801 1.73249996 1.035961986 1.56799996 1.71903801 1.035961986 1.60049999
		 1.73249996 1.035961986 1.63300002 1.76499999 1.035961986 1.64646196 1.79750001 1.035961986 1.63300002
		 1.81096196 1.035961986 1.60049999 1.78258884 1.050052166 1.58291113 1.76499999 1.050052166 1.57562554
		 1.74741113 1.050052166 1.58291113 1.74012554 1.050052166 1.60049999 1.74741113 1.050052166 1.61808884
		 1.76499999 1.050052166 1.62537444 1.78258884 1.050052166 1.61808884 1.78987443 1.050052166 1.60049999
		 1.76499999 0.92500001 1.60049999 1.76499999 1.055000067 1.60049999;
	setAttr -s 120 ".ed[0:119]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 0 0 8 9 0 9 10 0 10 11 0 11 12 0 12 13 0 13 14 0 14 15 0 15 8 0 16 17 0 17 18 0
		 18 19 0 19 20 0 20 21 0 21 22 0 22 23 0 23 16 0 24 25 0 25 26 0 26 27 0 27 28 0 28 29 0
		 29 30 0 30 31 0 31 24 0 32 33 0 33 34 0 34 35 0 35 36 0 36 37 0 37 38 0 38 39 0 39 32 0
		 40 41 0 41 42 0 42 43 0 43 44 0 44 45 0 45 46 0 46 47 0 47 40 0 48 49 0 49 50 0 50 51 0
		 51 52 0 52 53 0 53 54 0 54 55 0 55 48 0 0 8 0 1 9 0 2 10 0 3 11 0 4 12 0 5 13 0 6 14 0
		 7 15 0 8 16 0 9 17 0 10 18 0 11 19 0 12 20 0 13 21 0 14 22 0 15 23 0 16 24 0 17 25 0
		 18 26 0 19 27 0 20 28 0 21 29 0 22 30 0 23 31 0 24 32 0 25 33 0 26 34 0 27 35 0 28 36 0
		 29 37 0 30 38 0 31 39 0 32 40 0 33 41 0 34 42 0 35 43 0 36 44 0 37 45 0 38 46 0 39 47 0
		 40 48 0 41 49 0 42 50 0 43 51 0 44 52 0 45 53 0 46 54 0 47 55 0 56 0 0 56 1 0 56 2 0
		 56 3 0 56 4 0 56 5 0 56 6 0 56 7 0 48 57 0 49 57 0 50 57 0 51 57 0 52 57 0 53 57 0
		 54 57 0 55 57 0;
	setAttr -s 64 -ch 240 ".fc[0:63]" -type "polyFaces" 
		f 4 0 57 -9 -57
		mu 0 4 0 1 10 9
		f 4 1 58 -10 -58
		mu 0 4 1 2 11 10
		f 4 2 59 -11 -59
		mu 0 4 2 3 12 11
		f 4 3 60 -12 -60
		mu 0 4 3 4 13 12
		f 4 4 61 -13 -61
		mu 0 4 4 5 14 13
		f 4 5 62 -14 -62
		mu 0 4 5 6 15 14
		f 4 6 63 -15 -63
		mu 0 4 6 7 16 15
		f 4 7 56 -16 -64
		mu 0 4 7 8 17 16
		f 4 8 65 -17 -65
		mu 0 4 9 10 19 18
		f 4 9 66 -18 -66
		mu 0 4 10 11 20 19
		f 4 10 67 -19 -67
		mu 0 4 11 12 21 20
		f 4 11 68 -20 -68
		mu 0 4 12 13 22 21
		f 4 12 69 -21 -69
		mu 0 4 13 14 23 22
		f 4 13 70 -22 -70
		mu 0 4 14 15 24 23
		f 4 14 71 -23 -71
		mu 0 4 15 16 25 24
		f 4 15 64 -24 -72
		mu 0 4 16 17 26 25
		f 4 16 73 -25 -73
		mu 0 4 18 19 28 27
		f 4 17 74 -26 -74
		mu 0 4 19 20 29 28
		f 4 18 75 -27 -75
		mu 0 4 20 21 30 29
		f 4 19 76 -28 -76
		mu 0 4 21 22 31 30
		f 4 20 77 -29 -77
		mu 0 4 22 23 32 31
		f 4 21 78 -30 -78
		mu 0 4 23 24 33 32
		f 4 22 79 -31 -79
		mu 0 4 24 25 34 33
		f 4 23 72 -32 -80
		mu 0 4 25 26 35 34
		f 4 24 81 -33 -81
		mu 0 4 27 28 37 36
		f 4 25 82 -34 -82
		mu 0 4 28 29 38 37
		f 4 26 83 -35 -83
		mu 0 4 29 30 39 38
		f 4 27 84 -36 -84
		mu 0 4 30 31 40 39
		f 4 28 85 -37 -85
		mu 0 4 31 32 41 40
		f 4 29 86 -38 -86
		mu 0 4 32 33 42 41
		f 4 30 87 -39 -87
		mu 0 4 33 34 43 42
		f 4 31 80 -40 -88
		mu 0 4 34 35 44 43
		f 4 32 89 -41 -89
		mu 0 4 36 37 46 45
		f 4 33 90 -42 -90
		mu 0 4 37 38 47 46
		f 4 34 91 -43 -91
		mu 0 4 38 39 48 47
		f 4 35 92 -44 -92
		mu 0 4 39 40 49 48
		f 4 36 93 -45 -93
		mu 0 4 40 41 50 49
		f 4 37 94 -46 -94
		mu 0 4 41 42 51 50
		f 4 38 95 -47 -95
		mu 0 4 42 43 52 51
		f 4 39 88 -48 -96
		mu 0 4 43 44 53 52
		f 4 40 97 -49 -97
		mu 0 4 45 46 55 54
		f 4 41 98 -50 -98
		mu 0 4 46 47 56 55
		f 4 42 99 -51 -99
		mu 0 4 47 48 57 56
		f 4 43 100 -52 -100
		mu 0 4 48 49 58 57
		f 4 44 101 -53 -101
		mu 0 4 49 50 59 58
		f 4 45 102 -54 -102
		mu 0 4 50 51 60 59
		f 4 46 103 -55 -103
		mu 0 4 51 52 61 60
		f 4 47 96 -56 -104
		mu 0 4 52 53 62 61
		f 3 -1 -105 105
		mu 0 3 1 0 63
		f 3 -2 -106 106
		mu 0 3 2 1 64
		f 3 -3 -107 107
		mu 0 3 3 2 65
		f 3 -4 -108 108
		mu 0 3 4 3 66
		f 3 -5 -109 109
		mu 0 3 5 4 67
		f 3 -6 -110 110
		mu 0 3 6 5 68
		f 3 -7 -111 111
		mu 0 3 7 6 69
		f 3 -8 -112 104
		mu 0 3 8 7 70
		f 3 48 113 -113
		mu 0 3 54 55 71
		f 3 49 114 -114
		mu 0 3 55 56 72
		f 3 50 115 -115
		mu 0 3 56 57 73
		f 3 51 116 -116
		mu 0 3 57 58 74
		f 3 52 117 -117
		mu 0 3 58 59 75
		f 3 53 118 -118
		mu 0 3 59 60 76
		f 3 54 119 -119
		mu 0 3 60 61 77
		f 3 55 112 -120
		mu 0 3 61 62 78;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "GreenLight_Traffic_Light3" -p "Traffic_Light3";
	setAttr ".rp" -type "double3" 1.765 0.83400000000000007 1.6005 ;
	setAttr ".sp" -type "double3" 1.765 0.83400000000000007 1.6005 ;
createNode mesh -n "GreenLight_Traffic_Light3Shape" -p "GreenLight_Traffic_Light3";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 79 ".uvst[0].uvsp[0:78]" -type "float2" 0 0.125 0.125 0.125
		 0.25 0.125 0.375 0.125 0.5 0.125 0.625 0.125 0.75 0.125 0.875 0.125 1 0.125 0 0.25
		 0.125 0.25 0.25 0.25 0.375 0.25 0.5 0.25 0.625 0.25 0.75 0.25 0.875 0.25 1 0.25 0
		 0.375 0.125 0.375 0.25 0.375 0.375 0.375 0.5 0.375 0.625 0.375 0.75 0.375 0.875 0.375
		 1 0.375 0 0.5 0.125 0.5 0.25 0.5 0.375 0.5 0.5 0.5 0.625 0.5 0.75 0.5 0.875 0.5 1
		 0.5 0 0.625 0.125 0.625 0.25 0.625 0.375 0.625 0.5 0.625 0.625 0.625 0.75 0.625 0.875
		 0.625 1 0.625 0 0.75 0.125 0.75 0.25 0.75 0.375 0.75 0.5 0.75 0.625 0.75 0.75 0.75
		 0.875 0.75 1 0.75 0 0.875 0.125 0.875 0.25 0.875 0.375 0.875 0.5 0.875 0.625 0.875
		 0.75 0.875 0.875 0.875 1 0.875 0.0625 0 0.1875 0 0.3125 0 0.4375 0 0.5625 0 0.6875
		 0 0.8125 0 0.9375 0 0.0625 1 0.1875 1 0.3125 1 0.4375 1 0.5625 1 0.6875 1 0.8125
		 1 0.9375 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 58 ".vt[0:57]"  1.78258884 0.77394783 1.58291113 1.76499999 0.77394783 1.57562554
		 1.74741113 0.77394783 1.58291113 1.74012554 0.77394783 1.60049999 1.74741113 0.77394783 1.61808884
		 1.76499999 0.77394783 1.62537444 1.78258884 0.77394783 1.61808884 1.78987443 0.77394783 1.60049999
		 1.79750001 0.78803807 1.56799996 1.76499999 0.78803807 1.55453801 1.73249996 0.78803807 1.56799996
		 1.71903801 0.78803807 1.60049999 1.73249996 0.78803807 1.63300002 1.76499999 0.78803807 1.64646196
		 1.79750001 0.78803807 1.63300002 1.81096196 0.78803807 1.60049999 1.80746329 0.80912554 1.55803668
		 1.76499999 0.80912554 1.54044783 1.72253668 0.80912554 1.55803668 1.70494783 0.80912554 1.60049999
		 1.72253668 0.80912554 1.64296329 1.76499999 0.80912554 1.66055214 1.80746329 0.80912554 1.64296329
		 1.82505214 0.80912554 1.60049999 1.81096196 0.83399999 1.55453801 1.76499999 0.83399999 1.53550005
		 1.71903801 0.83399999 1.55453801 1.70000005 0.83399999 1.60049999 1.71903801 0.83399999 1.64646196
		 1.76499999 0.83399999 1.66549993 1.81096196 0.83399999 1.64646196 1.82999992 0.83399999 1.60049999
		 1.80746329 0.85887444 1.55803668 1.76499999 0.85887444 1.54044783 1.72253668 0.85887444 1.55803668
		 1.70494783 0.85887444 1.60049999 1.72253668 0.85887444 1.64296329 1.76499999 0.85887444 1.66055214
		 1.80746329 0.85887444 1.64296329 1.82505214 0.85887444 1.60049999 1.79750001 0.87996191 1.56799996
		 1.76499999 0.87996191 1.55453801 1.73249996 0.87996191 1.56799996 1.71903801 0.87996191 1.60049999
		 1.73249996 0.87996191 1.63300002 1.76499999 0.87996191 1.64646196 1.79750001 0.87996191 1.63300002
		 1.81096196 0.87996191 1.60049999 1.78258884 0.89405215 1.58291113 1.76499999 0.89405215 1.57562554
		 1.74741113 0.89405215 1.58291113 1.74012554 0.89405215 1.60049999 1.74741113 0.89405215 1.61808884
		 1.76499999 0.89405215 1.62537444 1.78258884 0.89405215 1.61808884 1.78987443 0.89405215 1.60049999
		 1.76499999 0.76899999 1.60049999 1.76499999 0.89899999 1.60049999;
	setAttr -s 120 ".ed[0:119]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 0 0 8 9 0 9 10 0 10 11 0 11 12 0 12 13 0 13 14 0 14 15 0 15 8 0 16 17 0 17 18 0
		 18 19 0 19 20 0 20 21 0 21 22 0 22 23 0 23 16 0 24 25 0 25 26 0 26 27 0 27 28 0 28 29 0
		 29 30 0 30 31 0 31 24 0 32 33 0 33 34 0 34 35 0 35 36 0 36 37 0 37 38 0 38 39 0 39 32 0
		 40 41 0 41 42 0 42 43 0 43 44 0 44 45 0 45 46 0 46 47 0 47 40 0 48 49 0 49 50 0 50 51 0
		 51 52 0 52 53 0 53 54 0 54 55 0 55 48 0 0 8 0 1 9 0 2 10 0 3 11 0 4 12 0 5 13 0 6 14 0
		 7 15 0 8 16 0 9 17 0 10 18 0 11 19 0 12 20 0 13 21 0 14 22 0 15 23 0 16 24 0 17 25 0
		 18 26 0 19 27 0 20 28 0 21 29 0 22 30 0 23 31 0 24 32 0 25 33 0 26 34 0 27 35 0 28 36 0
		 29 37 0 30 38 0 31 39 0 32 40 0 33 41 0 34 42 0 35 43 0 36 44 0 37 45 0 38 46 0 39 47 0
		 40 48 0 41 49 0 42 50 0 43 51 0 44 52 0 45 53 0 46 54 0 47 55 0 56 0 0 56 1 0 56 2 0
		 56 3 0 56 4 0 56 5 0 56 6 0 56 7 0 48 57 0 49 57 0 50 57 0 51 57 0 52 57 0 53 57 0
		 54 57 0 55 57 0;
	setAttr -s 64 -ch 240 ".fc[0:63]" -type "polyFaces" 
		f 4 0 57 -9 -57
		mu 0 4 0 1 10 9
		f 4 1 58 -10 -58
		mu 0 4 1 2 11 10
		f 4 2 59 -11 -59
		mu 0 4 2 3 12 11
		f 4 3 60 -12 -60
		mu 0 4 3 4 13 12
		f 4 4 61 -13 -61
		mu 0 4 4 5 14 13
		f 4 5 62 -14 -62
		mu 0 4 5 6 15 14
		f 4 6 63 -15 -63
		mu 0 4 6 7 16 15
		f 4 7 56 -16 -64
		mu 0 4 7 8 17 16
		f 4 8 65 -17 -65
		mu 0 4 9 10 19 18
		f 4 9 66 -18 -66
		mu 0 4 10 11 20 19
		f 4 10 67 -19 -67
		mu 0 4 11 12 21 20
		f 4 11 68 -20 -68
		mu 0 4 12 13 22 21
		f 4 12 69 -21 -69
		mu 0 4 13 14 23 22
		f 4 13 70 -22 -70
		mu 0 4 14 15 24 23
		f 4 14 71 -23 -71
		mu 0 4 15 16 25 24
		f 4 15 64 -24 -72
		mu 0 4 16 17 26 25
		f 4 16 73 -25 -73
		mu 0 4 18 19 28 27
		f 4 17 74 -26 -74
		mu 0 4 19 20 29 28
		f 4 18 75 -27 -75
		mu 0 4 20 21 30 29
		f 4 19 76 -28 -76
		mu 0 4 21 22 31 30
		f 4 20 77 -29 -77
		mu 0 4 22 23 32 31
		f 4 21 78 -30 -78
		mu 0 4 23 24 33 32
		f 4 22 79 -31 -79
		mu 0 4 24 25 34 33
		f 4 23 72 -32 -80
		mu 0 4 25 26 35 34
		f 4 24 81 -33 -81
		mu 0 4 27 28 37 36
		f 4 25 82 -34 -82
		mu 0 4 28 29 38 37
		f 4 26 83 -35 -83
		mu 0 4 29 30 39 38
		f 4 27 84 -36 -84
		mu 0 4 30 31 40 39
		f 4 28 85 -37 -85
		mu 0 4 31 32 41 40
		f 4 29 86 -38 -86
		mu 0 4 32 33 42 41
		f 4 30 87 -39 -87
		mu 0 4 33 34 43 42
		f 4 31 80 -40 -88
		mu 0 4 34 35 44 43
		f 4 32 89 -41 -89
		mu 0 4 36 37 46 45
		f 4 33 90 -42 -90
		mu 0 4 37 38 47 46
		f 4 34 91 -43 -91
		mu 0 4 38 39 48 47
		f 4 35 92 -44 -92
		mu 0 4 39 40 49 48
		f 4 36 93 -45 -93
		mu 0 4 40 41 50 49
		f 4 37 94 -46 -94
		mu 0 4 41 42 51 50
		f 4 38 95 -47 -95
		mu 0 4 42 43 52 51
		f 4 39 88 -48 -96
		mu 0 4 43 44 53 52
		f 4 40 97 -49 -97
		mu 0 4 45 46 55 54
		f 4 41 98 -50 -98
		mu 0 4 46 47 56 55
		f 4 42 99 -51 -99
		mu 0 4 47 48 57 56
		f 4 43 100 -52 -100
		mu 0 4 48 49 58 57
		f 4 44 101 -53 -101
		mu 0 4 49 50 59 58
		f 4 45 102 -54 -102
		mu 0 4 50 51 60 59
		f 4 46 103 -55 -103
		mu 0 4 51 52 61 60
		f 4 47 96 -56 -104
		mu 0 4 52 53 62 61
		f 3 -1 -105 105
		mu 0 3 1 0 63
		f 3 -2 -106 106
		mu 0 3 2 1 64
		f 3 -3 -107 107
		mu 0 3 3 2 65
		f 3 -4 -108 108
		mu 0 3 4 3 66
		f 3 -5 -109 109
		mu 0 3 5 4 67
		f 3 -6 -110 110
		mu 0 3 6 5 68
		f 3 -7 -111 111
		mu 0 3 7 6 69
		f 3 -8 -112 104
		mu 0 3 8 7 70
		f 3 48 113 -113
		mu 0 3 54 55 71
		f 3 49 114 -114
		mu 0 3 55 56 72
		f 3 50 115 -115
		mu 0 3 56 57 73
		f 3 51 116 -116
		mu 0 3 57 58 74
		f 3 52 117 -117
		mu 0 3 58 59 75
		f 3 53 118 -118
		mu 0 3 59 60 76
		f 3 54 119 -119
		mu 0 3 60 61 77
		f 3 55 112 -120
		mu 0 3 61 62 78;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Traffic_Light5" -p "Linked_Traffic_Grp1";
	setAttr ".t" -type "double3" 0 -1.7763568394002505e-015 8 ;
	setAttr ".rp" -type "double3" 1.765 0.6 1.75 ;
	setAttr ".sp" -type "double3" 1.765 0.6 1.75 ;
createNode mesh -n "Traffic_Light5Shape" -p "Traffic_Light5";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 32 ".uvst[0].uvsp[0:31]" -type "float2" 0.33000001 0 0.66333336
		 0 0.33000001 0.125 0.66333336 0.125 0.33000001 0.25 0.66333336 0.25 0.33000001 0.5
		 0.66333336 0.5 0.33000001 0.625 0.66333336 0.625 0.33000001 0.75 0.66333336 0.75
		 0.33000001 1 0.66333336 1 1 0 1 0.125 1 0.25 0 0 0 0.125 0 0.25 0.33000001 0.125
		 0.66333336 0.125 0.66333336 0.25 0.33000001 0.25 0.33000001 0.5 0.66333336 0.5 0.66333336
		 0.625 0.33000001 0.625 1 0.125 1 0.25 0 0.125 0 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 20 ".vt[0:19]"  1.70000005 -0.049999952 1.81500006 1.82999992 -0.049999952 1.81500006
		 1.70000005 0.73000002 1.81500006 1.82999992 0.73000002 1.81500006 1.70000005 1.25 1.81500006
		 1.82999992 1.25 1.81500006 1.70000005 1.25 1.68499994 1.82999992 1.25 1.68499994
		 1.70000005 0.73000002 1.68499994 1.82999992 0.73000002 1.68499994 1.70000005 -0.049999952 1.68499994
		 1.82999992 -0.049999952 1.68499994 1.61549997 0.73000002 1.89950001 1.9145 0.73000002 1.89950001
		 1.9145 1.25 1.89950001 1.61549997 1.25 1.89950001 1.61549997 1.25 1.60049999 1.9145 1.25 1.60049999
		 1.9145 0.73000002 1.60049999 1.61549997 0.73000002 1.60049999;
	setAttr -s 36 ".ed[0:35]"  0 1 0 2 3 0 4 5 1 6 7 1 8 9 0 10 11 0 0 2 0
		 1 3 0 4 6 1 5 7 1 8 10 0 9 11 0 10 0 0 11 1 0 9 3 0 8 2 0 2 12 1 3 13 1 12 13 0 5 14 1
		 13 14 0 4 15 1 15 14 0 12 15 0 6 16 1 7 17 1 16 17 0 9 18 1 17 18 0 8 19 1 19 18 0
		 16 19 0 18 13 0 14 17 0 19 12 0 15 16 0;
	setAttr -s 18 -ch 72 ".fc[0:17]" -type "polyFaces" 
		f 4 0 7 -2 -7
		mu 0 4 0 1 3 2
		f 4 18 20 -23 -24
		mu 0 4 20 21 22 23
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 26 28 -31 -32
		mu 0 4 24 25 26 27
		f 4 4 11 -6 -11
		mu 0 4 8 9 11 10
		f 4 5 13 -1 -13
		mu 0 4 10 11 13 12
		f 4 -14 -12 14 -8
		mu 0 4 1 14 15 3
		f 4 -33 -29 -34 -21
		mu 0 4 21 28 29 22
		f 4 12 6 -16 10
		mu 0 4 17 0 2 18
		f 4 34 23 35 31
		mu 0 4 30 20 23 31
		f 4 1 17 -19 -17
		mu 0 4 2 3 21 20
		f 4 -3 21 22 -20
		mu 0 4 5 4 23 22
		f 4 3 25 -27 -25
		mu 0 4 6 7 25 24
		f 4 -5 29 30 -28
		mu 0 4 9 8 27 26
		f 4 -15 27 32 -18
		mu 0 4 3 15 28 21
		f 4 -10 19 33 -26
		mu 0 4 16 5 22 29
		f 4 15 16 -35 -30
		mu 0 4 18 2 20 30
		f 4 8 24 -36 -22
		mu 0 4 4 19 31 23;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "RedLight_Traffic_Light5" -p "Traffic_Light5";
	setAttr ".rp" -type "double3" 1.765 1.146 1.6005 ;
	setAttr ".sp" -type "double3" 1.765 1.146 1.6005 ;
createNode mesh -n "RedLight_Traffic_Light5Shape" -p "RedLight_Traffic_Light5";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 79 ".uvst[0].uvsp[0:78]" -type "float2" 0 0.125 0.125 0.125
		 0.25 0.125 0.375 0.125 0.5 0.125 0.625 0.125 0.75 0.125 0.875 0.125 1 0.125 0 0.25
		 0.125 0.25 0.25 0.25 0.375 0.25 0.5 0.25 0.625 0.25 0.75 0.25 0.875 0.25 1 0.25 0
		 0.375 0.125 0.375 0.25 0.375 0.375 0.375 0.5 0.375 0.625 0.375 0.75 0.375 0.875 0.375
		 1 0.375 0 0.5 0.125 0.5 0.25 0.5 0.375 0.5 0.5 0.5 0.625 0.5 0.75 0.5 0.875 0.5 1
		 0.5 0 0.625 0.125 0.625 0.25 0.625 0.375 0.625 0.5 0.625 0.625 0.625 0.75 0.625 0.875
		 0.625 1 0.625 0 0.75 0.125 0.75 0.25 0.75 0.375 0.75 0.5 0.75 0.625 0.75 0.75 0.75
		 0.875 0.75 1 0.75 0 0.875 0.125 0.875 0.25 0.875 0.375 0.875 0.5 0.875 0.625 0.875
		 0.75 0.875 0.875 0.875 1 0.875 0.0625 0 0.1875 0 0.3125 0 0.4375 0 0.5625 0 0.6875
		 0 0.8125 0 0.9375 0 0.0625 1 0.1875 1 0.3125 1 0.4375 1 0.5625 1 0.6875 1 0.8125
		 1 0.9375 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 58 ".vt[0:57]"  1.78258884 1.085947871 1.58291113 1.76499999 1.085947871 1.57562554
		 1.74741113 1.085947871 1.58291113 1.74012554 1.085947871 1.60049999 1.74741113 1.085947871 1.61808884
		 1.76499999 1.085947871 1.62537444 1.78258884 1.085947871 1.61808884 1.78987443 1.085947871 1.60049999
		 1.79750001 1.10003805 1.56799996 1.76499999 1.10003805 1.55453801 1.73249996 1.10003805 1.56799996
		 1.71903801 1.10003805 1.60049999 1.73249996 1.10003805 1.63300002 1.76499999 1.10003805 1.64646196
		 1.79750001 1.10003805 1.63300002 1.81096196 1.10003805 1.60049999 1.80746329 1.12112558 1.55803668
		 1.76499999 1.12112558 1.54044783 1.72253668 1.12112558 1.55803668 1.70494783 1.12112558 1.60049999
		 1.72253668 1.12112558 1.64296329 1.76499999 1.12112558 1.66055214 1.80746329 1.12112558 1.64296329
		 1.82505214 1.12112558 1.60049999 1.81096196 1.14600003 1.55453801 1.76499999 1.14600003 1.53550005
		 1.71903801 1.14600003 1.55453801 1.70000005 1.14600003 1.60049999 1.71903801 1.14600003 1.64646196
		 1.76499999 1.14600003 1.66549993 1.81096196 1.14600003 1.64646196 1.82999992 1.14600003 1.60049999
		 1.80746329 1.17087448 1.55803668 1.76499999 1.17087448 1.54044783 1.72253668 1.17087448 1.55803668
		 1.70494783 1.17087448 1.60049999 1.72253668 1.17087448 1.64296329 1.76499999 1.17087448 1.66055214
		 1.80746329 1.17087448 1.64296329 1.82505214 1.17087448 1.60049999 1.79750001 1.191962 1.56799996
		 1.76499999 1.191962 1.55453801 1.73249996 1.191962 1.56799996 1.71903801 1.191962 1.60049999
		 1.73249996 1.191962 1.63300002 1.76499999 1.191962 1.64646196 1.79750001 1.191962 1.63300002
		 1.81096196 1.191962 1.60049999 1.78258884 1.20605218 1.58291113 1.76499999 1.20605218 1.57562554
		 1.74741113 1.20605218 1.58291113 1.74012554 1.20605218 1.60049999 1.74741113 1.20605218 1.61808884
		 1.76499999 1.20605218 1.62537444 1.78258884 1.20605218 1.61808884 1.78987443 1.20605218 1.60049999
		 1.76499999 1.08100009 1.60049999 1.76499999 1.21099997 1.60049999;
	setAttr -s 120 ".ed[0:119]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 0 0 8 9 0 9 10 0 10 11 0 11 12 0 12 13 0 13 14 0 14 15 0 15 8 0 16 17 0 17 18 0
		 18 19 0 19 20 0 20 21 0 21 22 0 22 23 0 23 16 0 24 25 0 25 26 0 26 27 0 27 28 0 28 29 0
		 29 30 0 30 31 0 31 24 0 32 33 0 33 34 0 34 35 0 35 36 0 36 37 0 37 38 0 38 39 0 39 32 0
		 40 41 0 41 42 0 42 43 0 43 44 0 44 45 0 45 46 0 46 47 0 47 40 0 48 49 0 49 50 0 50 51 0
		 51 52 0 52 53 0 53 54 0 54 55 0 55 48 0 0 8 0 1 9 0 2 10 0 3 11 0 4 12 0 5 13 0 6 14 0
		 7 15 0 8 16 0 9 17 0 10 18 0 11 19 0 12 20 0 13 21 0 14 22 0 15 23 0 16 24 0 17 25 0
		 18 26 0 19 27 0 20 28 0 21 29 0 22 30 0 23 31 0 24 32 0 25 33 0 26 34 0 27 35 0 28 36 0
		 29 37 0 30 38 0 31 39 0 32 40 0 33 41 0 34 42 0 35 43 0 36 44 0 37 45 0 38 46 0 39 47 0
		 40 48 0 41 49 0 42 50 0 43 51 0 44 52 0 45 53 0 46 54 0 47 55 0 56 0 0 56 1 0 56 2 0
		 56 3 0 56 4 0 56 5 0 56 6 0 56 7 0 48 57 0 49 57 0 50 57 0 51 57 0 52 57 0 53 57 0
		 54 57 0 55 57 0;
	setAttr -s 64 -ch 240 ".fc[0:63]" -type "polyFaces" 
		f 4 0 57 -9 -57
		mu 0 4 0 1 10 9
		f 4 1 58 -10 -58
		mu 0 4 1 2 11 10
		f 4 2 59 -11 -59
		mu 0 4 2 3 12 11
		f 4 3 60 -12 -60
		mu 0 4 3 4 13 12
		f 4 4 61 -13 -61
		mu 0 4 4 5 14 13
		f 4 5 62 -14 -62
		mu 0 4 5 6 15 14
		f 4 6 63 -15 -63
		mu 0 4 6 7 16 15
		f 4 7 56 -16 -64
		mu 0 4 7 8 17 16
		f 4 8 65 -17 -65
		mu 0 4 9 10 19 18
		f 4 9 66 -18 -66
		mu 0 4 10 11 20 19
		f 4 10 67 -19 -67
		mu 0 4 11 12 21 20
		f 4 11 68 -20 -68
		mu 0 4 12 13 22 21
		f 4 12 69 -21 -69
		mu 0 4 13 14 23 22
		f 4 13 70 -22 -70
		mu 0 4 14 15 24 23
		f 4 14 71 -23 -71
		mu 0 4 15 16 25 24
		f 4 15 64 -24 -72
		mu 0 4 16 17 26 25
		f 4 16 73 -25 -73
		mu 0 4 18 19 28 27
		f 4 17 74 -26 -74
		mu 0 4 19 20 29 28
		f 4 18 75 -27 -75
		mu 0 4 20 21 30 29
		f 4 19 76 -28 -76
		mu 0 4 21 22 31 30
		f 4 20 77 -29 -77
		mu 0 4 22 23 32 31
		f 4 21 78 -30 -78
		mu 0 4 23 24 33 32
		f 4 22 79 -31 -79
		mu 0 4 24 25 34 33
		f 4 23 72 -32 -80
		mu 0 4 25 26 35 34
		f 4 24 81 -33 -81
		mu 0 4 27 28 37 36
		f 4 25 82 -34 -82
		mu 0 4 28 29 38 37
		f 4 26 83 -35 -83
		mu 0 4 29 30 39 38
		f 4 27 84 -36 -84
		mu 0 4 30 31 40 39
		f 4 28 85 -37 -85
		mu 0 4 31 32 41 40
		f 4 29 86 -38 -86
		mu 0 4 32 33 42 41
		f 4 30 87 -39 -87
		mu 0 4 33 34 43 42
		f 4 31 80 -40 -88
		mu 0 4 34 35 44 43
		f 4 32 89 -41 -89
		mu 0 4 36 37 46 45
		f 4 33 90 -42 -90
		mu 0 4 37 38 47 46
		f 4 34 91 -43 -91
		mu 0 4 38 39 48 47
		f 4 35 92 -44 -92
		mu 0 4 39 40 49 48
		f 4 36 93 -45 -93
		mu 0 4 40 41 50 49
		f 4 37 94 -46 -94
		mu 0 4 41 42 51 50
		f 4 38 95 -47 -95
		mu 0 4 42 43 52 51
		f 4 39 88 -48 -96
		mu 0 4 43 44 53 52
		f 4 40 97 -49 -97
		mu 0 4 45 46 55 54
		f 4 41 98 -50 -98
		mu 0 4 46 47 56 55
		f 4 42 99 -51 -99
		mu 0 4 47 48 57 56
		f 4 43 100 -52 -100
		mu 0 4 48 49 58 57
		f 4 44 101 -53 -101
		mu 0 4 49 50 59 58
		f 4 45 102 -54 -102
		mu 0 4 50 51 60 59
		f 4 46 103 -55 -103
		mu 0 4 51 52 61 60
		f 4 47 96 -56 -104
		mu 0 4 52 53 62 61
		f 3 -1 -105 105
		mu 0 3 1 0 63
		f 3 -2 -106 106
		mu 0 3 2 1 64
		f 3 -3 -107 107
		mu 0 3 3 2 65
		f 3 -4 -108 108
		mu 0 3 4 3 66
		f 3 -5 -109 109
		mu 0 3 5 4 67
		f 3 -6 -110 110
		mu 0 3 6 5 68
		f 3 -7 -111 111
		mu 0 3 7 6 69
		f 3 -8 -112 104
		mu 0 3 8 7 70
		f 3 48 113 -113
		mu 0 3 54 55 71
		f 3 49 114 -114
		mu 0 3 55 56 72
		f 3 50 115 -115
		mu 0 3 56 57 73
		f 3 51 116 -116
		mu 0 3 57 58 74
		f 3 52 117 -117
		mu 0 3 58 59 75
		f 3 53 118 -118
		mu 0 3 59 60 76
		f 3 54 119 -119
		mu 0 3 60 61 77
		f 3 55 112 -120
		mu 0 3 61 62 78;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "OrangeLight_Traffic_Light5" -p "Traffic_Light5";
	setAttr ".rp" -type "double3" 1.765 0.99 1.6005 ;
	setAttr ".sp" -type "double3" 1.765 0.99 1.6005 ;
createNode mesh -n "OrangeLight_Traffic_Light5Shape" -p "OrangeLight_Traffic_Light5";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 79 ".uvst[0].uvsp[0:78]" -type "float2" 0 0.125 0.125 0.125
		 0.25 0.125 0.375 0.125 0.5 0.125 0.625 0.125 0.75 0.125 0.875 0.125 1 0.125 0 0.25
		 0.125 0.25 0.25 0.25 0.375 0.25 0.5 0.25 0.625 0.25 0.75 0.25 0.875 0.25 1 0.25 0
		 0.375 0.125 0.375 0.25 0.375 0.375 0.375 0.5 0.375 0.625 0.375 0.75 0.375 0.875 0.375
		 1 0.375 0 0.5 0.125 0.5 0.25 0.5 0.375 0.5 0.5 0.5 0.625 0.5 0.75 0.5 0.875 0.5 1
		 0.5 0 0.625 0.125 0.625 0.25 0.625 0.375 0.625 0.5 0.625 0.625 0.625 0.75 0.625 0.875
		 0.625 1 0.625 0 0.75 0.125 0.75 0.25 0.75 0.375 0.75 0.5 0.75 0.625 0.75 0.75 0.75
		 0.875 0.75 1 0.75 0 0.875 0.125 0.875 0.25 0.875 0.375 0.875 0.5 0.875 0.625 0.875
		 0.75 0.875 0.875 0.875 1 0.875 0.0625 0 0.1875 0 0.3125 0 0.4375 0 0.5625 0 0.6875
		 0 0.8125 0 0.9375 0 0.0625 1 0.1875 1 0.3125 1 0.4375 1 0.5625 1 0.6875 1 0.8125
		 1 0.9375 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 58 ".vt[0:57]"  1.78258884 0.92994785 1.58291113 1.76499999 0.92994785 1.57562554
		 1.74741113 0.92994785 1.58291113 1.74012554 0.92994785 1.60049999 1.74741113 0.92994785 1.61808884
		 1.76499999 0.92994785 1.62537444 1.78258884 0.92994785 1.61808884 1.78987443 0.92994785 1.60049999
		 1.79750001 0.94403809 1.56799996 1.76499999 0.94403809 1.55453801 1.73249996 0.94403809 1.56799996
		 1.71903801 0.94403809 1.60049999 1.73249996 0.94403809 1.63300002 1.76499999 0.94403809 1.64646196
		 1.79750001 0.94403809 1.63300002 1.81096196 0.94403809 1.60049999 1.80746329 0.96512556 1.55803668
		 1.76499999 0.96512556 1.54044783 1.72253668 0.96512556 1.55803668 1.70494783 0.96512556 1.60049999
		 1.72253668 0.96512556 1.64296329 1.76499999 0.96512556 1.66055214 1.80746329 0.96512556 1.64296329
		 1.82505214 0.96512556 1.60049999 1.81096196 0.99000001 1.55453801 1.76499999 0.99000001 1.53550005
		 1.71903801 0.99000001 1.55453801 1.70000005 0.99000001 1.60049999 1.71903801 0.99000001 1.64646196
		 1.76499999 0.99000001 1.66549993 1.81096196 0.99000001 1.64646196 1.82999992 0.99000001 1.60049999
		 1.80746329 1.014874458 1.55803668 1.76499999 1.014874458 1.54044783 1.72253668 1.014874458 1.55803668
		 1.70494783 1.014874458 1.60049999 1.72253668 1.014874458 1.64296329 1.76499999 1.014874458 1.66055214
		 1.80746329 1.014874458 1.64296329 1.82505214 1.014874458 1.60049999 1.79750001 1.035961986 1.56799996
		 1.76499999 1.035961986 1.55453801 1.73249996 1.035961986 1.56799996 1.71903801 1.035961986 1.60049999
		 1.73249996 1.035961986 1.63300002 1.76499999 1.035961986 1.64646196 1.79750001 1.035961986 1.63300002
		 1.81096196 1.035961986 1.60049999 1.78258884 1.050052166 1.58291113 1.76499999 1.050052166 1.57562554
		 1.74741113 1.050052166 1.58291113 1.74012554 1.050052166 1.60049999 1.74741113 1.050052166 1.61808884
		 1.76499999 1.050052166 1.62537444 1.78258884 1.050052166 1.61808884 1.78987443 1.050052166 1.60049999
		 1.76499999 0.92500001 1.60049999 1.76499999 1.055000067 1.60049999;
	setAttr -s 120 ".ed[0:119]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 0 0 8 9 0 9 10 0 10 11 0 11 12 0 12 13 0 13 14 0 14 15 0 15 8 0 16 17 0 17 18 0
		 18 19 0 19 20 0 20 21 0 21 22 0 22 23 0 23 16 0 24 25 0 25 26 0 26 27 0 27 28 0 28 29 0
		 29 30 0 30 31 0 31 24 0 32 33 0 33 34 0 34 35 0 35 36 0 36 37 0 37 38 0 38 39 0 39 32 0
		 40 41 0 41 42 0 42 43 0 43 44 0 44 45 0 45 46 0 46 47 0 47 40 0 48 49 0 49 50 0 50 51 0
		 51 52 0 52 53 0 53 54 0 54 55 0 55 48 0 0 8 0 1 9 0 2 10 0 3 11 0 4 12 0 5 13 0 6 14 0
		 7 15 0 8 16 0 9 17 0 10 18 0 11 19 0 12 20 0 13 21 0 14 22 0 15 23 0 16 24 0 17 25 0
		 18 26 0 19 27 0 20 28 0 21 29 0 22 30 0 23 31 0 24 32 0 25 33 0 26 34 0 27 35 0 28 36 0
		 29 37 0 30 38 0 31 39 0 32 40 0 33 41 0 34 42 0 35 43 0 36 44 0 37 45 0 38 46 0 39 47 0
		 40 48 0 41 49 0 42 50 0 43 51 0 44 52 0 45 53 0 46 54 0 47 55 0 56 0 0 56 1 0 56 2 0
		 56 3 0 56 4 0 56 5 0 56 6 0 56 7 0 48 57 0 49 57 0 50 57 0 51 57 0 52 57 0 53 57 0
		 54 57 0 55 57 0;
	setAttr -s 64 -ch 240 ".fc[0:63]" -type "polyFaces" 
		f 4 0 57 -9 -57
		mu 0 4 0 1 10 9
		f 4 1 58 -10 -58
		mu 0 4 1 2 11 10
		f 4 2 59 -11 -59
		mu 0 4 2 3 12 11
		f 4 3 60 -12 -60
		mu 0 4 3 4 13 12
		f 4 4 61 -13 -61
		mu 0 4 4 5 14 13
		f 4 5 62 -14 -62
		mu 0 4 5 6 15 14
		f 4 6 63 -15 -63
		mu 0 4 6 7 16 15
		f 4 7 56 -16 -64
		mu 0 4 7 8 17 16
		f 4 8 65 -17 -65
		mu 0 4 9 10 19 18
		f 4 9 66 -18 -66
		mu 0 4 10 11 20 19
		f 4 10 67 -19 -67
		mu 0 4 11 12 21 20
		f 4 11 68 -20 -68
		mu 0 4 12 13 22 21
		f 4 12 69 -21 -69
		mu 0 4 13 14 23 22
		f 4 13 70 -22 -70
		mu 0 4 14 15 24 23
		f 4 14 71 -23 -71
		mu 0 4 15 16 25 24
		f 4 15 64 -24 -72
		mu 0 4 16 17 26 25
		f 4 16 73 -25 -73
		mu 0 4 18 19 28 27
		f 4 17 74 -26 -74
		mu 0 4 19 20 29 28
		f 4 18 75 -27 -75
		mu 0 4 20 21 30 29
		f 4 19 76 -28 -76
		mu 0 4 21 22 31 30
		f 4 20 77 -29 -77
		mu 0 4 22 23 32 31
		f 4 21 78 -30 -78
		mu 0 4 23 24 33 32
		f 4 22 79 -31 -79
		mu 0 4 24 25 34 33
		f 4 23 72 -32 -80
		mu 0 4 25 26 35 34
		f 4 24 81 -33 -81
		mu 0 4 27 28 37 36
		f 4 25 82 -34 -82
		mu 0 4 28 29 38 37
		f 4 26 83 -35 -83
		mu 0 4 29 30 39 38
		f 4 27 84 -36 -84
		mu 0 4 30 31 40 39
		f 4 28 85 -37 -85
		mu 0 4 31 32 41 40
		f 4 29 86 -38 -86
		mu 0 4 32 33 42 41
		f 4 30 87 -39 -87
		mu 0 4 33 34 43 42
		f 4 31 80 -40 -88
		mu 0 4 34 35 44 43
		f 4 32 89 -41 -89
		mu 0 4 36 37 46 45
		f 4 33 90 -42 -90
		mu 0 4 37 38 47 46
		f 4 34 91 -43 -91
		mu 0 4 38 39 48 47
		f 4 35 92 -44 -92
		mu 0 4 39 40 49 48
		f 4 36 93 -45 -93
		mu 0 4 40 41 50 49
		f 4 37 94 -46 -94
		mu 0 4 41 42 51 50
		f 4 38 95 -47 -95
		mu 0 4 42 43 52 51
		f 4 39 88 -48 -96
		mu 0 4 43 44 53 52
		f 4 40 97 -49 -97
		mu 0 4 45 46 55 54
		f 4 41 98 -50 -98
		mu 0 4 46 47 56 55
		f 4 42 99 -51 -99
		mu 0 4 47 48 57 56
		f 4 43 100 -52 -100
		mu 0 4 48 49 58 57
		f 4 44 101 -53 -101
		mu 0 4 49 50 59 58
		f 4 45 102 -54 -102
		mu 0 4 50 51 60 59
		f 4 46 103 -55 -103
		mu 0 4 51 52 61 60
		f 4 47 96 -56 -104
		mu 0 4 52 53 62 61
		f 3 -1 -105 105
		mu 0 3 1 0 63
		f 3 -2 -106 106
		mu 0 3 2 1 64
		f 3 -3 -107 107
		mu 0 3 3 2 65
		f 3 -4 -108 108
		mu 0 3 4 3 66
		f 3 -5 -109 109
		mu 0 3 5 4 67
		f 3 -6 -110 110
		mu 0 3 6 5 68
		f 3 -7 -111 111
		mu 0 3 7 6 69
		f 3 -8 -112 104
		mu 0 3 8 7 70
		f 3 48 113 -113
		mu 0 3 54 55 71
		f 3 49 114 -114
		mu 0 3 55 56 72
		f 3 50 115 -115
		mu 0 3 56 57 73
		f 3 51 116 -116
		mu 0 3 57 58 74
		f 3 52 117 -117
		mu 0 3 58 59 75
		f 3 53 118 -118
		mu 0 3 59 60 76
		f 3 54 119 -119
		mu 0 3 60 61 77
		f 3 55 112 -120
		mu 0 3 61 62 78;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "GreenLight_Traffic_Light5" -p "Traffic_Light5";
	setAttr ".rp" -type "double3" 1.765 0.83400000000000007 1.6005 ;
	setAttr ".sp" -type "double3" 1.765 0.83400000000000007 1.6005 ;
createNode mesh -n "GreenLight_Traffic_Light5Shape" -p "GreenLight_Traffic_Light5";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 79 ".uvst[0].uvsp[0:78]" -type "float2" 0 0.125 0.125 0.125
		 0.25 0.125 0.375 0.125 0.5 0.125 0.625 0.125 0.75 0.125 0.875 0.125 1 0.125 0 0.25
		 0.125 0.25 0.25 0.25 0.375 0.25 0.5 0.25 0.625 0.25 0.75 0.25 0.875 0.25 1 0.25 0
		 0.375 0.125 0.375 0.25 0.375 0.375 0.375 0.5 0.375 0.625 0.375 0.75 0.375 0.875 0.375
		 1 0.375 0 0.5 0.125 0.5 0.25 0.5 0.375 0.5 0.5 0.5 0.625 0.5 0.75 0.5 0.875 0.5 1
		 0.5 0 0.625 0.125 0.625 0.25 0.625 0.375 0.625 0.5 0.625 0.625 0.625 0.75 0.625 0.875
		 0.625 1 0.625 0 0.75 0.125 0.75 0.25 0.75 0.375 0.75 0.5 0.75 0.625 0.75 0.75 0.75
		 0.875 0.75 1 0.75 0 0.875 0.125 0.875 0.25 0.875 0.375 0.875 0.5 0.875 0.625 0.875
		 0.75 0.875 0.875 0.875 1 0.875 0.0625 0 0.1875 0 0.3125 0 0.4375 0 0.5625 0 0.6875
		 0 0.8125 0 0.9375 0 0.0625 1 0.1875 1 0.3125 1 0.4375 1 0.5625 1 0.6875 1 0.8125
		 1 0.9375 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 58 ".vt[0:57]"  1.78258884 0.77394783 1.58291113 1.76499999 0.77394783 1.57562554
		 1.74741113 0.77394783 1.58291113 1.74012554 0.77394783 1.60049999 1.74741113 0.77394783 1.61808884
		 1.76499999 0.77394783 1.62537444 1.78258884 0.77394783 1.61808884 1.78987443 0.77394783 1.60049999
		 1.79750001 0.78803807 1.56799996 1.76499999 0.78803807 1.55453801 1.73249996 0.78803807 1.56799996
		 1.71903801 0.78803807 1.60049999 1.73249996 0.78803807 1.63300002 1.76499999 0.78803807 1.64646196
		 1.79750001 0.78803807 1.63300002 1.81096196 0.78803807 1.60049999 1.80746329 0.80912554 1.55803668
		 1.76499999 0.80912554 1.54044783 1.72253668 0.80912554 1.55803668 1.70494783 0.80912554 1.60049999
		 1.72253668 0.80912554 1.64296329 1.76499999 0.80912554 1.66055214 1.80746329 0.80912554 1.64296329
		 1.82505214 0.80912554 1.60049999 1.81096196 0.83399999 1.55453801 1.76499999 0.83399999 1.53550005
		 1.71903801 0.83399999 1.55453801 1.70000005 0.83399999 1.60049999 1.71903801 0.83399999 1.64646196
		 1.76499999 0.83399999 1.66549993 1.81096196 0.83399999 1.64646196 1.82999992 0.83399999 1.60049999
		 1.80746329 0.85887444 1.55803668 1.76499999 0.85887444 1.54044783 1.72253668 0.85887444 1.55803668
		 1.70494783 0.85887444 1.60049999 1.72253668 0.85887444 1.64296329 1.76499999 0.85887444 1.66055214
		 1.80746329 0.85887444 1.64296329 1.82505214 0.85887444 1.60049999 1.79750001 0.87996191 1.56799996
		 1.76499999 0.87996191 1.55453801 1.73249996 0.87996191 1.56799996 1.71903801 0.87996191 1.60049999
		 1.73249996 0.87996191 1.63300002 1.76499999 0.87996191 1.64646196 1.79750001 0.87996191 1.63300002
		 1.81096196 0.87996191 1.60049999 1.78258884 0.89405215 1.58291113 1.76499999 0.89405215 1.57562554
		 1.74741113 0.89405215 1.58291113 1.74012554 0.89405215 1.60049999 1.74741113 0.89405215 1.61808884
		 1.76499999 0.89405215 1.62537444 1.78258884 0.89405215 1.61808884 1.78987443 0.89405215 1.60049999
		 1.76499999 0.76899999 1.60049999 1.76499999 0.89899999 1.60049999;
	setAttr -s 120 ".ed[0:119]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 0 0 8 9 0 9 10 0 10 11 0 11 12 0 12 13 0 13 14 0 14 15 0 15 8 0 16 17 0 17 18 0
		 18 19 0 19 20 0 20 21 0 21 22 0 22 23 0 23 16 0 24 25 0 25 26 0 26 27 0 27 28 0 28 29 0
		 29 30 0 30 31 0 31 24 0 32 33 0 33 34 0 34 35 0 35 36 0 36 37 0 37 38 0 38 39 0 39 32 0
		 40 41 0 41 42 0 42 43 0 43 44 0 44 45 0 45 46 0 46 47 0 47 40 0 48 49 0 49 50 0 50 51 0
		 51 52 0 52 53 0 53 54 0 54 55 0 55 48 0 0 8 0 1 9 0 2 10 0 3 11 0 4 12 0 5 13 0 6 14 0
		 7 15 0 8 16 0 9 17 0 10 18 0 11 19 0 12 20 0 13 21 0 14 22 0 15 23 0 16 24 0 17 25 0
		 18 26 0 19 27 0 20 28 0 21 29 0 22 30 0 23 31 0 24 32 0 25 33 0 26 34 0 27 35 0 28 36 0
		 29 37 0 30 38 0 31 39 0 32 40 0 33 41 0 34 42 0 35 43 0 36 44 0 37 45 0 38 46 0 39 47 0
		 40 48 0 41 49 0 42 50 0 43 51 0 44 52 0 45 53 0 46 54 0 47 55 0 56 0 0 56 1 0 56 2 0
		 56 3 0 56 4 0 56 5 0 56 6 0 56 7 0 48 57 0 49 57 0 50 57 0 51 57 0 52 57 0 53 57 0
		 54 57 0 55 57 0;
	setAttr -s 64 -ch 240 ".fc[0:63]" -type "polyFaces" 
		f 4 0 57 -9 -57
		mu 0 4 0 1 10 9
		f 4 1 58 -10 -58
		mu 0 4 1 2 11 10
		f 4 2 59 -11 -59
		mu 0 4 2 3 12 11
		f 4 3 60 -12 -60
		mu 0 4 3 4 13 12
		f 4 4 61 -13 -61
		mu 0 4 4 5 14 13
		f 4 5 62 -14 -62
		mu 0 4 5 6 15 14
		f 4 6 63 -15 -63
		mu 0 4 6 7 16 15
		f 4 7 56 -16 -64
		mu 0 4 7 8 17 16
		f 4 8 65 -17 -65
		mu 0 4 9 10 19 18
		f 4 9 66 -18 -66
		mu 0 4 10 11 20 19
		f 4 10 67 -19 -67
		mu 0 4 11 12 21 20
		f 4 11 68 -20 -68
		mu 0 4 12 13 22 21
		f 4 12 69 -21 -69
		mu 0 4 13 14 23 22
		f 4 13 70 -22 -70
		mu 0 4 14 15 24 23
		f 4 14 71 -23 -71
		mu 0 4 15 16 25 24
		f 4 15 64 -24 -72
		mu 0 4 16 17 26 25
		f 4 16 73 -25 -73
		mu 0 4 18 19 28 27
		f 4 17 74 -26 -74
		mu 0 4 19 20 29 28
		f 4 18 75 -27 -75
		mu 0 4 20 21 30 29
		f 4 19 76 -28 -76
		mu 0 4 21 22 31 30
		f 4 20 77 -29 -77
		mu 0 4 22 23 32 31
		f 4 21 78 -30 -78
		mu 0 4 23 24 33 32
		f 4 22 79 -31 -79
		mu 0 4 24 25 34 33
		f 4 23 72 -32 -80
		mu 0 4 25 26 35 34
		f 4 24 81 -33 -81
		mu 0 4 27 28 37 36
		f 4 25 82 -34 -82
		mu 0 4 28 29 38 37
		f 4 26 83 -35 -83
		mu 0 4 29 30 39 38
		f 4 27 84 -36 -84
		mu 0 4 30 31 40 39
		f 4 28 85 -37 -85
		mu 0 4 31 32 41 40
		f 4 29 86 -38 -86
		mu 0 4 32 33 42 41
		f 4 30 87 -39 -87
		mu 0 4 33 34 43 42
		f 4 31 80 -40 -88
		mu 0 4 34 35 44 43
		f 4 32 89 -41 -89
		mu 0 4 36 37 46 45
		f 4 33 90 -42 -90
		mu 0 4 37 38 47 46
		f 4 34 91 -43 -91
		mu 0 4 38 39 48 47
		f 4 35 92 -44 -92
		mu 0 4 39 40 49 48
		f 4 36 93 -45 -93
		mu 0 4 40 41 50 49
		f 4 37 94 -46 -94
		mu 0 4 41 42 51 50
		f 4 38 95 -47 -95
		mu 0 4 42 43 52 51
		f 4 39 88 -48 -96
		mu 0 4 43 44 53 52
		f 4 40 97 -49 -97
		mu 0 4 45 46 55 54
		f 4 41 98 -50 -98
		mu 0 4 46 47 56 55
		f 4 42 99 -51 -99
		mu 0 4 47 48 57 56
		f 4 43 100 -52 -100
		mu 0 4 48 49 58 57
		f 4 44 101 -53 -101
		mu 0 4 49 50 59 58
		f 4 45 102 -54 -102
		mu 0 4 50 51 60 59
		f 4 46 103 -55 -103
		mu 0 4 51 52 61 60
		f 4 47 96 -56 -104
		mu 0 4 52 53 62 61
		f 3 -1 -105 105
		mu 0 3 1 0 63
		f 3 -2 -106 106
		mu 0 3 2 1 64
		f 3 -3 -107 107
		mu 0 3 3 2 65
		f 3 -4 -108 108
		mu 0 3 4 3 66
		f 3 -5 -109 109
		mu 0 3 5 4 67
		f 3 -6 -110 110
		mu 0 3 6 5 68
		f 3 -7 -111 111
		mu 0 3 7 6 69
		f 3 -8 -112 104
		mu 0 3 8 7 70
		f 3 48 113 -113
		mu 0 3 54 55 71
		f 3 49 114 -114
		mu 0 3 55 56 72
		f 3 50 115 -115
		mu 0 3 56 57 73
		f 3 51 116 -116
		mu 0 3 57 58 74
		f 3 52 117 -117
		mu 0 3 58 59 75
		f 3 53 118 -118
		mu 0 3 59 60 76
		f 3 54 119 -119
		mu 0 3 60 61 77
		f 3 55 112 -120
		mu 0 3 61 62 78;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Traffic_Light4" -p "Linked_Traffic_Grp1";
	setAttr ".t" -type "double3" 0.5 -2.6645352591003757e-015 12 ;
	setAttr ".r" -type "double3" 0 -90 0 ;
	setAttr ".rp" -type "double3" 1.765 0.6 1.75 ;
	setAttr ".sp" -type "double3" 1.765 0.6 1.75 ;
createNode mesh -n "Traffic_Light4Shape" -p "Traffic_Light4";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 32 ".uvst[0].uvsp[0:31]" -type "float2" 0.33000001 0 0.66333336
		 0 0.33000001 0.125 0.66333336 0.125 0.33000001 0.25 0.66333336 0.25 0.33000001 0.5
		 0.66333336 0.5 0.33000001 0.625 0.66333336 0.625 0.33000001 0.75 0.66333336 0.75
		 0.33000001 1 0.66333336 1 1 0 1 0.125 1 0.25 0 0 0 0.125 0 0.25 0.33000001 0.125
		 0.66333336 0.125 0.66333336 0.25 0.33000001 0.25 0.33000001 0.5 0.66333336 0.5 0.66333336
		 0.625 0.33000001 0.625 1 0.125 1 0.25 0 0.125 0 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 20 ".vt[0:19]"  1.70000005 -0.049999952 1.81500006 1.82999992 -0.049999952 1.81500006
		 1.70000005 0.73000002 1.81500006 1.82999992 0.73000002 1.81500006 1.70000005 1.25 1.81500006
		 1.82999992 1.25 1.81500006 1.70000005 1.25 1.68499994 1.82999992 1.25 1.68499994
		 1.70000005 0.73000002 1.68499994 1.82999992 0.73000002 1.68499994 1.70000005 -0.049999952 1.68499994
		 1.82999992 -0.049999952 1.68499994 1.61549997 0.73000002 1.89950001 1.9145 0.73000002 1.89950001
		 1.9145 1.25 1.89950001 1.61549997 1.25 1.89950001 1.61549997 1.25 1.60049999 1.9145 1.25 1.60049999
		 1.9145 0.73000002 1.60049999 1.61549997 0.73000002 1.60049999;
	setAttr -s 36 ".ed[0:35]"  0 1 0 2 3 0 4 5 1 6 7 1 8 9 0 10 11 0 0 2 0
		 1 3 0 4 6 1 5 7 1 8 10 0 9 11 0 10 0 0 11 1 0 9 3 0 8 2 0 2 12 1 3 13 1 12 13 0 5 14 1
		 13 14 0 4 15 1 15 14 0 12 15 0 6 16 1 7 17 1 16 17 0 9 18 1 17 18 0 8 19 1 19 18 0
		 16 19 0 18 13 0 14 17 0 19 12 0 15 16 0;
	setAttr -s 18 -ch 72 ".fc[0:17]" -type "polyFaces" 
		f 4 0 7 -2 -7
		mu 0 4 0 1 3 2
		f 4 18 20 -23 -24
		mu 0 4 20 21 22 23
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 26 28 -31 -32
		mu 0 4 24 25 26 27
		f 4 4 11 -6 -11
		mu 0 4 8 9 11 10
		f 4 5 13 -1 -13
		mu 0 4 10 11 13 12
		f 4 -14 -12 14 -8
		mu 0 4 1 14 15 3
		f 4 -33 -29 -34 -21
		mu 0 4 21 28 29 22
		f 4 12 6 -16 10
		mu 0 4 17 0 2 18
		f 4 34 23 35 31
		mu 0 4 30 20 23 31
		f 4 1 17 -19 -17
		mu 0 4 2 3 21 20
		f 4 -3 21 22 -20
		mu 0 4 5 4 23 22
		f 4 3 25 -27 -25
		mu 0 4 6 7 25 24
		f 4 -5 29 30 -28
		mu 0 4 9 8 27 26
		f 4 -15 27 32 -18
		mu 0 4 3 15 28 21
		f 4 -10 19 33 -26
		mu 0 4 16 5 22 29
		f 4 15 16 -35 -30
		mu 0 4 18 2 20 30
		f 4 8 24 -36 -22
		mu 0 4 4 19 31 23;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "RedLight_Traffic_Light4" -p "Traffic_Light4";
	setAttr ".rp" -type "double3" 1.765 1.146 1.6005 ;
	setAttr ".sp" -type "double3" 1.765 1.146 1.6005 ;
createNode mesh -n "RedLight_Traffic_Light4Shape" -p "RedLight_Traffic_Light4";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 79 ".uvst[0].uvsp[0:78]" -type "float2" 0 0.125 0.125 0.125
		 0.25 0.125 0.375 0.125 0.5 0.125 0.625 0.125 0.75 0.125 0.875 0.125 1 0.125 0 0.25
		 0.125 0.25 0.25 0.25 0.375 0.25 0.5 0.25 0.625 0.25 0.75 0.25 0.875 0.25 1 0.25 0
		 0.375 0.125 0.375 0.25 0.375 0.375 0.375 0.5 0.375 0.625 0.375 0.75 0.375 0.875 0.375
		 1 0.375 0 0.5 0.125 0.5 0.25 0.5 0.375 0.5 0.5 0.5 0.625 0.5 0.75 0.5 0.875 0.5 1
		 0.5 0 0.625 0.125 0.625 0.25 0.625 0.375 0.625 0.5 0.625 0.625 0.625 0.75 0.625 0.875
		 0.625 1 0.625 0 0.75 0.125 0.75 0.25 0.75 0.375 0.75 0.5 0.75 0.625 0.75 0.75 0.75
		 0.875 0.75 1 0.75 0 0.875 0.125 0.875 0.25 0.875 0.375 0.875 0.5 0.875 0.625 0.875
		 0.75 0.875 0.875 0.875 1 0.875 0.0625 0 0.1875 0 0.3125 0 0.4375 0 0.5625 0 0.6875
		 0 0.8125 0 0.9375 0 0.0625 1 0.1875 1 0.3125 1 0.4375 1 0.5625 1 0.6875 1 0.8125
		 1 0.9375 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 58 ".vt[0:57]"  1.78258884 1.085947871 1.58291113 1.76499999 1.085947871 1.57562554
		 1.74741113 1.085947871 1.58291113 1.74012554 1.085947871 1.60049999 1.74741113 1.085947871 1.61808884
		 1.76499999 1.085947871 1.62537444 1.78258884 1.085947871 1.61808884 1.78987443 1.085947871 1.60049999
		 1.79750001 1.10003805 1.56799996 1.76499999 1.10003805 1.55453801 1.73249996 1.10003805 1.56799996
		 1.71903801 1.10003805 1.60049999 1.73249996 1.10003805 1.63300002 1.76499999 1.10003805 1.64646196
		 1.79750001 1.10003805 1.63300002 1.81096196 1.10003805 1.60049999 1.80746329 1.12112558 1.55803668
		 1.76499999 1.12112558 1.54044783 1.72253668 1.12112558 1.55803668 1.70494783 1.12112558 1.60049999
		 1.72253668 1.12112558 1.64296329 1.76499999 1.12112558 1.66055214 1.80746329 1.12112558 1.64296329
		 1.82505214 1.12112558 1.60049999 1.81096196 1.14600003 1.55453801 1.76499999 1.14600003 1.53550005
		 1.71903801 1.14600003 1.55453801 1.70000005 1.14600003 1.60049999 1.71903801 1.14600003 1.64646196
		 1.76499999 1.14600003 1.66549993 1.81096196 1.14600003 1.64646196 1.82999992 1.14600003 1.60049999
		 1.80746329 1.17087448 1.55803668 1.76499999 1.17087448 1.54044783 1.72253668 1.17087448 1.55803668
		 1.70494783 1.17087448 1.60049999 1.72253668 1.17087448 1.64296329 1.76499999 1.17087448 1.66055214
		 1.80746329 1.17087448 1.64296329 1.82505214 1.17087448 1.60049999 1.79750001 1.191962 1.56799996
		 1.76499999 1.191962 1.55453801 1.73249996 1.191962 1.56799996 1.71903801 1.191962 1.60049999
		 1.73249996 1.191962 1.63300002 1.76499999 1.191962 1.64646196 1.79750001 1.191962 1.63300002
		 1.81096196 1.191962 1.60049999 1.78258884 1.20605218 1.58291113 1.76499999 1.20605218 1.57562554
		 1.74741113 1.20605218 1.58291113 1.74012554 1.20605218 1.60049999 1.74741113 1.20605218 1.61808884
		 1.76499999 1.20605218 1.62537444 1.78258884 1.20605218 1.61808884 1.78987443 1.20605218 1.60049999
		 1.76499999 1.08100009 1.60049999 1.76499999 1.21099997 1.60049999;
	setAttr -s 120 ".ed[0:119]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 0 0 8 9 0 9 10 0 10 11 0 11 12 0 12 13 0 13 14 0 14 15 0 15 8 0 16 17 0 17 18 0
		 18 19 0 19 20 0 20 21 0 21 22 0 22 23 0 23 16 0 24 25 0 25 26 0 26 27 0 27 28 0 28 29 0
		 29 30 0 30 31 0 31 24 0 32 33 0 33 34 0 34 35 0 35 36 0 36 37 0 37 38 0 38 39 0 39 32 0
		 40 41 0 41 42 0 42 43 0 43 44 0 44 45 0 45 46 0 46 47 0 47 40 0 48 49 0 49 50 0 50 51 0
		 51 52 0 52 53 0 53 54 0 54 55 0 55 48 0 0 8 0 1 9 0 2 10 0 3 11 0 4 12 0 5 13 0 6 14 0
		 7 15 0 8 16 0 9 17 0 10 18 0 11 19 0 12 20 0 13 21 0 14 22 0 15 23 0 16 24 0 17 25 0
		 18 26 0 19 27 0 20 28 0 21 29 0 22 30 0 23 31 0 24 32 0 25 33 0 26 34 0 27 35 0 28 36 0
		 29 37 0 30 38 0 31 39 0 32 40 0 33 41 0 34 42 0 35 43 0 36 44 0 37 45 0 38 46 0 39 47 0
		 40 48 0 41 49 0 42 50 0 43 51 0 44 52 0 45 53 0 46 54 0 47 55 0 56 0 0 56 1 0 56 2 0
		 56 3 0 56 4 0 56 5 0 56 6 0 56 7 0 48 57 0 49 57 0 50 57 0 51 57 0 52 57 0 53 57 0
		 54 57 0 55 57 0;
	setAttr -s 64 -ch 240 ".fc[0:63]" -type "polyFaces" 
		f 4 0 57 -9 -57
		mu 0 4 0 1 10 9
		f 4 1 58 -10 -58
		mu 0 4 1 2 11 10
		f 4 2 59 -11 -59
		mu 0 4 2 3 12 11
		f 4 3 60 -12 -60
		mu 0 4 3 4 13 12
		f 4 4 61 -13 -61
		mu 0 4 4 5 14 13
		f 4 5 62 -14 -62
		mu 0 4 5 6 15 14
		f 4 6 63 -15 -63
		mu 0 4 6 7 16 15
		f 4 7 56 -16 -64
		mu 0 4 7 8 17 16
		f 4 8 65 -17 -65
		mu 0 4 9 10 19 18
		f 4 9 66 -18 -66
		mu 0 4 10 11 20 19
		f 4 10 67 -19 -67
		mu 0 4 11 12 21 20
		f 4 11 68 -20 -68
		mu 0 4 12 13 22 21
		f 4 12 69 -21 -69
		mu 0 4 13 14 23 22
		f 4 13 70 -22 -70
		mu 0 4 14 15 24 23
		f 4 14 71 -23 -71
		mu 0 4 15 16 25 24
		f 4 15 64 -24 -72
		mu 0 4 16 17 26 25
		f 4 16 73 -25 -73
		mu 0 4 18 19 28 27
		f 4 17 74 -26 -74
		mu 0 4 19 20 29 28
		f 4 18 75 -27 -75
		mu 0 4 20 21 30 29
		f 4 19 76 -28 -76
		mu 0 4 21 22 31 30
		f 4 20 77 -29 -77
		mu 0 4 22 23 32 31
		f 4 21 78 -30 -78
		mu 0 4 23 24 33 32
		f 4 22 79 -31 -79
		mu 0 4 24 25 34 33
		f 4 23 72 -32 -80
		mu 0 4 25 26 35 34
		f 4 24 81 -33 -81
		mu 0 4 27 28 37 36
		f 4 25 82 -34 -82
		mu 0 4 28 29 38 37
		f 4 26 83 -35 -83
		mu 0 4 29 30 39 38
		f 4 27 84 -36 -84
		mu 0 4 30 31 40 39
		f 4 28 85 -37 -85
		mu 0 4 31 32 41 40
		f 4 29 86 -38 -86
		mu 0 4 32 33 42 41
		f 4 30 87 -39 -87
		mu 0 4 33 34 43 42
		f 4 31 80 -40 -88
		mu 0 4 34 35 44 43
		f 4 32 89 -41 -89
		mu 0 4 36 37 46 45
		f 4 33 90 -42 -90
		mu 0 4 37 38 47 46
		f 4 34 91 -43 -91
		mu 0 4 38 39 48 47
		f 4 35 92 -44 -92
		mu 0 4 39 40 49 48
		f 4 36 93 -45 -93
		mu 0 4 40 41 50 49
		f 4 37 94 -46 -94
		mu 0 4 41 42 51 50
		f 4 38 95 -47 -95
		mu 0 4 42 43 52 51
		f 4 39 88 -48 -96
		mu 0 4 43 44 53 52
		f 4 40 97 -49 -97
		mu 0 4 45 46 55 54
		f 4 41 98 -50 -98
		mu 0 4 46 47 56 55
		f 4 42 99 -51 -99
		mu 0 4 47 48 57 56
		f 4 43 100 -52 -100
		mu 0 4 48 49 58 57
		f 4 44 101 -53 -101
		mu 0 4 49 50 59 58
		f 4 45 102 -54 -102
		mu 0 4 50 51 60 59
		f 4 46 103 -55 -103
		mu 0 4 51 52 61 60
		f 4 47 96 -56 -104
		mu 0 4 52 53 62 61
		f 3 -1 -105 105
		mu 0 3 1 0 63
		f 3 -2 -106 106
		mu 0 3 2 1 64
		f 3 -3 -107 107
		mu 0 3 3 2 65
		f 3 -4 -108 108
		mu 0 3 4 3 66
		f 3 -5 -109 109
		mu 0 3 5 4 67
		f 3 -6 -110 110
		mu 0 3 6 5 68
		f 3 -7 -111 111
		mu 0 3 7 6 69
		f 3 -8 -112 104
		mu 0 3 8 7 70
		f 3 48 113 -113
		mu 0 3 54 55 71
		f 3 49 114 -114
		mu 0 3 55 56 72
		f 3 50 115 -115
		mu 0 3 56 57 73
		f 3 51 116 -116
		mu 0 3 57 58 74
		f 3 52 117 -117
		mu 0 3 58 59 75
		f 3 53 118 -118
		mu 0 3 59 60 76
		f 3 54 119 -119
		mu 0 3 60 61 77
		f 3 55 112 -120
		mu 0 3 61 62 78;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "OrangeLight_Traffic_Light4" -p "Traffic_Light4";
	setAttr ".rp" -type "double3" 1.765 0.99 1.6005 ;
	setAttr ".sp" -type "double3" 1.765 0.99 1.6005 ;
createNode mesh -n "OrangeLight_Traffic_Light4Shape" -p "OrangeLight_Traffic_Light4";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 79 ".uvst[0].uvsp[0:78]" -type "float2" 0 0.125 0.125 0.125
		 0.25 0.125 0.375 0.125 0.5 0.125 0.625 0.125 0.75 0.125 0.875 0.125 1 0.125 0 0.25
		 0.125 0.25 0.25 0.25 0.375 0.25 0.5 0.25 0.625 0.25 0.75 0.25 0.875 0.25 1 0.25 0
		 0.375 0.125 0.375 0.25 0.375 0.375 0.375 0.5 0.375 0.625 0.375 0.75 0.375 0.875 0.375
		 1 0.375 0 0.5 0.125 0.5 0.25 0.5 0.375 0.5 0.5 0.5 0.625 0.5 0.75 0.5 0.875 0.5 1
		 0.5 0 0.625 0.125 0.625 0.25 0.625 0.375 0.625 0.5 0.625 0.625 0.625 0.75 0.625 0.875
		 0.625 1 0.625 0 0.75 0.125 0.75 0.25 0.75 0.375 0.75 0.5 0.75 0.625 0.75 0.75 0.75
		 0.875 0.75 1 0.75 0 0.875 0.125 0.875 0.25 0.875 0.375 0.875 0.5 0.875 0.625 0.875
		 0.75 0.875 0.875 0.875 1 0.875 0.0625 0 0.1875 0 0.3125 0 0.4375 0 0.5625 0 0.6875
		 0 0.8125 0 0.9375 0 0.0625 1 0.1875 1 0.3125 1 0.4375 1 0.5625 1 0.6875 1 0.8125
		 1 0.9375 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 58 ".vt[0:57]"  1.78258884 0.92994785 1.58291113 1.76499999 0.92994785 1.57562554
		 1.74741113 0.92994785 1.58291113 1.74012554 0.92994785 1.60049999 1.74741113 0.92994785 1.61808884
		 1.76499999 0.92994785 1.62537444 1.78258884 0.92994785 1.61808884 1.78987443 0.92994785 1.60049999
		 1.79750001 0.94403809 1.56799996 1.76499999 0.94403809 1.55453801 1.73249996 0.94403809 1.56799996
		 1.71903801 0.94403809 1.60049999 1.73249996 0.94403809 1.63300002 1.76499999 0.94403809 1.64646196
		 1.79750001 0.94403809 1.63300002 1.81096196 0.94403809 1.60049999 1.80746329 0.96512556 1.55803668
		 1.76499999 0.96512556 1.54044783 1.72253668 0.96512556 1.55803668 1.70494783 0.96512556 1.60049999
		 1.72253668 0.96512556 1.64296329 1.76499999 0.96512556 1.66055214 1.80746329 0.96512556 1.64296329
		 1.82505214 0.96512556 1.60049999 1.81096196 0.99000001 1.55453801 1.76499999 0.99000001 1.53550005
		 1.71903801 0.99000001 1.55453801 1.70000005 0.99000001 1.60049999 1.71903801 0.99000001 1.64646196
		 1.76499999 0.99000001 1.66549993 1.81096196 0.99000001 1.64646196 1.82999992 0.99000001 1.60049999
		 1.80746329 1.014874458 1.55803668 1.76499999 1.014874458 1.54044783 1.72253668 1.014874458 1.55803668
		 1.70494783 1.014874458 1.60049999 1.72253668 1.014874458 1.64296329 1.76499999 1.014874458 1.66055214
		 1.80746329 1.014874458 1.64296329 1.82505214 1.014874458 1.60049999 1.79750001 1.035961986 1.56799996
		 1.76499999 1.035961986 1.55453801 1.73249996 1.035961986 1.56799996 1.71903801 1.035961986 1.60049999
		 1.73249996 1.035961986 1.63300002 1.76499999 1.035961986 1.64646196 1.79750001 1.035961986 1.63300002
		 1.81096196 1.035961986 1.60049999 1.78258884 1.050052166 1.58291113 1.76499999 1.050052166 1.57562554
		 1.74741113 1.050052166 1.58291113 1.74012554 1.050052166 1.60049999 1.74741113 1.050052166 1.61808884
		 1.76499999 1.050052166 1.62537444 1.78258884 1.050052166 1.61808884 1.78987443 1.050052166 1.60049999
		 1.76499999 0.92500001 1.60049999 1.76499999 1.055000067 1.60049999;
	setAttr -s 120 ".ed[0:119]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 0 0 8 9 0 9 10 0 10 11 0 11 12 0 12 13 0 13 14 0 14 15 0 15 8 0 16 17 0 17 18 0
		 18 19 0 19 20 0 20 21 0 21 22 0 22 23 0 23 16 0 24 25 0 25 26 0 26 27 0 27 28 0 28 29 0
		 29 30 0 30 31 0 31 24 0 32 33 0 33 34 0 34 35 0 35 36 0 36 37 0 37 38 0 38 39 0 39 32 0
		 40 41 0 41 42 0 42 43 0 43 44 0 44 45 0 45 46 0 46 47 0 47 40 0 48 49 0 49 50 0 50 51 0
		 51 52 0 52 53 0 53 54 0 54 55 0 55 48 0 0 8 0 1 9 0 2 10 0 3 11 0 4 12 0 5 13 0 6 14 0
		 7 15 0 8 16 0 9 17 0 10 18 0 11 19 0 12 20 0 13 21 0 14 22 0 15 23 0 16 24 0 17 25 0
		 18 26 0 19 27 0 20 28 0 21 29 0 22 30 0 23 31 0 24 32 0 25 33 0 26 34 0 27 35 0 28 36 0
		 29 37 0 30 38 0 31 39 0 32 40 0 33 41 0 34 42 0 35 43 0 36 44 0 37 45 0 38 46 0 39 47 0
		 40 48 0 41 49 0 42 50 0 43 51 0 44 52 0 45 53 0 46 54 0 47 55 0 56 0 0 56 1 0 56 2 0
		 56 3 0 56 4 0 56 5 0 56 6 0 56 7 0 48 57 0 49 57 0 50 57 0 51 57 0 52 57 0 53 57 0
		 54 57 0 55 57 0;
	setAttr -s 64 -ch 240 ".fc[0:63]" -type "polyFaces" 
		f 4 0 57 -9 -57
		mu 0 4 0 1 10 9
		f 4 1 58 -10 -58
		mu 0 4 1 2 11 10
		f 4 2 59 -11 -59
		mu 0 4 2 3 12 11
		f 4 3 60 -12 -60
		mu 0 4 3 4 13 12
		f 4 4 61 -13 -61
		mu 0 4 4 5 14 13
		f 4 5 62 -14 -62
		mu 0 4 5 6 15 14
		f 4 6 63 -15 -63
		mu 0 4 6 7 16 15
		f 4 7 56 -16 -64
		mu 0 4 7 8 17 16
		f 4 8 65 -17 -65
		mu 0 4 9 10 19 18
		f 4 9 66 -18 -66
		mu 0 4 10 11 20 19
		f 4 10 67 -19 -67
		mu 0 4 11 12 21 20
		f 4 11 68 -20 -68
		mu 0 4 12 13 22 21
		f 4 12 69 -21 -69
		mu 0 4 13 14 23 22
		f 4 13 70 -22 -70
		mu 0 4 14 15 24 23
		f 4 14 71 -23 -71
		mu 0 4 15 16 25 24
		f 4 15 64 -24 -72
		mu 0 4 16 17 26 25
		f 4 16 73 -25 -73
		mu 0 4 18 19 28 27
		f 4 17 74 -26 -74
		mu 0 4 19 20 29 28
		f 4 18 75 -27 -75
		mu 0 4 20 21 30 29
		f 4 19 76 -28 -76
		mu 0 4 21 22 31 30
		f 4 20 77 -29 -77
		mu 0 4 22 23 32 31
		f 4 21 78 -30 -78
		mu 0 4 23 24 33 32
		f 4 22 79 -31 -79
		mu 0 4 24 25 34 33
		f 4 23 72 -32 -80
		mu 0 4 25 26 35 34
		f 4 24 81 -33 -81
		mu 0 4 27 28 37 36
		f 4 25 82 -34 -82
		mu 0 4 28 29 38 37
		f 4 26 83 -35 -83
		mu 0 4 29 30 39 38
		f 4 27 84 -36 -84
		mu 0 4 30 31 40 39
		f 4 28 85 -37 -85
		mu 0 4 31 32 41 40
		f 4 29 86 -38 -86
		mu 0 4 32 33 42 41
		f 4 30 87 -39 -87
		mu 0 4 33 34 43 42
		f 4 31 80 -40 -88
		mu 0 4 34 35 44 43
		f 4 32 89 -41 -89
		mu 0 4 36 37 46 45
		f 4 33 90 -42 -90
		mu 0 4 37 38 47 46
		f 4 34 91 -43 -91
		mu 0 4 38 39 48 47
		f 4 35 92 -44 -92
		mu 0 4 39 40 49 48
		f 4 36 93 -45 -93
		mu 0 4 40 41 50 49
		f 4 37 94 -46 -94
		mu 0 4 41 42 51 50
		f 4 38 95 -47 -95
		mu 0 4 42 43 52 51
		f 4 39 88 -48 -96
		mu 0 4 43 44 53 52
		f 4 40 97 -49 -97
		mu 0 4 45 46 55 54
		f 4 41 98 -50 -98
		mu 0 4 46 47 56 55
		f 4 42 99 -51 -99
		mu 0 4 47 48 57 56
		f 4 43 100 -52 -100
		mu 0 4 48 49 58 57
		f 4 44 101 -53 -101
		mu 0 4 49 50 59 58
		f 4 45 102 -54 -102
		mu 0 4 50 51 60 59
		f 4 46 103 -55 -103
		mu 0 4 51 52 61 60
		f 4 47 96 -56 -104
		mu 0 4 52 53 62 61
		f 3 -1 -105 105
		mu 0 3 1 0 63
		f 3 -2 -106 106
		mu 0 3 2 1 64
		f 3 -3 -107 107
		mu 0 3 3 2 65
		f 3 -4 -108 108
		mu 0 3 4 3 66
		f 3 -5 -109 109
		mu 0 3 5 4 67
		f 3 -6 -110 110
		mu 0 3 6 5 68
		f 3 -7 -111 111
		mu 0 3 7 6 69
		f 3 -8 -112 104
		mu 0 3 8 7 70
		f 3 48 113 -113
		mu 0 3 54 55 71
		f 3 49 114 -114
		mu 0 3 55 56 72
		f 3 50 115 -115
		mu 0 3 56 57 73
		f 3 51 116 -116
		mu 0 3 57 58 74
		f 3 52 117 -117
		mu 0 3 58 59 75
		f 3 53 118 -118
		mu 0 3 59 60 76
		f 3 54 119 -119
		mu 0 3 60 61 77
		f 3 55 112 -120
		mu 0 3 61 62 78;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "GreenLight_Traffic_Light4" -p "Traffic_Light4";
	setAttr ".rp" -type "double3" 1.765 0.83400000000000007 1.6005 ;
	setAttr ".sp" -type "double3" 1.765 0.83400000000000007 1.6005 ;
createNode mesh -n "GreenLight_Traffic_Light4Shape" -p "GreenLight_Traffic_Light4";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 79 ".uvst[0].uvsp[0:78]" -type "float2" 0 0.125 0.125 0.125
		 0.25 0.125 0.375 0.125 0.5 0.125 0.625 0.125 0.75 0.125 0.875 0.125 1 0.125 0 0.25
		 0.125 0.25 0.25 0.25 0.375 0.25 0.5 0.25 0.625 0.25 0.75 0.25 0.875 0.25 1 0.25 0
		 0.375 0.125 0.375 0.25 0.375 0.375 0.375 0.5 0.375 0.625 0.375 0.75 0.375 0.875 0.375
		 1 0.375 0 0.5 0.125 0.5 0.25 0.5 0.375 0.5 0.5 0.5 0.625 0.5 0.75 0.5 0.875 0.5 1
		 0.5 0 0.625 0.125 0.625 0.25 0.625 0.375 0.625 0.5 0.625 0.625 0.625 0.75 0.625 0.875
		 0.625 1 0.625 0 0.75 0.125 0.75 0.25 0.75 0.375 0.75 0.5 0.75 0.625 0.75 0.75 0.75
		 0.875 0.75 1 0.75 0 0.875 0.125 0.875 0.25 0.875 0.375 0.875 0.5 0.875 0.625 0.875
		 0.75 0.875 0.875 0.875 1 0.875 0.0625 0 0.1875 0 0.3125 0 0.4375 0 0.5625 0 0.6875
		 0 0.8125 0 0.9375 0 0.0625 1 0.1875 1 0.3125 1 0.4375 1 0.5625 1 0.6875 1 0.8125
		 1 0.9375 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 58 ".vt[0:57]"  1.78258884 0.77394783 1.58291113 1.76499999 0.77394783 1.57562554
		 1.74741113 0.77394783 1.58291113 1.74012554 0.77394783 1.60049999 1.74741113 0.77394783 1.61808884
		 1.76499999 0.77394783 1.62537444 1.78258884 0.77394783 1.61808884 1.78987443 0.77394783 1.60049999
		 1.79750001 0.78803807 1.56799996 1.76499999 0.78803807 1.55453801 1.73249996 0.78803807 1.56799996
		 1.71903801 0.78803807 1.60049999 1.73249996 0.78803807 1.63300002 1.76499999 0.78803807 1.64646196
		 1.79750001 0.78803807 1.63300002 1.81096196 0.78803807 1.60049999 1.80746329 0.80912554 1.55803668
		 1.76499999 0.80912554 1.54044783 1.72253668 0.80912554 1.55803668 1.70494783 0.80912554 1.60049999
		 1.72253668 0.80912554 1.64296329 1.76499999 0.80912554 1.66055214 1.80746329 0.80912554 1.64296329
		 1.82505214 0.80912554 1.60049999 1.81096196 0.83399999 1.55453801 1.76499999 0.83399999 1.53550005
		 1.71903801 0.83399999 1.55453801 1.70000005 0.83399999 1.60049999 1.71903801 0.83399999 1.64646196
		 1.76499999 0.83399999 1.66549993 1.81096196 0.83399999 1.64646196 1.82999992 0.83399999 1.60049999
		 1.80746329 0.85887444 1.55803668 1.76499999 0.85887444 1.54044783 1.72253668 0.85887444 1.55803668
		 1.70494783 0.85887444 1.60049999 1.72253668 0.85887444 1.64296329 1.76499999 0.85887444 1.66055214
		 1.80746329 0.85887444 1.64296329 1.82505214 0.85887444 1.60049999 1.79750001 0.87996191 1.56799996
		 1.76499999 0.87996191 1.55453801 1.73249996 0.87996191 1.56799996 1.71903801 0.87996191 1.60049999
		 1.73249996 0.87996191 1.63300002 1.76499999 0.87996191 1.64646196 1.79750001 0.87996191 1.63300002
		 1.81096196 0.87996191 1.60049999 1.78258884 0.89405215 1.58291113 1.76499999 0.89405215 1.57562554
		 1.74741113 0.89405215 1.58291113 1.74012554 0.89405215 1.60049999 1.74741113 0.89405215 1.61808884
		 1.76499999 0.89405215 1.62537444 1.78258884 0.89405215 1.61808884 1.78987443 0.89405215 1.60049999
		 1.76499999 0.76899999 1.60049999 1.76499999 0.89899999 1.60049999;
	setAttr -s 120 ".ed[0:119]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 0 0 8 9 0 9 10 0 10 11 0 11 12 0 12 13 0 13 14 0 14 15 0 15 8 0 16 17 0 17 18 0
		 18 19 0 19 20 0 20 21 0 21 22 0 22 23 0 23 16 0 24 25 0 25 26 0 26 27 0 27 28 0 28 29 0
		 29 30 0 30 31 0 31 24 0 32 33 0 33 34 0 34 35 0 35 36 0 36 37 0 37 38 0 38 39 0 39 32 0
		 40 41 0 41 42 0 42 43 0 43 44 0 44 45 0 45 46 0 46 47 0 47 40 0 48 49 0 49 50 0 50 51 0
		 51 52 0 52 53 0 53 54 0 54 55 0 55 48 0 0 8 0 1 9 0 2 10 0 3 11 0 4 12 0 5 13 0 6 14 0
		 7 15 0 8 16 0 9 17 0 10 18 0 11 19 0 12 20 0 13 21 0 14 22 0 15 23 0 16 24 0 17 25 0
		 18 26 0 19 27 0 20 28 0 21 29 0 22 30 0 23 31 0 24 32 0 25 33 0 26 34 0 27 35 0 28 36 0
		 29 37 0 30 38 0 31 39 0 32 40 0 33 41 0 34 42 0 35 43 0 36 44 0 37 45 0 38 46 0 39 47 0
		 40 48 0 41 49 0 42 50 0 43 51 0 44 52 0 45 53 0 46 54 0 47 55 0 56 0 0 56 1 0 56 2 0
		 56 3 0 56 4 0 56 5 0 56 6 0 56 7 0 48 57 0 49 57 0 50 57 0 51 57 0 52 57 0 53 57 0
		 54 57 0 55 57 0;
	setAttr -s 64 -ch 240 ".fc[0:63]" -type "polyFaces" 
		f 4 0 57 -9 -57
		mu 0 4 0 1 10 9
		f 4 1 58 -10 -58
		mu 0 4 1 2 11 10
		f 4 2 59 -11 -59
		mu 0 4 2 3 12 11
		f 4 3 60 -12 -60
		mu 0 4 3 4 13 12
		f 4 4 61 -13 -61
		mu 0 4 4 5 14 13
		f 4 5 62 -14 -62
		mu 0 4 5 6 15 14
		f 4 6 63 -15 -63
		mu 0 4 6 7 16 15
		f 4 7 56 -16 -64
		mu 0 4 7 8 17 16
		f 4 8 65 -17 -65
		mu 0 4 9 10 19 18
		f 4 9 66 -18 -66
		mu 0 4 10 11 20 19
		f 4 10 67 -19 -67
		mu 0 4 11 12 21 20
		f 4 11 68 -20 -68
		mu 0 4 12 13 22 21
		f 4 12 69 -21 -69
		mu 0 4 13 14 23 22
		f 4 13 70 -22 -70
		mu 0 4 14 15 24 23
		f 4 14 71 -23 -71
		mu 0 4 15 16 25 24
		f 4 15 64 -24 -72
		mu 0 4 16 17 26 25
		f 4 16 73 -25 -73
		mu 0 4 18 19 28 27
		f 4 17 74 -26 -74
		mu 0 4 19 20 29 28
		f 4 18 75 -27 -75
		mu 0 4 20 21 30 29
		f 4 19 76 -28 -76
		mu 0 4 21 22 31 30
		f 4 20 77 -29 -77
		mu 0 4 22 23 32 31
		f 4 21 78 -30 -78
		mu 0 4 23 24 33 32
		f 4 22 79 -31 -79
		mu 0 4 24 25 34 33
		f 4 23 72 -32 -80
		mu 0 4 25 26 35 34
		f 4 24 81 -33 -81
		mu 0 4 27 28 37 36
		f 4 25 82 -34 -82
		mu 0 4 28 29 38 37
		f 4 26 83 -35 -83
		mu 0 4 29 30 39 38
		f 4 27 84 -36 -84
		mu 0 4 30 31 40 39
		f 4 28 85 -37 -85
		mu 0 4 31 32 41 40
		f 4 29 86 -38 -86
		mu 0 4 32 33 42 41
		f 4 30 87 -39 -87
		mu 0 4 33 34 43 42
		f 4 31 80 -40 -88
		mu 0 4 34 35 44 43
		f 4 32 89 -41 -89
		mu 0 4 36 37 46 45
		f 4 33 90 -42 -90
		mu 0 4 37 38 47 46
		f 4 34 91 -43 -91
		mu 0 4 38 39 48 47
		f 4 35 92 -44 -92
		mu 0 4 39 40 49 48
		f 4 36 93 -45 -93
		mu 0 4 40 41 50 49
		f 4 37 94 -46 -94
		mu 0 4 41 42 51 50
		f 4 38 95 -47 -95
		mu 0 4 42 43 52 51
		f 4 39 88 -48 -96
		mu 0 4 43 44 53 52
		f 4 40 97 -49 -97
		mu 0 4 45 46 55 54
		f 4 41 98 -50 -98
		mu 0 4 46 47 56 55
		f 4 42 99 -51 -99
		mu 0 4 47 48 57 56
		f 4 43 100 -52 -100
		mu 0 4 48 49 58 57
		f 4 44 101 -53 -101
		mu 0 4 49 50 59 58
		f 4 45 102 -54 -102
		mu 0 4 50 51 60 59
		f 4 46 103 -55 -103
		mu 0 4 51 52 61 60
		f 4 47 96 -56 -104
		mu 0 4 52 53 62 61
		f 3 -1 -105 105
		mu 0 3 1 0 63
		f 3 -2 -106 106
		mu 0 3 2 1 64
		f 3 -3 -107 107
		mu 0 3 3 2 65
		f 3 -4 -108 108
		mu 0 3 4 3 66
		f 3 -5 -109 109
		mu 0 3 5 4 67
		f 3 -6 -110 110
		mu 0 3 6 5 68
		f 3 -7 -111 111
		mu 0 3 7 6 69
		f 3 -8 -112 104
		mu 0 3 8 7 70
		f 3 48 113 -113
		mu 0 3 54 55 71
		f 3 49 114 -114
		mu 0 3 55 56 72
		f 3 50 115 -115
		mu 0 3 56 57 73
		f 3 51 116 -116
		mu 0 3 57 58 74
		f 3 52 117 -117
		mu 0 3 58 59 75
		f 3 53 118 -118
		mu 0 3 59 60 76
		f 3 54 119 -119
		mu 0 3 60 61 77
		f 3 55 112 -120
		mu 0 3 61 62 78;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Traffic_Light2" -p "Linked_Traffic_Grp1";
	setAttr ".t" -type "double3" -3.5000000000000009 -3.5527136788005009e-015 12.5 ;
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".rp" -type "double3" 1.765 0.6 1.75 ;
	setAttr ".sp" -type "double3" 1.765 0.6 1.75 ;
createNode mesh -n "Traffic_Light2Shape" -p "Traffic_Light2";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 32 ".uvst[0].uvsp[0:31]" -type "float2" 0.33000001 0 0.66333336
		 0 0.33000001 0.125 0.66333336 0.125 0.33000001 0.25 0.66333336 0.25 0.33000001 0.5
		 0.66333336 0.5 0.33000001 0.625 0.66333336 0.625 0.33000001 0.75 0.66333336 0.75
		 0.33000001 1 0.66333336 1 1 0 1 0.125 1 0.25 0 0 0 0.125 0 0.25 0.33000001 0.125
		 0.66333336 0.125 0.66333336 0.25 0.33000001 0.25 0.33000001 0.5 0.66333336 0.5 0.66333336
		 0.625 0.33000001 0.625 1 0.125 1 0.25 0 0.125 0 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 20 ".vt[0:19]"  1.70000005 -0.049999952 1.81500006 1.82999992 -0.049999952 1.81500006
		 1.70000005 0.73000002 1.81500006 1.82999992 0.73000002 1.81500006 1.70000005 1.25 1.81500006
		 1.82999992 1.25 1.81500006 1.70000005 1.25 1.68499994 1.82999992 1.25 1.68499994
		 1.70000005 0.73000002 1.68499994 1.82999992 0.73000002 1.68499994 1.70000005 -0.049999952 1.68499994
		 1.82999992 -0.049999952 1.68499994 1.61549997 0.73000002 1.89950001 1.9145 0.73000002 1.89950001
		 1.9145 1.25 1.89950001 1.61549997 1.25 1.89950001 1.61549997 1.25 1.60049999 1.9145 1.25 1.60049999
		 1.9145 0.73000002 1.60049999 1.61549997 0.73000002 1.60049999;
	setAttr -s 36 ".ed[0:35]"  0 1 0 2 3 0 4 5 1 6 7 1 8 9 0 10 11 0 0 2 0
		 1 3 0 4 6 1 5 7 1 8 10 0 9 11 0 10 0 0 11 1 0 9 3 0 8 2 0 2 12 1 3 13 1 12 13 0 5 14 1
		 13 14 0 4 15 1 15 14 0 12 15 0 6 16 1 7 17 1 16 17 0 9 18 1 17 18 0 8 19 1 19 18 0
		 16 19 0 18 13 0 14 17 0 19 12 0 15 16 0;
	setAttr -s 18 -ch 72 ".fc[0:17]" -type "polyFaces" 
		f 4 0 7 -2 -7
		mu 0 4 0 1 3 2
		f 4 18 20 -23 -24
		mu 0 4 20 21 22 23
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 26 28 -31 -32
		mu 0 4 24 25 26 27
		f 4 4 11 -6 -11
		mu 0 4 8 9 11 10
		f 4 5 13 -1 -13
		mu 0 4 10 11 13 12
		f 4 -14 -12 14 -8
		mu 0 4 1 14 15 3
		f 4 -33 -29 -34 -21
		mu 0 4 21 28 29 22
		f 4 12 6 -16 10
		mu 0 4 17 0 2 18
		f 4 34 23 35 31
		mu 0 4 30 20 23 31
		f 4 1 17 -19 -17
		mu 0 4 2 3 21 20
		f 4 -3 21 22 -20
		mu 0 4 5 4 23 22
		f 4 3 25 -27 -25
		mu 0 4 6 7 25 24
		f 4 -5 29 30 -28
		mu 0 4 9 8 27 26
		f 4 -15 27 32 -18
		mu 0 4 3 15 28 21
		f 4 -10 19 33 -26
		mu 0 4 16 5 22 29
		f 4 15 16 -35 -30
		mu 0 4 18 2 20 30
		f 4 8 24 -36 -22
		mu 0 4 4 19 31 23;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "RedLight_Traffic_Light2" -p "Traffic_Light2";
	setAttr ".rp" -type "double3" 1.765 1.146 1.6005 ;
	setAttr ".sp" -type "double3" 1.765 1.146 1.6005 ;
createNode mesh -n "RedLight_Traffic_Light2Shape" -p "RedLight_Traffic_Light2";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 79 ".uvst[0].uvsp[0:78]" -type "float2" 0 0.125 0.125 0.125
		 0.25 0.125 0.375 0.125 0.5 0.125 0.625 0.125 0.75 0.125 0.875 0.125 1 0.125 0 0.25
		 0.125 0.25 0.25 0.25 0.375 0.25 0.5 0.25 0.625 0.25 0.75 0.25 0.875 0.25 1 0.25 0
		 0.375 0.125 0.375 0.25 0.375 0.375 0.375 0.5 0.375 0.625 0.375 0.75 0.375 0.875 0.375
		 1 0.375 0 0.5 0.125 0.5 0.25 0.5 0.375 0.5 0.5 0.5 0.625 0.5 0.75 0.5 0.875 0.5 1
		 0.5 0 0.625 0.125 0.625 0.25 0.625 0.375 0.625 0.5 0.625 0.625 0.625 0.75 0.625 0.875
		 0.625 1 0.625 0 0.75 0.125 0.75 0.25 0.75 0.375 0.75 0.5 0.75 0.625 0.75 0.75 0.75
		 0.875 0.75 1 0.75 0 0.875 0.125 0.875 0.25 0.875 0.375 0.875 0.5 0.875 0.625 0.875
		 0.75 0.875 0.875 0.875 1 0.875 0.0625 0 0.1875 0 0.3125 0 0.4375 0 0.5625 0 0.6875
		 0 0.8125 0 0.9375 0 0.0625 1 0.1875 1 0.3125 1 0.4375 1 0.5625 1 0.6875 1 0.8125
		 1 0.9375 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 58 ".vt[0:57]"  1.78258884 1.085947871 1.58291113 1.76499999 1.085947871 1.57562554
		 1.74741113 1.085947871 1.58291113 1.74012554 1.085947871 1.60049999 1.74741113 1.085947871 1.61808884
		 1.76499999 1.085947871 1.62537444 1.78258884 1.085947871 1.61808884 1.78987443 1.085947871 1.60049999
		 1.79750001 1.10003805 1.56799996 1.76499999 1.10003805 1.55453801 1.73249996 1.10003805 1.56799996
		 1.71903801 1.10003805 1.60049999 1.73249996 1.10003805 1.63300002 1.76499999 1.10003805 1.64646196
		 1.79750001 1.10003805 1.63300002 1.81096196 1.10003805 1.60049999 1.80746329 1.12112558 1.55803668
		 1.76499999 1.12112558 1.54044783 1.72253668 1.12112558 1.55803668 1.70494783 1.12112558 1.60049999
		 1.72253668 1.12112558 1.64296329 1.76499999 1.12112558 1.66055214 1.80746329 1.12112558 1.64296329
		 1.82505214 1.12112558 1.60049999 1.81096196 1.14600003 1.55453801 1.76499999 1.14600003 1.53550005
		 1.71903801 1.14600003 1.55453801 1.70000005 1.14600003 1.60049999 1.71903801 1.14600003 1.64646196
		 1.76499999 1.14600003 1.66549993 1.81096196 1.14600003 1.64646196 1.82999992 1.14600003 1.60049999
		 1.80746329 1.17087448 1.55803668 1.76499999 1.17087448 1.54044783 1.72253668 1.17087448 1.55803668
		 1.70494783 1.17087448 1.60049999 1.72253668 1.17087448 1.64296329 1.76499999 1.17087448 1.66055214
		 1.80746329 1.17087448 1.64296329 1.82505214 1.17087448 1.60049999 1.79750001 1.191962 1.56799996
		 1.76499999 1.191962 1.55453801 1.73249996 1.191962 1.56799996 1.71903801 1.191962 1.60049999
		 1.73249996 1.191962 1.63300002 1.76499999 1.191962 1.64646196 1.79750001 1.191962 1.63300002
		 1.81096196 1.191962 1.60049999 1.78258884 1.20605218 1.58291113 1.76499999 1.20605218 1.57562554
		 1.74741113 1.20605218 1.58291113 1.74012554 1.20605218 1.60049999 1.74741113 1.20605218 1.61808884
		 1.76499999 1.20605218 1.62537444 1.78258884 1.20605218 1.61808884 1.78987443 1.20605218 1.60049999
		 1.76499999 1.08100009 1.60049999 1.76499999 1.21099997 1.60049999;
	setAttr -s 120 ".ed[0:119]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 0 0 8 9 0 9 10 0 10 11 0 11 12 0 12 13 0 13 14 0 14 15 0 15 8 0 16 17 0 17 18 0
		 18 19 0 19 20 0 20 21 0 21 22 0 22 23 0 23 16 0 24 25 0 25 26 0 26 27 0 27 28 0 28 29 0
		 29 30 0 30 31 0 31 24 0 32 33 0 33 34 0 34 35 0 35 36 0 36 37 0 37 38 0 38 39 0 39 32 0
		 40 41 0 41 42 0 42 43 0 43 44 0 44 45 0 45 46 0 46 47 0 47 40 0 48 49 0 49 50 0 50 51 0
		 51 52 0 52 53 0 53 54 0 54 55 0 55 48 0 0 8 0 1 9 0 2 10 0 3 11 0 4 12 0 5 13 0 6 14 0
		 7 15 0 8 16 0 9 17 0 10 18 0 11 19 0 12 20 0 13 21 0 14 22 0 15 23 0 16 24 0 17 25 0
		 18 26 0 19 27 0 20 28 0 21 29 0 22 30 0 23 31 0 24 32 0 25 33 0 26 34 0 27 35 0 28 36 0
		 29 37 0 30 38 0 31 39 0 32 40 0 33 41 0 34 42 0 35 43 0 36 44 0 37 45 0 38 46 0 39 47 0
		 40 48 0 41 49 0 42 50 0 43 51 0 44 52 0 45 53 0 46 54 0 47 55 0 56 0 0 56 1 0 56 2 0
		 56 3 0 56 4 0 56 5 0 56 6 0 56 7 0 48 57 0 49 57 0 50 57 0 51 57 0 52 57 0 53 57 0
		 54 57 0 55 57 0;
	setAttr -s 64 -ch 240 ".fc[0:63]" -type "polyFaces" 
		f 4 0 57 -9 -57
		mu 0 4 0 1 10 9
		f 4 1 58 -10 -58
		mu 0 4 1 2 11 10
		f 4 2 59 -11 -59
		mu 0 4 2 3 12 11
		f 4 3 60 -12 -60
		mu 0 4 3 4 13 12
		f 4 4 61 -13 -61
		mu 0 4 4 5 14 13
		f 4 5 62 -14 -62
		mu 0 4 5 6 15 14
		f 4 6 63 -15 -63
		mu 0 4 6 7 16 15
		f 4 7 56 -16 -64
		mu 0 4 7 8 17 16
		f 4 8 65 -17 -65
		mu 0 4 9 10 19 18
		f 4 9 66 -18 -66
		mu 0 4 10 11 20 19
		f 4 10 67 -19 -67
		mu 0 4 11 12 21 20
		f 4 11 68 -20 -68
		mu 0 4 12 13 22 21
		f 4 12 69 -21 -69
		mu 0 4 13 14 23 22
		f 4 13 70 -22 -70
		mu 0 4 14 15 24 23
		f 4 14 71 -23 -71
		mu 0 4 15 16 25 24
		f 4 15 64 -24 -72
		mu 0 4 16 17 26 25
		f 4 16 73 -25 -73
		mu 0 4 18 19 28 27
		f 4 17 74 -26 -74
		mu 0 4 19 20 29 28
		f 4 18 75 -27 -75
		mu 0 4 20 21 30 29
		f 4 19 76 -28 -76
		mu 0 4 21 22 31 30
		f 4 20 77 -29 -77
		mu 0 4 22 23 32 31
		f 4 21 78 -30 -78
		mu 0 4 23 24 33 32
		f 4 22 79 -31 -79
		mu 0 4 24 25 34 33
		f 4 23 72 -32 -80
		mu 0 4 25 26 35 34
		f 4 24 81 -33 -81
		mu 0 4 27 28 37 36
		f 4 25 82 -34 -82
		mu 0 4 28 29 38 37
		f 4 26 83 -35 -83
		mu 0 4 29 30 39 38
		f 4 27 84 -36 -84
		mu 0 4 30 31 40 39
		f 4 28 85 -37 -85
		mu 0 4 31 32 41 40
		f 4 29 86 -38 -86
		mu 0 4 32 33 42 41
		f 4 30 87 -39 -87
		mu 0 4 33 34 43 42
		f 4 31 80 -40 -88
		mu 0 4 34 35 44 43
		f 4 32 89 -41 -89
		mu 0 4 36 37 46 45
		f 4 33 90 -42 -90
		mu 0 4 37 38 47 46
		f 4 34 91 -43 -91
		mu 0 4 38 39 48 47
		f 4 35 92 -44 -92
		mu 0 4 39 40 49 48
		f 4 36 93 -45 -93
		mu 0 4 40 41 50 49
		f 4 37 94 -46 -94
		mu 0 4 41 42 51 50
		f 4 38 95 -47 -95
		mu 0 4 42 43 52 51
		f 4 39 88 -48 -96
		mu 0 4 43 44 53 52
		f 4 40 97 -49 -97
		mu 0 4 45 46 55 54
		f 4 41 98 -50 -98
		mu 0 4 46 47 56 55
		f 4 42 99 -51 -99
		mu 0 4 47 48 57 56
		f 4 43 100 -52 -100
		mu 0 4 48 49 58 57
		f 4 44 101 -53 -101
		mu 0 4 49 50 59 58
		f 4 45 102 -54 -102
		mu 0 4 50 51 60 59
		f 4 46 103 -55 -103
		mu 0 4 51 52 61 60
		f 4 47 96 -56 -104
		mu 0 4 52 53 62 61
		f 3 -1 -105 105
		mu 0 3 1 0 63
		f 3 -2 -106 106
		mu 0 3 2 1 64
		f 3 -3 -107 107
		mu 0 3 3 2 65
		f 3 -4 -108 108
		mu 0 3 4 3 66
		f 3 -5 -109 109
		mu 0 3 5 4 67
		f 3 -6 -110 110
		mu 0 3 6 5 68
		f 3 -7 -111 111
		mu 0 3 7 6 69
		f 3 -8 -112 104
		mu 0 3 8 7 70
		f 3 48 113 -113
		mu 0 3 54 55 71
		f 3 49 114 -114
		mu 0 3 55 56 72
		f 3 50 115 -115
		mu 0 3 56 57 73
		f 3 51 116 -116
		mu 0 3 57 58 74
		f 3 52 117 -117
		mu 0 3 58 59 75
		f 3 53 118 -118
		mu 0 3 59 60 76
		f 3 54 119 -119
		mu 0 3 60 61 77
		f 3 55 112 -120
		mu 0 3 61 62 78;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "OrangeLight_Traffic_Light2" -p "Traffic_Light2";
	setAttr ".rp" -type "double3" 1.765 0.99 1.6005 ;
	setAttr ".sp" -type "double3" 1.765 0.99 1.6005 ;
createNode mesh -n "OrangeLight_Traffic_Light2Shape" -p "OrangeLight_Traffic_Light2";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 79 ".uvst[0].uvsp[0:78]" -type "float2" 0 0.125 0.125 0.125
		 0.25 0.125 0.375 0.125 0.5 0.125 0.625 0.125 0.75 0.125 0.875 0.125 1 0.125 0 0.25
		 0.125 0.25 0.25 0.25 0.375 0.25 0.5 0.25 0.625 0.25 0.75 0.25 0.875 0.25 1 0.25 0
		 0.375 0.125 0.375 0.25 0.375 0.375 0.375 0.5 0.375 0.625 0.375 0.75 0.375 0.875 0.375
		 1 0.375 0 0.5 0.125 0.5 0.25 0.5 0.375 0.5 0.5 0.5 0.625 0.5 0.75 0.5 0.875 0.5 1
		 0.5 0 0.625 0.125 0.625 0.25 0.625 0.375 0.625 0.5 0.625 0.625 0.625 0.75 0.625 0.875
		 0.625 1 0.625 0 0.75 0.125 0.75 0.25 0.75 0.375 0.75 0.5 0.75 0.625 0.75 0.75 0.75
		 0.875 0.75 1 0.75 0 0.875 0.125 0.875 0.25 0.875 0.375 0.875 0.5 0.875 0.625 0.875
		 0.75 0.875 0.875 0.875 1 0.875 0.0625 0 0.1875 0 0.3125 0 0.4375 0 0.5625 0 0.6875
		 0 0.8125 0 0.9375 0 0.0625 1 0.1875 1 0.3125 1 0.4375 1 0.5625 1 0.6875 1 0.8125
		 1 0.9375 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 58 ".vt[0:57]"  1.78258884 0.92994785 1.58291113 1.76499999 0.92994785 1.57562554
		 1.74741113 0.92994785 1.58291113 1.74012554 0.92994785 1.60049999 1.74741113 0.92994785 1.61808884
		 1.76499999 0.92994785 1.62537444 1.78258884 0.92994785 1.61808884 1.78987443 0.92994785 1.60049999
		 1.79750001 0.94403809 1.56799996 1.76499999 0.94403809 1.55453801 1.73249996 0.94403809 1.56799996
		 1.71903801 0.94403809 1.60049999 1.73249996 0.94403809 1.63300002 1.76499999 0.94403809 1.64646196
		 1.79750001 0.94403809 1.63300002 1.81096196 0.94403809 1.60049999 1.80746329 0.96512556 1.55803668
		 1.76499999 0.96512556 1.54044783 1.72253668 0.96512556 1.55803668 1.70494783 0.96512556 1.60049999
		 1.72253668 0.96512556 1.64296329 1.76499999 0.96512556 1.66055214 1.80746329 0.96512556 1.64296329
		 1.82505214 0.96512556 1.60049999 1.81096196 0.99000001 1.55453801 1.76499999 0.99000001 1.53550005
		 1.71903801 0.99000001 1.55453801 1.70000005 0.99000001 1.60049999 1.71903801 0.99000001 1.64646196
		 1.76499999 0.99000001 1.66549993 1.81096196 0.99000001 1.64646196 1.82999992 0.99000001 1.60049999
		 1.80746329 1.014874458 1.55803668 1.76499999 1.014874458 1.54044783 1.72253668 1.014874458 1.55803668
		 1.70494783 1.014874458 1.60049999 1.72253668 1.014874458 1.64296329 1.76499999 1.014874458 1.66055214
		 1.80746329 1.014874458 1.64296329 1.82505214 1.014874458 1.60049999 1.79750001 1.035961986 1.56799996
		 1.76499999 1.035961986 1.55453801 1.73249996 1.035961986 1.56799996 1.71903801 1.035961986 1.60049999
		 1.73249996 1.035961986 1.63300002 1.76499999 1.035961986 1.64646196 1.79750001 1.035961986 1.63300002
		 1.81096196 1.035961986 1.60049999 1.78258884 1.050052166 1.58291113 1.76499999 1.050052166 1.57562554
		 1.74741113 1.050052166 1.58291113 1.74012554 1.050052166 1.60049999 1.74741113 1.050052166 1.61808884
		 1.76499999 1.050052166 1.62537444 1.78258884 1.050052166 1.61808884 1.78987443 1.050052166 1.60049999
		 1.76499999 0.92500001 1.60049999 1.76499999 1.055000067 1.60049999;
	setAttr -s 120 ".ed[0:119]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 0 0 8 9 0 9 10 0 10 11 0 11 12 0 12 13 0 13 14 0 14 15 0 15 8 0 16 17 0 17 18 0
		 18 19 0 19 20 0 20 21 0 21 22 0 22 23 0 23 16 0 24 25 0 25 26 0 26 27 0 27 28 0 28 29 0
		 29 30 0 30 31 0 31 24 0 32 33 0 33 34 0 34 35 0 35 36 0 36 37 0 37 38 0 38 39 0 39 32 0
		 40 41 0 41 42 0 42 43 0 43 44 0 44 45 0 45 46 0 46 47 0 47 40 0 48 49 0 49 50 0 50 51 0
		 51 52 0 52 53 0 53 54 0 54 55 0 55 48 0 0 8 0 1 9 0 2 10 0 3 11 0 4 12 0 5 13 0 6 14 0
		 7 15 0 8 16 0 9 17 0 10 18 0 11 19 0 12 20 0 13 21 0 14 22 0 15 23 0 16 24 0 17 25 0
		 18 26 0 19 27 0 20 28 0 21 29 0 22 30 0 23 31 0 24 32 0 25 33 0 26 34 0 27 35 0 28 36 0
		 29 37 0 30 38 0 31 39 0 32 40 0 33 41 0 34 42 0 35 43 0 36 44 0 37 45 0 38 46 0 39 47 0
		 40 48 0 41 49 0 42 50 0 43 51 0 44 52 0 45 53 0 46 54 0 47 55 0 56 0 0 56 1 0 56 2 0
		 56 3 0 56 4 0 56 5 0 56 6 0 56 7 0 48 57 0 49 57 0 50 57 0 51 57 0 52 57 0 53 57 0
		 54 57 0 55 57 0;
	setAttr -s 64 -ch 240 ".fc[0:63]" -type "polyFaces" 
		f 4 0 57 -9 -57
		mu 0 4 0 1 10 9
		f 4 1 58 -10 -58
		mu 0 4 1 2 11 10
		f 4 2 59 -11 -59
		mu 0 4 2 3 12 11
		f 4 3 60 -12 -60
		mu 0 4 3 4 13 12
		f 4 4 61 -13 -61
		mu 0 4 4 5 14 13
		f 4 5 62 -14 -62
		mu 0 4 5 6 15 14
		f 4 6 63 -15 -63
		mu 0 4 6 7 16 15
		f 4 7 56 -16 -64
		mu 0 4 7 8 17 16
		f 4 8 65 -17 -65
		mu 0 4 9 10 19 18
		f 4 9 66 -18 -66
		mu 0 4 10 11 20 19
		f 4 10 67 -19 -67
		mu 0 4 11 12 21 20
		f 4 11 68 -20 -68
		mu 0 4 12 13 22 21
		f 4 12 69 -21 -69
		mu 0 4 13 14 23 22
		f 4 13 70 -22 -70
		mu 0 4 14 15 24 23
		f 4 14 71 -23 -71
		mu 0 4 15 16 25 24
		f 4 15 64 -24 -72
		mu 0 4 16 17 26 25
		f 4 16 73 -25 -73
		mu 0 4 18 19 28 27
		f 4 17 74 -26 -74
		mu 0 4 19 20 29 28
		f 4 18 75 -27 -75
		mu 0 4 20 21 30 29
		f 4 19 76 -28 -76
		mu 0 4 21 22 31 30
		f 4 20 77 -29 -77
		mu 0 4 22 23 32 31
		f 4 21 78 -30 -78
		mu 0 4 23 24 33 32
		f 4 22 79 -31 -79
		mu 0 4 24 25 34 33
		f 4 23 72 -32 -80
		mu 0 4 25 26 35 34
		f 4 24 81 -33 -81
		mu 0 4 27 28 37 36
		f 4 25 82 -34 -82
		mu 0 4 28 29 38 37
		f 4 26 83 -35 -83
		mu 0 4 29 30 39 38
		f 4 27 84 -36 -84
		mu 0 4 30 31 40 39
		f 4 28 85 -37 -85
		mu 0 4 31 32 41 40
		f 4 29 86 -38 -86
		mu 0 4 32 33 42 41
		f 4 30 87 -39 -87
		mu 0 4 33 34 43 42
		f 4 31 80 -40 -88
		mu 0 4 34 35 44 43
		f 4 32 89 -41 -89
		mu 0 4 36 37 46 45
		f 4 33 90 -42 -90
		mu 0 4 37 38 47 46
		f 4 34 91 -43 -91
		mu 0 4 38 39 48 47
		f 4 35 92 -44 -92
		mu 0 4 39 40 49 48
		f 4 36 93 -45 -93
		mu 0 4 40 41 50 49
		f 4 37 94 -46 -94
		mu 0 4 41 42 51 50
		f 4 38 95 -47 -95
		mu 0 4 42 43 52 51
		f 4 39 88 -48 -96
		mu 0 4 43 44 53 52
		f 4 40 97 -49 -97
		mu 0 4 45 46 55 54
		f 4 41 98 -50 -98
		mu 0 4 46 47 56 55
		f 4 42 99 -51 -99
		mu 0 4 47 48 57 56
		f 4 43 100 -52 -100
		mu 0 4 48 49 58 57
		f 4 44 101 -53 -101
		mu 0 4 49 50 59 58
		f 4 45 102 -54 -102
		mu 0 4 50 51 60 59
		f 4 46 103 -55 -103
		mu 0 4 51 52 61 60
		f 4 47 96 -56 -104
		mu 0 4 52 53 62 61
		f 3 -1 -105 105
		mu 0 3 1 0 63
		f 3 -2 -106 106
		mu 0 3 2 1 64
		f 3 -3 -107 107
		mu 0 3 3 2 65
		f 3 -4 -108 108
		mu 0 3 4 3 66
		f 3 -5 -109 109
		mu 0 3 5 4 67
		f 3 -6 -110 110
		mu 0 3 6 5 68
		f 3 -7 -111 111
		mu 0 3 7 6 69
		f 3 -8 -112 104
		mu 0 3 8 7 70
		f 3 48 113 -113
		mu 0 3 54 55 71
		f 3 49 114 -114
		mu 0 3 55 56 72
		f 3 50 115 -115
		mu 0 3 56 57 73
		f 3 51 116 -116
		mu 0 3 57 58 74
		f 3 52 117 -117
		mu 0 3 58 59 75
		f 3 53 118 -118
		mu 0 3 59 60 76
		f 3 54 119 -119
		mu 0 3 60 61 77
		f 3 55 112 -120
		mu 0 3 61 62 78;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "GreenLight_Traffic_Light2" -p "Traffic_Light2";
	setAttr ".rp" -type "double3" 1.765 0.83400000000000007 1.6005 ;
	setAttr ".sp" -type "double3" 1.765 0.83400000000000007 1.6005 ;
createNode mesh -n "GreenLight_Traffic_Light2Shape" -p "GreenLight_Traffic_Light2";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 79 ".uvst[0].uvsp[0:78]" -type "float2" 0 0.125 0.125 0.125
		 0.25 0.125 0.375 0.125 0.5 0.125 0.625 0.125 0.75 0.125 0.875 0.125 1 0.125 0 0.25
		 0.125 0.25 0.25 0.25 0.375 0.25 0.5 0.25 0.625 0.25 0.75 0.25 0.875 0.25 1 0.25 0
		 0.375 0.125 0.375 0.25 0.375 0.375 0.375 0.5 0.375 0.625 0.375 0.75 0.375 0.875 0.375
		 1 0.375 0 0.5 0.125 0.5 0.25 0.5 0.375 0.5 0.5 0.5 0.625 0.5 0.75 0.5 0.875 0.5 1
		 0.5 0 0.625 0.125 0.625 0.25 0.625 0.375 0.625 0.5 0.625 0.625 0.625 0.75 0.625 0.875
		 0.625 1 0.625 0 0.75 0.125 0.75 0.25 0.75 0.375 0.75 0.5 0.75 0.625 0.75 0.75 0.75
		 0.875 0.75 1 0.75 0 0.875 0.125 0.875 0.25 0.875 0.375 0.875 0.5 0.875 0.625 0.875
		 0.75 0.875 0.875 0.875 1 0.875 0.0625 0 0.1875 0 0.3125 0 0.4375 0 0.5625 0 0.6875
		 0 0.8125 0 0.9375 0 0.0625 1 0.1875 1 0.3125 1 0.4375 1 0.5625 1 0.6875 1 0.8125
		 1 0.9375 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 58 ".vt[0:57]"  1.78258884 0.77394783 1.58291113 1.76499999 0.77394783 1.57562554
		 1.74741113 0.77394783 1.58291113 1.74012554 0.77394783 1.60049999 1.74741113 0.77394783 1.61808884
		 1.76499999 0.77394783 1.62537444 1.78258884 0.77394783 1.61808884 1.78987443 0.77394783 1.60049999
		 1.79750001 0.78803807 1.56799996 1.76499999 0.78803807 1.55453801 1.73249996 0.78803807 1.56799996
		 1.71903801 0.78803807 1.60049999 1.73249996 0.78803807 1.63300002 1.76499999 0.78803807 1.64646196
		 1.79750001 0.78803807 1.63300002 1.81096196 0.78803807 1.60049999 1.80746329 0.80912554 1.55803668
		 1.76499999 0.80912554 1.54044783 1.72253668 0.80912554 1.55803668 1.70494783 0.80912554 1.60049999
		 1.72253668 0.80912554 1.64296329 1.76499999 0.80912554 1.66055214 1.80746329 0.80912554 1.64296329
		 1.82505214 0.80912554 1.60049999 1.81096196 0.83399999 1.55453801 1.76499999 0.83399999 1.53550005
		 1.71903801 0.83399999 1.55453801 1.70000005 0.83399999 1.60049999 1.71903801 0.83399999 1.64646196
		 1.76499999 0.83399999 1.66549993 1.81096196 0.83399999 1.64646196 1.82999992 0.83399999 1.60049999
		 1.80746329 0.85887444 1.55803668 1.76499999 0.85887444 1.54044783 1.72253668 0.85887444 1.55803668
		 1.70494783 0.85887444 1.60049999 1.72253668 0.85887444 1.64296329 1.76499999 0.85887444 1.66055214
		 1.80746329 0.85887444 1.64296329 1.82505214 0.85887444 1.60049999 1.79750001 0.87996191 1.56799996
		 1.76499999 0.87996191 1.55453801 1.73249996 0.87996191 1.56799996 1.71903801 0.87996191 1.60049999
		 1.73249996 0.87996191 1.63300002 1.76499999 0.87996191 1.64646196 1.79750001 0.87996191 1.63300002
		 1.81096196 0.87996191 1.60049999 1.78258884 0.89405215 1.58291113 1.76499999 0.89405215 1.57562554
		 1.74741113 0.89405215 1.58291113 1.74012554 0.89405215 1.60049999 1.74741113 0.89405215 1.61808884
		 1.76499999 0.89405215 1.62537444 1.78258884 0.89405215 1.61808884 1.78987443 0.89405215 1.60049999
		 1.76499999 0.76899999 1.60049999 1.76499999 0.89899999 1.60049999;
	setAttr -s 120 ".ed[0:119]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 0 0 8 9 0 9 10 0 10 11 0 11 12 0 12 13 0 13 14 0 14 15 0 15 8 0 16 17 0 17 18 0
		 18 19 0 19 20 0 20 21 0 21 22 0 22 23 0 23 16 0 24 25 0 25 26 0 26 27 0 27 28 0 28 29 0
		 29 30 0 30 31 0 31 24 0 32 33 0 33 34 0 34 35 0 35 36 0 36 37 0 37 38 0 38 39 0 39 32 0
		 40 41 0 41 42 0 42 43 0 43 44 0 44 45 0 45 46 0 46 47 0 47 40 0 48 49 0 49 50 0 50 51 0
		 51 52 0 52 53 0 53 54 0 54 55 0 55 48 0 0 8 0 1 9 0 2 10 0 3 11 0 4 12 0 5 13 0 6 14 0
		 7 15 0 8 16 0 9 17 0 10 18 0 11 19 0 12 20 0 13 21 0 14 22 0 15 23 0 16 24 0 17 25 0
		 18 26 0 19 27 0 20 28 0 21 29 0 22 30 0 23 31 0 24 32 0 25 33 0 26 34 0 27 35 0 28 36 0
		 29 37 0 30 38 0 31 39 0 32 40 0 33 41 0 34 42 0 35 43 0 36 44 0 37 45 0 38 46 0 39 47 0
		 40 48 0 41 49 0 42 50 0 43 51 0 44 52 0 45 53 0 46 54 0 47 55 0 56 0 0 56 1 0 56 2 0
		 56 3 0 56 4 0 56 5 0 56 6 0 56 7 0 48 57 0 49 57 0 50 57 0 51 57 0 52 57 0 53 57 0
		 54 57 0 55 57 0;
	setAttr -s 64 -ch 240 ".fc[0:63]" -type "polyFaces" 
		f 4 0 57 -9 -57
		mu 0 4 0 1 10 9
		f 4 1 58 -10 -58
		mu 0 4 1 2 11 10
		f 4 2 59 -11 -59
		mu 0 4 2 3 12 11
		f 4 3 60 -12 -60
		mu 0 4 3 4 13 12
		f 4 4 61 -13 -61
		mu 0 4 4 5 14 13
		f 4 5 62 -14 -62
		mu 0 4 5 6 15 14
		f 4 6 63 -15 -63
		mu 0 4 6 7 16 15
		f 4 7 56 -16 -64
		mu 0 4 7 8 17 16
		f 4 8 65 -17 -65
		mu 0 4 9 10 19 18
		f 4 9 66 -18 -66
		mu 0 4 10 11 20 19
		f 4 10 67 -19 -67
		mu 0 4 11 12 21 20
		f 4 11 68 -20 -68
		mu 0 4 12 13 22 21
		f 4 12 69 -21 -69
		mu 0 4 13 14 23 22
		f 4 13 70 -22 -70
		mu 0 4 14 15 24 23
		f 4 14 71 -23 -71
		mu 0 4 15 16 25 24
		f 4 15 64 -24 -72
		mu 0 4 16 17 26 25
		f 4 16 73 -25 -73
		mu 0 4 18 19 28 27
		f 4 17 74 -26 -74
		mu 0 4 19 20 29 28
		f 4 18 75 -27 -75
		mu 0 4 20 21 30 29
		f 4 19 76 -28 -76
		mu 0 4 21 22 31 30
		f 4 20 77 -29 -77
		mu 0 4 22 23 32 31
		f 4 21 78 -30 -78
		mu 0 4 23 24 33 32
		f 4 22 79 -31 -79
		mu 0 4 24 25 34 33
		f 4 23 72 -32 -80
		mu 0 4 25 26 35 34
		f 4 24 81 -33 -81
		mu 0 4 27 28 37 36
		f 4 25 82 -34 -82
		mu 0 4 28 29 38 37
		f 4 26 83 -35 -83
		mu 0 4 29 30 39 38
		f 4 27 84 -36 -84
		mu 0 4 30 31 40 39
		f 4 28 85 -37 -85
		mu 0 4 31 32 41 40
		f 4 29 86 -38 -86
		mu 0 4 32 33 42 41
		f 4 30 87 -39 -87
		mu 0 4 33 34 43 42
		f 4 31 80 -40 -88
		mu 0 4 34 35 44 43
		f 4 32 89 -41 -89
		mu 0 4 36 37 46 45
		f 4 33 90 -42 -90
		mu 0 4 37 38 47 46
		f 4 34 91 -43 -91
		mu 0 4 38 39 48 47
		f 4 35 92 -44 -92
		mu 0 4 39 40 49 48
		f 4 36 93 -45 -93
		mu 0 4 40 41 50 49
		f 4 37 94 -46 -94
		mu 0 4 41 42 51 50
		f 4 38 95 -47 -95
		mu 0 4 42 43 52 51
		f 4 39 88 -48 -96
		mu 0 4 43 44 53 52
		f 4 40 97 -49 -97
		mu 0 4 45 46 55 54
		f 4 41 98 -50 -98
		mu 0 4 46 47 56 55
		f 4 42 99 -51 -99
		mu 0 4 47 48 57 56
		f 4 43 100 -52 -100
		mu 0 4 48 49 58 57
		f 4 44 101 -53 -101
		mu 0 4 49 50 59 58
		f 4 45 102 -54 -102
		mu 0 4 50 51 60 59
		f 4 46 103 -55 -103
		mu 0 4 51 52 61 60
		f 4 47 96 -56 -104
		mu 0 4 52 53 62 61
		f 3 -1 -105 105
		mu 0 3 1 0 63
		f 3 -2 -106 106
		mu 0 3 2 1 64
		f 3 -3 -107 107
		mu 0 3 3 2 65
		f 3 -4 -108 108
		mu 0 3 4 3 66
		f 3 -5 -109 109
		mu 0 3 5 4 67
		f 3 -6 -110 110
		mu 0 3 6 5 68
		f 3 -7 -111 111
		mu 0 3 7 6 69
		f 3 -8 -112 104
		mu 0 3 8 7 70
		f 3 48 113 -113
		mu 0 3 54 55 71
		f 3 49 114 -114
		mu 0 3 55 56 72
		f 3 50 115 -115
		mu 0 3 56 57 73
		f 3 51 116 -116
		mu 0 3 57 58 74
		f 3 52 117 -117
		mu 0 3 58 59 75
		f 3 53 118 -118
		mu 0 3 59 60 76
		f 3 54 119 -119
		mu 0 3 60 61 77
		f 3 55 112 -120
		mu 0 3 61 62 78;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Linked_Traffic_Grp2" -p "GrpAllTrafficLights";
	setAttr ".rp" -type "double3" 0.014999999999998792 0.60000002384185835 -3.7175000238418585 ;
	setAttr ".sp" -type "double3" 0.014999999999998792 0.60000002384185835 -3.7175000238418585 ;
createNode transform -n "Traffic_Light9" -p "Linked_Traffic_Grp2";
	setAttr ".t" -type "double3" 0.5 8.8817841970012523e-016 -4 ;
	setAttr ".r" -type "double3" 0 -90 0 ;
	setAttr ".rp" -type "double3" 1.765 0.6 1.75 ;
	setAttr ".sp" -type "double3" 1.765 0.6 1.75 ;
createNode mesh -n "Traffic_Light9Shape" -p "Traffic_Light9";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 32 ".uvst[0].uvsp[0:31]" -type "float2" 0.33000001 0 0.66333336
		 0 0.33000001 0.125 0.66333336 0.125 0.33000001 0.25 0.66333336 0.25 0.33000001 0.5
		 0.66333336 0.5 0.33000001 0.625 0.66333336 0.625 0.33000001 0.75 0.66333336 0.75
		 0.33000001 1 0.66333336 1 1 0 1 0.125 1 0.25 0 0 0 0.125 0 0.25 0.33000001 0.125
		 0.66333336 0.125 0.66333336 0.25 0.33000001 0.25 0.33000001 0.5 0.66333336 0.5 0.66333336
		 0.625 0.33000001 0.625 1 0.125 1 0.25 0 0.125 0 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 20 ".vt[0:19]"  1.70000005 -0.049999952 1.81500006 1.82999992 -0.049999952 1.81500006
		 1.70000005 0.73000002 1.81500006 1.82999992 0.73000002 1.81500006 1.70000005 1.25 1.81500006
		 1.82999992 1.25 1.81500006 1.70000005 1.25 1.68499994 1.82999992 1.25 1.68499994
		 1.70000005 0.73000002 1.68499994 1.82999992 0.73000002 1.68499994 1.70000005 -0.049999952 1.68499994
		 1.82999992 -0.049999952 1.68499994 1.61549997 0.73000002 1.89950001 1.9145 0.73000002 1.89950001
		 1.9145 1.25 1.89950001 1.61549997 1.25 1.89950001 1.61549997 1.25 1.60049999 1.9145 1.25 1.60049999
		 1.9145 0.73000002 1.60049999 1.61549997 0.73000002 1.60049999;
	setAttr -s 36 ".ed[0:35]"  0 1 0 2 3 0 4 5 1 6 7 1 8 9 0 10 11 0 0 2 0
		 1 3 0 4 6 1 5 7 1 8 10 0 9 11 0 10 0 0 11 1 0 9 3 0 8 2 0 2 12 1 3 13 1 12 13 0 5 14 1
		 13 14 0 4 15 1 15 14 0 12 15 0 6 16 1 7 17 1 16 17 0 9 18 1 17 18 0 8 19 1 19 18 0
		 16 19 0 18 13 0 14 17 0 19 12 0 15 16 0;
	setAttr -s 18 -ch 72 ".fc[0:17]" -type "polyFaces" 
		f 4 0 7 -2 -7
		mu 0 4 0 1 3 2
		f 4 18 20 -23 -24
		mu 0 4 20 21 22 23
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 26 28 -31 -32
		mu 0 4 24 25 26 27
		f 4 4 11 -6 -11
		mu 0 4 8 9 11 10
		f 4 5 13 -1 -13
		mu 0 4 10 11 13 12
		f 4 -14 -12 14 -8
		mu 0 4 1 14 15 3
		f 4 -33 -29 -34 -21
		mu 0 4 21 28 29 22
		f 4 12 6 -16 10
		mu 0 4 17 0 2 18
		f 4 34 23 35 31
		mu 0 4 30 20 23 31
		f 4 1 17 -19 -17
		mu 0 4 2 3 21 20
		f 4 -3 21 22 -20
		mu 0 4 5 4 23 22
		f 4 3 25 -27 -25
		mu 0 4 6 7 25 24
		f 4 -5 29 30 -28
		mu 0 4 9 8 27 26
		f 4 -15 27 32 -18
		mu 0 4 3 15 28 21
		f 4 -10 19 33 -26
		mu 0 4 16 5 22 29
		f 4 15 16 -35 -30
		mu 0 4 18 2 20 30
		f 4 8 24 -36 -22
		mu 0 4 4 19 31 23;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "RedLight_Traffic_Light9" -p "Traffic_Light9";
	setAttr ".rp" -type "double3" 1.765 1.146 1.6005 ;
	setAttr ".sp" -type "double3" 1.765 1.146 1.6005 ;
createNode mesh -n "RedLight_Traffic_Light9Shape" -p "RedLight_Traffic_Light9";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 79 ".uvst[0].uvsp[0:78]" -type "float2" 0 0.125 0.125 0.125
		 0.25 0.125 0.375 0.125 0.5 0.125 0.625 0.125 0.75 0.125 0.875 0.125 1 0.125 0 0.25
		 0.125 0.25 0.25 0.25 0.375 0.25 0.5 0.25 0.625 0.25 0.75 0.25 0.875 0.25 1 0.25 0
		 0.375 0.125 0.375 0.25 0.375 0.375 0.375 0.5 0.375 0.625 0.375 0.75 0.375 0.875 0.375
		 1 0.375 0 0.5 0.125 0.5 0.25 0.5 0.375 0.5 0.5 0.5 0.625 0.5 0.75 0.5 0.875 0.5 1
		 0.5 0 0.625 0.125 0.625 0.25 0.625 0.375 0.625 0.5 0.625 0.625 0.625 0.75 0.625 0.875
		 0.625 1 0.625 0 0.75 0.125 0.75 0.25 0.75 0.375 0.75 0.5 0.75 0.625 0.75 0.75 0.75
		 0.875 0.75 1 0.75 0 0.875 0.125 0.875 0.25 0.875 0.375 0.875 0.5 0.875 0.625 0.875
		 0.75 0.875 0.875 0.875 1 0.875 0.0625 0 0.1875 0 0.3125 0 0.4375 0 0.5625 0 0.6875
		 0 0.8125 0 0.9375 0 0.0625 1 0.1875 1 0.3125 1 0.4375 1 0.5625 1 0.6875 1 0.8125
		 1 0.9375 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 58 ".vt[0:57]"  1.78258884 1.085947871 1.58291113 1.76499999 1.085947871 1.57562554
		 1.74741113 1.085947871 1.58291113 1.74012554 1.085947871 1.60049999 1.74741113 1.085947871 1.61808884
		 1.76499999 1.085947871 1.62537444 1.78258884 1.085947871 1.61808884 1.78987443 1.085947871 1.60049999
		 1.79750001 1.10003805 1.56799996 1.76499999 1.10003805 1.55453801 1.73249996 1.10003805 1.56799996
		 1.71903801 1.10003805 1.60049999 1.73249996 1.10003805 1.63300002 1.76499999 1.10003805 1.64646196
		 1.79750001 1.10003805 1.63300002 1.81096196 1.10003805 1.60049999 1.80746329 1.12112558 1.55803668
		 1.76499999 1.12112558 1.54044783 1.72253668 1.12112558 1.55803668 1.70494783 1.12112558 1.60049999
		 1.72253668 1.12112558 1.64296329 1.76499999 1.12112558 1.66055214 1.80746329 1.12112558 1.64296329
		 1.82505214 1.12112558 1.60049999 1.81096196 1.14600003 1.55453801 1.76499999 1.14600003 1.53550005
		 1.71903801 1.14600003 1.55453801 1.70000005 1.14600003 1.60049999 1.71903801 1.14600003 1.64646196
		 1.76499999 1.14600003 1.66549993 1.81096196 1.14600003 1.64646196 1.82999992 1.14600003 1.60049999
		 1.80746329 1.17087448 1.55803668 1.76499999 1.17087448 1.54044783 1.72253668 1.17087448 1.55803668
		 1.70494783 1.17087448 1.60049999 1.72253668 1.17087448 1.64296329 1.76499999 1.17087448 1.66055214
		 1.80746329 1.17087448 1.64296329 1.82505214 1.17087448 1.60049999 1.79750001 1.191962 1.56799996
		 1.76499999 1.191962 1.55453801 1.73249996 1.191962 1.56799996 1.71903801 1.191962 1.60049999
		 1.73249996 1.191962 1.63300002 1.76499999 1.191962 1.64646196 1.79750001 1.191962 1.63300002
		 1.81096196 1.191962 1.60049999 1.78258884 1.20605218 1.58291113 1.76499999 1.20605218 1.57562554
		 1.74741113 1.20605218 1.58291113 1.74012554 1.20605218 1.60049999 1.74741113 1.20605218 1.61808884
		 1.76499999 1.20605218 1.62537444 1.78258884 1.20605218 1.61808884 1.78987443 1.20605218 1.60049999
		 1.76499999 1.08100009 1.60049999 1.76499999 1.21099997 1.60049999;
	setAttr -s 120 ".ed[0:119]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 0 0 8 9 0 9 10 0 10 11 0 11 12 0 12 13 0 13 14 0 14 15 0 15 8 0 16 17 0 17 18 0
		 18 19 0 19 20 0 20 21 0 21 22 0 22 23 0 23 16 0 24 25 0 25 26 0 26 27 0 27 28 0 28 29 0
		 29 30 0 30 31 0 31 24 0 32 33 0 33 34 0 34 35 0 35 36 0 36 37 0 37 38 0 38 39 0 39 32 0
		 40 41 0 41 42 0 42 43 0 43 44 0 44 45 0 45 46 0 46 47 0 47 40 0 48 49 0 49 50 0 50 51 0
		 51 52 0 52 53 0 53 54 0 54 55 0 55 48 0 0 8 0 1 9 0 2 10 0 3 11 0 4 12 0 5 13 0 6 14 0
		 7 15 0 8 16 0 9 17 0 10 18 0 11 19 0 12 20 0 13 21 0 14 22 0 15 23 0 16 24 0 17 25 0
		 18 26 0 19 27 0 20 28 0 21 29 0 22 30 0 23 31 0 24 32 0 25 33 0 26 34 0 27 35 0 28 36 0
		 29 37 0 30 38 0 31 39 0 32 40 0 33 41 0 34 42 0 35 43 0 36 44 0 37 45 0 38 46 0 39 47 0
		 40 48 0 41 49 0 42 50 0 43 51 0 44 52 0 45 53 0 46 54 0 47 55 0 56 0 0 56 1 0 56 2 0
		 56 3 0 56 4 0 56 5 0 56 6 0 56 7 0 48 57 0 49 57 0 50 57 0 51 57 0 52 57 0 53 57 0
		 54 57 0 55 57 0;
	setAttr -s 64 -ch 240 ".fc[0:63]" -type "polyFaces" 
		f 4 0 57 -9 -57
		mu 0 4 0 1 10 9
		f 4 1 58 -10 -58
		mu 0 4 1 2 11 10
		f 4 2 59 -11 -59
		mu 0 4 2 3 12 11
		f 4 3 60 -12 -60
		mu 0 4 3 4 13 12
		f 4 4 61 -13 -61
		mu 0 4 4 5 14 13
		f 4 5 62 -14 -62
		mu 0 4 5 6 15 14
		f 4 6 63 -15 -63
		mu 0 4 6 7 16 15
		f 4 7 56 -16 -64
		mu 0 4 7 8 17 16
		f 4 8 65 -17 -65
		mu 0 4 9 10 19 18
		f 4 9 66 -18 -66
		mu 0 4 10 11 20 19
		f 4 10 67 -19 -67
		mu 0 4 11 12 21 20
		f 4 11 68 -20 -68
		mu 0 4 12 13 22 21
		f 4 12 69 -21 -69
		mu 0 4 13 14 23 22
		f 4 13 70 -22 -70
		mu 0 4 14 15 24 23
		f 4 14 71 -23 -71
		mu 0 4 15 16 25 24
		f 4 15 64 -24 -72
		mu 0 4 16 17 26 25
		f 4 16 73 -25 -73
		mu 0 4 18 19 28 27
		f 4 17 74 -26 -74
		mu 0 4 19 20 29 28
		f 4 18 75 -27 -75
		mu 0 4 20 21 30 29
		f 4 19 76 -28 -76
		mu 0 4 21 22 31 30
		f 4 20 77 -29 -77
		mu 0 4 22 23 32 31
		f 4 21 78 -30 -78
		mu 0 4 23 24 33 32
		f 4 22 79 -31 -79
		mu 0 4 24 25 34 33
		f 4 23 72 -32 -80
		mu 0 4 25 26 35 34
		f 4 24 81 -33 -81
		mu 0 4 27 28 37 36
		f 4 25 82 -34 -82
		mu 0 4 28 29 38 37
		f 4 26 83 -35 -83
		mu 0 4 29 30 39 38
		f 4 27 84 -36 -84
		mu 0 4 30 31 40 39
		f 4 28 85 -37 -85
		mu 0 4 31 32 41 40
		f 4 29 86 -38 -86
		mu 0 4 32 33 42 41
		f 4 30 87 -39 -87
		mu 0 4 33 34 43 42
		f 4 31 80 -40 -88
		mu 0 4 34 35 44 43
		f 4 32 89 -41 -89
		mu 0 4 36 37 46 45
		f 4 33 90 -42 -90
		mu 0 4 37 38 47 46
		f 4 34 91 -43 -91
		mu 0 4 38 39 48 47
		f 4 35 92 -44 -92
		mu 0 4 39 40 49 48
		f 4 36 93 -45 -93
		mu 0 4 40 41 50 49
		f 4 37 94 -46 -94
		mu 0 4 41 42 51 50
		f 4 38 95 -47 -95
		mu 0 4 42 43 52 51
		f 4 39 88 -48 -96
		mu 0 4 43 44 53 52
		f 4 40 97 -49 -97
		mu 0 4 45 46 55 54
		f 4 41 98 -50 -98
		mu 0 4 46 47 56 55
		f 4 42 99 -51 -99
		mu 0 4 47 48 57 56
		f 4 43 100 -52 -100
		mu 0 4 48 49 58 57
		f 4 44 101 -53 -101
		mu 0 4 49 50 59 58
		f 4 45 102 -54 -102
		mu 0 4 50 51 60 59
		f 4 46 103 -55 -103
		mu 0 4 51 52 61 60
		f 4 47 96 -56 -104
		mu 0 4 52 53 62 61
		f 3 -1 -105 105
		mu 0 3 1 0 63
		f 3 -2 -106 106
		mu 0 3 2 1 64
		f 3 -3 -107 107
		mu 0 3 3 2 65
		f 3 -4 -108 108
		mu 0 3 4 3 66
		f 3 -5 -109 109
		mu 0 3 5 4 67
		f 3 -6 -110 110
		mu 0 3 6 5 68
		f 3 -7 -111 111
		mu 0 3 7 6 69
		f 3 -8 -112 104
		mu 0 3 8 7 70
		f 3 48 113 -113
		mu 0 3 54 55 71
		f 3 49 114 -114
		mu 0 3 55 56 72
		f 3 50 115 -115
		mu 0 3 56 57 73
		f 3 51 116 -116
		mu 0 3 57 58 74
		f 3 52 117 -117
		mu 0 3 58 59 75
		f 3 53 118 -118
		mu 0 3 59 60 76
		f 3 54 119 -119
		mu 0 3 60 61 77
		f 3 55 112 -120
		mu 0 3 61 62 78;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "OrangeLight_Traffic_Light9" -p "Traffic_Light9";
	setAttr ".rp" -type "double3" 1.765 0.99 1.6005 ;
	setAttr ".sp" -type "double3" 1.765 0.99 1.6005 ;
createNode mesh -n "OrangeLight_Traffic_Light9Shape" -p "OrangeLight_Traffic_Light9";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 79 ".uvst[0].uvsp[0:78]" -type "float2" 0 0.125 0.125 0.125
		 0.25 0.125 0.375 0.125 0.5 0.125 0.625 0.125 0.75 0.125 0.875 0.125 1 0.125 0 0.25
		 0.125 0.25 0.25 0.25 0.375 0.25 0.5 0.25 0.625 0.25 0.75 0.25 0.875 0.25 1 0.25 0
		 0.375 0.125 0.375 0.25 0.375 0.375 0.375 0.5 0.375 0.625 0.375 0.75 0.375 0.875 0.375
		 1 0.375 0 0.5 0.125 0.5 0.25 0.5 0.375 0.5 0.5 0.5 0.625 0.5 0.75 0.5 0.875 0.5 1
		 0.5 0 0.625 0.125 0.625 0.25 0.625 0.375 0.625 0.5 0.625 0.625 0.625 0.75 0.625 0.875
		 0.625 1 0.625 0 0.75 0.125 0.75 0.25 0.75 0.375 0.75 0.5 0.75 0.625 0.75 0.75 0.75
		 0.875 0.75 1 0.75 0 0.875 0.125 0.875 0.25 0.875 0.375 0.875 0.5 0.875 0.625 0.875
		 0.75 0.875 0.875 0.875 1 0.875 0.0625 0 0.1875 0 0.3125 0 0.4375 0 0.5625 0 0.6875
		 0 0.8125 0 0.9375 0 0.0625 1 0.1875 1 0.3125 1 0.4375 1 0.5625 1 0.6875 1 0.8125
		 1 0.9375 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 58 ".vt[0:57]"  1.78258884 0.92994785 1.58291113 1.76499999 0.92994785 1.57562554
		 1.74741113 0.92994785 1.58291113 1.74012554 0.92994785 1.60049999 1.74741113 0.92994785 1.61808884
		 1.76499999 0.92994785 1.62537444 1.78258884 0.92994785 1.61808884 1.78987443 0.92994785 1.60049999
		 1.79750001 0.94403809 1.56799996 1.76499999 0.94403809 1.55453801 1.73249996 0.94403809 1.56799996
		 1.71903801 0.94403809 1.60049999 1.73249996 0.94403809 1.63300002 1.76499999 0.94403809 1.64646196
		 1.79750001 0.94403809 1.63300002 1.81096196 0.94403809 1.60049999 1.80746329 0.96512556 1.55803668
		 1.76499999 0.96512556 1.54044783 1.72253668 0.96512556 1.55803668 1.70494783 0.96512556 1.60049999
		 1.72253668 0.96512556 1.64296329 1.76499999 0.96512556 1.66055214 1.80746329 0.96512556 1.64296329
		 1.82505214 0.96512556 1.60049999 1.81096196 0.99000001 1.55453801 1.76499999 0.99000001 1.53550005
		 1.71903801 0.99000001 1.55453801 1.70000005 0.99000001 1.60049999 1.71903801 0.99000001 1.64646196
		 1.76499999 0.99000001 1.66549993 1.81096196 0.99000001 1.64646196 1.82999992 0.99000001 1.60049999
		 1.80746329 1.014874458 1.55803668 1.76499999 1.014874458 1.54044783 1.72253668 1.014874458 1.55803668
		 1.70494783 1.014874458 1.60049999 1.72253668 1.014874458 1.64296329 1.76499999 1.014874458 1.66055214
		 1.80746329 1.014874458 1.64296329 1.82505214 1.014874458 1.60049999 1.79750001 1.035961986 1.56799996
		 1.76499999 1.035961986 1.55453801 1.73249996 1.035961986 1.56799996 1.71903801 1.035961986 1.60049999
		 1.73249996 1.035961986 1.63300002 1.76499999 1.035961986 1.64646196 1.79750001 1.035961986 1.63300002
		 1.81096196 1.035961986 1.60049999 1.78258884 1.050052166 1.58291113 1.76499999 1.050052166 1.57562554
		 1.74741113 1.050052166 1.58291113 1.74012554 1.050052166 1.60049999 1.74741113 1.050052166 1.61808884
		 1.76499999 1.050052166 1.62537444 1.78258884 1.050052166 1.61808884 1.78987443 1.050052166 1.60049999
		 1.76499999 0.92500001 1.60049999 1.76499999 1.055000067 1.60049999;
	setAttr -s 120 ".ed[0:119]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 0 0 8 9 0 9 10 0 10 11 0 11 12 0 12 13 0 13 14 0 14 15 0 15 8 0 16 17 0 17 18 0
		 18 19 0 19 20 0 20 21 0 21 22 0 22 23 0 23 16 0 24 25 0 25 26 0 26 27 0 27 28 0 28 29 0
		 29 30 0 30 31 0 31 24 0 32 33 0 33 34 0 34 35 0 35 36 0 36 37 0 37 38 0 38 39 0 39 32 0
		 40 41 0 41 42 0 42 43 0 43 44 0 44 45 0 45 46 0 46 47 0 47 40 0 48 49 0 49 50 0 50 51 0
		 51 52 0 52 53 0 53 54 0 54 55 0 55 48 0 0 8 0 1 9 0 2 10 0 3 11 0 4 12 0 5 13 0 6 14 0
		 7 15 0 8 16 0 9 17 0 10 18 0 11 19 0 12 20 0 13 21 0 14 22 0 15 23 0 16 24 0 17 25 0
		 18 26 0 19 27 0 20 28 0 21 29 0 22 30 0 23 31 0 24 32 0 25 33 0 26 34 0 27 35 0 28 36 0
		 29 37 0 30 38 0 31 39 0 32 40 0 33 41 0 34 42 0 35 43 0 36 44 0 37 45 0 38 46 0 39 47 0
		 40 48 0 41 49 0 42 50 0 43 51 0 44 52 0 45 53 0 46 54 0 47 55 0 56 0 0 56 1 0 56 2 0
		 56 3 0 56 4 0 56 5 0 56 6 0 56 7 0 48 57 0 49 57 0 50 57 0 51 57 0 52 57 0 53 57 0
		 54 57 0 55 57 0;
	setAttr -s 64 -ch 240 ".fc[0:63]" -type "polyFaces" 
		f 4 0 57 -9 -57
		mu 0 4 0 1 10 9
		f 4 1 58 -10 -58
		mu 0 4 1 2 11 10
		f 4 2 59 -11 -59
		mu 0 4 2 3 12 11
		f 4 3 60 -12 -60
		mu 0 4 3 4 13 12
		f 4 4 61 -13 -61
		mu 0 4 4 5 14 13
		f 4 5 62 -14 -62
		mu 0 4 5 6 15 14
		f 4 6 63 -15 -63
		mu 0 4 6 7 16 15
		f 4 7 56 -16 -64
		mu 0 4 7 8 17 16
		f 4 8 65 -17 -65
		mu 0 4 9 10 19 18
		f 4 9 66 -18 -66
		mu 0 4 10 11 20 19
		f 4 10 67 -19 -67
		mu 0 4 11 12 21 20
		f 4 11 68 -20 -68
		mu 0 4 12 13 22 21
		f 4 12 69 -21 -69
		mu 0 4 13 14 23 22
		f 4 13 70 -22 -70
		mu 0 4 14 15 24 23
		f 4 14 71 -23 -71
		mu 0 4 15 16 25 24
		f 4 15 64 -24 -72
		mu 0 4 16 17 26 25
		f 4 16 73 -25 -73
		mu 0 4 18 19 28 27
		f 4 17 74 -26 -74
		mu 0 4 19 20 29 28
		f 4 18 75 -27 -75
		mu 0 4 20 21 30 29
		f 4 19 76 -28 -76
		mu 0 4 21 22 31 30
		f 4 20 77 -29 -77
		mu 0 4 22 23 32 31
		f 4 21 78 -30 -78
		mu 0 4 23 24 33 32
		f 4 22 79 -31 -79
		mu 0 4 24 25 34 33
		f 4 23 72 -32 -80
		mu 0 4 25 26 35 34
		f 4 24 81 -33 -81
		mu 0 4 27 28 37 36
		f 4 25 82 -34 -82
		mu 0 4 28 29 38 37
		f 4 26 83 -35 -83
		mu 0 4 29 30 39 38
		f 4 27 84 -36 -84
		mu 0 4 30 31 40 39
		f 4 28 85 -37 -85
		mu 0 4 31 32 41 40
		f 4 29 86 -38 -86
		mu 0 4 32 33 42 41
		f 4 30 87 -39 -87
		mu 0 4 33 34 43 42
		f 4 31 80 -40 -88
		mu 0 4 34 35 44 43
		f 4 32 89 -41 -89
		mu 0 4 36 37 46 45
		f 4 33 90 -42 -90
		mu 0 4 37 38 47 46
		f 4 34 91 -43 -91
		mu 0 4 38 39 48 47
		f 4 35 92 -44 -92
		mu 0 4 39 40 49 48
		f 4 36 93 -45 -93
		mu 0 4 40 41 50 49
		f 4 37 94 -46 -94
		mu 0 4 41 42 51 50
		f 4 38 95 -47 -95
		mu 0 4 42 43 52 51
		f 4 39 88 -48 -96
		mu 0 4 43 44 53 52
		f 4 40 97 -49 -97
		mu 0 4 45 46 55 54
		f 4 41 98 -50 -98
		mu 0 4 46 47 56 55
		f 4 42 99 -51 -99
		mu 0 4 47 48 57 56
		f 4 43 100 -52 -100
		mu 0 4 48 49 58 57
		f 4 44 101 -53 -101
		mu 0 4 49 50 59 58
		f 4 45 102 -54 -102
		mu 0 4 50 51 60 59
		f 4 46 103 -55 -103
		mu 0 4 51 52 61 60
		f 4 47 96 -56 -104
		mu 0 4 52 53 62 61
		f 3 -1 -105 105
		mu 0 3 1 0 63
		f 3 -2 -106 106
		mu 0 3 2 1 64
		f 3 -3 -107 107
		mu 0 3 3 2 65
		f 3 -4 -108 108
		mu 0 3 4 3 66
		f 3 -5 -109 109
		mu 0 3 5 4 67
		f 3 -6 -110 110
		mu 0 3 6 5 68
		f 3 -7 -111 111
		mu 0 3 7 6 69
		f 3 -8 -112 104
		mu 0 3 8 7 70
		f 3 48 113 -113
		mu 0 3 54 55 71
		f 3 49 114 -114
		mu 0 3 55 56 72
		f 3 50 115 -115
		mu 0 3 56 57 73
		f 3 51 116 -116
		mu 0 3 57 58 74
		f 3 52 117 -117
		mu 0 3 58 59 75
		f 3 53 118 -118
		mu 0 3 59 60 76
		f 3 54 119 -119
		mu 0 3 60 61 77
		f 3 55 112 -120
		mu 0 3 61 62 78;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "GreenLight_Traffic_Light9" -p "Traffic_Light9";
	setAttr ".rp" -type "double3" 1.765 0.83400000000000007 1.6005 ;
	setAttr ".sp" -type "double3" 1.765 0.83400000000000007 1.6005 ;
createNode mesh -n "GreenLight_Traffic_Light9Shape" -p "GreenLight_Traffic_Light9";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 79 ".uvst[0].uvsp[0:78]" -type "float2" 0 0.125 0.125 0.125
		 0.25 0.125 0.375 0.125 0.5 0.125 0.625 0.125 0.75 0.125 0.875 0.125 1 0.125 0 0.25
		 0.125 0.25 0.25 0.25 0.375 0.25 0.5 0.25 0.625 0.25 0.75 0.25 0.875 0.25 1 0.25 0
		 0.375 0.125 0.375 0.25 0.375 0.375 0.375 0.5 0.375 0.625 0.375 0.75 0.375 0.875 0.375
		 1 0.375 0 0.5 0.125 0.5 0.25 0.5 0.375 0.5 0.5 0.5 0.625 0.5 0.75 0.5 0.875 0.5 1
		 0.5 0 0.625 0.125 0.625 0.25 0.625 0.375 0.625 0.5 0.625 0.625 0.625 0.75 0.625 0.875
		 0.625 1 0.625 0 0.75 0.125 0.75 0.25 0.75 0.375 0.75 0.5 0.75 0.625 0.75 0.75 0.75
		 0.875 0.75 1 0.75 0 0.875 0.125 0.875 0.25 0.875 0.375 0.875 0.5 0.875 0.625 0.875
		 0.75 0.875 0.875 0.875 1 0.875 0.0625 0 0.1875 0 0.3125 0 0.4375 0 0.5625 0 0.6875
		 0 0.8125 0 0.9375 0 0.0625 1 0.1875 1 0.3125 1 0.4375 1 0.5625 1 0.6875 1 0.8125
		 1 0.9375 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 58 ".vt[0:57]"  1.78258884 0.77394783 1.58291113 1.76499999 0.77394783 1.57562554
		 1.74741113 0.77394783 1.58291113 1.74012554 0.77394783 1.60049999 1.74741113 0.77394783 1.61808884
		 1.76499999 0.77394783 1.62537444 1.78258884 0.77394783 1.61808884 1.78987443 0.77394783 1.60049999
		 1.79750001 0.78803807 1.56799996 1.76499999 0.78803807 1.55453801 1.73249996 0.78803807 1.56799996
		 1.71903801 0.78803807 1.60049999 1.73249996 0.78803807 1.63300002 1.76499999 0.78803807 1.64646196
		 1.79750001 0.78803807 1.63300002 1.81096196 0.78803807 1.60049999 1.80746329 0.80912554 1.55803668
		 1.76499999 0.80912554 1.54044783 1.72253668 0.80912554 1.55803668 1.70494783 0.80912554 1.60049999
		 1.72253668 0.80912554 1.64296329 1.76499999 0.80912554 1.66055214 1.80746329 0.80912554 1.64296329
		 1.82505214 0.80912554 1.60049999 1.81096196 0.83399999 1.55453801 1.76499999 0.83399999 1.53550005
		 1.71903801 0.83399999 1.55453801 1.70000005 0.83399999 1.60049999 1.71903801 0.83399999 1.64646196
		 1.76499999 0.83399999 1.66549993 1.81096196 0.83399999 1.64646196 1.82999992 0.83399999 1.60049999
		 1.80746329 0.85887444 1.55803668 1.76499999 0.85887444 1.54044783 1.72253668 0.85887444 1.55803668
		 1.70494783 0.85887444 1.60049999 1.72253668 0.85887444 1.64296329 1.76499999 0.85887444 1.66055214
		 1.80746329 0.85887444 1.64296329 1.82505214 0.85887444 1.60049999 1.79750001 0.87996191 1.56799996
		 1.76499999 0.87996191 1.55453801 1.73249996 0.87996191 1.56799996 1.71903801 0.87996191 1.60049999
		 1.73249996 0.87996191 1.63300002 1.76499999 0.87996191 1.64646196 1.79750001 0.87996191 1.63300002
		 1.81096196 0.87996191 1.60049999 1.78258884 0.89405215 1.58291113 1.76499999 0.89405215 1.57562554
		 1.74741113 0.89405215 1.58291113 1.74012554 0.89405215 1.60049999 1.74741113 0.89405215 1.61808884
		 1.76499999 0.89405215 1.62537444 1.78258884 0.89405215 1.61808884 1.78987443 0.89405215 1.60049999
		 1.76499999 0.76899999 1.60049999 1.76499999 0.89899999 1.60049999;
	setAttr -s 120 ".ed[0:119]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 0 0 8 9 0 9 10 0 10 11 0 11 12 0 12 13 0 13 14 0 14 15 0 15 8 0 16 17 0 17 18 0
		 18 19 0 19 20 0 20 21 0 21 22 0 22 23 0 23 16 0 24 25 0 25 26 0 26 27 0 27 28 0 28 29 0
		 29 30 0 30 31 0 31 24 0 32 33 0 33 34 0 34 35 0 35 36 0 36 37 0 37 38 0 38 39 0 39 32 0
		 40 41 0 41 42 0 42 43 0 43 44 0 44 45 0 45 46 0 46 47 0 47 40 0 48 49 0 49 50 0 50 51 0
		 51 52 0 52 53 0 53 54 0 54 55 0 55 48 0 0 8 0 1 9 0 2 10 0 3 11 0 4 12 0 5 13 0 6 14 0
		 7 15 0 8 16 0 9 17 0 10 18 0 11 19 0 12 20 0 13 21 0 14 22 0 15 23 0 16 24 0 17 25 0
		 18 26 0 19 27 0 20 28 0 21 29 0 22 30 0 23 31 0 24 32 0 25 33 0 26 34 0 27 35 0 28 36 0
		 29 37 0 30 38 0 31 39 0 32 40 0 33 41 0 34 42 0 35 43 0 36 44 0 37 45 0 38 46 0 39 47 0
		 40 48 0 41 49 0 42 50 0 43 51 0 44 52 0 45 53 0 46 54 0 47 55 0 56 0 0 56 1 0 56 2 0
		 56 3 0 56 4 0 56 5 0 56 6 0 56 7 0 48 57 0 49 57 0 50 57 0 51 57 0 52 57 0 53 57 0
		 54 57 0 55 57 0;
	setAttr -s 64 -ch 240 ".fc[0:63]" -type "polyFaces" 
		f 4 0 57 -9 -57
		mu 0 4 0 1 10 9
		f 4 1 58 -10 -58
		mu 0 4 1 2 11 10
		f 4 2 59 -11 -59
		mu 0 4 2 3 12 11
		f 4 3 60 -12 -60
		mu 0 4 3 4 13 12
		f 4 4 61 -13 -61
		mu 0 4 4 5 14 13
		f 4 5 62 -14 -62
		mu 0 4 5 6 15 14
		f 4 6 63 -15 -63
		mu 0 4 6 7 16 15
		f 4 7 56 -16 -64
		mu 0 4 7 8 17 16
		f 4 8 65 -17 -65
		mu 0 4 9 10 19 18
		f 4 9 66 -18 -66
		mu 0 4 10 11 20 19
		f 4 10 67 -19 -67
		mu 0 4 11 12 21 20
		f 4 11 68 -20 -68
		mu 0 4 12 13 22 21
		f 4 12 69 -21 -69
		mu 0 4 13 14 23 22
		f 4 13 70 -22 -70
		mu 0 4 14 15 24 23
		f 4 14 71 -23 -71
		mu 0 4 15 16 25 24
		f 4 15 64 -24 -72
		mu 0 4 16 17 26 25
		f 4 16 73 -25 -73
		mu 0 4 18 19 28 27
		f 4 17 74 -26 -74
		mu 0 4 19 20 29 28
		f 4 18 75 -27 -75
		mu 0 4 20 21 30 29
		f 4 19 76 -28 -76
		mu 0 4 21 22 31 30
		f 4 20 77 -29 -77
		mu 0 4 22 23 32 31
		f 4 21 78 -30 -78
		mu 0 4 23 24 33 32
		f 4 22 79 -31 -79
		mu 0 4 24 25 34 33
		f 4 23 72 -32 -80
		mu 0 4 25 26 35 34
		f 4 24 81 -33 -81
		mu 0 4 27 28 37 36
		f 4 25 82 -34 -82
		mu 0 4 28 29 38 37
		f 4 26 83 -35 -83
		mu 0 4 29 30 39 38
		f 4 27 84 -36 -84
		mu 0 4 30 31 40 39
		f 4 28 85 -37 -85
		mu 0 4 31 32 41 40
		f 4 29 86 -38 -86
		mu 0 4 32 33 42 41
		f 4 30 87 -39 -87
		mu 0 4 33 34 43 42
		f 4 31 80 -40 -88
		mu 0 4 34 35 44 43
		f 4 32 89 -41 -89
		mu 0 4 36 37 46 45
		f 4 33 90 -42 -90
		mu 0 4 37 38 47 46
		f 4 34 91 -43 -91
		mu 0 4 38 39 48 47
		f 4 35 92 -44 -92
		mu 0 4 39 40 49 48
		f 4 36 93 -45 -93
		mu 0 4 40 41 50 49
		f 4 37 94 -46 -94
		mu 0 4 41 42 51 50
		f 4 38 95 -47 -95
		mu 0 4 42 43 52 51
		f 4 39 88 -48 -96
		mu 0 4 43 44 53 52
		f 4 40 97 -49 -97
		mu 0 4 45 46 55 54
		f 4 41 98 -50 -98
		mu 0 4 46 47 56 55
		f 4 42 99 -51 -99
		mu 0 4 47 48 57 56
		f 4 43 100 -52 -100
		mu 0 4 48 49 58 57
		f 4 44 101 -53 -101
		mu 0 4 49 50 59 58
		f 4 45 102 -54 -102
		mu 0 4 50 51 60 59
		f 4 46 103 -55 -103
		mu 0 4 51 52 61 60
		f 4 47 96 -56 -104
		mu 0 4 52 53 62 61
		f 3 -1 -105 105
		mu 0 3 1 0 63
		f 3 -2 -106 106
		mu 0 3 2 1 64
		f 3 -3 -107 107
		mu 0 3 3 2 65
		f 3 -4 -108 108
		mu 0 3 4 3 66
		f 3 -5 -109 109
		mu 0 3 5 4 67
		f 3 -6 -110 110
		mu 0 3 6 5 68
		f 3 -7 -111 111
		mu 0 3 7 6 69
		f 3 -8 -112 104
		mu 0 3 8 7 70
		f 3 48 113 -113
		mu 0 3 54 55 71
		f 3 49 114 -114
		mu 0 3 55 56 72
		f 3 50 115 -115
		mu 0 3 56 57 73
		f 3 51 116 -116
		mu 0 3 57 58 74
		f 3 52 117 -117
		mu 0 3 58 59 75
		f 3 53 118 -118
		mu 0 3 59 60 76
		f 3 54 119 -119
		mu 0 3 60 61 77
		f 3 55 112 -120
		mu 0 3 61 62 78;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Traffic_Light7" -p "Linked_Traffic_Grp2";
	setAttr ".t" -type "double3" -3.5000000000000009 0 -3.5 ;
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".rp" -type "double3" 1.765 0.6 1.75 ;
	setAttr ".sp" -type "double3" 1.765 0.6 1.75 ;
createNode mesh -n "Traffic_Light7Shape" -p "Traffic_Light7";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 32 ".uvst[0].uvsp[0:31]" -type "float2" 0.33000001 0 0.66333336
		 0 0.33000001 0.125 0.66333336 0.125 0.33000001 0.25 0.66333336 0.25 0.33000001 0.5
		 0.66333336 0.5 0.33000001 0.625 0.66333336 0.625 0.33000001 0.75 0.66333336 0.75
		 0.33000001 1 0.66333336 1 1 0 1 0.125 1 0.25 0 0 0 0.125 0 0.25 0.33000001 0.125
		 0.66333336 0.125 0.66333336 0.25 0.33000001 0.25 0.33000001 0.5 0.66333336 0.5 0.66333336
		 0.625 0.33000001 0.625 1 0.125 1 0.25 0 0.125 0 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 20 ".vt[0:19]"  1.70000005 -0.049999952 1.81500006 1.82999992 -0.049999952 1.81500006
		 1.70000005 0.73000002 1.81500006 1.82999992 0.73000002 1.81500006 1.70000005 1.25 1.81500006
		 1.82999992 1.25 1.81500006 1.70000005 1.25 1.68499994 1.82999992 1.25 1.68499994
		 1.70000005 0.73000002 1.68499994 1.82999992 0.73000002 1.68499994 1.70000005 -0.049999952 1.68499994
		 1.82999992 -0.049999952 1.68499994 1.61549997 0.73000002 1.89950001 1.9145 0.73000002 1.89950001
		 1.9145 1.25 1.89950001 1.61549997 1.25 1.89950001 1.61549997 1.25 1.60049999 1.9145 1.25 1.60049999
		 1.9145 0.73000002 1.60049999 1.61549997 0.73000002 1.60049999;
	setAttr -s 36 ".ed[0:35]"  0 1 0 2 3 0 4 5 1 6 7 1 8 9 0 10 11 0 0 2 0
		 1 3 0 4 6 1 5 7 1 8 10 0 9 11 0 10 0 0 11 1 0 9 3 0 8 2 0 2 12 1 3 13 1 12 13 0 5 14 1
		 13 14 0 4 15 1 15 14 0 12 15 0 6 16 1 7 17 1 16 17 0 9 18 1 17 18 0 8 19 1 19 18 0
		 16 19 0 18 13 0 14 17 0 19 12 0 15 16 0;
	setAttr -s 18 -ch 72 ".fc[0:17]" -type "polyFaces" 
		f 4 0 7 -2 -7
		mu 0 4 0 1 3 2
		f 4 18 20 -23 -24
		mu 0 4 20 21 22 23
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 26 28 -31 -32
		mu 0 4 24 25 26 27
		f 4 4 11 -6 -11
		mu 0 4 8 9 11 10
		f 4 5 13 -1 -13
		mu 0 4 10 11 13 12
		f 4 -14 -12 14 -8
		mu 0 4 1 14 15 3
		f 4 -33 -29 -34 -21
		mu 0 4 21 28 29 22
		f 4 12 6 -16 10
		mu 0 4 17 0 2 18
		f 4 34 23 35 31
		mu 0 4 30 20 23 31
		f 4 1 17 -19 -17
		mu 0 4 2 3 21 20
		f 4 -3 21 22 -20
		mu 0 4 5 4 23 22
		f 4 3 25 -27 -25
		mu 0 4 6 7 25 24
		f 4 -5 29 30 -28
		mu 0 4 9 8 27 26
		f 4 -15 27 32 -18
		mu 0 4 3 15 28 21
		f 4 -10 19 33 -26
		mu 0 4 16 5 22 29
		f 4 15 16 -35 -30
		mu 0 4 18 2 20 30
		f 4 8 24 -36 -22
		mu 0 4 4 19 31 23;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "RedLight_Traffic_Light7" -p "Traffic_Light7";
	setAttr ".rp" -type "double3" 1.765 1.146 1.6005 ;
	setAttr ".sp" -type "double3" 1.765 1.146 1.6005 ;
createNode mesh -n "RedLight_Traffic_Light7Shape" -p "RedLight_Traffic_Light7";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 79 ".uvst[0].uvsp[0:78]" -type "float2" 0 0.125 0.125 0.125
		 0.25 0.125 0.375 0.125 0.5 0.125 0.625 0.125 0.75 0.125 0.875 0.125 1 0.125 0 0.25
		 0.125 0.25 0.25 0.25 0.375 0.25 0.5 0.25 0.625 0.25 0.75 0.25 0.875 0.25 1 0.25 0
		 0.375 0.125 0.375 0.25 0.375 0.375 0.375 0.5 0.375 0.625 0.375 0.75 0.375 0.875 0.375
		 1 0.375 0 0.5 0.125 0.5 0.25 0.5 0.375 0.5 0.5 0.5 0.625 0.5 0.75 0.5 0.875 0.5 1
		 0.5 0 0.625 0.125 0.625 0.25 0.625 0.375 0.625 0.5 0.625 0.625 0.625 0.75 0.625 0.875
		 0.625 1 0.625 0 0.75 0.125 0.75 0.25 0.75 0.375 0.75 0.5 0.75 0.625 0.75 0.75 0.75
		 0.875 0.75 1 0.75 0 0.875 0.125 0.875 0.25 0.875 0.375 0.875 0.5 0.875 0.625 0.875
		 0.75 0.875 0.875 0.875 1 0.875 0.0625 0 0.1875 0 0.3125 0 0.4375 0 0.5625 0 0.6875
		 0 0.8125 0 0.9375 0 0.0625 1 0.1875 1 0.3125 1 0.4375 1 0.5625 1 0.6875 1 0.8125
		 1 0.9375 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 58 ".vt[0:57]"  1.78258884 1.085947871 1.58291113 1.76499999 1.085947871 1.57562554
		 1.74741113 1.085947871 1.58291113 1.74012554 1.085947871 1.60049999 1.74741113 1.085947871 1.61808884
		 1.76499999 1.085947871 1.62537444 1.78258884 1.085947871 1.61808884 1.78987443 1.085947871 1.60049999
		 1.79750001 1.10003805 1.56799996 1.76499999 1.10003805 1.55453801 1.73249996 1.10003805 1.56799996
		 1.71903801 1.10003805 1.60049999 1.73249996 1.10003805 1.63300002 1.76499999 1.10003805 1.64646196
		 1.79750001 1.10003805 1.63300002 1.81096196 1.10003805 1.60049999 1.80746329 1.12112558 1.55803668
		 1.76499999 1.12112558 1.54044783 1.72253668 1.12112558 1.55803668 1.70494783 1.12112558 1.60049999
		 1.72253668 1.12112558 1.64296329 1.76499999 1.12112558 1.66055214 1.80746329 1.12112558 1.64296329
		 1.82505214 1.12112558 1.60049999 1.81096196 1.14600003 1.55453801 1.76499999 1.14600003 1.53550005
		 1.71903801 1.14600003 1.55453801 1.70000005 1.14600003 1.60049999 1.71903801 1.14600003 1.64646196
		 1.76499999 1.14600003 1.66549993 1.81096196 1.14600003 1.64646196 1.82999992 1.14600003 1.60049999
		 1.80746329 1.17087448 1.55803668 1.76499999 1.17087448 1.54044783 1.72253668 1.17087448 1.55803668
		 1.70494783 1.17087448 1.60049999 1.72253668 1.17087448 1.64296329 1.76499999 1.17087448 1.66055214
		 1.80746329 1.17087448 1.64296329 1.82505214 1.17087448 1.60049999 1.79750001 1.191962 1.56799996
		 1.76499999 1.191962 1.55453801 1.73249996 1.191962 1.56799996 1.71903801 1.191962 1.60049999
		 1.73249996 1.191962 1.63300002 1.76499999 1.191962 1.64646196 1.79750001 1.191962 1.63300002
		 1.81096196 1.191962 1.60049999 1.78258884 1.20605218 1.58291113 1.76499999 1.20605218 1.57562554
		 1.74741113 1.20605218 1.58291113 1.74012554 1.20605218 1.60049999 1.74741113 1.20605218 1.61808884
		 1.76499999 1.20605218 1.62537444 1.78258884 1.20605218 1.61808884 1.78987443 1.20605218 1.60049999
		 1.76499999 1.08100009 1.60049999 1.76499999 1.21099997 1.60049999;
	setAttr -s 120 ".ed[0:119]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 0 0 8 9 0 9 10 0 10 11 0 11 12 0 12 13 0 13 14 0 14 15 0 15 8 0 16 17 0 17 18 0
		 18 19 0 19 20 0 20 21 0 21 22 0 22 23 0 23 16 0 24 25 0 25 26 0 26 27 0 27 28 0 28 29 0
		 29 30 0 30 31 0 31 24 0 32 33 0 33 34 0 34 35 0 35 36 0 36 37 0 37 38 0 38 39 0 39 32 0
		 40 41 0 41 42 0 42 43 0 43 44 0 44 45 0 45 46 0 46 47 0 47 40 0 48 49 0 49 50 0 50 51 0
		 51 52 0 52 53 0 53 54 0 54 55 0 55 48 0 0 8 0 1 9 0 2 10 0 3 11 0 4 12 0 5 13 0 6 14 0
		 7 15 0 8 16 0 9 17 0 10 18 0 11 19 0 12 20 0 13 21 0 14 22 0 15 23 0 16 24 0 17 25 0
		 18 26 0 19 27 0 20 28 0 21 29 0 22 30 0 23 31 0 24 32 0 25 33 0 26 34 0 27 35 0 28 36 0
		 29 37 0 30 38 0 31 39 0 32 40 0 33 41 0 34 42 0 35 43 0 36 44 0 37 45 0 38 46 0 39 47 0
		 40 48 0 41 49 0 42 50 0 43 51 0 44 52 0 45 53 0 46 54 0 47 55 0 56 0 0 56 1 0 56 2 0
		 56 3 0 56 4 0 56 5 0 56 6 0 56 7 0 48 57 0 49 57 0 50 57 0 51 57 0 52 57 0 53 57 0
		 54 57 0 55 57 0;
	setAttr -s 64 -ch 240 ".fc[0:63]" -type "polyFaces" 
		f 4 0 57 -9 -57
		mu 0 4 0 1 10 9
		f 4 1 58 -10 -58
		mu 0 4 1 2 11 10
		f 4 2 59 -11 -59
		mu 0 4 2 3 12 11
		f 4 3 60 -12 -60
		mu 0 4 3 4 13 12
		f 4 4 61 -13 -61
		mu 0 4 4 5 14 13
		f 4 5 62 -14 -62
		mu 0 4 5 6 15 14
		f 4 6 63 -15 -63
		mu 0 4 6 7 16 15
		f 4 7 56 -16 -64
		mu 0 4 7 8 17 16
		f 4 8 65 -17 -65
		mu 0 4 9 10 19 18
		f 4 9 66 -18 -66
		mu 0 4 10 11 20 19
		f 4 10 67 -19 -67
		mu 0 4 11 12 21 20
		f 4 11 68 -20 -68
		mu 0 4 12 13 22 21
		f 4 12 69 -21 -69
		mu 0 4 13 14 23 22
		f 4 13 70 -22 -70
		mu 0 4 14 15 24 23
		f 4 14 71 -23 -71
		mu 0 4 15 16 25 24
		f 4 15 64 -24 -72
		mu 0 4 16 17 26 25
		f 4 16 73 -25 -73
		mu 0 4 18 19 28 27
		f 4 17 74 -26 -74
		mu 0 4 19 20 29 28
		f 4 18 75 -27 -75
		mu 0 4 20 21 30 29
		f 4 19 76 -28 -76
		mu 0 4 21 22 31 30
		f 4 20 77 -29 -77
		mu 0 4 22 23 32 31
		f 4 21 78 -30 -78
		mu 0 4 23 24 33 32
		f 4 22 79 -31 -79
		mu 0 4 24 25 34 33
		f 4 23 72 -32 -80
		mu 0 4 25 26 35 34
		f 4 24 81 -33 -81
		mu 0 4 27 28 37 36
		f 4 25 82 -34 -82
		mu 0 4 28 29 38 37
		f 4 26 83 -35 -83
		mu 0 4 29 30 39 38
		f 4 27 84 -36 -84
		mu 0 4 30 31 40 39
		f 4 28 85 -37 -85
		mu 0 4 31 32 41 40
		f 4 29 86 -38 -86
		mu 0 4 32 33 42 41
		f 4 30 87 -39 -87
		mu 0 4 33 34 43 42
		f 4 31 80 -40 -88
		mu 0 4 34 35 44 43
		f 4 32 89 -41 -89
		mu 0 4 36 37 46 45
		f 4 33 90 -42 -90
		mu 0 4 37 38 47 46
		f 4 34 91 -43 -91
		mu 0 4 38 39 48 47
		f 4 35 92 -44 -92
		mu 0 4 39 40 49 48
		f 4 36 93 -45 -93
		mu 0 4 40 41 50 49
		f 4 37 94 -46 -94
		mu 0 4 41 42 51 50
		f 4 38 95 -47 -95
		mu 0 4 42 43 52 51
		f 4 39 88 -48 -96
		mu 0 4 43 44 53 52
		f 4 40 97 -49 -97
		mu 0 4 45 46 55 54
		f 4 41 98 -50 -98
		mu 0 4 46 47 56 55
		f 4 42 99 -51 -99
		mu 0 4 47 48 57 56
		f 4 43 100 -52 -100
		mu 0 4 48 49 58 57
		f 4 44 101 -53 -101
		mu 0 4 49 50 59 58
		f 4 45 102 -54 -102
		mu 0 4 50 51 60 59
		f 4 46 103 -55 -103
		mu 0 4 51 52 61 60
		f 4 47 96 -56 -104
		mu 0 4 52 53 62 61
		f 3 -1 -105 105
		mu 0 3 1 0 63
		f 3 -2 -106 106
		mu 0 3 2 1 64
		f 3 -3 -107 107
		mu 0 3 3 2 65
		f 3 -4 -108 108
		mu 0 3 4 3 66
		f 3 -5 -109 109
		mu 0 3 5 4 67
		f 3 -6 -110 110
		mu 0 3 6 5 68
		f 3 -7 -111 111
		mu 0 3 7 6 69
		f 3 -8 -112 104
		mu 0 3 8 7 70
		f 3 48 113 -113
		mu 0 3 54 55 71
		f 3 49 114 -114
		mu 0 3 55 56 72
		f 3 50 115 -115
		mu 0 3 56 57 73
		f 3 51 116 -116
		mu 0 3 57 58 74
		f 3 52 117 -117
		mu 0 3 58 59 75
		f 3 53 118 -118
		mu 0 3 59 60 76
		f 3 54 119 -119
		mu 0 3 60 61 77
		f 3 55 112 -120
		mu 0 3 61 62 78;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "OrangeLight_Traffic_Light7" -p "Traffic_Light7";
	setAttr ".rp" -type "double3" 1.765 0.99 1.6005 ;
	setAttr ".sp" -type "double3" 1.765 0.99 1.6005 ;
createNode mesh -n "OrangeLight_Traffic_Light7Shape" -p "OrangeLight_Traffic_Light7";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 79 ".uvst[0].uvsp[0:78]" -type "float2" 0 0.125 0.125 0.125
		 0.25 0.125 0.375 0.125 0.5 0.125 0.625 0.125 0.75 0.125 0.875 0.125 1 0.125 0 0.25
		 0.125 0.25 0.25 0.25 0.375 0.25 0.5 0.25 0.625 0.25 0.75 0.25 0.875 0.25 1 0.25 0
		 0.375 0.125 0.375 0.25 0.375 0.375 0.375 0.5 0.375 0.625 0.375 0.75 0.375 0.875 0.375
		 1 0.375 0 0.5 0.125 0.5 0.25 0.5 0.375 0.5 0.5 0.5 0.625 0.5 0.75 0.5 0.875 0.5 1
		 0.5 0 0.625 0.125 0.625 0.25 0.625 0.375 0.625 0.5 0.625 0.625 0.625 0.75 0.625 0.875
		 0.625 1 0.625 0 0.75 0.125 0.75 0.25 0.75 0.375 0.75 0.5 0.75 0.625 0.75 0.75 0.75
		 0.875 0.75 1 0.75 0 0.875 0.125 0.875 0.25 0.875 0.375 0.875 0.5 0.875 0.625 0.875
		 0.75 0.875 0.875 0.875 1 0.875 0.0625 0 0.1875 0 0.3125 0 0.4375 0 0.5625 0 0.6875
		 0 0.8125 0 0.9375 0 0.0625 1 0.1875 1 0.3125 1 0.4375 1 0.5625 1 0.6875 1 0.8125
		 1 0.9375 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 58 ".vt[0:57]"  1.78258884 0.92994785 1.58291113 1.76499999 0.92994785 1.57562554
		 1.74741113 0.92994785 1.58291113 1.74012554 0.92994785 1.60049999 1.74741113 0.92994785 1.61808884
		 1.76499999 0.92994785 1.62537444 1.78258884 0.92994785 1.61808884 1.78987443 0.92994785 1.60049999
		 1.79750001 0.94403809 1.56799996 1.76499999 0.94403809 1.55453801 1.73249996 0.94403809 1.56799996
		 1.71903801 0.94403809 1.60049999 1.73249996 0.94403809 1.63300002 1.76499999 0.94403809 1.64646196
		 1.79750001 0.94403809 1.63300002 1.81096196 0.94403809 1.60049999 1.80746329 0.96512556 1.55803668
		 1.76499999 0.96512556 1.54044783 1.72253668 0.96512556 1.55803668 1.70494783 0.96512556 1.60049999
		 1.72253668 0.96512556 1.64296329 1.76499999 0.96512556 1.66055214 1.80746329 0.96512556 1.64296329
		 1.82505214 0.96512556 1.60049999 1.81096196 0.99000001 1.55453801 1.76499999 0.99000001 1.53550005
		 1.71903801 0.99000001 1.55453801 1.70000005 0.99000001 1.60049999 1.71903801 0.99000001 1.64646196
		 1.76499999 0.99000001 1.66549993 1.81096196 0.99000001 1.64646196 1.82999992 0.99000001 1.60049999
		 1.80746329 1.014874458 1.55803668 1.76499999 1.014874458 1.54044783 1.72253668 1.014874458 1.55803668
		 1.70494783 1.014874458 1.60049999 1.72253668 1.014874458 1.64296329 1.76499999 1.014874458 1.66055214
		 1.80746329 1.014874458 1.64296329 1.82505214 1.014874458 1.60049999 1.79750001 1.035961986 1.56799996
		 1.76499999 1.035961986 1.55453801 1.73249996 1.035961986 1.56799996 1.71903801 1.035961986 1.60049999
		 1.73249996 1.035961986 1.63300002 1.76499999 1.035961986 1.64646196 1.79750001 1.035961986 1.63300002
		 1.81096196 1.035961986 1.60049999 1.78258884 1.050052166 1.58291113 1.76499999 1.050052166 1.57562554
		 1.74741113 1.050052166 1.58291113 1.74012554 1.050052166 1.60049999 1.74741113 1.050052166 1.61808884
		 1.76499999 1.050052166 1.62537444 1.78258884 1.050052166 1.61808884 1.78987443 1.050052166 1.60049999
		 1.76499999 0.92500001 1.60049999 1.76499999 1.055000067 1.60049999;
	setAttr -s 120 ".ed[0:119]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 0 0 8 9 0 9 10 0 10 11 0 11 12 0 12 13 0 13 14 0 14 15 0 15 8 0 16 17 0 17 18 0
		 18 19 0 19 20 0 20 21 0 21 22 0 22 23 0 23 16 0 24 25 0 25 26 0 26 27 0 27 28 0 28 29 0
		 29 30 0 30 31 0 31 24 0 32 33 0 33 34 0 34 35 0 35 36 0 36 37 0 37 38 0 38 39 0 39 32 0
		 40 41 0 41 42 0 42 43 0 43 44 0 44 45 0 45 46 0 46 47 0 47 40 0 48 49 0 49 50 0 50 51 0
		 51 52 0 52 53 0 53 54 0 54 55 0 55 48 0 0 8 0 1 9 0 2 10 0 3 11 0 4 12 0 5 13 0 6 14 0
		 7 15 0 8 16 0 9 17 0 10 18 0 11 19 0 12 20 0 13 21 0 14 22 0 15 23 0 16 24 0 17 25 0
		 18 26 0 19 27 0 20 28 0 21 29 0 22 30 0 23 31 0 24 32 0 25 33 0 26 34 0 27 35 0 28 36 0
		 29 37 0 30 38 0 31 39 0 32 40 0 33 41 0 34 42 0 35 43 0 36 44 0 37 45 0 38 46 0 39 47 0
		 40 48 0 41 49 0 42 50 0 43 51 0 44 52 0 45 53 0 46 54 0 47 55 0 56 0 0 56 1 0 56 2 0
		 56 3 0 56 4 0 56 5 0 56 6 0 56 7 0 48 57 0 49 57 0 50 57 0 51 57 0 52 57 0 53 57 0
		 54 57 0 55 57 0;
	setAttr -s 64 -ch 240 ".fc[0:63]" -type "polyFaces" 
		f 4 0 57 -9 -57
		mu 0 4 0 1 10 9
		f 4 1 58 -10 -58
		mu 0 4 1 2 11 10
		f 4 2 59 -11 -59
		mu 0 4 2 3 12 11
		f 4 3 60 -12 -60
		mu 0 4 3 4 13 12
		f 4 4 61 -13 -61
		mu 0 4 4 5 14 13
		f 4 5 62 -14 -62
		mu 0 4 5 6 15 14
		f 4 6 63 -15 -63
		mu 0 4 6 7 16 15
		f 4 7 56 -16 -64
		mu 0 4 7 8 17 16
		f 4 8 65 -17 -65
		mu 0 4 9 10 19 18
		f 4 9 66 -18 -66
		mu 0 4 10 11 20 19
		f 4 10 67 -19 -67
		mu 0 4 11 12 21 20
		f 4 11 68 -20 -68
		mu 0 4 12 13 22 21
		f 4 12 69 -21 -69
		mu 0 4 13 14 23 22
		f 4 13 70 -22 -70
		mu 0 4 14 15 24 23
		f 4 14 71 -23 -71
		mu 0 4 15 16 25 24
		f 4 15 64 -24 -72
		mu 0 4 16 17 26 25
		f 4 16 73 -25 -73
		mu 0 4 18 19 28 27
		f 4 17 74 -26 -74
		mu 0 4 19 20 29 28
		f 4 18 75 -27 -75
		mu 0 4 20 21 30 29
		f 4 19 76 -28 -76
		mu 0 4 21 22 31 30
		f 4 20 77 -29 -77
		mu 0 4 22 23 32 31
		f 4 21 78 -30 -78
		mu 0 4 23 24 33 32
		f 4 22 79 -31 -79
		mu 0 4 24 25 34 33
		f 4 23 72 -32 -80
		mu 0 4 25 26 35 34
		f 4 24 81 -33 -81
		mu 0 4 27 28 37 36
		f 4 25 82 -34 -82
		mu 0 4 28 29 38 37
		f 4 26 83 -35 -83
		mu 0 4 29 30 39 38
		f 4 27 84 -36 -84
		mu 0 4 30 31 40 39
		f 4 28 85 -37 -85
		mu 0 4 31 32 41 40
		f 4 29 86 -38 -86
		mu 0 4 32 33 42 41
		f 4 30 87 -39 -87
		mu 0 4 33 34 43 42
		f 4 31 80 -40 -88
		mu 0 4 34 35 44 43
		f 4 32 89 -41 -89
		mu 0 4 36 37 46 45
		f 4 33 90 -42 -90
		mu 0 4 37 38 47 46
		f 4 34 91 -43 -91
		mu 0 4 38 39 48 47
		f 4 35 92 -44 -92
		mu 0 4 39 40 49 48
		f 4 36 93 -45 -93
		mu 0 4 40 41 50 49
		f 4 37 94 -46 -94
		mu 0 4 41 42 51 50
		f 4 38 95 -47 -95
		mu 0 4 42 43 52 51
		f 4 39 88 -48 -96
		mu 0 4 43 44 53 52
		f 4 40 97 -49 -97
		mu 0 4 45 46 55 54
		f 4 41 98 -50 -98
		mu 0 4 46 47 56 55
		f 4 42 99 -51 -99
		mu 0 4 47 48 57 56
		f 4 43 100 -52 -100
		mu 0 4 48 49 58 57
		f 4 44 101 -53 -101
		mu 0 4 49 50 59 58
		f 4 45 102 -54 -102
		mu 0 4 50 51 60 59
		f 4 46 103 -55 -103
		mu 0 4 51 52 61 60
		f 4 47 96 -56 -104
		mu 0 4 52 53 62 61
		f 3 -1 -105 105
		mu 0 3 1 0 63
		f 3 -2 -106 106
		mu 0 3 2 1 64
		f 3 -3 -107 107
		mu 0 3 3 2 65
		f 3 -4 -108 108
		mu 0 3 4 3 66
		f 3 -5 -109 109
		mu 0 3 5 4 67
		f 3 -6 -110 110
		mu 0 3 6 5 68
		f 3 -7 -111 111
		mu 0 3 7 6 69
		f 3 -8 -112 104
		mu 0 3 8 7 70
		f 3 48 113 -113
		mu 0 3 54 55 71
		f 3 49 114 -114
		mu 0 3 55 56 72
		f 3 50 115 -115
		mu 0 3 56 57 73
		f 3 51 116 -116
		mu 0 3 57 58 74
		f 3 52 117 -117
		mu 0 3 58 59 75
		f 3 53 118 -118
		mu 0 3 59 60 76
		f 3 54 119 -119
		mu 0 3 60 61 77
		f 3 55 112 -120
		mu 0 3 61 62 78;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "GreenLight_Traffic_Light7" -p "Traffic_Light7";
	setAttr ".rp" -type "double3" 1.765 0.83400000000000007 1.6005 ;
	setAttr ".sp" -type "double3" 1.765 0.83400000000000007 1.6005 ;
createNode mesh -n "GreenLight_Traffic_Light7Shape" -p "GreenLight_Traffic_Light7";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 79 ".uvst[0].uvsp[0:78]" -type "float2" 0 0.125 0.125 0.125
		 0.25 0.125 0.375 0.125 0.5 0.125 0.625 0.125 0.75 0.125 0.875 0.125 1 0.125 0 0.25
		 0.125 0.25 0.25 0.25 0.375 0.25 0.5 0.25 0.625 0.25 0.75 0.25 0.875 0.25 1 0.25 0
		 0.375 0.125 0.375 0.25 0.375 0.375 0.375 0.5 0.375 0.625 0.375 0.75 0.375 0.875 0.375
		 1 0.375 0 0.5 0.125 0.5 0.25 0.5 0.375 0.5 0.5 0.5 0.625 0.5 0.75 0.5 0.875 0.5 1
		 0.5 0 0.625 0.125 0.625 0.25 0.625 0.375 0.625 0.5 0.625 0.625 0.625 0.75 0.625 0.875
		 0.625 1 0.625 0 0.75 0.125 0.75 0.25 0.75 0.375 0.75 0.5 0.75 0.625 0.75 0.75 0.75
		 0.875 0.75 1 0.75 0 0.875 0.125 0.875 0.25 0.875 0.375 0.875 0.5 0.875 0.625 0.875
		 0.75 0.875 0.875 0.875 1 0.875 0.0625 0 0.1875 0 0.3125 0 0.4375 0 0.5625 0 0.6875
		 0 0.8125 0 0.9375 0 0.0625 1 0.1875 1 0.3125 1 0.4375 1 0.5625 1 0.6875 1 0.8125
		 1 0.9375 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 58 ".vt[0:57]"  1.78258884 0.77394783 1.58291113 1.76499999 0.77394783 1.57562554
		 1.74741113 0.77394783 1.58291113 1.74012554 0.77394783 1.60049999 1.74741113 0.77394783 1.61808884
		 1.76499999 0.77394783 1.62537444 1.78258884 0.77394783 1.61808884 1.78987443 0.77394783 1.60049999
		 1.79750001 0.78803807 1.56799996 1.76499999 0.78803807 1.55453801 1.73249996 0.78803807 1.56799996
		 1.71903801 0.78803807 1.60049999 1.73249996 0.78803807 1.63300002 1.76499999 0.78803807 1.64646196
		 1.79750001 0.78803807 1.63300002 1.81096196 0.78803807 1.60049999 1.80746329 0.80912554 1.55803668
		 1.76499999 0.80912554 1.54044783 1.72253668 0.80912554 1.55803668 1.70494783 0.80912554 1.60049999
		 1.72253668 0.80912554 1.64296329 1.76499999 0.80912554 1.66055214 1.80746329 0.80912554 1.64296329
		 1.82505214 0.80912554 1.60049999 1.81096196 0.83399999 1.55453801 1.76499999 0.83399999 1.53550005
		 1.71903801 0.83399999 1.55453801 1.70000005 0.83399999 1.60049999 1.71903801 0.83399999 1.64646196
		 1.76499999 0.83399999 1.66549993 1.81096196 0.83399999 1.64646196 1.82999992 0.83399999 1.60049999
		 1.80746329 0.85887444 1.55803668 1.76499999 0.85887444 1.54044783 1.72253668 0.85887444 1.55803668
		 1.70494783 0.85887444 1.60049999 1.72253668 0.85887444 1.64296329 1.76499999 0.85887444 1.66055214
		 1.80746329 0.85887444 1.64296329 1.82505214 0.85887444 1.60049999 1.79750001 0.87996191 1.56799996
		 1.76499999 0.87996191 1.55453801 1.73249996 0.87996191 1.56799996 1.71903801 0.87996191 1.60049999
		 1.73249996 0.87996191 1.63300002 1.76499999 0.87996191 1.64646196 1.79750001 0.87996191 1.63300002
		 1.81096196 0.87996191 1.60049999 1.78258884 0.89405215 1.58291113 1.76499999 0.89405215 1.57562554
		 1.74741113 0.89405215 1.58291113 1.74012554 0.89405215 1.60049999 1.74741113 0.89405215 1.61808884
		 1.76499999 0.89405215 1.62537444 1.78258884 0.89405215 1.61808884 1.78987443 0.89405215 1.60049999
		 1.76499999 0.76899999 1.60049999 1.76499999 0.89899999 1.60049999;
	setAttr -s 120 ".ed[0:119]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 0 0 8 9 0 9 10 0 10 11 0 11 12 0 12 13 0 13 14 0 14 15 0 15 8 0 16 17 0 17 18 0
		 18 19 0 19 20 0 20 21 0 21 22 0 22 23 0 23 16 0 24 25 0 25 26 0 26 27 0 27 28 0 28 29 0
		 29 30 0 30 31 0 31 24 0 32 33 0 33 34 0 34 35 0 35 36 0 36 37 0 37 38 0 38 39 0 39 32 0
		 40 41 0 41 42 0 42 43 0 43 44 0 44 45 0 45 46 0 46 47 0 47 40 0 48 49 0 49 50 0 50 51 0
		 51 52 0 52 53 0 53 54 0 54 55 0 55 48 0 0 8 0 1 9 0 2 10 0 3 11 0 4 12 0 5 13 0 6 14 0
		 7 15 0 8 16 0 9 17 0 10 18 0 11 19 0 12 20 0 13 21 0 14 22 0 15 23 0 16 24 0 17 25 0
		 18 26 0 19 27 0 20 28 0 21 29 0 22 30 0 23 31 0 24 32 0 25 33 0 26 34 0 27 35 0 28 36 0
		 29 37 0 30 38 0 31 39 0 32 40 0 33 41 0 34 42 0 35 43 0 36 44 0 37 45 0 38 46 0 39 47 0
		 40 48 0 41 49 0 42 50 0 43 51 0 44 52 0 45 53 0 46 54 0 47 55 0 56 0 0 56 1 0 56 2 0
		 56 3 0 56 4 0 56 5 0 56 6 0 56 7 0 48 57 0 49 57 0 50 57 0 51 57 0 52 57 0 53 57 0
		 54 57 0 55 57 0;
	setAttr -s 64 -ch 240 ".fc[0:63]" -type "polyFaces" 
		f 4 0 57 -9 -57
		mu 0 4 0 1 10 9
		f 4 1 58 -10 -58
		mu 0 4 1 2 11 10
		f 4 2 59 -11 -59
		mu 0 4 2 3 12 11
		f 4 3 60 -12 -60
		mu 0 4 3 4 13 12
		f 4 4 61 -13 -61
		mu 0 4 4 5 14 13
		f 4 5 62 -14 -62
		mu 0 4 5 6 15 14
		f 4 6 63 -15 -63
		mu 0 4 6 7 16 15
		f 4 7 56 -16 -64
		mu 0 4 7 8 17 16
		f 4 8 65 -17 -65
		mu 0 4 9 10 19 18
		f 4 9 66 -18 -66
		mu 0 4 10 11 20 19
		f 4 10 67 -19 -67
		mu 0 4 11 12 21 20
		f 4 11 68 -20 -68
		mu 0 4 12 13 22 21
		f 4 12 69 -21 -69
		mu 0 4 13 14 23 22
		f 4 13 70 -22 -70
		mu 0 4 14 15 24 23
		f 4 14 71 -23 -71
		mu 0 4 15 16 25 24
		f 4 15 64 -24 -72
		mu 0 4 16 17 26 25
		f 4 16 73 -25 -73
		mu 0 4 18 19 28 27
		f 4 17 74 -26 -74
		mu 0 4 19 20 29 28
		f 4 18 75 -27 -75
		mu 0 4 20 21 30 29
		f 4 19 76 -28 -76
		mu 0 4 21 22 31 30
		f 4 20 77 -29 -77
		mu 0 4 22 23 32 31
		f 4 21 78 -30 -78
		mu 0 4 23 24 33 32
		f 4 22 79 -31 -79
		mu 0 4 24 25 34 33
		f 4 23 72 -32 -80
		mu 0 4 25 26 35 34
		f 4 24 81 -33 -81
		mu 0 4 27 28 37 36
		f 4 25 82 -34 -82
		mu 0 4 28 29 38 37
		f 4 26 83 -35 -83
		mu 0 4 29 30 39 38
		f 4 27 84 -36 -84
		mu 0 4 30 31 40 39
		f 4 28 85 -37 -85
		mu 0 4 31 32 41 40
		f 4 29 86 -38 -86
		mu 0 4 32 33 42 41
		f 4 30 87 -39 -87
		mu 0 4 33 34 43 42
		f 4 31 80 -40 -88
		mu 0 4 34 35 44 43
		f 4 32 89 -41 -89
		mu 0 4 36 37 46 45
		f 4 33 90 -42 -90
		mu 0 4 37 38 47 46
		f 4 34 91 -43 -91
		mu 0 4 38 39 48 47
		f 4 35 92 -44 -92
		mu 0 4 39 40 49 48
		f 4 36 93 -45 -93
		mu 0 4 40 41 50 49
		f 4 37 94 -46 -94
		mu 0 4 41 42 51 50
		f 4 38 95 -47 -95
		mu 0 4 42 43 52 51
		f 4 39 88 -48 -96
		mu 0 4 43 44 53 52
		f 4 40 97 -49 -97
		mu 0 4 45 46 55 54
		f 4 41 98 -50 -98
		mu 0 4 46 47 56 55
		f 4 42 99 -51 -99
		mu 0 4 47 48 57 56
		f 4 43 100 -52 -100
		mu 0 4 48 49 58 57
		f 4 44 101 -53 -101
		mu 0 4 49 50 59 58
		f 4 45 102 -54 -102
		mu 0 4 50 51 60 59
		f 4 46 103 -55 -103
		mu 0 4 51 52 61 60
		f 4 47 96 -56 -104
		mu 0 4 52 53 62 61
		f 3 -1 -105 105
		mu 0 3 1 0 63
		f 3 -2 -106 106
		mu 0 3 2 1 64
		f 3 -3 -107 107
		mu 0 3 3 2 65
		f 3 -4 -108 108
		mu 0 3 4 3 66
		f 3 -5 -109 109
		mu 0 3 5 4 67
		f 3 -6 -110 110
		mu 0 3 6 5 68
		f 3 -7 -111 111
		mu 0 3 7 6 69
		f 3 -8 -112 104
		mu 0 3 8 7 70
		f 3 48 113 -113
		mu 0 3 54 55 71
		f 3 49 114 -114
		mu 0 3 55 56 72
		f 3 50 115 -115
		mu 0 3 56 57 73
		f 3 51 116 -116
		mu 0 3 57 58 74
		f 3 52 117 -117
		mu 0 3 58 59 75
		f 3 53 118 -118
		mu 0 3 59 60 76
		f 3 54 119 -119
		mu 0 3 60 61 77
		f 3 55 112 -120
		mu 0 3 61 62 78;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Traffic_Light8" -p "Linked_Traffic_Grp2";
	setAttr ".t" -type "double3" -4.0000000000000009 8.8817841970012523e-016 -7.5 ;
	setAttr ".r" -type "double3" 0 90 0 ;
	setAttr ".rp" -type "double3" 1.765 0.6 1.75 ;
	setAttr ".sp" -type "double3" 1.765 0.6 1.75 ;
createNode mesh -n "Traffic_Light8Shape" -p "Traffic_Light8";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 32 ".uvst[0].uvsp[0:31]" -type "float2" 0.33000001 0 0.66333336
		 0 0.33000001 0.125 0.66333336 0.125 0.33000001 0.25 0.66333336 0.25 0.33000001 0.5
		 0.66333336 0.5 0.33000001 0.625 0.66333336 0.625 0.33000001 0.75 0.66333336 0.75
		 0.33000001 1 0.66333336 1 1 0 1 0.125 1 0.25 0 0 0 0.125 0 0.25 0.33000001 0.125
		 0.66333336 0.125 0.66333336 0.25 0.33000001 0.25 0.33000001 0.5 0.66333336 0.5 0.66333336
		 0.625 0.33000001 0.625 1 0.125 1 0.25 0 0.125 0 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 20 ".vt[0:19]"  1.70000005 -0.049999952 1.81500006 1.82999992 -0.049999952 1.81500006
		 1.70000005 0.73000002 1.81500006 1.82999992 0.73000002 1.81500006 1.70000005 1.25 1.81500006
		 1.82999992 1.25 1.81500006 1.70000005 1.25 1.68499994 1.82999992 1.25 1.68499994
		 1.70000005 0.73000002 1.68499994 1.82999992 0.73000002 1.68499994 1.70000005 -0.049999952 1.68499994
		 1.82999992 -0.049999952 1.68499994 1.61549997 0.73000002 1.89950001 1.9145 0.73000002 1.89950001
		 1.9145 1.25 1.89950001 1.61549997 1.25 1.89950001 1.61549997 1.25 1.60049999 1.9145 1.25 1.60049999
		 1.9145 0.73000002 1.60049999 1.61549997 0.73000002 1.60049999;
	setAttr -s 36 ".ed[0:35]"  0 1 0 2 3 0 4 5 1 6 7 1 8 9 0 10 11 0 0 2 0
		 1 3 0 4 6 1 5 7 1 8 10 0 9 11 0 10 0 0 11 1 0 9 3 0 8 2 0 2 12 1 3 13 1 12 13 0 5 14 1
		 13 14 0 4 15 1 15 14 0 12 15 0 6 16 1 7 17 1 16 17 0 9 18 1 17 18 0 8 19 1 19 18 0
		 16 19 0 18 13 0 14 17 0 19 12 0 15 16 0;
	setAttr -s 18 -ch 72 ".fc[0:17]" -type "polyFaces" 
		f 4 0 7 -2 -7
		mu 0 4 0 1 3 2
		f 4 18 20 -23 -24
		mu 0 4 20 21 22 23
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 26 28 -31 -32
		mu 0 4 24 25 26 27
		f 4 4 11 -6 -11
		mu 0 4 8 9 11 10
		f 4 5 13 -1 -13
		mu 0 4 10 11 13 12
		f 4 -14 -12 14 -8
		mu 0 4 1 14 15 3
		f 4 -33 -29 -34 -21
		mu 0 4 21 28 29 22
		f 4 12 6 -16 10
		mu 0 4 17 0 2 18
		f 4 34 23 35 31
		mu 0 4 30 20 23 31
		f 4 1 17 -19 -17
		mu 0 4 2 3 21 20
		f 4 -3 21 22 -20
		mu 0 4 5 4 23 22
		f 4 3 25 -27 -25
		mu 0 4 6 7 25 24
		f 4 -5 29 30 -28
		mu 0 4 9 8 27 26
		f 4 -15 27 32 -18
		mu 0 4 3 15 28 21
		f 4 -10 19 33 -26
		mu 0 4 16 5 22 29
		f 4 15 16 -35 -30
		mu 0 4 18 2 20 30
		f 4 8 24 -36 -22
		mu 0 4 4 19 31 23;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "RedLight_Traffic_Light8" -p "Traffic_Light8";
	setAttr ".rp" -type "double3" 1.765 1.146 1.6005 ;
	setAttr ".sp" -type "double3" 1.765 1.146 1.6005 ;
createNode mesh -n "RedLight_Traffic_Light8Shape" -p "RedLight_Traffic_Light8";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 79 ".uvst[0].uvsp[0:78]" -type "float2" 0 0.125 0.125 0.125
		 0.25 0.125 0.375 0.125 0.5 0.125 0.625 0.125 0.75 0.125 0.875 0.125 1 0.125 0 0.25
		 0.125 0.25 0.25 0.25 0.375 0.25 0.5 0.25 0.625 0.25 0.75 0.25 0.875 0.25 1 0.25 0
		 0.375 0.125 0.375 0.25 0.375 0.375 0.375 0.5 0.375 0.625 0.375 0.75 0.375 0.875 0.375
		 1 0.375 0 0.5 0.125 0.5 0.25 0.5 0.375 0.5 0.5 0.5 0.625 0.5 0.75 0.5 0.875 0.5 1
		 0.5 0 0.625 0.125 0.625 0.25 0.625 0.375 0.625 0.5 0.625 0.625 0.625 0.75 0.625 0.875
		 0.625 1 0.625 0 0.75 0.125 0.75 0.25 0.75 0.375 0.75 0.5 0.75 0.625 0.75 0.75 0.75
		 0.875 0.75 1 0.75 0 0.875 0.125 0.875 0.25 0.875 0.375 0.875 0.5 0.875 0.625 0.875
		 0.75 0.875 0.875 0.875 1 0.875 0.0625 0 0.1875 0 0.3125 0 0.4375 0 0.5625 0 0.6875
		 0 0.8125 0 0.9375 0 0.0625 1 0.1875 1 0.3125 1 0.4375 1 0.5625 1 0.6875 1 0.8125
		 1 0.9375 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 58 ".vt[0:57]"  1.78258884 1.085947871 1.58291113 1.76499999 1.085947871 1.57562554
		 1.74741113 1.085947871 1.58291113 1.74012554 1.085947871 1.60049999 1.74741113 1.085947871 1.61808884
		 1.76499999 1.085947871 1.62537444 1.78258884 1.085947871 1.61808884 1.78987443 1.085947871 1.60049999
		 1.79750001 1.10003805 1.56799996 1.76499999 1.10003805 1.55453801 1.73249996 1.10003805 1.56799996
		 1.71903801 1.10003805 1.60049999 1.73249996 1.10003805 1.63300002 1.76499999 1.10003805 1.64646196
		 1.79750001 1.10003805 1.63300002 1.81096196 1.10003805 1.60049999 1.80746329 1.12112558 1.55803668
		 1.76499999 1.12112558 1.54044783 1.72253668 1.12112558 1.55803668 1.70494783 1.12112558 1.60049999
		 1.72253668 1.12112558 1.64296329 1.76499999 1.12112558 1.66055214 1.80746329 1.12112558 1.64296329
		 1.82505214 1.12112558 1.60049999 1.81096196 1.14600003 1.55453801 1.76499999 1.14600003 1.53550005
		 1.71903801 1.14600003 1.55453801 1.70000005 1.14600003 1.60049999 1.71903801 1.14600003 1.64646196
		 1.76499999 1.14600003 1.66549993 1.81096196 1.14600003 1.64646196 1.82999992 1.14600003 1.60049999
		 1.80746329 1.17087448 1.55803668 1.76499999 1.17087448 1.54044783 1.72253668 1.17087448 1.55803668
		 1.70494783 1.17087448 1.60049999 1.72253668 1.17087448 1.64296329 1.76499999 1.17087448 1.66055214
		 1.80746329 1.17087448 1.64296329 1.82505214 1.17087448 1.60049999 1.79750001 1.191962 1.56799996
		 1.76499999 1.191962 1.55453801 1.73249996 1.191962 1.56799996 1.71903801 1.191962 1.60049999
		 1.73249996 1.191962 1.63300002 1.76499999 1.191962 1.64646196 1.79750001 1.191962 1.63300002
		 1.81096196 1.191962 1.60049999 1.78258884 1.20605218 1.58291113 1.76499999 1.20605218 1.57562554
		 1.74741113 1.20605218 1.58291113 1.74012554 1.20605218 1.60049999 1.74741113 1.20605218 1.61808884
		 1.76499999 1.20605218 1.62537444 1.78258884 1.20605218 1.61808884 1.78987443 1.20605218 1.60049999
		 1.76499999 1.08100009 1.60049999 1.76499999 1.21099997 1.60049999;
	setAttr -s 120 ".ed[0:119]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 0 0 8 9 0 9 10 0 10 11 0 11 12 0 12 13 0 13 14 0 14 15 0 15 8 0 16 17 0 17 18 0
		 18 19 0 19 20 0 20 21 0 21 22 0 22 23 0 23 16 0 24 25 0 25 26 0 26 27 0 27 28 0 28 29 0
		 29 30 0 30 31 0 31 24 0 32 33 0 33 34 0 34 35 0 35 36 0 36 37 0 37 38 0 38 39 0 39 32 0
		 40 41 0 41 42 0 42 43 0 43 44 0 44 45 0 45 46 0 46 47 0 47 40 0 48 49 0 49 50 0 50 51 0
		 51 52 0 52 53 0 53 54 0 54 55 0 55 48 0 0 8 0 1 9 0 2 10 0 3 11 0 4 12 0 5 13 0 6 14 0
		 7 15 0 8 16 0 9 17 0 10 18 0 11 19 0 12 20 0 13 21 0 14 22 0 15 23 0 16 24 0 17 25 0
		 18 26 0 19 27 0 20 28 0 21 29 0 22 30 0 23 31 0 24 32 0 25 33 0 26 34 0 27 35 0 28 36 0
		 29 37 0 30 38 0 31 39 0 32 40 0 33 41 0 34 42 0 35 43 0 36 44 0 37 45 0 38 46 0 39 47 0
		 40 48 0 41 49 0 42 50 0 43 51 0 44 52 0 45 53 0 46 54 0 47 55 0 56 0 0 56 1 0 56 2 0
		 56 3 0 56 4 0 56 5 0 56 6 0 56 7 0 48 57 0 49 57 0 50 57 0 51 57 0 52 57 0 53 57 0
		 54 57 0 55 57 0;
	setAttr -s 64 -ch 240 ".fc[0:63]" -type "polyFaces" 
		f 4 0 57 -9 -57
		mu 0 4 0 1 10 9
		f 4 1 58 -10 -58
		mu 0 4 1 2 11 10
		f 4 2 59 -11 -59
		mu 0 4 2 3 12 11
		f 4 3 60 -12 -60
		mu 0 4 3 4 13 12
		f 4 4 61 -13 -61
		mu 0 4 4 5 14 13
		f 4 5 62 -14 -62
		mu 0 4 5 6 15 14
		f 4 6 63 -15 -63
		mu 0 4 6 7 16 15
		f 4 7 56 -16 -64
		mu 0 4 7 8 17 16
		f 4 8 65 -17 -65
		mu 0 4 9 10 19 18
		f 4 9 66 -18 -66
		mu 0 4 10 11 20 19
		f 4 10 67 -19 -67
		mu 0 4 11 12 21 20
		f 4 11 68 -20 -68
		mu 0 4 12 13 22 21
		f 4 12 69 -21 -69
		mu 0 4 13 14 23 22
		f 4 13 70 -22 -70
		mu 0 4 14 15 24 23
		f 4 14 71 -23 -71
		mu 0 4 15 16 25 24
		f 4 15 64 -24 -72
		mu 0 4 16 17 26 25
		f 4 16 73 -25 -73
		mu 0 4 18 19 28 27
		f 4 17 74 -26 -74
		mu 0 4 19 20 29 28
		f 4 18 75 -27 -75
		mu 0 4 20 21 30 29
		f 4 19 76 -28 -76
		mu 0 4 21 22 31 30
		f 4 20 77 -29 -77
		mu 0 4 22 23 32 31
		f 4 21 78 -30 -78
		mu 0 4 23 24 33 32
		f 4 22 79 -31 -79
		mu 0 4 24 25 34 33
		f 4 23 72 -32 -80
		mu 0 4 25 26 35 34
		f 4 24 81 -33 -81
		mu 0 4 27 28 37 36
		f 4 25 82 -34 -82
		mu 0 4 28 29 38 37
		f 4 26 83 -35 -83
		mu 0 4 29 30 39 38
		f 4 27 84 -36 -84
		mu 0 4 30 31 40 39
		f 4 28 85 -37 -85
		mu 0 4 31 32 41 40
		f 4 29 86 -38 -86
		mu 0 4 32 33 42 41
		f 4 30 87 -39 -87
		mu 0 4 33 34 43 42
		f 4 31 80 -40 -88
		mu 0 4 34 35 44 43
		f 4 32 89 -41 -89
		mu 0 4 36 37 46 45
		f 4 33 90 -42 -90
		mu 0 4 37 38 47 46
		f 4 34 91 -43 -91
		mu 0 4 38 39 48 47
		f 4 35 92 -44 -92
		mu 0 4 39 40 49 48
		f 4 36 93 -45 -93
		mu 0 4 40 41 50 49
		f 4 37 94 -46 -94
		mu 0 4 41 42 51 50
		f 4 38 95 -47 -95
		mu 0 4 42 43 52 51
		f 4 39 88 -48 -96
		mu 0 4 43 44 53 52
		f 4 40 97 -49 -97
		mu 0 4 45 46 55 54
		f 4 41 98 -50 -98
		mu 0 4 46 47 56 55
		f 4 42 99 -51 -99
		mu 0 4 47 48 57 56
		f 4 43 100 -52 -100
		mu 0 4 48 49 58 57
		f 4 44 101 -53 -101
		mu 0 4 49 50 59 58
		f 4 45 102 -54 -102
		mu 0 4 50 51 60 59
		f 4 46 103 -55 -103
		mu 0 4 51 52 61 60
		f 4 47 96 -56 -104
		mu 0 4 52 53 62 61
		f 3 -1 -105 105
		mu 0 3 1 0 63
		f 3 -2 -106 106
		mu 0 3 2 1 64
		f 3 -3 -107 107
		mu 0 3 3 2 65
		f 3 -4 -108 108
		mu 0 3 4 3 66
		f 3 -5 -109 109
		mu 0 3 5 4 67
		f 3 -6 -110 110
		mu 0 3 6 5 68
		f 3 -7 -111 111
		mu 0 3 7 6 69
		f 3 -8 -112 104
		mu 0 3 8 7 70
		f 3 48 113 -113
		mu 0 3 54 55 71
		f 3 49 114 -114
		mu 0 3 55 56 72
		f 3 50 115 -115
		mu 0 3 56 57 73
		f 3 51 116 -116
		mu 0 3 57 58 74
		f 3 52 117 -117
		mu 0 3 58 59 75
		f 3 53 118 -118
		mu 0 3 59 60 76
		f 3 54 119 -119
		mu 0 3 60 61 77
		f 3 55 112 -120
		mu 0 3 61 62 78;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "OrangeLight_Traffic_Light8" -p "Traffic_Light8";
	setAttr ".rp" -type "double3" 1.765 0.99 1.6005 ;
	setAttr ".sp" -type "double3" 1.765 0.99 1.6005 ;
createNode mesh -n "OrangeLight_Traffic_Light8Shape" -p "OrangeLight_Traffic_Light8";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 79 ".uvst[0].uvsp[0:78]" -type "float2" 0 0.125 0.125 0.125
		 0.25 0.125 0.375 0.125 0.5 0.125 0.625 0.125 0.75 0.125 0.875 0.125 1 0.125 0 0.25
		 0.125 0.25 0.25 0.25 0.375 0.25 0.5 0.25 0.625 0.25 0.75 0.25 0.875 0.25 1 0.25 0
		 0.375 0.125 0.375 0.25 0.375 0.375 0.375 0.5 0.375 0.625 0.375 0.75 0.375 0.875 0.375
		 1 0.375 0 0.5 0.125 0.5 0.25 0.5 0.375 0.5 0.5 0.5 0.625 0.5 0.75 0.5 0.875 0.5 1
		 0.5 0 0.625 0.125 0.625 0.25 0.625 0.375 0.625 0.5 0.625 0.625 0.625 0.75 0.625 0.875
		 0.625 1 0.625 0 0.75 0.125 0.75 0.25 0.75 0.375 0.75 0.5 0.75 0.625 0.75 0.75 0.75
		 0.875 0.75 1 0.75 0 0.875 0.125 0.875 0.25 0.875 0.375 0.875 0.5 0.875 0.625 0.875
		 0.75 0.875 0.875 0.875 1 0.875 0.0625 0 0.1875 0 0.3125 0 0.4375 0 0.5625 0 0.6875
		 0 0.8125 0 0.9375 0 0.0625 1 0.1875 1 0.3125 1 0.4375 1 0.5625 1 0.6875 1 0.8125
		 1 0.9375 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 58 ".vt[0:57]"  1.78258884 0.92994785 1.58291113 1.76499999 0.92994785 1.57562554
		 1.74741113 0.92994785 1.58291113 1.74012554 0.92994785 1.60049999 1.74741113 0.92994785 1.61808884
		 1.76499999 0.92994785 1.62537444 1.78258884 0.92994785 1.61808884 1.78987443 0.92994785 1.60049999
		 1.79750001 0.94403809 1.56799996 1.76499999 0.94403809 1.55453801 1.73249996 0.94403809 1.56799996
		 1.71903801 0.94403809 1.60049999 1.73249996 0.94403809 1.63300002 1.76499999 0.94403809 1.64646196
		 1.79750001 0.94403809 1.63300002 1.81096196 0.94403809 1.60049999 1.80746329 0.96512556 1.55803668
		 1.76499999 0.96512556 1.54044783 1.72253668 0.96512556 1.55803668 1.70494783 0.96512556 1.60049999
		 1.72253668 0.96512556 1.64296329 1.76499999 0.96512556 1.66055214 1.80746329 0.96512556 1.64296329
		 1.82505214 0.96512556 1.60049999 1.81096196 0.99000001 1.55453801 1.76499999 0.99000001 1.53550005
		 1.71903801 0.99000001 1.55453801 1.70000005 0.99000001 1.60049999 1.71903801 0.99000001 1.64646196
		 1.76499999 0.99000001 1.66549993 1.81096196 0.99000001 1.64646196 1.82999992 0.99000001 1.60049999
		 1.80746329 1.014874458 1.55803668 1.76499999 1.014874458 1.54044783 1.72253668 1.014874458 1.55803668
		 1.70494783 1.014874458 1.60049999 1.72253668 1.014874458 1.64296329 1.76499999 1.014874458 1.66055214
		 1.80746329 1.014874458 1.64296329 1.82505214 1.014874458 1.60049999 1.79750001 1.035961986 1.56799996
		 1.76499999 1.035961986 1.55453801 1.73249996 1.035961986 1.56799996 1.71903801 1.035961986 1.60049999
		 1.73249996 1.035961986 1.63300002 1.76499999 1.035961986 1.64646196 1.79750001 1.035961986 1.63300002
		 1.81096196 1.035961986 1.60049999 1.78258884 1.050052166 1.58291113 1.76499999 1.050052166 1.57562554
		 1.74741113 1.050052166 1.58291113 1.74012554 1.050052166 1.60049999 1.74741113 1.050052166 1.61808884
		 1.76499999 1.050052166 1.62537444 1.78258884 1.050052166 1.61808884 1.78987443 1.050052166 1.60049999
		 1.76499999 0.92500001 1.60049999 1.76499999 1.055000067 1.60049999;
	setAttr -s 120 ".ed[0:119]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 0 0 8 9 0 9 10 0 10 11 0 11 12 0 12 13 0 13 14 0 14 15 0 15 8 0 16 17 0 17 18 0
		 18 19 0 19 20 0 20 21 0 21 22 0 22 23 0 23 16 0 24 25 0 25 26 0 26 27 0 27 28 0 28 29 0
		 29 30 0 30 31 0 31 24 0 32 33 0 33 34 0 34 35 0 35 36 0 36 37 0 37 38 0 38 39 0 39 32 0
		 40 41 0 41 42 0 42 43 0 43 44 0 44 45 0 45 46 0 46 47 0 47 40 0 48 49 0 49 50 0 50 51 0
		 51 52 0 52 53 0 53 54 0 54 55 0 55 48 0 0 8 0 1 9 0 2 10 0 3 11 0 4 12 0 5 13 0 6 14 0
		 7 15 0 8 16 0 9 17 0 10 18 0 11 19 0 12 20 0 13 21 0 14 22 0 15 23 0 16 24 0 17 25 0
		 18 26 0 19 27 0 20 28 0 21 29 0 22 30 0 23 31 0 24 32 0 25 33 0 26 34 0 27 35 0 28 36 0
		 29 37 0 30 38 0 31 39 0 32 40 0 33 41 0 34 42 0 35 43 0 36 44 0 37 45 0 38 46 0 39 47 0
		 40 48 0 41 49 0 42 50 0 43 51 0 44 52 0 45 53 0 46 54 0 47 55 0 56 0 0 56 1 0 56 2 0
		 56 3 0 56 4 0 56 5 0 56 6 0 56 7 0 48 57 0 49 57 0 50 57 0 51 57 0 52 57 0 53 57 0
		 54 57 0 55 57 0;
	setAttr -s 64 -ch 240 ".fc[0:63]" -type "polyFaces" 
		f 4 0 57 -9 -57
		mu 0 4 0 1 10 9
		f 4 1 58 -10 -58
		mu 0 4 1 2 11 10
		f 4 2 59 -11 -59
		mu 0 4 2 3 12 11
		f 4 3 60 -12 -60
		mu 0 4 3 4 13 12
		f 4 4 61 -13 -61
		mu 0 4 4 5 14 13
		f 4 5 62 -14 -62
		mu 0 4 5 6 15 14
		f 4 6 63 -15 -63
		mu 0 4 6 7 16 15
		f 4 7 56 -16 -64
		mu 0 4 7 8 17 16
		f 4 8 65 -17 -65
		mu 0 4 9 10 19 18
		f 4 9 66 -18 -66
		mu 0 4 10 11 20 19
		f 4 10 67 -19 -67
		mu 0 4 11 12 21 20
		f 4 11 68 -20 -68
		mu 0 4 12 13 22 21
		f 4 12 69 -21 -69
		mu 0 4 13 14 23 22
		f 4 13 70 -22 -70
		mu 0 4 14 15 24 23
		f 4 14 71 -23 -71
		mu 0 4 15 16 25 24
		f 4 15 64 -24 -72
		mu 0 4 16 17 26 25
		f 4 16 73 -25 -73
		mu 0 4 18 19 28 27
		f 4 17 74 -26 -74
		mu 0 4 19 20 29 28
		f 4 18 75 -27 -75
		mu 0 4 20 21 30 29
		f 4 19 76 -28 -76
		mu 0 4 21 22 31 30
		f 4 20 77 -29 -77
		mu 0 4 22 23 32 31
		f 4 21 78 -30 -78
		mu 0 4 23 24 33 32
		f 4 22 79 -31 -79
		mu 0 4 24 25 34 33
		f 4 23 72 -32 -80
		mu 0 4 25 26 35 34
		f 4 24 81 -33 -81
		mu 0 4 27 28 37 36
		f 4 25 82 -34 -82
		mu 0 4 28 29 38 37
		f 4 26 83 -35 -83
		mu 0 4 29 30 39 38
		f 4 27 84 -36 -84
		mu 0 4 30 31 40 39
		f 4 28 85 -37 -85
		mu 0 4 31 32 41 40
		f 4 29 86 -38 -86
		mu 0 4 32 33 42 41
		f 4 30 87 -39 -87
		mu 0 4 33 34 43 42
		f 4 31 80 -40 -88
		mu 0 4 34 35 44 43
		f 4 32 89 -41 -89
		mu 0 4 36 37 46 45
		f 4 33 90 -42 -90
		mu 0 4 37 38 47 46
		f 4 34 91 -43 -91
		mu 0 4 38 39 48 47
		f 4 35 92 -44 -92
		mu 0 4 39 40 49 48
		f 4 36 93 -45 -93
		mu 0 4 40 41 50 49
		f 4 37 94 -46 -94
		mu 0 4 41 42 51 50
		f 4 38 95 -47 -95
		mu 0 4 42 43 52 51
		f 4 39 88 -48 -96
		mu 0 4 43 44 53 52
		f 4 40 97 -49 -97
		mu 0 4 45 46 55 54
		f 4 41 98 -50 -98
		mu 0 4 46 47 56 55
		f 4 42 99 -51 -99
		mu 0 4 47 48 57 56
		f 4 43 100 -52 -100
		mu 0 4 48 49 58 57
		f 4 44 101 -53 -101
		mu 0 4 49 50 59 58
		f 4 45 102 -54 -102
		mu 0 4 50 51 60 59
		f 4 46 103 -55 -103
		mu 0 4 51 52 61 60
		f 4 47 96 -56 -104
		mu 0 4 52 53 62 61
		f 3 -1 -105 105
		mu 0 3 1 0 63
		f 3 -2 -106 106
		mu 0 3 2 1 64
		f 3 -3 -107 107
		mu 0 3 3 2 65
		f 3 -4 -108 108
		mu 0 3 4 3 66
		f 3 -5 -109 109
		mu 0 3 5 4 67
		f 3 -6 -110 110
		mu 0 3 6 5 68
		f 3 -7 -111 111
		mu 0 3 7 6 69
		f 3 -8 -112 104
		mu 0 3 8 7 70
		f 3 48 113 -113
		mu 0 3 54 55 71
		f 3 49 114 -114
		mu 0 3 55 56 72
		f 3 50 115 -115
		mu 0 3 56 57 73
		f 3 51 116 -116
		mu 0 3 57 58 74
		f 3 52 117 -117
		mu 0 3 58 59 75
		f 3 53 118 -118
		mu 0 3 59 60 76
		f 3 54 119 -119
		mu 0 3 60 61 77
		f 3 55 112 -120
		mu 0 3 61 62 78;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "GreenLight_Traffic_Light8" -p "Traffic_Light8";
	setAttr ".rp" -type "double3" 1.765 0.83400000000000007 1.6005 ;
	setAttr ".sp" -type "double3" 1.765 0.83400000000000007 1.6005 ;
createNode mesh -n "GreenLight_Traffic_Light8Shape" -p "GreenLight_Traffic_Light8";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 79 ".uvst[0].uvsp[0:78]" -type "float2" 0 0.125 0.125 0.125
		 0.25 0.125 0.375 0.125 0.5 0.125 0.625 0.125 0.75 0.125 0.875 0.125 1 0.125 0 0.25
		 0.125 0.25 0.25 0.25 0.375 0.25 0.5 0.25 0.625 0.25 0.75 0.25 0.875 0.25 1 0.25 0
		 0.375 0.125 0.375 0.25 0.375 0.375 0.375 0.5 0.375 0.625 0.375 0.75 0.375 0.875 0.375
		 1 0.375 0 0.5 0.125 0.5 0.25 0.5 0.375 0.5 0.5 0.5 0.625 0.5 0.75 0.5 0.875 0.5 1
		 0.5 0 0.625 0.125 0.625 0.25 0.625 0.375 0.625 0.5 0.625 0.625 0.625 0.75 0.625 0.875
		 0.625 1 0.625 0 0.75 0.125 0.75 0.25 0.75 0.375 0.75 0.5 0.75 0.625 0.75 0.75 0.75
		 0.875 0.75 1 0.75 0 0.875 0.125 0.875 0.25 0.875 0.375 0.875 0.5 0.875 0.625 0.875
		 0.75 0.875 0.875 0.875 1 0.875 0.0625 0 0.1875 0 0.3125 0 0.4375 0 0.5625 0 0.6875
		 0 0.8125 0 0.9375 0 0.0625 1 0.1875 1 0.3125 1 0.4375 1 0.5625 1 0.6875 1 0.8125
		 1 0.9375 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 58 ".vt[0:57]"  1.78258884 0.77394783 1.58291113 1.76499999 0.77394783 1.57562554
		 1.74741113 0.77394783 1.58291113 1.74012554 0.77394783 1.60049999 1.74741113 0.77394783 1.61808884
		 1.76499999 0.77394783 1.62537444 1.78258884 0.77394783 1.61808884 1.78987443 0.77394783 1.60049999
		 1.79750001 0.78803807 1.56799996 1.76499999 0.78803807 1.55453801 1.73249996 0.78803807 1.56799996
		 1.71903801 0.78803807 1.60049999 1.73249996 0.78803807 1.63300002 1.76499999 0.78803807 1.64646196
		 1.79750001 0.78803807 1.63300002 1.81096196 0.78803807 1.60049999 1.80746329 0.80912554 1.55803668
		 1.76499999 0.80912554 1.54044783 1.72253668 0.80912554 1.55803668 1.70494783 0.80912554 1.60049999
		 1.72253668 0.80912554 1.64296329 1.76499999 0.80912554 1.66055214 1.80746329 0.80912554 1.64296329
		 1.82505214 0.80912554 1.60049999 1.81096196 0.83399999 1.55453801 1.76499999 0.83399999 1.53550005
		 1.71903801 0.83399999 1.55453801 1.70000005 0.83399999 1.60049999 1.71903801 0.83399999 1.64646196
		 1.76499999 0.83399999 1.66549993 1.81096196 0.83399999 1.64646196 1.82999992 0.83399999 1.60049999
		 1.80746329 0.85887444 1.55803668 1.76499999 0.85887444 1.54044783 1.72253668 0.85887444 1.55803668
		 1.70494783 0.85887444 1.60049999 1.72253668 0.85887444 1.64296329 1.76499999 0.85887444 1.66055214
		 1.80746329 0.85887444 1.64296329 1.82505214 0.85887444 1.60049999 1.79750001 0.87996191 1.56799996
		 1.76499999 0.87996191 1.55453801 1.73249996 0.87996191 1.56799996 1.71903801 0.87996191 1.60049999
		 1.73249996 0.87996191 1.63300002 1.76499999 0.87996191 1.64646196 1.79750001 0.87996191 1.63300002
		 1.81096196 0.87996191 1.60049999 1.78258884 0.89405215 1.58291113 1.76499999 0.89405215 1.57562554
		 1.74741113 0.89405215 1.58291113 1.74012554 0.89405215 1.60049999 1.74741113 0.89405215 1.61808884
		 1.76499999 0.89405215 1.62537444 1.78258884 0.89405215 1.61808884 1.78987443 0.89405215 1.60049999
		 1.76499999 0.76899999 1.60049999 1.76499999 0.89899999 1.60049999;
	setAttr -s 120 ".ed[0:119]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 0 0 8 9 0 9 10 0 10 11 0 11 12 0 12 13 0 13 14 0 14 15 0 15 8 0 16 17 0 17 18 0
		 18 19 0 19 20 0 20 21 0 21 22 0 22 23 0 23 16 0 24 25 0 25 26 0 26 27 0 27 28 0 28 29 0
		 29 30 0 30 31 0 31 24 0 32 33 0 33 34 0 34 35 0 35 36 0 36 37 0 37 38 0 38 39 0 39 32 0
		 40 41 0 41 42 0 42 43 0 43 44 0 44 45 0 45 46 0 46 47 0 47 40 0 48 49 0 49 50 0 50 51 0
		 51 52 0 52 53 0 53 54 0 54 55 0 55 48 0 0 8 0 1 9 0 2 10 0 3 11 0 4 12 0 5 13 0 6 14 0
		 7 15 0 8 16 0 9 17 0 10 18 0 11 19 0 12 20 0 13 21 0 14 22 0 15 23 0 16 24 0 17 25 0
		 18 26 0 19 27 0 20 28 0 21 29 0 22 30 0 23 31 0 24 32 0 25 33 0 26 34 0 27 35 0 28 36 0
		 29 37 0 30 38 0 31 39 0 32 40 0 33 41 0 34 42 0 35 43 0 36 44 0 37 45 0 38 46 0 39 47 0
		 40 48 0 41 49 0 42 50 0 43 51 0 44 52 0 45 53 0 46 54 0 47 55 0 56 0 0 56 1 0 56 2 0
		 56 3 0 56 4 0 56 5 0 56 6 0 56 7 0 48 57 0 49 57 0 50 57 0 51 57 0 52 57 0 53 57 0
		 54 57 0 55 57 0;
	setAttr -s 64 -ch 240 ".fc[0:63]" -type "polyFaces" 
		f 4 0 57 -9 -57
		mu 0 4 0 1 10 9
		f 4 1 58 -10 -58
		mu 0 4 1 2 11 10
		f 4 2 59 -11 -59
		mu 0 4 2 3 12 11
		f 4 3 60 -12 -60
		mu 0 4 3 4 13 12
		f 4 4 61 -13 -61
		mu 0 4 4 5 14 13
		f 4 5 62 -14 -62
		mu 0 4 5 6 15 14
		f 4 6 63 -15 -63
		mu 0 4 6 7 16 15
		f 4 7 56 -16 -64
		mu 0 4 7 8 17 16
		f 4 8 65 -17 -65
		mu 0 4 9 10 19 18
		f 4 9 66 -18 -66
		mu 0 4 10 11 20 19
		f 4 10 67 -19 -67
		mu 0 4 11 12 21 20
		f 4 11 68 -20 -68
		mu 0 4 12 13 22 21
		f 4 12 69 -21 -69
		mu 0 4 13 14 23 22
		f 4 13 70 -22 -70
		mu 0 4 14 15 24 23
		f 4 14 71 -23 -71
		mu 0 4 15 16 25 24
		f 4 15 64 -24 -72
		mu 0 4 16 17 26 25
		f 4 16 73 -25 -73
		mu 0 4 18 19 28 27
		f 4 17 74 -26 -74
		mu 0 4 19 20 29 28
		f 4 18 75 -27 -75
		mu 0 4 20 21 30 29
		f 4 19 76 -28 -76
		mu 0 4 21 22 31 30
		f 4 20 77 -29 -77
		mu 0 4 22 23 32 31
		f 4 21 78 -30 -78
		mu 0 4 23 24 33 32
		f 4 22 79 -31 -79
		mu 0 4 24 25 34 33
		f 4 23 72 -32 -80
		mu 0 4 25 26 35 34
		f 4 24 81 -33 -81
		mu 0 4 27 28 37 36
		f 4 25 82 -34 -82
		mu 0 4 28 29 38 37
		f 4 26 83 -35 -83
		mu 0 4 29 30 39 38
		f 4 27 84 -36 -84
		mu 0 4 30 31 40 39
		f 4 28 85 -37 -85
		mu 0 4 31 32 41 40
		f 4 29 86 -38 -86
		mu 0 4 32 33 42 41
		f 4 30 87 -39 -87
		mu 0 4 33 34 43 42
		f 4 31 80 -40 -88
		mu 0 4 34 35 44 43
		f 4 32 89 -41 -89
		mu 0 4 36 37 46 45
		f 4 33 90 -42 -90
		mu 0 4 37 38 47 46
		f 4 34 91 -43 -91
		mu 0 4 38 39 48 47
		f 4 35 92 -44 -92
		mu 0 4 39 40 49 48
		f 4 36 93 -45 -93
		mu 0 4 40 41 50 49
		f 4 37 94 -46 -94
		mu 0 4 41 42 51 50
		f 4 38 95 -47 -95
		mu 0 4 42 43 52 51
		f 4 39 88 -48 -96
		mu 0 4 43 44 53 52
		f 4 40 97 -49 -97
		mu 0 4 45 46 55 54
		f 4 41 98 -50 -98
		mu 0 4 46 47 56 55
		f 4 42 99 -51 -99
		mu 0 4 47 48 57 56
		f 4 43 100 -52 -100
		mu 0 4 48 49 58 57
		f 4 44 101 -53 -101
		mu 0 4 49 50 59 58
		f 4 45 102 -54 -102
		mu 0 4 50 51 60 59
		f 4 46 103 -55 -103
		mu 0 4 51 52 61 60
		f 4 47 96 -56 -104
		mu 0 4 52 53 62 61
		f 3 -1 -105 105
		mu 0 3 1 0 63
		f 3 -2 -106 106
		mu 0 3 2 1 64
		f 3 -3 -107 107
		mu 0 3 3 2 65
		f 3 -4 -108 108
		mu 0 3 4 3 66
		f 3 -5 -109 109
		mu 0 3 5 4 67
		f 3 -6 -110 110
		mu 0 3 6 5 68
		f 3 -7 -111 111
		mu 0 3 7 6 69
		f 3 -8 -112 104
		mu 0 3 8 7 70
		f 3 48 113 -113
		mu 0 3 54 55 71
		f 3 49 114 -114
		mu 0 3 55 56 72
		f 3 50 115 -115
		mu 0 3 56 57 73
		f 3 51 116 -116
		mu 0 3 57 58 74
		f 3 52 117 -117
		mu 0 3 58 59 75
		f 3 53 118 -118
		mu 0 3 59 60 76
		f 3 54 119 -119
		mu 0 3 60 61 77
		f 3 55 112 -120
		mu 0 3 61 62 78;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "GrpAllBuildings";
createNode transform -n "Building1" -p "GrpAllBuildings";
	setAttr ".t" -type "double3" -12 -4.4408920985006262e-015 20 ;
	setAttr ".s" -type "double3" 2.5 2 2.5 ;
	setAttr ".rp" -type "double3" 0 -0.5 0 ;
	setAttr ".sp" -type "double3" 0 -0.5 0 ;
createNode mesh -n "Building1Shape" -p "Building1";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.49666668474674225 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "Building2" -p "GrpAllBuildings";
	setAttr ".t" -type "double3" -4 -4.4408920985006262e-015 20 ;
	setAttr ".s" -type "double3" 2.5 1 2.5 ;
	setAttr ".rp" -type "double3" 0 -0.5 0 ;
	setAttr ".sp" -type "double3" 0 -0.5 0 ;
createNode mesh -n "Building2Shape" -p "Building2";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.4999999888241291 0.37500002980232239 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "Building3" -p "GrpAllBuildings";
	setAttr ".t" -type "double3" 4 -4.4408920985006262e-015 20 ;
	setAttr ".s" -type "double3" 2.5 1 2.5 ;
	setAttr ".rp" -type "double3" 0 -0.5 0 ;
	setAttr ".sp" -type "double3" 0 -0.5 0 ;
createNode mesh -n "Building3Shape" -p "Building3";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.4999999888241291 0.37500002980232239 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "Building4" -p "GrpAllBuildings";
	setAttr ".t" -type "double3" 16 -4.4408920985006262e-015 20 ;
	setAttr ".s" -type "double3" 2.5 1 2.5 ;
	setAttr ".rp" -type "double3" 0 -0.5 0 ;
	setAttr ".sp" -type "double3" 0 -0.5 0 ;
createNode mesh -n "Building4Shape" -p "Building4";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.4999999888241291 0.37500002980232239 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "Building5" -p "GrpAllBuildings";
	setAttr ".t" -type "double3" 16 -3.5527136788005009e-015 16 ;
	setAttr ".s" -type "double3" 2.5 1 2.5 ;
	setAttr ".rp" -type "double3" 0 -0.5 0 ;
	setAttr ".sp" -type "double3" 0 -0.5 0 ;
createNode mesh -n "Building5Shape" -p "Building5";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.4999999888241291 0.37500002980232239 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "Building6" -p "GrpAllBuildings";
	setAttr ".t" -type "double3" 12 -1.7763568394002505e-015 8 ;
	setAttr ".s" -type "double3" 2.5 1 2.5 ;
	setAttr ".rp" -type "double3" 0 -0.5 0 ;
	setAttr ".sp" -type "double3" 0 -0.5 0 ;
createNode mesh -n "Building6Shape" -p "Building6";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.49666668474674225 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "Building7" -p "GrpAllBuildings";
	setAttr ".t" -type "double3" 16 -1.7763568394002505e-015 8 ;
	setAttr ".s" -type "double3" 2.5 1 2.5 ;
	setAttr ".rp" -type "double3" 0 -0.5 0 ;
	setAttr ".sp" -type "double3" 0 -0.5 0 ;
createNode mesh -n "Building7Shape" -p "Building7";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.49666668474674225 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "Building8" -p "GrpAllBuildings";
	setAttr ".t" -type "double3" 12 -8.8817841970012523e-016 4 ;
	setAttr ".s" -type "double3" 2.5 1 2.5 ;
	setAttr ".rp" -type "double3" 0 -0.5 0 ;
	setAttr ".sp" -type "double3" 0 -0.5 0 ;
createNode mesh -n "Building8Shape" -p "Building8";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.49666668474674225 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "Building9" -p "GrpAllBuildings";
	setAttr ".t" -type "double3" 16 -8.8817841970012523e-016 4 ;
	setAttr ".s" -type "double3" 2.5 2 2.5 ;
	setAttr ".rp" -type "double3" 0 -0.5 0 ;
	setAttr ".sp" -type "double3" 0 -0.5 0 ;
createNode mesh -n "Building9Shape" -p "Building9";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.49666668474674225 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "Building10" -p "GrpAllBuildings";
	setAttr ".t" -type "double3" 4 0 0 ;
	setAttr ".s" -type "double3" 2.5 1 2.5 ;
	setAttr ".rp" -type "double3" 0 -0.5 0 ;
	setAttr ".sp" -type "double3" 0 -0.5 0 ;
createNode mesh -n "Building10Shape" -p "Building10";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.4999999888241291 0.37500002980232239 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "Building11" -p "GrpAllBuildings";
	setAttr ".t" -type "double3" -12 1.7763568394002505e-015 -8 ;
	setAttr ".s" -type "double3" 2.5 1 2.5 ;
	setAttr ".rp" -type "double3" 0 -0.5 0 ;
	setAttr ".sp" -type "double3" 0 -0.5 0 ;
createNode mesh -n "Building11Shape" -p "Building11";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.4999999888241291 0.37500002980232239 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "Building12" -p "GrpAllBuildings";
	setAttr ".t" -type "double3" -8 1.7763568394002505e-015 -8 ;
	setAttr ".s" -type "double3" 2.5 1 2.5 ;
	setAttr ".rp" -type "double3" 0 -0.5 0 ;
	setAttr ".sp" -type "double3" 0 -0.5 0 ;
createNode mesh -n "Building12Shape" -p "Building12";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.49666668474674225 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "Building13" -p "GrpAllBuildings";
	setAttr ".t" -type "double3" -4 1.7763568394002505e-015 -8 ;
	setAttr ".s" -type "double3" 2.5 1 2.5 ;
	setAttr ".rp" -type "double3" 0 -0.5 0 ;
	setAttr ".sp" -type "double3" 0 -0.5 0 ;
createNode mesh -n "Building13Shape" -p "Building13";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.49666668474674225 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "Building14" -p "GrpAllBuildings";
	setAttr ".t" -type "double3" 4 1.7763568394002505e-015 -8 ;
	setAttr ".s" -type "double3" 2.5 1 2.5 ;
	setAttr ".rp" -type "double3" 0 -0.5 0 ;
	setAttr ".sp" -type "double3" 0 -0.5 0 ;
createNode mesh -n "Building14Shape" -p "Building14";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.49666668474674225 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "Building15" -p "GrpAllBuildings";
	setAttr ".t" -type "double3" 8 1.7763568394002505e-015 -8 ;
	setAttr ".s" -type "double3" 2.5 1 2.5 ;
	setAttr ".rp" -type "double3" 0 -0.5 0 ;
	setAttr ".sp" -type "double3" 0 -0.5 0 ;
createNode mesh -n "Building15Shape" -p "Building15";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.4999999888241291 0.37500002980232239 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "Building16" -p "GrpAllBuildings";
	setAttr ".t" -type "double3" -12 2.6645352591003757e-015 -12 ;
	setAttr ".s" -type "double3" 2.5 1 2.5 ;
	setAttr ".rp" -type "double3" 0 -0.5 0 ;
	setAttr ".sp" -type "double3" 0 -0.5 0 ;
createNode mesh -n "Building16Shape" -p "Building16";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.49666668474674225 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "Building17" -p "GrpAllBuildings";
	setAttr ".t" -type "double3" -8 2.6645352591003757e-015 -12 ;
	setAttr ".s" -type "double3" 2.5 1 2.5 ;
	setAttr ".rp" -type "double3" 0 -0.5 0 ;
	setAttr ".sp" -type "double3" 0 -0.5 0 ;
createNode mesh -n "Building17Shape" -p "Building17";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.4999999888241291 0.37500002980232239 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "Building18" -p "GrpAllBuildings";
	setAttr ".t" -type "double3" -4 2.6645352591003757e-015 -12 ;
	setAttr ".s" -type "double3" 2.5 1 2.5 ;
	setAttr ".rp" -type "double3" 0 -0.5 0 ;
	setAttr ".sp" -type "double3" 0 -0.5 0 ;
createNode mesh -n "Building18Shape" -p "Building18";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.4999999888241291 0.37500002980232239 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "Building19" -p "GrpAllBuildings";
	setAttr ".t" -type "double3" 0 2.6645352591003757e-015 -12 ;
	setAttr ".s" -type "double3" 2.5 1 2.5 ;
	setAttr ".rp" -type "double3" 0 -0.5 0 ;
	setAttr ".sp" -type "double3" 0 -0.5 0 ;
createNode mesh -n "Building19Shape" -p "Building19";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.4999999888241291 0.37500002980232239 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "Building20" -p "GrpAllBuildings";
	setAttr ".t" -type "double3" 4 2.6645352591003757e-015 -12 ;
	setAttr ".s" -type "double3" 2.5 1 2.5 ;
	setAttr ".rp" -type "double3" 0 -0.5 0 ;
	setAttr ".sp" -type "double3" 0 -0.5 0 ;
createNode mesh -n "Building20Shape" -p "Building20";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.4999999888241291 0.37500002980232239 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "Building21" -p "GrpAllBuildings";
	setAttr ".t" -type "double3" 8 2.6645352591003757e-015 -12 ;
	setAttr ".s" -type "double3" 2.5 1 2.5 ;
	setAttr ".rp" -type "double3" 0 -0.5 0 ;
	setAttr ".sp" -type "double3" 0 -0.5 0 ;
createNode mesh -n "Building21Shape" -p "Building21";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.49666668474674225 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "Building22" -p "GrpAllBuildings";
	setAttr ".t" -type "double3" -12 3.5527136788005009e-015 -16 ;
	setAttr ".s" -type "double3" 2.5 1 2.5 ;
	setAttr ".rp" -type "double3" 0 -0.5 0 ;
	setAttr ".sp" -type "double3" 0 -0.5 0 ;
createNode mesh -n "Building22Shape" -p "Building22";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.4999999888241291 0.37500002980232239 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "Building23" -p "GrpAllBuildings";
	setAttr ".t" -type "double3" -8 3.5527136788005009e-015 -16 ;
	setAttr ".s" -type "double3" 2.5 1 2.5 ;
	setAttr ".rp" -type "double3" 0 -0.5 0 ;
	setAttr ".sp" -type "double3" 0 -0.5 0 ;
createNode mesh -n "Building23Shape" -p "Building23";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.4999999888241291 0.37500002980232239 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "Building24" -p "GrpAllBuildings";
	setAttr ".t" -type "double3" -4 3.5527136788005009e-015 -16 ;
	setAttr ".s" -type "double3" 2.5 2 2.5 ;
	setAttr ".rp" -type "double3" 0 -0.5 0 ;
	setAttr ".sp" -type "double3" 0 -0.5 0 ;
createNode mesh -n "Building24Shape" -p "Building24";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.49666668474674225 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "Building25" -p "GrpAllBuildings";
	setAttr ".t" -type "double3" 0 3.5527136788005009e-015 -16 ;
	setAttr ".s" -type "double3" 2.5 1 2.5 ;
	setAttr ".rp" -type "double3" 0 -0.5 0 ;
	setAttr ".sp" -type "double3" 0 -0.5 0 ;
createNode mesh -n "Building25Shape" -p "Building25";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.49666668474674225 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "Building26" -p "GrpAllBuildings";
	setAttr ".t" -type "double3" 4 3.5527136788005009e-015 -16 ;
	setAttr ".s" -type "double3" 2.5 1 2.5 ;
	setAttr ".rp" -type "double3" 0 -0.5 0 ;
	setAttr ".sp" -type "double3" 0 -0.5 0 ;
createNode mesh -n "Building26Shape" -p "Building26";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.4999999888241291 0.37500002980232239 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "Building27" -p "GrpAllBuildings";
	setAttr ".t" -type "double3" 8 3.5527136788005009e-015 -16 ;
	setAttr ".s" -type "double3" 2.5 1 2.5 ;
	setAttr ".rp" -type "double3" 0 -0.5 0 ;
	setAttr ".sp" -type "double3" 0 -0.5 0 ;
createNode mesh -n "Building27Shape" -p "Building27";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.4999999888241291 0.37500002980232239 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "Building28" -p "GrpAllBuildings";
	setAttr ".t" -type "double3" 16 3.5527136788005009e-015 -16 ;
	setAttr ".s" -type "double3" 2.5 1 2.5 ;
	setAttr ".rp" -type "double3" 0 -0.5 0 ;
	setAttr ".sp" -type "double3" 0 -0.5 0 ;
createNode mesh -n "Building28Shape" -p "Building28";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.4999999888241291 0.37500002980232239 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "Building29" -p "GrpAllBuildings";
	setAttr ".t" -type "double3" -12 -1.7763568394002505e-015 8 ;
	setAttr ".s" -type "double3" 2.5 2 2.5 ;
	setAttr ".rp" -type "double3" 0 -0.5 0 ;
	setAttr ".sp" -type "double3" 0 -0.5 0 ;
createNode mesh -n "Building29Shape" -p "Building29";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.49666668474674225 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "Building30" -p "GrpAllBuildings";
	setAttr ".t" -type "double3" -8 -1.7763568394002505e-015 8 ;
	setAttr ".s" -type "double3" 2.5 2 2.5 ;
	setAttr ".rp" -type "double3" 0 -0.5 0 ;
	setAttr ".sp" -type "double3" 0 -0.5 0 ;
createNode mesh -n "Building30Shape" -p "Building30";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.49666668474674225 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "Building31" -p "GrpAllBuildings";
	setAttr ".t" -type "double3" -4 -1.7763568394002505e-015 8 ;
	setAttr ".s" -type "double3" 2.5 1 2.5 ;
	setAttr ".rp" -type "double3" 0 -0.5 0 ;
	setAttr ".sp" -type "double3" 0 -0.5 0 ;
createNode mesh -n "Building31Shape" -p "Building31";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.4999999888241291 0.37500002980232239 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "Building32" -p "GrpAllBuildings";
	setAttr ".t" -type "double3" -12 -8.8817841970012523e-016 4 ;
	setAttr ".s" -type "double3" 2.5 1 2.5 ;
	setAttr ".rp" -type "double3" 0 -0.5 0 ;
	setAttr ".sp" -type "double3" 0 -0.5 0 ;
createNode mesh -n "Building32Shape" -p "Building32";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.4999999888241291 0.37500002980232239 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "Building33" -p "GrpAllBuildings";
	setAttr ".t" -type "double3" -12 0 0 ;
	setAttr ".s" -type "double3" 2.5 1 2.5 ;
	setAttr ".rp" -type "double3" 0 -0.5 0 ;
	setAttr ".sp" -type "double3" 0 -0.5 0 ;
createNode mesh -n "Building33Shape" -p "Building33";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.4999999888241291 0.37500002980232239 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "Building34" -p "GrpAllBuildings";
	setAttr ".t" -type "double3" -4 0 0 ;
	setAttr ".s" -type "double3" 2.5 1 2.5 ;
	setAttr ".rp" -type "double3" 0 -0.5 0 ;
	setAttr ".sp" -type "double3" 0 -0.5 0 ;
createNode mesh -n "Building34Shape" -p "Building34";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.4999999888241291 0.37500002980232239 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "Building35" -p "GrpAllBuildings";
	setAttr ".t" -type "double3" 4 -8.8817841970012523e-016 4 ;
	setAttr ".s" -type "double3" 2.5 1 2.5 ;
	setAttr ".rp" -type "double3" 0 -0.5 0 ;
	setAttr ".sp" -type "double3" 0 -0.5 0 ;
createNode mesh -n "Building35Shape" -p "Building35";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.4999999888241291 0.37500002980232239 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "Building36" -p "GrpAllBuildings";
	setAttr ".t" -type "double3" 16 0 0 ;
	setAttr ".s" -type "double3" 2.5 2 2.5 ;
	setAttr ".rp" -type "double3" 0 -0.5 0 ;
	setAttr ".sp" -type "double3" 0 -0.5 0 ;
createNode mesh -n "Building36Shape" -p "Building36";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.49666668474674225 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "Building37" -p "GrpAllBuildings";
	setAttr ".t" -type "double3" 16 8.8817841970012523e-016 -4 ;
	setAttr ".s" -type "double3" 2.5 1 2.5 ;
	setAttr ".rp" -type "double3" 0 -0.5 0 ;
	setAttr ".sp" -type "double3" 0 -0.5 0 ;
createNode mesh -n "Building37Shape" -p "Building37";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.4999999888241291 0.37500002980232239 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "Building38" -p "GrpAllBuildings";
	setAttr ".t" -type "double3" -8 -4.4408920985006262e-015 20 ;
	setAttr ".s" -type "double3" 2.5 1 2.5 ;
	setAttr ".rp" -type "double3" 0 -0.5 0 ;
	setAttr ".sp" -type "double3" 0 -0.5 0 ;
createNode mesh -n "Building38Shape" -p "Building38";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.4999999888241291 0.37500002980232239 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "Building39" -p "GrpAllBuildings";
	setAttr ".t" -type "double3" -12 -3.5527136788005009e-015 16 ;
	setAttr ".s" -type "double3" 2.5 1 2.5 ;
	setAttr ".rp" -type "double3" 0 -0.5 0 ;
	setAttr ".sp" -type "double3" 0 -0.5 0 ;
createNode mesh -n "Building39Shape" -p "Building39";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.4999999888241291 0.37500002980232239 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "Building40" -p "GrpAllBuildings";
	setAttr ".t" -type "double3" -8 -3.5527136788005009e-015 16 ;
	setAttr ".s" -type "double3" 2.5 2 2.5 ;
	setAttr ".rp" -type "double3" 0 -0.5 0 ;
	setAttr ".sp" -type "double3" 0 -0.5 0 ;
createNode mesh -n "Building40Shape" -p "Building40";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.49666668474674225 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "My_Unique_Terrain";
createNode mesh -n "My_Unique_TerrainShape" -p "My_Unique_Terrain";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "GrpCar";
createNode transform -n "car1" -p "GrpCar";
	setAttr ".t" -type "double3" 8 -5.3290705182007514e-015 26 ;
	setAttr ".r" -type "double3" 0 -90 0 ;
	setAttr ".rp" -type "double3" 1 0 -1 ;
	setAttr ".sp" -type "double3" 1 0 -1 ;
createNode mesh -n "car1Shape" -p "car1";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "car2" -p "GrpCar";
	setAttr ".t" -type "double3" -16 -4.4408920985006262e-015 20 ;
	setAttr ".rp" -type "double3" 1 0 -1 ;
	setAttr ".sp" -type "double3" 1 0 -1 ;
createNode mesh -n "car2Shape" -p "car2";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "car3" -p "GrpCar";
	setAttr ".t" -type "double3" 12 -2.6645352591003757e-015 14 ;
	setAttr ".r" -type "double3" 0 -90 0 ;
	setAttr ".rp" -type "double3" 1 0 -1 ;
	setAttr ".sp" -type "double3" 1 0 -1 ;
createNode mesh -n "car3Shape" -p "car3";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "car4" -p "GrpCar";
	setAttr ".t" -type "double3" -16 -8.8817841970012523e-016 4 ;
	setAttr ".rp" -type "double3" 1 0 -1 ;
	setAttr ".sp" -type "double3" 1 0 -1 ;
createNode mesh -n "car4Shape" -p "car4";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "car5" -p "GrpCar";
	setAttr ".t" -type "double3" 8 8.8817841970012523e-016 -2 ;
	setAttr ".r" -type "double3" 0 -90 0 ;
	setAttr ".rp" -type "double3" 1 0 -1 ;
	setAttr ".sp" -type "double3" 1 0 -1 ;
createNode mesh -n "car5Shape" -p "car5";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "car6" -p "GrpCar";
	setAttr ".t" -type "double3" -3.9999999999999996 4.4408920985006262e-015 -18 ;
	setAttr ".r" -type "double3" 0 -90 0 ;
	setAttr ".rp" -type "double3" 1 0 -1 ;
	setAttr ".sp" -type "double3" 1 0 -1 ;
createNode mesh -n "car6Shape" -p "car6";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mentalrayItemsList -s -n "mentalrayItemsList";
createNode mentalrayGlobals -s -n "mentalrayGlobals";
createNode mentalrayOptions -s -n "miDefaultOptions";
	addAttr -ci true -m -sn "stringOptions" -ln "stringOptions" -at "compound" -nc 
		3;
	addAttr -ci true -sn "name" -ln "name" -dt "string" -p "stringOptions";
	addAttr -ci true -sn "value" -ln "value" -dt "string" -p "stringOptions";
	addAttr -ci true -sn "type" -ln "type" -dt "string" -p "stringOptions";
	setAttr -s 48 ".stringOptions";
	setAttr ".stringOptions[0].name" -type "string" "rast motion factor";
	setAttr ".stringOptions[0].value" -type "string" "1.0";
	setAttr ".stringOptions[0].type" -type "string" "scalar";
	setAttr ".stringOptions[1].name" -type "string" "rast transparency depth";
	setAttr ".stringOptions[1].value" -type "string" "8";
	setAttr ".stringOptions[1].type" -type "string" "integer";
	setAttr ".stringOptions[2].name" -type "string" "rast useopacity";
	setAttr ".stringOptions[2].value" -type "string" "true";
	setAttr ".stringOptions[2].type" -type "string" "boolean";
	setAttr ".stringOptions[3].name" -type "string" "importon";
	setAttr ".stringOptions[3].value" -type "string" "false";
	setAttr ".stringOptions[3].type" -type "string" "boolean";
	setAttr ".stringOptions[4].name" -type "string" "importon density";
	setAttr ".stringOptions[4].value" -type "string" "1.0";
	setAttr ".stringOptions[4].type" -type "string" "scalar";
	setAttr ".stringOptions[5].name" -type "string" "importon merge";
	setAttr ".stringOptions[5].value" -type "string" "0.0";
	setAttr ".stringOptions[5].type" -type "string" "scalar";
	setAttr ".stringOptions[6].name" -type "string" "importon trace depth";
	setAttr ".stringOptions[6].value" -type "string" "0";
	setAttr ".stringOptions[6].type" -type "string" "integer";
	setAttr ".stringOptions[7].name" -type "string" "importon traverse";
	setAttr ".stringOptions[7].value" -type "string" "true";
	setAttr ".stringOptions[7].type" -type "string" "boolean";
	setAttr ".stringOptions[8].name" -type "string" "shadowmap pixel samples";
	setAttr ".stringOptions[8].value" -type "string" "3";
	setAttr ".stringOptions[8].type" -type "string" "integer";
	setAttr ".stringOptions[9].name" -type "string" "ambient occlusion";
	setAttr ".stringOptions[9].value" -type "string" "false";
	setAttr ".stringOptions[9].type" -type "string" "boolean";
	setAttr ".stringOptions[10].name" -type "string" "ambient occlusion rays";
	setAttr ".stringOptions[10].value" -type "string" "64";
	setAttr ".stringOptions[10].type" -type "string" "integer";
	setAttr ".stringOptions[11].name" -type "string" "ambient occlusion cache";
	setAttr ".stringOptions[11].value" -type "string" "false";
	setAttr ".stringOptions[11].type" -type "string" "boolean";
	setAttr ".stringOptions[12].name" -type "string" "ambient occlusion cache density";
	setAttr ".stringOptions[12].value" -type "string" "1.0";
	setAttr ".stringOptions[12].type" -type "string" "scalar";
	setAttr ".stringOptions[13].name" -type "string" "ambient occlusion cache points";
	setAttr ".stringOptions[13].value" -type "string" "64";
	setAttr ".stringOptions[13].type" -type "string" "integer";
	setAttr ".stringOptions[14].name" -type "string" "irradiance particles";
	setAttr ".stringOptions[14].value" -type "string" "false";
	setAttr ".stringOptions[14].type" -type "string" "boolean";
	setAttr ".stringOptions[15].name" -type "string" "irradiance particles rays";
	setAttr ".stringOptions[15].value" -type "string" "256";
	setAttr ".stringOptions[15].type" -type "string" "integer";
	setAttr ".stringOptions[16].name" -type "string" "irradiance particles interpolate";
	setAttr ".stringOptions[16].value" -type "string" "1";
	setAttr ".stringOptions[16].type" -type "string" "integer";
	setAttr ".stringOptions[17].name" -type "string" "irradiance particles interppoints";
	setAttr ".stringOptions[17].value" -type "string" "64";
	setAttr ".stringOptions[17].type" -type "string" "integer";
	setAttr ".stringOptions[18].name" -type "string" "irradiance particles indirect passes";
	setAttr ".stringOptions[18].value" -type "string" "0";
	setAttr ".stringOptions[18].type" -type "string" "integer";
	setAttr ".stringOptions[19].name" -type "string" "irradiance particles scale";
	setAttr ".stringOptions[19].value" -type "string" "1.0";
	setAttr ".stringOptions[19].type" -type "string" "scalar";
	setAttr ".stringOptions[20].name" -type "string" "irradiance particles env";
	setAttr ".stringOptions[20].value" -type "string" "true";
	setAttr ".stringOptions[20].type" -type "string" "boolean";
	setAttr ".stringOptions[21].name" -type "string" "irradiance particles env rays";
	setAttr ".stringOptions[21].value" -type "string" "256";
	setAttr ".stringOptions[21].type" -type "string" "integer";
	setAttr ".stringOptions[22].name" -type "string" "irradiance particles env scale";
	setAttr ".stringOptions[22].value" -type "string" "1";
	setAttr ".stringOptions[22].type" -type "string" "integer";
	setAttr ".stringOptions[23].name" -type "string" "irradiance particles rebuild";
	setAttr ".stringOptions[23].value" -type "string" "true";
	setAttr ".stringOptions[23].type" -type "string" "boolean";
	setAttr ".stringOptions[24].name" -type "string" "irradiance particles file";
	setAttr ".stringOptions[24].value" -type "string" "";
	setAttr ".stringOptions[24].type" -type "string" "string";
	setAttr ".stringOptions[25].name" -type "string" "geom displace motion factor";
	setAttr ".stringOptions[25].value" -type "string" "1.0";
	setAttr ".stringOptions[25].type" -type "string" "scalar";
	setAttr ".stringOptions[26].name" -type "string" "contrast all buffers";
	setAttr ".stringOptions[26].value" -type "string" "true";
	setAttr ".stringOptions[26].type" -type "string" "boolean";
	setAttr ".stringOptions[27].name" -type "string" "finalgather normal tolerance";
	setAttr ".stringOptions[27].value" -type "string" "25.842";
	setAttr ".stringOptions[27].type" -type "string" "scalar";
	setAttr ".stringOptions[28].name" -type "string" "trace camera clip";
	setAttr ".stringOptions[28].value" -type "string" "false";
	setAttr ".stringOptions[28].type" -type "string" "boolean";
	setAttr ".stringOptions[29].name" -type "string" "unified sampling";
	setAttr ".stringOptions[29].value" -type "string" "true";
	setAttr ".stringOptions[29].type" -type "string" "boolean";
	setAttr ".stringOptions[30].name" -type "string" "samples quality";
	setAttr ".stringOptions[30].value" -type "string" "0.25 0.25 0.25 0.25";
	setAttr ".stringOptions[30].type" -type "string" "color";
	setAttr ".stringOptions[31].name" -type "string" "samples min";
	setAttr ".stringOptions[31].value" -type "string" "1.0";
	setAttr ".stringOptions[31].type" -type "string" "scalar";
	setAttr ".stringOptions[32].name" -type "string" "samples max";
	setAttr ".stringOptions[32].value" -type "string" "100.0";
	setAttr ".stringOptions[32].type" -type "string" "scalar";
	setAttr ".stringOptions[33].name" -type "string" "samples error cutoff";
	setAttr ".stringOptions[33].value" -type "string" "0.0 0.0 0.0 0.0";
	setAttr ".stringOptions[33].type" -type "string" "color";
	setAttr ".stringOptions[34].name" -type "string" "samples per object";
	setAttr ".stringOptions[34].value" -type "string" "false";
	setAttr ".stringOptions[34].type" -type "string" "boolean";
	setAttr ".stringOptions[35].name" -type "string" "progressive";
	setAttr ".stringOptions[35].value" -type "string" "false";
	setAttr ".stringOptions[35].type" -type "string" "boolean";
	setAttr ".stringOptions[36].name" -type "string" "progressive max time";
	setAttr ".stringOptions[36].value" -type "string" "0";
	setAttr ".stringOptions[36].type" -type "string" "integer";
	setAttr ".stringOptions[37].name" -type "string" "progressive subsampling size";
	setAttr ".stringOptions[37].value" -type "string" "4";
	setAttr ".stringOptions[37].type" -type "string" "integer";
	setAttr ".stringOptions[38].name" -type "string" "iray";
	setAttr ".stringOptions[38].value" -type "string" "false";
	setAttr ".stringOptions[38].type" -type "string" "boolean";
	setAttr ".stringOptions[39].name" -type "string" "light relative scale";
	setAttr ".stringOptions[39].value" -type "string" "0.31831";
	setAttr ".stringOptions[39].type" -type "string" "scalar";
	setAttr ".stringOptions[40].name" -type "string" "trace camera motion vectors";
	setAttr ".stringOptions[40].value" -type "string" "false";
	setAttr ".stringOptions[40].type" -type "string" "boolean";
	setAttr ".stringOptions[41].name" -type "string" "ray differentials";
	setAttr ".stringOptions[41].value" -type "string" "true";
	setAttr ".stringOptions[41].type" -type "string" "boolean";
	setAttr ".stringOptions[42].name" -type "string" "environment lighting mode";
	setAttr ".stringOptions[42].value" -type "string" "off";
	setAttr ".stringOptions[42].type" -type "string" "string";
	setAttr ".stringOptions[43].name" -type "string" "environment lighting quality";
	setAttr ".stringOptions[43].value" -type "string" "0.2";
	setAttr ".stringOptions[43].type" -type "string" "scalar";
	setAttr ".stringOptions[44].name" -type "string" "environment lighting shadow";
	setAttr ".stringOptions[44].value" -type "string" "transparent";
	setAttr ".stringOptions[44].type" -type "string" "string";
	setAttr ".stringOptions[45].name" -type "string" "environment lighting resolution";
	setAttr ".stringOptions[45].value" -type "string" "512";
	setAttr ".stringOptions[45].type" -type "string" "integer";
	setAttr ".stringOptions[46].name" -type "string" "environment lighting shader samples";
	setAttr ".stringOptions[46].value" -type "string" "2";
	setAttr ".stringOptions[46].type" -type "string" "integer";
	setAttr ".stringOptions[47].name" -type "string" "environment lighting scale";
	setAttr ".stringOptions[47].value" -type "string" "1.0 1.0 1.0";
	setAttr ".stringOptions[47].type" -type "string" "color";
createNode mentalrayFramebuffer -s -n "miDefaultFramebuffer";
createNode lightLinker -s -n "lightLinker1";
	setAttr -s 9 ".lnk";
	setAttr -s 9 ".slnk";
createNode displayLayerManager -n "layerManager";
createNode displayLayer -n "defaultLayer";
createNode renderLayerManager -n "renderLayerManager";
createNode renderLayer -n "defaultRenderLayer";
	setAttr ".g" yes;
createNode shadingEngine -n "RedShaderSG";
	setAttr ".ihi" 0;
	setAttr -s 7 ".dsm";
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo1";
createNode lambert -n "RedShader";
	setAttr ".c" -type "float3" 1 0 0 ;
createNode shadingEngine -n "OrangeShaderSG";
	setAttr ".ihi" 0;
	setAttr -s 3 ".dsm";
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo2";
createNode lambert -n "OrangeShader";
	setAttr ".c" -type "float3" 1 0.67000002 0 ;
createNode shadingEngine -n "GreenShaderSG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo3";
createNode lambert -n "GreenShader";
	setAttr ".c" -type "float3" 0 1 0 ;
createNode lambert -n "StraightRoadShader";
createNode file -n "file1";
	setAttr ".ftn" -type "string" "C:/Users/Sim/Desktop/City_Builder//sourceimages/StraightRoadTexture.png";
createNode shadingEngine -n "StraightRoadShaderSG";
	setAttr ".ihi" 0;
	setAttr -s 51 ".dsm";
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo4";
createNode lambert -n "CurveRoadShader";
createNode file -n "file2";
	setAttr ".ftn" -type "string" "C:/Users/Sim/Desktop/City_Builder//sourceimages/CurveRoadTexture.png";
createNode shadingEngine -n "CurveRoadShaderSG";
	setAttr ".ihi" 0;
	setAttr -s 5 ".dsm";
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo5";
createNode lambert -n "CrossJunctionShader";
createNode file -n "file3";
	setAttr ".ftn" -type "string" "C:/Users/Sim/Desktop/City_Builder//sourceimages/CrossJunctionTexture.png";
createNode shadingEngine -n "CrossJunctionShaderSG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo6";
createNode lambert -n "TJunctionShader";
createNode file -n "file4";
	setAttr ".ftn" -type "string" "C:/Users/Sim/Desktop/City_Builder//sourceimages/T_JunctionTexture.png";
createNode shadingEngine -n "TJunctionShaderSG";
	setAttr ".ihi" 0;
	setAttr -s 6 ".dsm";
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo7";
createNode polyPlane -n "polyPlane2";
	setAttr ".w" 4;
	setAttr ".h" 4;
	setAttr ".sw" 3;
	setAttr ".sh" 1;
createNode polyExtrudeFace -n "polyExtrudeFace1";
	setAttr ".ics" -type "componentList" 2 "f[0]" "f[2]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".rs" 49007;
	setAttr ".lt" -type "double3" 0 0 0.15 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -2 -4.4408920985006262e-016 -2 ;
	setAttr ".cbx" -type "double3" 2 4.4408920985006262e-016 2 ;
createNode polyTweak -n "polyTweak1";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk";
	setAttr ".tk[1]" -type "float3" -0.83333325 0 0 ;
	setAttr ".tk[2]" -type "float3" 0.83333343 0 0 ;
	setAttr ".tk[5]" -type "float3" -0.83333325 0 0 ;
	setAttr ".tk[6]" -type "float3" 0.83333343 0 0 ;
createNode transformGeometry -n "transformGeometry1";
	setAttr ".txf" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0.01 0 1;
createNode polyPlane -n "polyPlane3";
	setAttr ".w" 4;
	setAttr ".h" 4;
	setAttr ".sw" 3;
	setAttr ".sh" 1;
createNode polyExtrudeFace -n "polyExtrudeFace2";
	setAttr ".ics" -type "componentList" 2 "f[0]" "f[2]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".rs" 63336;
	setAttr ".lt" -type "double3" 0 0 0.15 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -2 -4.4408920985006262e-016 -2 ;
	setAttr ".cbx" -type "double3" 2 4.4408920985006262e-016 2 ;
createNode polyTweak -n "polyTweak2";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk";
	setAttr ".tk[1]" -type "float3" -0.83333325 0 0 ;
	setAttr ".tk[2]" -type "float3" 0.83333343 0 0 ;
	setAttr ".tk[5]" -type "float3" -0.83333325 0 0 ;
	setAttr ".tk[6]" -type "float3" 0.83333343 0 0 ;
createNode transformGeometry -n "transformGeometry2";
	setAttr ".txf" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0.01 0 1;
createNode polyPlane -n "polyPlane5";
	setAttr ".w" 4;
	setAttr ".h" 4;
	setAttr ".sw" 3;
	setAttr ".sh" 1;
createNode polyExtrudeFace -n "polyExtrudeFace4";
	setAttr ".ics" -type "componentList" 2 "f[0]" "f[2]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".rs" 51396;
	setAttr ".lt" -type "double3" 0 0 0.15 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -2 -4.4408920985006262e-016 -2 ;
	setAttr ".cbx" -type "double3" 2 4.4408920985006262e-016 2 ;
createNode polyTweak -n "polyTweak4";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk";
	setAttr ".tk[1]" -type "float3" -0.83333325 0 0 ;
	setAttr ".tk[2]" -type "float3" 0.83333343 0 0 ;
	setAttr ".tk[5]" -type "float3" -0.83333325 0 0 ;
	setAttr ".tk[6]" -type "float3" 0.83333343 0 0 ;
createNode transformGeometry -n "transformGeometry4";
	setAttr ".txf" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0.01 0 1;
createNode polyPlane -n "polyPlane6";
	setAttr ".w" 4;
	setAttr ".h" 4;
	setAttr ".sw" 3;
	setAttr ".sh" 1;
createNode polyExtrudeFace -n "polyExtrudeFace5";
	setAttr ".ics" -type "componentList" 2 "f[0]" "f[2]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".rs" 43985;
	setAttr ".lt" -type "double3" 0 0 0.15 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -2 -4.4408920985006262e-016 -2 ;
	setAttr ".cbx" -type "double3" 2 4.4408920985006262e-016 2 ;
createNode polyTweak -n "polyTweak5";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk";
	setAttr ".tk[1]" -type "float3" -0.83333325 0 0 ;
	setAttr ".tk[2]" -type "float3" 0.83333343 0 0 ;
	setAttr ".tk[5]" -type "float3" -0.83333325 0 0 ;
	setAttr ".tk[6]" -type "float3" 0.83333343 0 0 ;
createNode transformGeometry -n "transformGeometry5";
	setAttr ".txf" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0.01 0 1;
createNode polyPlane -n "polyPlane7";
	setAttr ".w" 4;
	setAttr ".h" 4;
	setAttr ".sw" 3;
	setAttr ".sh" 1;
createNode polyExtrudeFace -n "polyExtrudeFace6";
	setAttr ".ics" -type "componentList" 2 "f[0]" "f[2]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".rs" 51981;
	setAttr ".lt" -type "double3" 0 0 0.15 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -2 -4.4408920985006262e-016 -2 ;
	setAttr ".cbx" -type "double3" 2 4.4408920985006262e-016 2 ;
createNode polyTweak -n "polyTweak6";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk";
	setAttr ".tk[1]" -type "float3" -0.83333325 0 0 ;
	setAttr ".tk[2]" -type "float3" 0.83333343 0 0 ;
	setAttr ".tk[5]" -type "float3" -0.83333325 0 0 ;
	setAttr ".tk[6]" -type "float3" 0.83333343 0 0 ;
createNode transformGeometry -n "transformGeometry6";
	setAttr ".txf" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0.01 0 1;
createNode polyPlane -n "polyPlane8";
	setAttr ".w" 4;
	setAttr ".h" 4;
	setAttr ".sw" 3;
	setAttr ".sh" 1;
createNode polyExtrudeFace -n "polyExtrudeFace7";
	setAttr ".ics" -type "componentList" 2 "f[0]" "f[2]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".rs" 58425;
	setAttr ".lt" -type "double3" 0 0 0.15 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -2 -4.4408920985006262e-016 -2 ;
	setAttr ".cbx" -type "double3" 2 4.4408920985006262e-016 2 ;
createNode polyTweak -n "polyTweak7";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk";
	setAttr ".tk[1]" -type "float3" -0.83333325 0 0 ;
	setAttr ".tk[2]" -type "float3" 0.83333343 0 0 ;
	setAttr ".tk[5]" -type "float3" -0.83333325 0 0 ;
	setAttr ".tk[6]" -type "float3" 0.83333343 0 0 ;
createNode transformGeometry -n "transformGeometry7";
	setAttr ".txf" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0.01 0 1;
createNode polyPlane -n "polyPlane9";
	setAttr ".w" 4;
	setAttr ".h" 4;
	setAttr ".sw" 3;
	setAttr ".sh" 1;
createNode polyExtrudeFace -n "polyExtrudeFace8";
	setAttr ".ics" -type "componentList" 2 "f[0]" "f[2]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".rs" 55758;
	setAttr ".lt" -type "double3" 0 0 0.15 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -2 -4.4408920985006262e-016 -2 ;
	setAttr ".cbx" -type "double3" 2 4.4408920985006262e-016 2 ;
createNode polyTweak -n "polyTweak8";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk";
	setAttr ".tk[1]" -type "float3" -0.83333325 0 0 ;
	setAttr ".tk[2]" -type "float3" 0.83333343 0 0 ;
	setAttr ".tk[5]" -type "float3" -0.83333325 0 0 ;
	setAttr ".tk[6]" -type "float3" 0.83333343 0 0 ;
createNode transformGeometry -n "transformGeometry8";
	setAttr ".txf" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0.01 0 1;
createNode polyPlane -n "polyPlane10";
	setAttr ".w" 4;
	setAttr ".h" 4;
	setAttr ".sw" 3;
	setAttr ".sh" 1;
createNode polyExtrudeFace -n "polyExtrudeFace9";
	setAttr ".ics" -type "componentList" 2 "f[0]" "f[2]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".rs" 57356;
	setAttr ".lt" -type "double3" 0 0 0.15 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -2 -4.4408920985006262e-016 -2 ;
	setAttr ".cbx" -type "double3" 2 4.4408920985006262e-016 2 ;
createNode polyTweak -n "polyTweak9";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk";
	setAttr ".tk[1]" -type "float3" -0.83333325 0 0 ;
	setAttr ".tk[2]" -type "float3" 0.83333343 0 0 ;
	setAttr ".tk[5]" -type "float3" -0.83333325 0 0 ;
	setAttr ".tk[6]" -type "float3" 0.83333343 0 0 ;
createNode transformGeometry -n "transformGeometry9";
	setAttr ".txf" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0.01 0 1;
createNode polyPlane -n "polyPlane11";
	setAttr ".w" 4;
	setAttr ".h" 4;
	setAttr ".sw" 3;
	setAttr ".sh" 1;
createNode polyExtrudeFace -n "polyExtrudeFace10";
	setAttr ".ics" -type "componentList" 2 "f[0]" "f[2]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".rs" 45703;
	setAttr ".lt" -type "double3" 0 0 0.15 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -2 -4.4408920985006262e-016 -2 ;
	setAttr ".cbx" -type "double3" 2 4.4408920985006262e-016 2 ;
createNode polyTweak -n "polyTweak10";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk";
	setAttr ".tk[1]" -type "float3" -0.83333325 0 0 ;
	setAttr ".tk[2]" -type "float3" 0.83333343 0 0 ;
	setAttr ".tk[5]" -type "float3" -0.83333325 0 0 ;
	setAttr ".tk[6]" -type "float3" 0.83333343 0 0 ;
createNode transformGeometry -n "transformGeometry10";
	setAttr ".txf" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0.01 0 1;
createNode polyPlane -n "polyPlane12";
	setAttr ".w" 4;
	setAttr ".h" 4;
	setAttr ".sw" 3;
	setAttr ".sh" 1;
createNode polyExtrudeFace -n "polyExtrudeFace11";
	setAttr ".ics" -type "componentList" 2 "f[0]" "f[2]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".rs" 42663;
	setAttr ".lt" -type "double3" 0 0 0.15 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -2 -4.4408920985006262e-016 -2 ;
	setAttr ".cbx" -type "double3" 2 4.4408920985006262e-016 2 ;
createNode polyTweak -n "polyTweak11";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk";
	setAttr ".tk[1]" -type "float3" -0.83333325 0 0 ;
	setAttr ".tk[2]" -type "float3" 0.83333343 0 0 ;
	setAttr ".tk[5]" -type "float3" -0.83333325 0 0 ;
	setAttr ".tk[6]" -type "float3" 0.83333343 0 0 ;
createNode transformGeometry -n "transformGeometry11";
	setAttr ".txf" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0.01 0 1;
createNode polyPlane -n "polyPlane13";
	setAttr ".w" 4;
	setAttr ".h" 4;
	setAttr ".sw" 3;
	setAttr ".sh" 1;
createNode polyExtrudeFace -n "polyExtrudeFace12";
	setAttr ".ics" -type "componentList" 2 "f[0]" "f[2]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".rs" 60108;
	setAttr ".lt" -type "double3" 0 0 0.15 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -2 -4.4408920985006262e-016 -2 ;
	setAttr ".cbx" -type "double3" 2 4.4408920985006262e-016 2 ;
createNode polyTweak -n "polyTweak12";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk";
	setAttr ".tk[1]" -type "float3" -0.83333325 0 0 ;
	setAttr ".tk[2]" -type "float3" 0.83333343 0 0 ;
	setAttr ".tk[5]" -type "float3" -0.83333325 0 0 ;
	setAttr ".tk[6]" -type "float3" 0.83333343 0 0 ;
createNode transformGeometry -n "transformGeometry12";
	setAttr ".txf" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0.01 0 1;
createNode polyPlane -n "polyPlane15";
	setAttr ".w" 4;
	setAttr ".h" 4;
	setAttr ".sw" 3;
	setAttr ".sh" 1;
createNode polyExtrudeFace -n "polyExtrudeFace14";
	setAttr ".ics" -type "componentList" 2 "f[0]" "f[2]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".rs" 35578;
	setAttr ".lt" -type "double3" 0 0 0.15 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -2 -4.4408920985006262e-016 -2 ;
	setAttr ".cbx" -type "double3" 2 4.4408920985006262e-016 2 ;
createNode polyTweak -n "polyTweak14";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk";
	setAttr ".tk[1]" -type "float3" -0.83333325 0 0 ;
	setAttr ".tk[2]" -type "float3" 0.83333343 0 0 ;
	setAttr ".tk[5]" -type "float3" -0.83333325 0 0 ;
	setAttr ".tk[6]" -type "float3" 0.83333343 0 0 ;
createNode transformGeometry -n "transformGeometry14";
	setAttr ".txf" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0.01 0 1;
createNode polyPlane -n "polyPlane16";
	setAttr ".w" 4;
	setAttr ".h" 4;
	setAttr ".sw" 3;
	setAttr ".sh" 1;
createNode polyExtrudeFace -n "polyExtrudeFace15";
	setAttr ".ics" -type "componentList" 2 "f[0]" "f[2]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".rs" 47736;
	setAttr ".lt" -type "double3" 0 0 0.15 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -2 -4.4408920985006262e-016 -2 ;
	setAttr ".cbx" -type "double3" 2 4.4408920985006262e-016 2 ;
createNode polyTweak -n "polyTweak15";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk";
	setAttr ".tk[1]" -type "float3" -0.83333325 0 0 ;
	setAttr ".tk[2]" -type "float3" 0.83333343 0 0 ;
	setAttr ".tk[5]" -type "float3" -0.83333325 0 0 ;
	setAttr ".tk[6]" -type "float3" 0.83333343 0 0 ;
createNode transformGeometry -n "transformGeometry15";
	setAttr ".txf" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0.01 0 1;
createNode polyPlane -n "polyPlane17";
	setAttr ".w" 4;
	setAttr ".h" 4;
	setAttr ".sw" 3;
	setAttr ".sh" 1;
createNode polyExtrudeFace -n "polyExtrudeFace16";
	setAttr ".ics" -type "componentList" 2 "f[0]" "f[2]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".rs" 59172;
	setAttr ".lt" -type "double3" 0 0 0.15 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -2 -4.4408920985006262e-016 -2 ;
	setAttr ".cbx" -type "double3" 2 4.4408920985006262e-016 2 ;
createNode polyTweak -n "polyTweak16";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk";
	setAttr ".tk[1]" -type "float3" -0.83333325 0 0 ;
	setAttr ".tk[2]" -type "float3" 0.83333343 0 0 ;
	setAttr ".tk[5]" -type "float3" -0.83333325 0 0 ;
	setAttr ".tk[6]" -type "float3" 0.83333343 0 0 ;
createNode transformGeometry -n "transformGeometry16";
	setAttr ".txf" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0.01 0 1;
createNode polyPlane -n "polyPlane19";
	setAttr ".w" 4;
	setAttr ".h" 4;
	setAttr ".sw" 3;
	setAttr ".sh" 1;
createNode polyExtrudeFace -n "polyExtrudeFace18";
	setAttr ".ics" -type "componentList" 2 "f[0]" "f[2]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".rs" 45272;
	setAttr ".lt" -type "double3" 0 0 0.15 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -2 -4.4408920985006262e-016 -2 ;
	setAttr ".cbx" -type "double3" 2 4.4408920985006262e-016 2 ;
createNode polyTweak -n "polyTweak18";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk";
	setAttr ".tk[1]" -type "float3" -0.83333325 0 0 ;
	setAttr ".tk[2]" -type "float3" 0.83333343 0 0 ;
	setAttr ".tk[5]" -type "float3" -0.83333325 0 0 ;
	setAttr ".tk[6]" -type "float3" 0.83333343 0 0 ;
createNode transformGeometry -n "transformGeometry18";
	setAttr ".txf" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0.01 0 1;
createNode polyPlane -n "polyPlane20";
	setAttr ".w" 4;
	setAttr ".h" 4;
	setAttr ".sw" 3;
	setAttr ".sh" 1;
createNode polyExtrudeFace -n "polyExtrudeFace19";
	setAttr ".ics" -type "componentList" 2 "f[0]" "f[2]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".rs" 33604;
	setAttr ".lt" -type "double3" 0 0 0.15 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -2 -4.4408920985006262e-016 -2 ;
	setAttr ".cbx" -type "double3" 2 4.4408920985006262e-016 2 ;
createNode polyTweak -n "polyTweak19";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk";
	setAttr ".tk[1]" -type "float3" -0.83333325 0 0 ;
	setAttr ".tk[2]" -type "float3" 0.83333343 0 0 ;
	setAttr ".tk[5]" -type "float3" -0.83333325 0 0 ;
	setAttr ".tk[6]" -type "float3" 0.83333343 0 0 ;
createNode transformGeometry -n "transformGeometry19";
	setAttr ".txf" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0.01 0 1;
createNode polyPlane -n "polyPlane21";
	setAttr ".w" 4;
	setAttr ".h" 4;
	setAttr ".sw" 3;
	setAttr ".sh" 1;
createNode polySplitRing -n "polySplitRing1";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[1]" "e[3]" "e[5:6]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".stp" 2;
	setAttr ".p[0]"  0 0 1;
createNode polyTweak -n "polyTweak20";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk";
	setAttr ".tk[1]" -type "float3" -0.83333325 0 0 ;
	setAttr ".tk[2]" -type "float3" 0.83333343 0 0 ;
	setAttr ".tk[5]" -type "float3" -0.83333325 0 0 ;
	setAttr ".tk[6]" -type "float3" 0.83333343 0 0 ;
createNode polyExtrudeFace -n "polyExtrudeFace20";
	setAttr ".ics" -type "componentList" 3 "f[0]" "f[2]" "f[5:8]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".rs" 52025;
	setAttr ".lt" -type "double3" 0 0 0.15 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -2 -4.4408920985006262e-016 -2 ;
	setAttr ".cbx" -type "double3" 2 4.4408920985006262e-016 2 ;
createNode polyTweak -n "polyTweak21";
	setAttr ".uopa" yes;
	setAttr -s 8 ".tk[8:15]" -type "float3"  0 0 -0.83333313 0 0 -0.83333313
		 0 0 -0.83333313 0 0 -0.83333313 0 0 0.83333343 0 0 0.83333343 0 0 0.83333343 0 0
		 0.83333343;
createNode transformGeometry -n "transformGeometry20";
	setAttr ".txf" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0.01 0 1;
createNode polyPlane -n "polyPlane22";
	setAttr ".w" 4;
	setAttr ".h" 4;
	setAttr ".sw" 3;
	setAttr ".sh" 1;
createNode polySplitRing -n "polySplitRing2";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[1]" "e[3]" "e[5:6]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".stp" 2;
	setAttr ".p[0]"  0 0 1;
createNode polyTweak -n "polyTweak22";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk";
	setAttr ".tk[1]" -type "float3" -0.83333325 0 0 ;
	setAttr ".tk[2]" -type "float3" 0.83333343 0 0 ;
	setAttr ".tk[5]" -type "float3" -0.83333325 0 0 ;
	setAttr ".tk[6]" -type "float3" 0.83333343 0 0 ;
createNode polyExtrudeFace -n "polyExtrudeFace21";
	setAttr ".ics" -type "componentList" 3 "f[0]" "f[2]" "f[5:8]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".rs" 47741;
	setAttr ".lt" -type "double3" 0 0 0.15 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -2 -4.4408920985006262e-016 -2 ;
	setAttr ".cbx" -type "double3" 2 4.4408920985006262e-016 2 ;
createNode polyTweak -n "polyTweak23";
	setAttr ".uopa" yes;
	setAttr -s 8 ".tk[8:15]" -type "float3"  0 0 -0.83333313 0 0 -0.83333313
		 0 0 -0.83333313 0 0 -0.83333313 0 0 0.83333343 0 0 0.83333343 0 0 0.83333343 0 0
		 0.83333343;
createNode transformGeometry -n "transformGeometry21";
	setAttr ".txf" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0.01 0 1;
createNode polyPlane -n "polyPlane24";
	setAttr ".w" 4;
	setAttr ".h" 4;
	setAttr ".sw" 3;
	setAttr ".sh" 1;
createNode polyExtrudeFace -n "polyExtrudeFace23";
	setAttr ".ics" -type "componentList" 2 "f[0]" "f[2]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".rs" 33482;
	setAttr ".lt" -type "double3" 0 0 0.15 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -2 -4.4408920985006262e-016 -2 ;
	setAttr ".cbx" -type "double3" 2 4.4408920985006262e-016 2 ;
createNode polyTweak -n "polyTweak26";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk";
	setAttr ".tk[1]" -type "float3" -0.83333325 0 0 ;
	setAttr ".tk[2]" -type "float3" 0.83333343 0 0 ;
	setAttr ".tk[5]" -type "float3" -0.83333325 0 0 ;
	setAttr ".tk[6]" -type "float3" 0.83333343 0 0 ;
createNode transformGeometry -n "transformGeometry23";
	setAttr ".txf" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0.01 0 1;
createNode polyPlane -n "polyPlane25";
	setAttr ".w" 4;
	setAttr ".h" 4;
	setAttr ".sw" 3;
	setAttr ".sh" 1;
createNode polyExtrudeFace -n "polyExtrudeFace24";
	setAttr ".ics" -type "componentList" 2 "f[0]" "f[2]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".rs" 62036;
	setAttr ".lt" -type "double3" 0 0 0.15 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -2 -4.4408920985006262e-016 -2 ;
	setAttr ".cbx" -type "double3" 2 4.4408920985006262e-016 2 ;
createNode polyTweak -n "polyTweak27";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk";
	setAttr ".tk[1]" -type "float3" -0.83333325 0 0 ;
	setAttr ".tk[2]" -type "float3" 0.83333343 0 0 ;
	setAttr ".tk[5]" -type "float3" -0.83333325 0 0 ;
	setAttr ".tk[6]" -type "float3" 0.83333343 0 0 ;
createNode transformGeometry -n "transformGeometry24";
	setAttr ".txf" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0.01 0 1;
createNode polyPlane -n "polyPlane26";
	setAttr ".w" 4;
	setAttr ".h" 4;
	setAttr ".sw" 3;
	setAttr ".sh" 1;
createNode polyExtrudeFace -n "polyExtrudeFace25";
	setAttr ".ics" -type "componentList" 2 "f[0]" "f[2]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".rs" 63292;
	setAttr ".lt" -type "double3" 0 0 0.15 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -2 -4.4408920985006262e-016 -2 ;
	setAttr ".cbx" -type "double3" 2 4.4408920985006262e-016 2 ;
createNode polyTweak -n "polyTweak28";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk";
	setAttr ".tk[1]" -type "float3" -0.83333325 0 0 ;
	setAttr ".tk[2]" -type "float3" 0.83333343 0 0 ;
	setAttr ".tk[5]" -type "float3" -0.83333325 0 0 ;
	setAttr ".tk[6]" -type "float3" 0.83333343 0 0 ;
createNode transformGeometry -n "transformGeometry25";
	setAttr ".txf" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0.01 0 1;
createNode polyPlane -n "polyPlane27";
	setAttr ".w" 4;
	setAttr ".h" 4;
	setAttr ".sw" 3;
	setAttr ".sh" 1;
createNode polyExtrudeFace -n "polyExtrudeFace26";
	setAttr ".ics" -type "componentList" 2 "f[0]" "f[2]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".rs" 57832;
	setAttr ".lt" -type "double3" 0 0 0.15 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -2 -4.4408920985006262e-016 -2 ;
	setAttr ".cbx" -type "double3" 2 4.4408920985006262e-016 2 ;
createNode polyTweak -n "polyTweak29";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk";
	setAttr ".tk[1]" -type "float3" -0.83333325 0 0 ;
	setAttr ".tk[2]" -type "float3" 0.83333343 0 0 ;
	setAttr ".tk[5]" -type "float3" -0.83333325 0 0 ;
	setAttr ".tk[6]" -type "float3" 0.83333343 0 0 ;
createNode transformGeometry -n "transformGeometry26";
	setAttr ".txf" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0.01 0 1;
createNode polyPlane -n "polyPlane28";
	setAttr ".w" 4;
	setAttr ".h" 4;
	setAttr ".sw" 3;
	setAttr ".sh" 1;
createNode polyExtrudeFace -n "polyExtrudeFace27";
	setAttr ".ics" -type "componentList" 2 "f[0]" "f[2]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".rs" 58228;
	setAttr ".lt" -type "double3" 0 0 0.15 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -2 -4.4408920985006262e-016 -2 ;
	setAttr ".cbx" -type "double3" 2 4.4408920985006262e-016 2 ;
createNode polyTweak -n "polyTweak30";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk";
	setAttr ".tk[1]" -type "float3" -0.83333325 0 0 ;
	setAttr ".tk[2]" -type "float3" 0.83333343 0 0 ;
	setAttr ".tk[5]" -type "float3" -0.83333325 0 0 ;
	setAttr ".tk[6]" -type "float3" 0.83333343 0 0 ;
createNode transformGeometry -n "transformGeometry27";
	setAttr ".txf" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0.01 0 1;
createNode polyPlane -n "polyPlane29";
	setAttr ".w" 4;
	setAttr ".h" 4;
	setAttr ".sw" 3;
	setAttr ".sh" 1;
createNode polyExtrudeFace -n "polyExtrudeFace28";
	setAttr ".ics" -type "componentList" 2 "f[0]" "f[2]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".rs" 38274;
	setAttr ".lt" -type "double3" 0 0 0.15 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -2 -4.4408920985006262e-016 -2 ;
	setAttr ".cbx" -type "double3" 2 4.4408920985006262e-016 2 ;
createNode polyTweak -n "polyTweak31";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk";
	setAttr ".tk[1]" -type "float3" -0.83333325 0 0 ;
	setAttr ".tk[2]" -type "float3" 0.83333343 0 0 ;
	setAttr ".tk[5]" -type "float3" -0.83333325 0 0 ;
	setAttr ".tk[6]" -type "float3" 0.83333343 0 0 ;
createNode transformGeometry -n "transformGeometry28";
	setAttr ".txf" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0.01 0 1;
createNode polyPlane -n "polyPlane30";
	setAttr ".w" 4;
	setAttr ".h" 4;
	setAttr ".sw" 3;
	setAttr ".sh" 1;
createNode polyExtrudeFace -n "polyExtrudeFace29";
	setAttr ".ics" -type "componentList" 2 "f[0]" "f[2]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".rs" 51676;
	setAttr ".lt" -type "double3" 0 0 0.15 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -2 -4.4408920985006262e-016 -2 ;
	setAttr ".cbx" -type "double3" 2 4.4408920985006262e-016 2 ;
createNode polyTweak -n "polyTweak32";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk";
	setAttr ".tk[1]" -type "float3" -0.83333325 0 0 ;
	setAttr ".tk[2]" -type "float3" 0.83333343 0 0 ;
	setAttr ".tk[5]" -type "float3" -0.83333325 0 0 ;
	setAttr ".tk[6]" -type "float3" 0.83333343 0 0 ;
createNode transformGeometry -n "transformGeometry29";
	setAttr ".txf" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0.01 0 1;
createNode polyPlane -n "polyPlane31";
	setAttr ".w" 4;
	setAttr ".h" 4;
	setAttr ".sw" 3;
	setAttr ".sh" 1;
createNode polyExtrudeFace -n "polyExtrudeFace30";
	setAttr ".ics" -type "componentList" 2 "f[0]" "f[2]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".rs" 47371;
	setAttr ".lt" -type "double3" 0 0 0.15 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -2 -4.4408920985006262e-016 -2 ;
	setAttr ".cbx" -type "double3" 2 4.4408920985006262e-016 2 ;
createNode polyTweak -n "polyTweak33";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk";
	setAttr ".tk[1]" -type "float3" -0.83333325 0 0 ;
	setAttr ".tk[2]" -type "float3" 0.83333343 0 0 ;
	setAttr ".tk[5]" -type "float3" -0.83333325 0 0 ;
	setAttr ".tk[6]" -type "float3" 0.83333343 0 0 ;
createNode transformGeometry -n "transformGeometry30";
	setAttr ".txf" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0.01 0 1;
createNode polyPlane -n "polyPlane32";
	setAttr ".w" 4;
	setAttr ".h" 4;
	setAttr ".sw" 3;
	setAttr ".sh" 1;
createNode polyExtrudeFace -n "polyExtrudeFace31";
	setAttr ".ics" -type "componentList" 2 "f[0]" "f[2]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".rs" 58927;
	setAttr ".lt" -type "double3" 0 0 0.15 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -2 -4.4408920985006262e-016 -2 ;
	setAttr ".cbx" -type "double3" 2 4.4408920985006262e-016 2 ;
createNode polyTweak -n "polyTweak34";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk";
	setAttr ".tk[1]" -type "float3" -0.83333325 0 0 ;
	setAttr ".tk[2]" -type "float3" 0.83333343 0 0 ;
	setAttr ".tk[5]" -type "float3" -0.83333325 0 0 ;
	setAttr ".tk[6]" -type "float3" 0.83333343 0 0 ;
createNode transformGeometry -n "transformGeometry31";
	setAttr ".txf" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0.01 0 1;
createNode polyPlane -n "polyPlane33";
	setAttr ".w" 4;
	setAttr ".h" 4;
	setAttr ".sw" 3;
	setAttr ".sh" 1;
createNode polyExtrudeFace -n "polyExtrudeFace32";
	setAttr ".ics" -type "componentList" 2 "f[0]" "f[2]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".rs" 51980;
	setAttr ".lt" -type "double3" 0 0 0.15 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -2 -4.4408920985006262e-016 -2 ;
	setAttr ".cbx" -type "double3" 2 4.4408920985006262e-016 2 ;
createNode polyTweak -n "polyTweak35";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk";
	setAttr ".tk[1]" -type "float3" -0.83333325 0 0 ;
	setAttr ".tk[2]" -type "float3" 0.83333343 0 0 ;
	setAttr ".tk[5]" -type "float3" -0.83333325 0 0 ;
	setAttr ".tk[6]" -type "float3" 0.83333343 0 0 ;
createNode transformGeometry -n "transformGeometry32";
	setAttr ".txf" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0.01 0 1;
createNode polyPlane -n "polyPlane34";
	setAttr ".w" 4;
	setAttr ".h" 4;
	setAttr ".sw" 3;
	setAttr ".sh" 1;
createNode polySplitRing -n "polySplitRing4";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[1]" "e[3]" "e[5:6]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".stp" 2;
	setAttr ".p[0]"  0 0 1;
createNode polyTweak -n "polyTweak36";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk";
	setAttr ".tk[1]" -type "float3" -0.83333325 0 0 ;
	setAttr ".tk[2]" -type "float3" 0.83333343 0 0 ;
	setAttr ".tk[5]" -type "float3" -0.83333325 0 0 ;
	setAttr ".tk[6]" -type "float3" 0.83333343 0 0 ;
createNode polyExtrudeFace -n "polyExtrudeFace33";
	setAttr ".ics" -type "componentList" 3 "f[0]" "f[2]" "f[6:8]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".rs" 58191;
	setAttr ".lt" -type "double3" 0 0 0.15 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -2 -4.4408920985006262e-016 -2 ;
	setAttr ".cbx" -type "double3" 2 4.4408920985006262e-016 2 ;
createNode polyTweak -n "polyTweak37";
	setAttr ".uopa" yes;
	setAttr -s 8 ".tk[8:15]" -type "float3"  0 0 -0.83333313 0 0 -0.83333313
		 0 0 -0.83333313 0 0 -0.83333313 0 0 0.83333343 0 0 0.83333343 0 0 0.83333343 0 0
		 0.83333343;
createNode transformGeometry -n "transformGeometry33";
	setAttr ".txf" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0.01 0 1;
createNode polyPlane -n "polyPlane35";
	setAttr ".w" 4;
	setAttr ".h" 4;
	setAttr ".sw" 3;
	setAttr ".sh" 1;
createNode polySplitRing -n "polySplitRing5";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[1]" "e[3]" "e[5:6]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".stp" 2;
	setAttr ".p[0]"  0 0 1;
createNode polyTweak -n "polyTweak38";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk";
	setAttr ".tk[1]" -type "float3" -0.83333325 0 0 ;
	setAttr ".tk[2]" -type "float3" 0.83333343 0 0 ;
	setAttr ".tk[5]" -type "float3" -0.83333325 0 0 ;
	setAttr ".tk[6]" -type "float3" 0.83333343 0 0 ;
createNode polyExtrudeFace -n "polyExtrudeFace34";
	setAttr ".ics" -type "componentList" 3 "f[0]" "f[2]" "f[6:8]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".rs" 44859;
	setAttr ".lt" -type "double3" 0 0 0.15 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -2 -4.4408920985006262e-016 -2 ;
	setAttr ".cbx" -type "double3" 2 4.4408920985006262e-016 2 ;
createNode polyTweak -n "polyTweak39";
	setAttr ".uopa" yes;
	setAttr -s 8 ".tk[8:15]" -type "float3"  0 0 -0.83333313 0 0 -0.83333313
		 0 0 -0.83333313 0 0 -0.83333313 0 0 0.83333343 0 0 0.83333343 0 0 0.83333343 0 0
		 0.83333343;
createNode transformGeometry -n "transformGeometry34";
	setAttr ".txf" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0.01 0 1;
createNode polyPlane -n "polyPlane36";
	setAttr ".w" 4;
	setAttr ".h" 4;
	setAttr ".sw" 3;
	setAttr ".sh" 1;
createNode polyExtrudeFace -n "polyExtrudeFace35";
	setAttr ".ics" -type "componentList" 2 "f[0]" "f[2]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".rs" 62882;
	setAttr ".lt" -type "double3" 0 0 0.15 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -2 -4.4408920985006262e-016 -2 ;
	setAttr ".cbx" -type "double3" 2 4.4408920985006262e-016 2 ;
createNode polyTweak -n "polyTweak40";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk";
	setAttr ".tk[1]" -type "float3" -0.83333325 0 0 ;
	setAttr ".tk[2]" -type "float3" 0.83333343 0 0 ;
	setAttr ".tk[5]" -type "float3" -0.83333325 0 0 ;
	setAttr ".tk[6]" -type "float3" 0.83333343 0 0 ;
createNode transformGeometry -n "transformGeometry35";
	setAttr ".txf" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0.01 0 1;
createNode polyPlane -n "polyPlane37";
	setAttr ".w" 4;
	setAttr ".h" 4;
	setAttr ".sw" 3;
	setAttr ".sh" 1;
createNode polyExtrudeFace -n "polyExtrudeFace36";
	setAttr ".ics" -type "componentList" 2 "f[0]" "f[2]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".rs" 53639;
	setAttr ".lt" -type "double3" 0 0 0.15 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -2 -4.4408920985006262e-016 -2 ;
	setAttr ".cbx" -type "double3" 2 4.4408920985006262e-016 2 ;
createNode polyTweak -n "polyTweak41";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk";
	setAttr ".tk[1]" -type "float3" -0.83333325 0 0 ;
	setAttr ".tk[2]" -type "float3" 0.83333343 0 0 ;
	setAttr ".tk[5]" -type "float3" -0.83333325 0 0 ;
	setAttr ".tk[6]" -type "float3" 0.83333343 0 0 ;
createNode transformGeometry -n "transformGeometry36";
	setAttr ".txf" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0.01 0 1;
createNode polyPlane -n "polyPlane38";
	setAttr ".w" 4;
	setAttr ".h" 4;
	setAttr ".sw" 3;
	setAttr ".sh" 1;
createNode polyExtrudeFace -n "polyExtrudeFace37";
	setAttr ".ics" -type "componentList" 2 "f[0]" "f[2]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".rs" 55354;
	setAttr ".lt" -type "double3" 0 0 0.15 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -2 -4.4408920985006262e-016 -2 ;
	setAttr ".cbx" -type "double3" 2 4.4408920985006262e-016 2 ;
createNode polyTweak -n "polyTweak42";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk";
	setAttr ".tk[1]" -type "float3" -0.83333325 0 0 ;
	setAttr ".tk[2]" -type "float3" 0.83333343 0 0 ;
	setAttr ".tk[5]" -type "float3" -0.83333325 0 0 ;
	setAttr ".tk[6]" -type "float3" 0.83333343 0 0 ;
createNode transformGeometry -n "transformGeometry37";
	setAttr ".txf" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0.01 0 1;
createNode polyPlane -n "polyPlane39";
	setAttr ".w" 4;
	setAttr ".h" 4;
	setAttr ".sw" 3;
	setAttr ".sh" 1;
createNode polyExtrudeFace -n "polyExtrudeFace38";
	setAttr ".ics" -type "componentList" 2 "f[0]" "f[2]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".rs" 35893;
	setAttr ".lt" -type "double3" 0 0 0.15 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -2 -4.4408920985006262e-016 -2 ;
	setAttr ".cbx" -type "double3" 2 4.4408920985006262e-016 2 ;
createNode polyTweak -n "polyTweak43";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk";
	setAttr ".tk[1]" -type "float3" -0.83333325 0 0 ;
	setAttr ".tk[2]" -type "float3" 0.83333343 0 0 ;
	setAttr ".tk[5]" -type "float3" -0.83333325 0 0 ;
	setAttr ".tk[6]" -type "float3" 0.83333343 0 0 ;
createNode transformGeometry -n "transformGeometry38";
	setAttr ".txf" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0.01 0 1;
createNode polyPlane -n "polyPlane40";
	setAttr ".w" 4;
	setAttr ".h" 4;
	setAttr ".sw" 3;
	setAttr ".sh" 1;
createNode polyExtrudeFace -n "polyExtrudeFace39";
	setAttr ".ics" -type "componentList" 2 "f[0]" "f[2]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".rs" 35610;
	setAttr ".lt" -type "double3" 0 0 0.15 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -2 -4.4408920985006262e-016 -2 ;
	setAttr ".cbx" -type "double3" 2 4.4408920985006262e-016 2 ;
createNode polyTweak -n "polyTweak44";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk";
	setAttr ".tk[1]" -type "float3" -0.83333325 0 0 ;
	setAttr ".tk[2]" -type "float3" 0.83333343 0 0 ;
	setAttr ".tk[5]" -type "float3" -0.83333325 0 0 ;
	setAttr ".tk[6]" -type "float3" 0.83333343 0 0 ;
createNode transformGeometry -n "transformGeometry39";
	setAttr ".txf" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0.01 0 1;
createNode polyPlane -n "polyPlane41";
	setAttr ".w" 4;
	setAttr ".h" 4;
	setAttr ".sw" 3;
	setAttr ".sh" 1;
createNode polyExtrudeFace -n "polyExtrudeFace40";
	setAttr ".ics" -type "componentList" 2 "f[0]" "f[2]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".rs" 36229;
	setAttr ".lt" -type "double3" 0 0 0.15 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -2 -4.4408920985006262e-016 -2 ;
	setAttr ".cbx" -type "double3" 2 4.4408920985006262e-016 2 ;
createNode polyTweak -n "polyTweak45";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk";
	setAttr ".tk[1]" -type "float3" -0.83333325 0 0 ;
	setAttr ".tk[2]" -type "float3" 0.83333343 0 0 ;
	setAttr ".tk[5]" -type "float3" -0.83333325 0 0 ;
	setAttr ".tk[6]" -type "float3" 0.83333343 0 0 ;
createNode transformGeometry -n "transformGeometry40";
	setAttr ".txf" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0.01 0 1;
createNode polyPlane -n "polyPlane42";
	setAttr ".w" 4;
	setAttr ".h" 4;
	setAttr ".sw" 3;
	setAttr ".sh" 1;
createNode polyExtrudeFace -n "polyExtrudeFace41";
	setAttr ".ics" -type "componentList" 2 "f[0]" "f[2]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".rs" 55870;
	setAttr ".lt" -type "double3" 0 0 0.15 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -2 -4.4408920985006262e-016 -2 ;
	setAttr ".cbx" -type "double3" 2 4.4408920985006262e-016 2 ;
createNode polyTweak -n "polyTweak46";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk";
	setAttr ".tk[1]" -type "float3" -0.83333325 0 0 ;
	setAttr ".tk[2]" -type "float3" 0.83333343 0 0 ;
	setAttr ".tk[5]" -type "float3" -0.83333325 0 0 ;
	setAttr ".tk[6]" -type "float3" 0.83333343 0 0 ;
createNode transformGeometry -n "transformGeometry41";
	setAttr ".txf" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0.01 0 1;
createNode polyPlane -n "polyPlane43";
	setAttr ".w" 4;
	setAttr ".h" 4;
	setAttr ".sw" 3;
	setAttr ".sh" 1;
createNode polyExtrudeFace -n "polyExtrudeFace42";
	setAttr ".ics" -type "componentList" 2 "f[0]" "f[2]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".rs" 38127;
	setAttr ".lt" -type "double3" 0 0 0.15 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -2 -4.4408920985006262e-016 -2 ;
	setAttr ".cbx" -type "double3" 2 4.4408920985006262e-016 2 ;
createNode polyTweak -n "polyTweak47";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk";
	setAttr ".tk[1]" -type "float3" -0.83333325 0 0 ;
	setAttr ".tk[2]" -type "float3" 0.83333343 0 0 ;
	setAttr ".tk[5]" -type "float3" -0.83333325 0 0 ;
	setAttr ".tk[6]" -type "float3" 0.83333343 0 0 ;
createNode transformGeometry -n "transformGeometry42";
	setAttr ".txf" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0.01 0 1;
createNode polyPlane -n "polyPlane44";
	setAttr ".w" 4;
	setAttr ".h" 4;
	setAttr ".sw" 3;
	setAttr ".sh" 1;
createNode polyExtrudeFace -n "polyExtrudeFace43";
	setAttr ".ics" -type "componentList" 2 "f[0]" "f[2]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".rs" 57473;
	setAttr ".lt" -type "double3" 0 0 0.15 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -2 -4.4408920985006262e-016 -2 ;
	setAttr ".cbx" -type "double3" 2 4.4408920985006262e-016 2 ;
createNode polyTweak -n "polyTweak48";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk";
	setAttr ".tk[1]" -type "float3" -0.83333325 0 0 ;
	setAttr ".tk[2]" -type "float3" 0.83333343 0 0 ;
	setAttr ".tk[5]" -type "float3" -0.83333325 0 0 ;
	setAttr ".tk[6]" -type "float3" 0.83333343 0 0 ;
createNode transformGeometry -n "transformGeometry43";
	setAttr ".txf" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0.01 0 1;
createNode polyPlane -n "polyPlane45";
	setAttr ".w" 4;
	setAttr ".h" 4;
	setAttr ".sw" 3;
	setAttr ".sh" 1;
createNode polyExtrudeFace -n "polyExtrudeFace44";
	setAttr ".ics" -type "componentList" 2 "f[0]" "f[2]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".rs" 33139;
	setAttr ".lt" -type "double3" 0 0 0.15 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -2 -4.4408920985006262e-016 -2 ;
	setAttr ".cbx" -type "double3" 2 4.4408920985006262e-016 2 ;
createNode polyTweak -n "polyTweak49";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk";
	setAttr ".tk[1]" -type "float3" -0.83333325 0 0 ;
	setAttr ".tk[2]" -type "float3" 0.83333343 0 0 ;
	setAttr ".tk[5]" -type "float3" -0.83333325 0 0 ;
	setAttr ".tk[6]" -type "float3" 0.83333343 0 0 ;
createNode transformGeometry -n "transformGeometry44";
	setAttr ".txf" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0.01 0 1;
createNode polyPlane -n "polyPlane46";
	setAttr ".w" 4;
	setAttr ".h" 4;
	setAttr ".sw" 3;
	setAttr ".sh" 1;
createNode polyExtrudeFace -n "polyExtrudeFace45";
	setAttr ".ics" -type "componentList" 2 "f[0]" "f[2]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".rs" 39957;
	setAttr ".lt" -type "double3" 0 0 0.15 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -2 -4.4408920985006262e-016 -2 ;
	setAttr ".cbx" -type "double3" 2 4.4408920985006262e-016 2 ;
createNode polyTweak -n "polyTweak50";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk";
	setAttr ".tk[1]" -type "float3" -0.83333325 0 0 ;
	setAttr ".tk[2]" -type "float3" 0.83333343 0 0 ;
	setAttr ".tk[5]" -type "float3" -0.83333325 0 0 ;
	setAttr ".tk[6]" -type "float3" 0.83333343 0 0 ;
createNode transformGeometry -n "transformGeometry45";
	setAttr ".txf" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0.01 0 1;
createNode polyPlane -n "polyPlane47";
	setAttr ".w" 4;
	setAttr ".h" 4;
	setAttr ".sw" 3;
	setAttr ".sh" 1;
createNode polyExtrudeFace -n "polyExtrudeFace46";
	setAttr ".ics" -type "componentList" 2 "f[0]" "f[2]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".rs" 34655;
	setAttr ".lt" -type "double3" 0 0 0.15 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -2 -4.4408920985006262e-016 -2 ;
	setAttr ".cbx" -type "double3" 2 4.4408920985006262e-016 2 ;
createNode polyTweak -n "polyTweak51";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk";
	setAttr ".tk[1]" -type "float3" -0.83333325 0 0 ;
	setAttr ".tk[2]" -type "float3" 0.83333343 0 0 ;
	setAttr ".tk[5]" -type "float3" -0.83333325 0 0 ;
	setAttr ".tk[6]" -type "float3" 0.83333343 0 0 ;
createNode transformGeometry -n "transformGeometry46";
	setAttr ".txf" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0.01 0 1;
createNode polyPlane -n "polyPlane48";
	setAttr ".w" 4;
	setAttr ".h" 4;
	setAttr ".sw" 3;
	setAttr ".sh" 1;
createNode polyExtrudeFace -n "polyExtrudeFace47";
	setAttr ".ics" -type "componentList" 2 "f[0]" "f[2]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".rs" 38411;
	setAttr ".lt" -type "double3" 0 0 0.15 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -2 -4.4408920985006262e-016 -2 ;
	setAttr ".cbx" -type "double3" 2 4.4408920985006262e-016 2 ;
createNode polyTweak -n "polyTweak52";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk";
	setAttr ".tk[1]" -type "float3" -0.83333325 0 0 ;
	setAttr ".tk[2]" -type "float3" 0.83333343 0 0 ;
	setAttr ".tk[5]" -type "float3" -0.83333325 0 0 ;
	setAttr ".tk[6]" -type "float3" 0.83333343 0 0 ;
createNode transformGeometry -n "transformGeometry47";
	setAttr ".txf" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0.01 0 1;
createNode polyPlane -n "polyPlane49";
	setAttr ".w" 4;
	setAttr ".h" 4;
	setAttr ".sw" 3;
	setAttr ".sh" 1;
createNode polyExtrudeFace -n "polyExtrudeFace48";
	setAttr ".ics" -type "componentList" 2 "f[0]" "f[2]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".rs" 35297;
	setAttr ".lt" -type "double3" 0 0 0.15 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -2 -4.4408920985006262e-016 -2 ;
	setAttr ".cbx" -type "double3" 2 4.4408920985006262e-016 2 ;
createNode polyTweak -n "polyTweak53";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk";
	setAttr ".tk[1]" -type "float3" -0.83333325 0 0 ;
	setAttr ".tk[2]" -type "float3" 0.83333343 0 0 ;
	setAttr ".tk[5]" -type "float3" -0.83333325 0 0 ;
	setAttr ".tk[6]" -type "float3" 0.83333343 0 0 ;
createNode transformGeometry -n "transformGeometry48";
	setAttr ".txf" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0.01 0 1;
createNode polyPlane -n "polyPlane50";
	setAttr ".w" 4;
	setAttr ".h" 4;
	setAttr ".sw" 3;
	setAttr ".sh" 1;
createNode polyExtrudeFace -n "polyExtrudeFace49";
	setAttr ".ics" -type "componentList" 2 "f[0]" "f[2]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".rs" 49649;
	setAttr ".lt" -type "double3" 0 0 0.15 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -2 -4.4408920985006262e-016 -2 ;
	setAttr ".cbx" -type "double3" 2 4.4408920985006262e-016 2 ;
createNode polyTweak -n "polyTweak54";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk";
	setAttr ".tk[1]" -type "float3" -0.83333325 0 0 ;
	setAttr ".tk[2]" -type "float3" 0.83333343 0 0 ;
	setAttr ".tk[5]" -type "float3" -0.83333325 0 0 ;
	setAttr ".tk[6]" -type "float3" 0.83333343 0 0 ;
createNode transformGeometry -n "transformGeometry49";
	setAttr ".txf" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0.01 0 1;
createNode polyPlane -n "polyPlane51";
	setAttr ".w" 4;
	setAttr ".h" 4;
	setAttr ".sw" 3;
	setAttr ".sh" 1;
createNode polyExtrudeFace -n "polyExtrudeFace50";
	setAttr ".ics" -type "componentList" 2 "f[0]" "f[2]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".rs" 46934;
	setAttr ".lt" -type "double3" 0 0 0.15 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -2 -4.4408920985006262e-016 -2 ;
	setAttr ".cbx" -type "double3" 2 4.4408920985006262e-016 2 ;
createNode polyTweak -n "polyTweak55";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk";
	setAttr ".tk[1]" -type "float3" -0.83333325 0 0 ;
	setAttr ".tk[2]" -type "float3" 0.83333343 0 0 ;
	setAttr ".tk[5]" -type "float3" -0.83333325 0 0 ;
	setAttr ".tk[6]" -type "float3" 0.83333343 0 0 ;
createNode transformGeometry -n "transformGeometry50";
	setAttr ".txf" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0.01 0 1;
createNode polyPlane -n "polyPlane52";
	setAttr ".w" 4;
	setAttr ".h" 4;
	setAttr ".sw" 3;
	setAttr ".sh" 1;
createNode polyExtrudeFace -n "polyExtrudeFace51";
	setAttr ".ics" -type "componentList" 2 "f[0]" "f[2]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".rs" 64545;
	setAttr ".lt" -type "double3" 0 0 0.15 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -2 -4.4408920985006262e-016 -2 ;
	setAttr ".cbx" -type "double3" 2 4.4408920985006262e-016 2 ;
createNode polyTweak -n "polyTweak56";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk";
	setAttr ".tk[1]" -type "float3" -0.83333325 0 0 ;
	setAttr ".tk[2]" -type "float3" 0.83333343 0 0 ;
	setAttr ".tk[5]" -type "float3" -0.83333325 0 0 ;
	setAttr ".tk[6]" -type "float3" 0.83333343 0 0 ;
createNode transformGeometry -n "transformGeometry51";
	setAttr ".txf" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0.01 0 1;
createNode polyPlane -n "polyPlane53";
	setAttr ".w" 4;
	setAttr ".h" 4;
	setAttr ".sw" 3;
	setAttr ".sh" 1;
createNode polySplitRing -n "polySplitRing6";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[1]" "e[3]" "e[5:6]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".stp" 2;
	setAttr ".p[0]"  0 0 1;
createNode polyTweak -n "polyTweak57";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk";
	setAttr ".tk[1]" -type "float3" -0.83333325 0 0 ;
	setAttr ".tk[2]" -type "float3" 0.83333343 0 0 ;
	setAttr ".tk[5]" -type "float3" -0.83333325 0 0 ;
	setAttr ".tk[6]" -type "float3" 0.83333343 0 0 ;
createNode polyExtrudeFace -n "polyExtrudeFace52";
	setAttr ".ics" -type "componentList" 3 "f[0]" "f[2]" "f[6:8]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".rs" 58320;
	setAttr ".lt" -type "double3" 0 0 0.15 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -2 -4.4408920985006262e-016 -2 ;
	setAttr ".cbx" -type "double3" 2 4.4408920985006262e-016 2 ;
createNode polyTweak -n "polyTweak58";
	setAttr ".uopa" yes;
	setAttr -s 8 ".tk[8:15]" -type "float3"  0 0 -0.83333313 0 0 -0.83333313
		 0 0 -0.83333313 0 0 -0.83333313 0 0 0.83333343 0 0 0.83333343 0 0 0.83333343 0 0
		 0.83333343;
createNode transformGeometry -n "transformGeometry52";
	setAttr ".txf" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0.01 0 1;
createNode polyPlane -n "polyPlane54";
	setAttr ".w" 4;
	setAttr ".h" 4;
	setAttr ".sw" 3;
	setAttr ".sh" 1;
createNode polySplitRing -n "polySplitRing7";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[1]" "e[3]" "e[5:6]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".stp" 2;
	setAttr ".p[0]"  0 0 1;
createNode polyTweak -n "polyTweak59";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk";
	setAttr ".tk[1]" -type "float3" -0.83333325 0 0 ;
	setAttr ".tk[2]" -type "float3" 0.83333343 0 0 ;
	setAttr ".tk[5]" -type "float3" -0.83333325 0 0 ;
	setAttr ".tk[6]" -type "float3" 0.83333343 0 0 ;
createNode polyExtrudeFace -n "polyExtrudeFace53";
	setAttr ".ics" -type "componentList" 3 "f[0]" "f[2]" "f[6:8]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".rs" 65400;
	setAttr ".lt" -type "double3" 0 0 0.15 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -2 -4.4408920985006262e-016 -2 ;
	setAttr ".cbx" -type "double3" 2 4.4408920985006262e-016 2 ;
createNode polyTweak -n "polyTweak60";
	setAttr ".uopa" yes;
	setAttr -s 8 ".tk[8:15]" -type "float3"  0 0 -0.83333313 0 0 -0.83333313
		 0 0 -0.83333313 0 0 -0.83333313 0 0 0.83333343 0 0 0.83333343 0 0 0.83333343 0 0
		 0.83333343;
createNode transformGeometry -n "transformGeometry53";
	setAttr ".txf" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0.01 0 1;
createNode polyPlane -n "polyPlane55";
	setAttr ".w" 4;
	setAttr ".h" 4;
	setAttr ".sw" 3;
	setAttr ".sh" 1;
createNode polySplitRing -n "polySplitRing8";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[1]" "e[3]" "e[5:6]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".stp" 2;
	setAttr ".p[0]"  0 0 1;
createNode polyTweak -n "polyTweak61";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk";
	setAttr ".tk[1]" -type "float3" -0.83333325 0 0 ;
	setAttr ".tk[2]" -type "float3" 0.83333343 0 0 ;
	setAttr ".tk[5]" -type "float3" -0.83333325 0 0 ;
	setAttr ".tk[6]" -type "float3" 0.83333343 0 0 ;
createNode polyExtrudeFace -n "polyExtrudeFace54";
	setAttr ".ics" -type "componentList" 4 "f[0]" "f[2]" "f[6]" "f[8]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".rs" 41245;
	setAttr ".lt" -type "double3" 0 0 0.15 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -2 -4.4408920985006262e-016 -2 ;
	setAttr ".cbx" -type "double3" 2 4.4408920985006262e-016 2 ;
createNode polyTweak -n "polyTweak62";
	setAttr ".uopa" yes;
	setAttr -s 8 ".tk[8:15]" -type "float3"  0 0 -0.83333313 0 0 -0.83333313
		 0 0 -0.83333313 0 0 -0.83333313 0 0 0.83333343 0 0 0.83333343 0 0 0.83333343 0 0
		 0.83333343;
createNode transformGeometry -n "transformGeometry54";
	setAttr ".txf" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0.01 0 1;
createNode polyPlane -n "polyPlane56";
	setAttr ".w" 4;
	setAttr ".h" 4;
	setAttr ".sw" 3;
	setAttr ".sh" 1;
createNode polySplitRing -n "polySplitRing9";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[1]" "e[3]" "e[5:6]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".stp" 2;
	setAttr ".p[0]"  0 0 1;
createNode polyTweak -n "polyTweak63";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk";
	setAttr ".tk[1]" -type "float3" -0.83333325 0 0 ;
	setAttr ".tk[2]" -type "float3" 0.83333343 0 0 ;
	setAttr ".tk[5]" -type "float3" -0.83333325 0 0 ;
	setAttr ".tk[6]" -type "float3" 0.83333343 0 0 ;
createNode polyExtrudeFace -n "polyExtrudeFace55";
	setAttr ".ics" -type "componentList" 3 "f[0]" "f[2]" "f[6:8]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".rs" 33436;
	setAttr ".lt" -type "double3" 0 0 0.15 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -2 -4.4408920985006262e-016 -2 ;
	setAttr ".cbx" -type "double3" 2 4.4408920985006262e-016 2 ;
createNode polyTweak -n "polyTweak64";
	setAttr ".uopa" yes;
	setAttr -s 8 ".tk[8:15]" -type "float3"  0 0 -0.83333313 0 0 -0.83333313
		 0 0 -0.83333313 0 0 -0.83333313 0 0 0.83333343 0 0 0.83333343 0 0 0.83333343 0 0
		 0.83333343;
createNode transformGeometry -n "transformGeometry55";
	setAttr ".txf" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0.01 0 1;
createNode polyPlane -n "polyPlane57";
	setAttr ".w" 4;
	setAttr ".h" 4;
	setAttr ".sw" 3;
	setAttr ".sh" 1;
createNode polySplitRing -n "polySplitRing10";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[1]" "e[3]" "e[5:6]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".stp" 2;
	setAttr ".p[0]"  0 0 1;
createNode polyTweak -n "polyTweak65";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk";
	setAttr ".tk[1]" -type "float3" -0.83333325 0 0 ;
	setAttr ".tk[2]" -type "float3" 0.83333343 0 0 ;
	setAttr ".tk[5]" -type "float3" -0.83333325 0 0 ;
	setAttr ".tk[6]" -type "float3" 0.83333343 0 0 ;
createNode polyExtrudeFace -n "polyExtrudeFace56";
	setAttr ".ics" -type "componentList" 3 "f[0]" "f[2]" "f[5:8]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".rs" 56281;
	setAttr ".lt" -type "double3" 0 0 0.15 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -2 -4.4408920985006262e-016 -2 ;
	setAttr ".cbx" -type "double3" 2 4.4408920985006262e-016 2 ;
createNode polyTweak -n "polyTweak66";
	setAttr ".uopa" yes;
	setAttr -s 8 ".tk[8:15]" -type "float3"  0 0 -0.83333313 0 0 -0.83333313
		 0 0 -0.83333313 0 0 -0.83333313 0 0 0.83333343 0 0 0.83333343 0 0 0.83333343 0 0
		 0.83333343;
createNode transformGeometry -n "transformGeometry56";
	setAttr ".txf" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0.01 0 1;
createNode polyPlane -n "polyPlane58";
	setAttr ".w" 4;
	setAttr ".h" 4;
	setAttr ".sw" 3;
	setAttr ".sh" 1;
createNode polySplitRing -n "polySplitRing11";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[1]" "e[3]" "e[5:6]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".stp" 2;
	setAttr ".p[0]"  0 0 1;
createNode polyTweak -n "polyTweak67";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk";
	setAttr ".tk[1]" -type "float3" -0.83333325 0 0 ;
	setAttr ".tk[2]" -type "float3" 0.83333343 0 0 ;
	setAttr ".tk[5]" -type "float3" -0.83333325 0 0 ;
	setAttr ".tk[6]" -type "float3" 0.83333343 0 0 ;
createNode polyExtrudeFace -n "polyExtrudeFace57";
	setAttr ".ics" -type "componentList" 3 "f[0]" "f[2]" "f[5:8]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".rs" 65156;
	setAttr ".lt" -type "double3" 0 0 0.15 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -2 -4.4408920985006262e-016 -2 ;
	setAttr ".cbx" -type "double3" 2 4.4408920985006262e-016 2 ;
createNode polyTweak -n "polyTweak68";
	setAttr ".uopa" yes;
	setAttr -s 8 ".tk[8:15]" -type "float3"  0 0 -0.83333313 0 0 -0.83333313
		 0 0 -0.83333313 0 0 -0.83333313 0 0 0.83333343 0 0 0.83333343 0 0 0.83333343 0 0
		 0.83333343;
createNode transformGeometry -n "transformGeometry57";
	setAttr ".txf" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0.01 0 1;
createNode polyPlane -n "polyPlane59";
	setAttr ".w" 4;
	setAttr ".h" 4;
	setAttr ".sw" 3;
	setAttr ".sh" 1;
createNode polyExtrudeFace -n "polyExtrudeFace58";
	setAttr ".ics" -type "componentList" 2 "f[0]" "f[2]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".rs" 37655;
	setAttr ".lt" -type "double3" 0 0 0.15 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -2 -4.4408920985006262e-016 -2 ;
	setAttr ".cbx" -type "double3" 2 4.4408920985006262e-016 2 ;
createNode polyTweak -n "polyTweak69";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk";
	setAttr ".tk[1]" -type "float3" -0.83333325 0 0 ;
	setAttr ".tk[2]" -type "float3" 0.83333343 0 0 ;
	setAttr ".tk[5]" -type "float3" -0.83333325 0 0 ;
	setAttr ".tk[6]" -type "float3" 0.83333343 0 0 ;
createNode transformGeometry -n "transformGeometry58";
	setAttr ".txf" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0.01 0 1;
createNode polyPlane -n "polyPlane60";
	setAttr ".w" 4;
	setAttr ".h" 4;
	setAttr ".sw" 3;
	setAttr ".sh" 1;
createNode polyExtrudeFace -n "polyExtrudeFace59";
	setAttr ".ics" -type "componentList" 2 "f[0]" "f[2]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".rs" 36347;
	setAttr ".lt" -type "double3" 0 0 0.15 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -2 -4.4408920985006262e-016 -2 ;
	setAttr ".cbx" -type "double3" 2 4.4408920985006262e-016 2 ;
createNode polyTweak -n "polyTweak70";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk";
	setAttr ".tk[1]" -type "float3" -0.83333325 0 0 ;
	setAttr ".tk[2]" -type "float3" 0.83333343 0 0 ;
	setAttr ".tk[5]" -type "float3" -0.83333325 0 0 ;
	setAttr ".tk[6]" -type "float3" 0.83333343 0 0 ;
createNode transformGeometry -n "transformGeometry59";
	setAttr ".txf" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0.01 0 1;
createNode polyPlane -n "polyPlane61";
	setAttr ".w" 4;
	setAttr ".h" 4;
	setAttr ".sw" 3;
	setAttr ".sh" 1;
createNode polyExtrudeFace -n "polyExtrudeFace60";
	setAttr ".ics" -type "componentList" 2 "f[0]" "f[2]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".rs" 43792;
	setAttr ".lt" -type "double3" 0 0 0.15 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -2 -4.4408920985006262e-016 -2 ;
	setAttr ".cbx" -type "double3" 2 4.4408920985006262e-016 2 ;
createNode polyTweak -n "polyTweak71";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk";
	setAttr ".tk[1]" -type "float3" -0.83333325 0 0 ;
	setAttr ".tk[2]" -type "float3" 0.83333343 0 0 ;
	setAttr ".tk[5]" -type "float3" -0.83333325 0 0 ;
	setAttr ".tk[6]" -type "float3" 0.83333343 0 0 ;
createNode transformGeometry -n "transformGeometry60";
	setAttr ".txf" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0.01 0 1;
createNode polyPlane -n "polyPlane62";
	setAttr ".w" 4;
	setAttr ".h" 4;
	setAttr ".sw" 3;
	setAttr ".sh" 1;
createNode polyExtrudeFace -n "polyExtrudeFace61";
	setAttr ".ics" -type "componentList" 2 "f[0]" "f[2]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".rs" 44081;
	setAttr ".lt" -type "double3" 0 0 0.15 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -2 -4.4408920985006262e-016 -2 ;
	setAttr ".cbx" -type "double3" 2 4.4408920985006262e-016 2 ;
createNode polyTweak -n "polyTweak72";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk";
	setAttr ".tk[1]" -type "float3" -0.83333325 0 0 ;
	setAttr ".tk[2]" -type "float3" 0.83333343 0 0 ;
	setAttr ".tk[5]" -type "float3" -0.83333325 0 0 ;
	setAttr ".tk[6]" -type "float3" 0.83333343 0 0 ;
createNode transformGeometry -n "transformGeometry61";
	setAttr ".txf" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0.01 0 1;
createNode polyPlane -n "polyPlane63";
	setAttr ".w" 4;
	setAttr ".h" 4;
	setAttr ".sw" 3;
	setAttr ".sh" 1;
createNode polyExtrudeFace -n "polyExtrudeFace62";
	setAttr ".ics" -type "componentList" 2 "f[0]" "f[2]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".rs" 60310;
	setAttr ".lt" -type "double3" 0 0 0.15 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -2 -4.4408920985006262e-016 -2 ;
	setAttr ".cbx" -type "double3" 2 4.4408920985006262e-016 2 ;
createNode polyTweak -n "polyTweak73";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk";
	setAttr ".tk[1]" -type "float3" -0.83333325 0 0 ;
	setAttr ".tk[2]" -type "float3" 0.83333343 0 0 ;
	setAttr ".tk[5]" -type "float3" -0.83333325 0 0 ;
	setAttr ".tk[6]" -type "float3" 0.83333343 0 0 ;
createNode transformGeometry -n "transformGeometry62";
	setAttr ".txf" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0.01 0 1;
createNode polyPlane -n "polyPlane64";
	setAttr ".w" 4;
	setAttr ".h" 4;
	setAttr ".sw" 3;
	setAttr ".sh" 1;
createNode polyExtrudeFace -n "polyExtrudeFace63";
	setAttr ".ics" -type "componentList" 2 "f[0]" "f[2]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".rs" 40021;
	setAttr ".lt" -type "double3" 0 0 0.15 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -2 -4.4408920985006262e-016 -2 ;
	setAttr ".cbx" -type "double3" 2 4.4408920985006262e-016 2 ;
createNode polyTweak -n "polyTweak74";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk";
	setAttr ".tk[1]" -type "float3" -0.83333325 0 0 ;
	setAttr ".tk[2]" -type "float3" 0.83333343 0 0 ;
	setAttr ".tk[5]" -type "float3" -0.83333325 0 0 ;
	setAttr ".tk[6]" -type "float3" 0.83333343 0 0 ;
createNode transformGeometry -n "transformGeometry63";
	setAttr ".txf" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0.01 0 1;
createNode polyPlane -n "polyPlane65";
	setAttr ".w" 4;
	setAttr ".h" 4;
	setAttr ".sw" 3;
	setAttr ".sh" 1;
createNode polyExtrudeFace -n "polyExtrudeFace64";
	setAttr ".ics" -type "componentList" 2 "f[0]" "f[2]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".rs" 48567;
	setAttr ".lt" -type "double3" 0 0 0.15 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -2 -4.4408920985006262e-016 -2 ;
	setAttr ".cbx" -type "double3" 2 4.4408920985006262e-016 2 ;
createNode polyTweak -n "polyTweak75";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk";
	setAttr ".tk[1]" -type "float3" -0.83333325 0 0 ;
	setAttr ".tk[2]" -type "float3" 0.83333343 0 0 ;
	setAttr ".tk[5]" -type "float3" -0.83333325 0 0 ;
	setAttr ".tk[6]" -type "float3" 0.83333343 0 0 ;
createNode transformGeometry -n "transformGeometry64";
	setAttr ".txf" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0.01 0 1;
createNode polyPlane -n "polyPlane66";
	setAttr ".w" 4;
	setAttr ".h" 4;
	setAttr ".sw" 3;
	setAttr ".sh" 1;
createNode polyExtrudeFace -n "polyExtrudeFace65";
	setAttr ".ics" -type "componentList" 2 "f[0]" "f[2]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".rs" 41462;
	setAttr ".lt" -type "double3" 0 0 0.15 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -2 -4.4408920985006262e-016 -2 ;
	setAttr ".cbx" -type "double3" 2 4.4408920985006262e-016 2 ;
createNode polyTweak -n "polyTweak76";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk";
	setAttr ".tk[1]" -type "float3" -0.83333325 0 0 ;
	setAttr ".tk[2]" -type "float3" 0.83333343 0 0 ;
	setAttr ".tk[5]" -type "float3" -0.83333325 0 0 ;
	setAttr ".tk[6]" -type "float3" 0.83333343 0 0 ;
createNode transformGeometry -n "transformGeometry65";
	setAttr ".txf" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0.01 0 1;
createNode polyPlane -n "polyPlane67";
	setAttr ".w" 4;
	setAttr ".h" 4;
	setAttr ".sw" 3;
	setAttr ".sh" 1;
createNode polySplitRing -n "polySplitRing12";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[1]" "e[3]" "e[5:6]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".stp" 2;
	setAttr ".p[0]"  0 0 1;
createNode polyTweak -n "polyTweak77";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk";
	setAttr ".tk[1]" -type "float3" -0.83333325 0 0 ;
	setAttr ".tk[2]" -type "float3" 0.83333343 0 0 ;
	setAttr ".tk[5]" -type "float3" -0.83333325 0 0 ;
	setAttr ".tk[6]" -type "float3" 0.83333343 0 0 ;
createNode polyExtrudeFace -n "polyExtrudeFace66";
	setAttr ".ics" -type "componentList" 3 "f[0]" "f[2]" "f[5:8]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".rs" 62604;
	setAttr ".lt" -type "double3" 0 0 0.15 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -2 -4.4408920985006262e-016 -2 ;
	setAttr ".cbx" -type "double3" 2 4.4408920985006262e-016 2 ;
createNode polyTweak -n "polyTweak78";
	setAttr ".uopa" yes;
	setAttr -s 8 ".tk[8:15]" -type "float3"  0 0 -0.83333313 0 0 -0.83333313
		 0 0 -0.83333313 0 0 -0.83333313 0 0 0.83333343 0 0 0.83333343 0 0 0.83333343 0 0
		 0.83333343;
createNode transformGeometry -n "transformGeometry66";
	setAttr ".txf" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0.01 0 1;
createNode polyPlane -n "polyPlane68";
	setAttr ".w" 4;
	setAttr ".h" 4;
	setAttr ".sw" 3;
	setAttr ".sh" 1;
createNode polySplitRing -n "polySplitRing13";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[1]" "e[3]" "e[5:6]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".stp" 2;
	setAttr ".p[0]"  0 0 1;
createNode polyTweak -n "polyTweak79";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk";
	setAttr ".tk[1]" -type "float3" -0.83333325 0 0 ;
	setAttr ".tk[2]" -type "float3" 0.83333343 0 0 ;
	setAttr ".tk[5]" -type "float3" -0.83333325 0 0 ;
	setAttr ".tk[6]" -type "float3" 0.83333343 0 0 ;
createNode polyExtrudeFace -n "polyExtrudeFace67";
	setAttr ".ics" -type "componentList" 3 "f[0]" "f[2]" "f[6:8]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".rs" 37927;
	setAttr ".lt" -type "double3" 0 0 0.15 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -2 -4.4408920985006262e-016 -2 ;
	setAttr ".cbx" -type "double3" 2 4.4408920985006262e-016 2 ;
createNode polyTweak -n "polyTweak80";
	setAttr ".uopa" yes;
	setAttr -s 8 ".tk[8:15]" -type "float3"  0 0 -0.83333313 0 0 -0.83333313
		 0 0 -0.83333313 0 0 -0.83333313 0 0 0.83333343 0 0 0.83333343 0 0 0.83333343 0 0
		 0.83333343;
createNode transformGeometry -n "transformGeometry67";
	setAttr ".txf" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0.01 0 1;
createNode polyCube -n "polyCube9";
createNode polyExtrudeFace -n "polyExtrudeFace68";
	setAttr ".ics" -type "componentList" 3 "f[0]" "f[2]" "f[4:5]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 2 0 0 0 0 2.5 0 0 1 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 1 0 ;
	setAttr ".rs" 56394;
	setAttr ".lt" -type "double3" 0 0 0.2 ;
	setAttr ".ls" -type "double3" 0.5 1 1 ;
	setAttr ".kft" no;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1.25 0 -1.25 ;
	setAttr ".cbx" -type "double3" 1.25 2 1.25 ;
createNode polyExtrudeFace -n "polyExtrudeFace69";
	setAttr ".ics" -type "componentList" 3 "f[0]" "f[2]" "f[4:5]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 2 0 0 0 0 2.5 0 0 1 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 1 0 ;
	setAttr ".rs" 45743;
	setAttr ".lt" -type "double3" 0 0 0.4 ;
	setAttr ".kft" no;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1.4500001072883606 0 -1.4500001072883606 ;
	setAttr ".cbx" -type "double3" 1.4500001072883606 2 1.4500001072883606 ;
createNode polyExtrudeFace -n "polyExtrudeFace70";
	setAttr ".ics" -type "componentList" 3 "f[0]" "f[2]" "f[4:5]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 2 0 0 0 0 2.5 0 0 1 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 1 0 ;
	setAttr ".rs" 62537;
	setAttr ".ls" -type "double3" 0.5 0.5 1 ;
	setAttr ".kft" no;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1.8500001728534698 0 -1.8500001728534698 ;
	setAttr ".cbx" -type "double3" 1.8500001728534698 2 1.8500001728534698 ;
createNode polyExtrudeFace -n "polyExtrudeFace71";
	setAttr ".ics" -type "componentList" 3 "f[0]" "f[2]" "f[4:5]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 2 0 0 0 0 2.5 0 0 1 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 0.5 0 ;
	setAttr ".rs" 58584;
	setAttr ".lt" -type "double3" 0 0 -0.2 ;
	setAttr ".ls" -type "double3" 0.8 0.8 0.8 ;
	setAttr ".kft" no;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1.8500001728534698 0 -1.8500001728534698 ;
	setAttr ".cbx" -type "double3" 1.8500001728534698 1 1.8500001728534698 ;
createNode polyTweak -n "polyTweak81";
	setAttr ".uopa" yes;
	setAttr -s 16 ".tk[40:55]" -type "float3"  0 -0.25 0 0 -0.25 0 0 -0.25
		 0 0 -0.25 0 0 -0.25 0 0 -0.25 0 0 -0.25 0 0 -0.25 0 0 -0.25 0 0 -0.25 0 0 -0.25 0
		 0 -0.25 0 0 -0.25 0 0 -0.25 0 0 -0.25 0 0 -0.25 0;
createNode polyExtrudeFace -n "polyExtrudeFace72";
	setAttr ".ics" -type "componentList" 9 "f[1]" "f[8]" "f[10]" "f[16]" "f[20]" "f[24]" "f[26]" "f[32]" "f[36]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 2 0 0 0 0 2.5 0 0 1 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 2 0 ;
	setAttr ".rs" 61663;
	setAttr ".lt" -type "double3" 0 0 0.3 ;
	setAttr ".ls" -type "double3" 0.35 0.35 0.35 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1.8500001728534698 2 -1.8500001728534698 ;
	setAttr ".cbx" -type "double3" 1.8500001728534698 2 1.8500001728534698 ;
createNode polyExtrudeFace -n "polyExtrudeFace73";
	setAttr ".ics" -type "componentList" 9 "f[1]" "f[8]" "f[10]" "f[16]" "f[20]" "f[24]" "f[26]" "f[32]" "f[36]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 2 0 0 0 0 2.5 0 0 1 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 2.3000002 0 ;
	setAttr ".rs" 54518;
	setAttr ".lt" -type "double3" 0 0 0.5 ;
	setAttr ".ls" -type "double3" 0.35 0.35 0.35 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1.7200000584125519 2.3000001907348633 -1.7200000584125519 ;
	setAttr ".cbx" -type "double3" 1.7200000584125519 2.3000001907348633 1.7200000584125519 ;
createNode polyExtrudeFace -n "polyExtrudeFace74";
	setAttr ".ics" -type "componentList" 1 "f[1]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 2 0 0 0 0 2.5 0 0 1 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 2.8000002 0 ;
	setAttr ".rs" 53161;
	setAttr ".lt" -type "double3" 0 0 2 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.65217815339565277 2.8000001907348633 -0.65217815339565277 ;
	setAttr ".cbx" -type "double3" 0.65217815339565277 2.8000001907348633 0.65217815339565277 ;
createNode polyExtrudeFace -n "polyExtrudeFace75";
	setAttr ".ics" -type "componentList" 1 "f[1]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 2 0 0 0 0 2.5 0 0 1 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 4.8000002 0 ;
	setAttr ".rs" 41517;
	setAttr ".lt" -type "double3" 0 0 0.2 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.65217815339565277 4.8000001907348633 -0.65217815339565277 ;
	setAttr ".cbx" -type "double3" 0.65217815339565277 4.8000001907348633 0.65217815339565277 ;
createNode polyExtrudeFace -n "polyExtrudeFace76";
	setAttr ".ics" -type "componentList" 1 "f[1]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 2 0 0 0 0 2.5 0 0 1 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 5 0 ;
	setAttr ".rs" 63633;
	setAttr ".lt" -type "double3" 0 0 2 ;
	setAttr ".ls" -type "double3" 0 0 0 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.65217815339565277 5 -0.65217815339565277 ;
	setAttr ".cbx" -type "double3" 0.65217815339565277 5 0.65217815339565277 ;
createNode polyExtrudeFace -n "polyExtrudeFace77";
	setAttr ".ics" -type "componentList" 1 "f[110:113]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 2 0 0 0 0 2.5 0 0 1 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 3.8000002 0 ;
	setAttr ".rs" 61667;
	setAttr ".ls" -type "double3" 0.5 0.5 0.5 ;
	setAttr ".kft" no;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.65217815339565277 2.8000001907348633 -0.65217815339565277 ;
	setAttr ".cbx" -type "double3" 0.65217815339565277 4.8000001907348633 0.65217815339565277 ;
createNode polyExtrudeFace -n "polyExtrudeFace78";
	setAttr ".ics" -type "componentList" 1 "f[110:113]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 2 0 0 0 0 2.5 0 0 1 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 3.8000002 0 ;
	setAttr ".rs" 34407;
	setAttr ".lt" -type "double3" 0 0 -0.3 ;
	setAttr ".kft" no;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.65217815339565277 3.3000001907348633 -0.65217815339565277 ;
	setAttr ".cbx" -type "double3" 0.65217815339565277 4.3000001907348633 0.65217815339565277 ;
createNode polyExtrudeFace -n "polyExtrudeFace79";
	setAttr ".ics" -type "componentList" 1 "f[114:117]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 2 0 0 0 0 2.5 0 0 1 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 4.9000001 0 ;
	setAttr ".rs" 53025;
	setAttr ".lt" -type "double3" 0 0 0.2 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.65217815339565277 4.8000001907348633 -0.65217815339565277 ;
	setAttr ".cbx" -type "double3" 0.65217815339565277 5 0.65217815339565277 ;
createNode polyCube -n "polyCube10";
	setAttr ".sw" 5;
	setAttr ".sd" 5;
createNode polyExtrudeFace -n "polyExtrudeFace80";
	setAttr ".ics" -type "componentList" 1 "f[5:29]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 1 0 0 0 0 2.5 0 0 0.5 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 1 0 ;
	setAttr ".rs" 63629;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1.25 1 -1.25 ;
	setAttr ".cbx" -type "double3" 1.25 1 1.25 ;
createNode polyExtrudeFace -n "polyExtrudeFace81";
	setAttr ".ics" -type "componentList" 1 "f[5:29]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 1 0 0 0 0 2.5 0 0 0.5 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 1 0 ;
	setAttr ".rs" 41853;
	setAttr ".lt" -type "double3" 0 0 1 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.87499998509883881 1 -0.87499998509883881 ;
	setAttr ".cbx" -type "double3" 0.87499998509883881 1 0.87499998509883881 ;
createNode polyTweak -n "polyTweak82";
	setAttr ".uopa" yes;
	setAttr -s 36 ".tk[56:91]" -type "float3"  0.15000001 0 -0.15000001 0.090000004
		 0 -0.15000001 0.090000004 0 -0.090000004 0.15000001 0 -0.090000004 0.030000005 0
		 -0.15000001 0.030000005 0 -0.090000004 -0.029999997 0 -0.15000001 -0.029999997 0
		 -0.090000004 -0.090000004 0 -0.15000001 -0.090000004 0 -0.090000004 -0.15000001 0
		 -0.15000001 -0.15000001 0 -0.090000004 0.090000004 0 -0.030000005 0.15000001 0 -0.030000005
		 0.030000005 0 -0.030000005 -0.029999997 0 -0.030000005 -0.090000004 0 -0.030000005
		 -0.15000001 0 -0.030000005 0.090000004 0 0.029999997 0.15000001 0 0.029999997 0.030000005
		 0 0.029999997 -0.029999997 0 0.029999997 -0.090000004 0 0.029999997 -0.15000001 0
		 0.029999997 0.090000004 0 0.090000004 0.15000001 0 0.090000004 0.030000005 0 0.090000004
		 -0.029999997 0 0.090000004 -0.090000004 0 0.090000004 -0.15000001 0 0.090000004 0.090000004
		 0 0.15000001 0.15000001 0 0.15000001 0.030000005 0 0.15000001 -0.029999997 0 0.15000001
		 -0.090000004 0 0.15000001 -0.15000001 0 0.15000001;
createNode polyExtrudeFace -n "polyExtrudeFace82";
	setAttr ".ics" -type "componentList" 1 "f[5:29]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 1 0 0 0 0 2.5 0 0 0.5 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 2 0 ;
	setAttr ".rs" 59273;
	setAttr ".lt" -type "double3" 0 0 1 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.87499998509883881 2 -0.87499998509883881 ;
	setAttr ".cbx" -type "double3" 0.87499998509883881 2 0.87499998509883881 ;
createNode polyExtrudeFace -n "polyExtrudeFace83";
	setAttr ".ics" -type "componentList" 1 "f[5:29]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 1 0 0 0 0 2.5 0 0 0.5 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 3 0 ;
	setAttr ".rs" 45032;
	setAttr ".lt" -type "double3" 0 0 1 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.87499998509883881 3 -0.87499998509883881 ;
	setAttr ".cbx" -type "double3" 0.87499998509883881 3 0.87499998509883881 ;
createNode polyExtrudeFace -n "polyExtrudeFace84";
	setAttr ".ics" -type "componentList" 1 "f[5:29]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 1 0 0 0 0 2.5 0 0 0.5 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 4 0 ;
	setAttr ".rs" 37059;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.87499998509883881 4 -0.87499998509883881 ;
	setAttr ".cbx" -type "double3" 0.87499998509883881 4 0.87499998509883881 ;
createNode polyExtrudeFace -n "polyExtrudeFace85";
	setAttr ".ics" -type "componentList" 1 "f[5:29]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 1 0 0 0 0 2.5 0 0 0.5 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 4 0 ;
	setAttr ".rs" 65458;
	setAttr ".lt" -type "double3" 0 0 1 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.4374999925494194 4 -0.4374999925494194 ;
	setAttr ".cbx" -type "double3" 0.4374999925494194 4 0.4374999925494194 ;
createNode polyTweak -n "polyTweak83";
	setAttr ".uopa" yes;
	setAttr -s 36 ".tk[136:171]" -type "float3"  0.175 0 -0.175 0.10500001
		 0 -0.175 0.10500001 0 -0.10500001 0.175 0 -0.10500001 0.035000004 0 -0.175 0.035000004
		 0 -0.10500001 -0.034999996 0 -0.175 -0.034999996 0 -0.10500001 -0.10500001 0 -0.175
		 -0.10500001 0 -0.10500001 -0.175 0 -0.175 -0.175 0 -0.10500001 0.10500001 0 -0.035000004
		 0.175 0 -0.035000004 0.035000004 0 -0.035000004 -0.034999996 0 -0.035000004 -0.10500001
		 0 -0.035000004 -0.175 0 -0.035000004 0.10500001 0 0.034999996 0.175 0 0.034999996
		 0.035000004 0 0.034999996 -0.034999996 0 0.034999996 -0.10500001 0 0.034999996 -0.175
		 0 0.034999996 0.10500001 0 0.10500001 0.175 0 0.10500001 0.035000004 0 0.10500001
		 -0.034999996 0 0.10500001 -0.10500001 0 0.10500001 -0.175 0 0.10500001 0.10500001
		 0 0.175 0.175 0 0.175 0.035000004 0 0.175 -0.034999996 0 0.175 -0.10500001 0 0.175
		 -0.175 0 0.175;
createNode polyExtrudeFace -n "polyExtrudeFace86";
	setAttr ".ics" -type "componentList" 2 "f[90:149]" "f[170:189]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 1 0 0 0 0 2.5 0 0 0.5 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 3 0 ;
	setAttr ".rs" 55495;
	setAttr ".ls" -type "double3" 0.5 0.5 0.5 ;
	setAttr ".kft" no;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.87499998509883881 1 -0.87499998509883881 ;
	setAttr ".cbx" -type "double3" 0.87499998509883881 5 0.87499998509883881 ;
createNode polyExtrudeFace -n "polyExtrudeFace87";
	setAttr ".ics" -type "componentList" 2 "f[90:149]" "f[170:189]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 1 0 0 0 0 2.5 0 0 0.5 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 3 0 ;
	setAttr ".rs" 37764;
	setAttr ".lt" -type "double3" 0 0 -0.2 ;
	setAttr ".kft" no;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.87499998509883881 1.25 -0.87499998509883881 ;
	setAttr ".cbx" -type "double3" 0.87499998509883881 4.75 0.87499998509883881 ;
createNode polyExtrudeFace -n "polyExtrudeFace88";
	setAttr ".ics" -type "componentList" 4 "f[2]" "f[32]" "f[62]" "f[67]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 1 0 0 0 0 2.5 0 0 0.5 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 0.5 0 ;
	setAttr ".rs" 56017;
	setAttr ".ls" -type "double3" 0.5 0.5 0.5 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1.25 0 -1.25 ;
	setAttr ".cbx" -type "double3" 1.25 1 1.25 ;
createNode polyExtrudeFace -n "polyExtrudeFace89";
	setAttr ".ics" -type "componentList" 4 "f[2]" "f[32]" "f[62]" "f[67]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 1 0 0 0 0 2.5 0 0 0.5 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 0.25 0 ;
	setAttr ".rs" 59958;
	setAttr ".lt" -type "double3" 0 0 -0.5 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1.25 0 -1.25 ;
	setAttr ".cbx" -type "double3" 1.25 0.5 1.25 ;
createNode polyTweak -n "polyTweak84";
	setAttr ".uopa" yes;
	setAttr -s 16 ".tk[832:847]" -type "float3"  0 -0.25 0 0 -0.25 0 0 -0.25
		 0 0 -0.25 0 0 -0.25 0 0 -0.25 0 0 -0.25 0 0 -0.25 0 0 -0.25 0 0 -0.25 0 0 -0.25 0
		 0 -0.25 0 0 -0.25 0 0 -0.25 0 0 -0.25 0 0 -0.25 0;
createNode polyCube -n "polyCube11";
	setAttr ".sw" 5;
	setAttr ".sd" 5;
createNode polyExtrudeFace -n "polyExtrudeFace90";
	setAttr ".ics" -type "componentList" 1 "f[5:29]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 1 0 0 0 0 2.5 0 0 0.5 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 1 0 ;
	setAttr ".rs" 51201;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1.25 1 -1.25 ;
	setAttr ".cbx" -type "double3" 1.25 1 1.25 ;
createNode polyExtrudeFace -n "polyExtrudeFace91";
	setAttr ".ics" -type "componentList" 1 "f[5:29]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 1 0 0 0 0 2.5 0 0 0.5 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 1 0 ;
	setAttr ".rs" 61277;
	setAttr ".lt" -type "double3" 0 0 1 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.87499998509883881 1 -0.87499998509883881 ;
	setAttr ".cbx" -type "double3" 0.87499998509883881 1 0.87499998509883881 ;
createNode polyTweak -n "polyTweak85";
	setAttr ".uopa" yes;
	setAttr -s 36 ".tk[56:91]" -type "float3"  0.15000001 0 -0.15000001 0.090000004
		 0 -0.15000001 0.090000004 0 -0.090000004 0.15000001 0 -0.090000004 0.030000005 0
		 -0.15000001 0.030000005 0 -0.090000004 -0.029999997 0 -0.15000001 -0.029999997 0
		 -0.090000004 -0.090000004 0 -0.15000001 -0.090000004 0 -0.090000004 -0.15000001 0
		 -0.15000001 -0.15000001 0 -0.090000004 0.090000004 0 -0.030000005 0.15000001 0 -0.030000005
		 0.030000005 0 -0.030000005 -0.029999997 0 -0.030000005 -0.090000004 0 -0.030000005
		 -0.15000001 0 -0.030000005 0.090000004 0 0.029999997 0.15000001 0 0.029999997 0.030000005
		 0 0.029999997 -0.029999997 0 0.029999997 -0.090000004 0 0.029999997 -0.15000001 0
		 0.029999997 0.090000004 0 0.090000004 0.15000001 0 0.090000004 0.030000005 0 0.090000004
		 -0.029999997 0 0.090000004 -0.090000004 0 0.090000004 -0.15000001 0 0.090000004 0.090000004
		 0 0.15000001 0.15000001 0 0.15000001 0.030000005 0 0.15000001 -0.029999997 0 0.15000001
		 -0.090000004 0 0.15000001 -0.15000001 0 0.15000001;
createNode polyExtrudeFace -n "polyExtrudeFace92";
	setAttr ".ics" -type "componentList" 1 "f[5:29]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 1 0 0 0 0 2.5 0 0 0.5 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 2 0 ;
	setAttr ".rs" 43437;
	setAttr ".lt" -type "double3" 0 0 1 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.87499998509883881 2 -0.87499998509883881 ;
	setAttr ".cbx" -type "double3" 0.87499998509883881 2 0.87499998509883881 ;
createNode polyExtrudeFace -n "polyExtrudeFace93";
	setAttr ".ics" -type "componentList" 1 "f[5:29]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 1 0 0 0 0 2.5 0 0 0.5 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 3 0 ;
	setAttr ".rs" 62206;
	setAttr ".lt" -type "double3" 0 0 1 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.87499998509883881 3 -0.87499998509883881 ;
	setAttr ".cbx" -type "double3" 0.87499998509883881 3 0.87499998509883881 ;
createNode polyExtrudeFace -n "polyExtrudeFace94";
	setAttr ".ics" -type "componentList" 1 "f[5:29]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 1 0 0 0 0 2.5 0 0 0.5 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 4 0 ;
	setAttr ".rs" 49938;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.87499998509883881 4 -0.87499998509883881 ;
	setAttr ".cbx" -type "double3" 0.87499998509883881 4 0.87499998509883881 ;
createNode polyExtrudeFace -n "polyExtrudeFace95";
	setAttr ".ics" -type "componentList" 1 "f[5:29]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 1 0 0 0 0 2.5 0 0 0.5 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 4 0 ;
	setAttr ".rs" 47149;
	setAttr ".lt" -type "double3" 0 0 1 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.4374999925494194 4 -0.4374999925494194 ;
	setAttr ".cbx" -type "double3" 0.4374999925494194 4 0.4374999925494194 ;
createNode polyTweak -n "polyTweak86";
	setAttr ".uopa" yes;
	setAttr -s 36 ".tk[136:171]" -type "float3"  0.175 0 -0.175 0.10500001
		 0 -0.175 0.10500001 0 -0.10500001 0.175 0 -0.10500001 0.035000004 0 -0.175 0.035000004
		 0 -0.10500001 -0.034999996 0 -0.175 -0.034999996 0 -0.10500001 -0.10500001 0 -0.175
		 -0.10500001 0 -0.10500001 -0.175 0 -0.175 -0.175 0 -0.10500001 0.10500001 0 -0.035000004
		 0.175 0 -0.035000004 0.035000004 0 -0.035000004 -0.034999996 0 -0.035000004 -0.10500001
		 0 -0.035000004 -0.175 0 -0.035000004 0.10500001 0 0.034999996 0.175 0 0.034999996
		 0.035000004 0 0.034999996 -0.034999996 0 0.034999996 -0.10500001 0 0.034999996 -0.175
		 0 0.034999996 0.10500001 0 0.10500001 0.175 0 0.10500001 0.035000004 0 0.10500001
		 -0.034999996 0 0.10500001 -0.10500001 0 0.10500001 -0.175 0 0.10500001 0.10500001
		 0 0.175 0.175 0 0.175 0.035000004 0 0.175 -0.034999996 0 0.175 -0.10500001 0 0.175
		 -0.175 0 0.175;
createNode polyExtrudeFace -n "polyExtrudeFace96";
	setAttr ".ics" -type "componentList" 2 "f[90:149]" "f[170:189]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 1 0 0 0 0 2.5 0 0 0.5 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 3 0 ;
	setAttr ".rs" 35839;
	setAttr ".ls" -type "double3" 0.5 0.5 0.5 ;
	setAttr ".kft" no;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.87499998509883881 1 -0.87499998509883881 ;
	setAttr ".cbx" -type "double3" 0.87499998509883881 5 0.87499998509883881 ;
createNode polyExtrudeFace -n "polyExtrudeFace97";
	setAttr ".ics" -type "componentList" 2 "f[90:149]" "f[170:189]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 1 0 0 0 0 2.5 0 0 0.5 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 3 0 ;
	setAttr ".rs" 46428;
	setAttr ".lt" -type "double3" 0 0 -0.2 ;
	setAttr ".kft" no;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.87499998509883881 1.25 -0.87499998509883881 ;
	setAttr ".cbx" -type "double3" 0.87499998509883881 4.75 0.87499998509883881 ;
createNode polyExtrudeFace -n "polyExtrudeFace98";
	setAttr ".ics" -type "componentList" 4 "f[2]" "f[32]" "f[62]" "f[67]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 1 0 0 0 0 2.5 0 0 0.5 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 0.5 0 ;
	setAttr ".rs" 53415;
	setAttr ".ls" -type "double3" 0.5 0.5 0.5 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1.25 0 -1.25 ;
	setAttr ".cbx" -type "double3" 1.25 1 1.25 ;
createNode polyExtrudeFace -n "polyExtrudeFace99";
	setAttr ".ics" -type "componentList" 4 "f[2]" "f[32]" "f[62]" "f[67]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 1 0 0 0 0 2.5 0 0 0.5 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 0.25 0 ;
	setAttr ".rs" 55520;
	setAttr ".lt" -type "double3" 0 0 -0.5 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1.25 0 -1.25 ;
	setAttr ".cbx" -type "double3" 1.25 0.5 1.25 ;
createNode polyTweak -n "polyTweak87";
	setAttr ".uopa" yes;
	setAttr -s 16 ".tk[832:847]" -type "float3"  0 -0.25 0 0 -0.25 0 0 -0.25
		 0 0 -0.25 0 0 -0.25 0 0 -0.25 0 0 -0.25 0 0 -0.25 0 0 -0.25 0 0 -0.25 0 0 -0.25 0
		 0 -0.25 0 0 -0.25 0 0 -0.25 0 0 -0.25 0 0 -0.25 0;
createNode polyCube -n "polyCube12";
	setAttr ".sw" 5;
	setAttr ".sd" 5;
createNode polyExtrudeFace -n "polyExtrudeFace100";
	setAttr ".ics" -type "componentList" 1 "f[5:29]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 1 0 0 0 0 2.5 0 0 0.5 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 1 0 ;
	setAttr ".rs" 53501;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1.25 1 -1.25 ;
	setAttr ".cbx" -type "double3" 1.25 1 1.25 ;
createNode polyExtrudeFace -n "polyExtrudeFace101";
	setAttr ".ics" -type "componentList" 1 "f[5:29]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 1 0 0 0 0 2.5 0 0 0.5 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 1 0 ;
	setAttr ".rs" 38782;
	setAttr ".lt" -type "double3" 0 0 1 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.87499998509883881 1 -0.87499998509883881 ;
	setAttr ".cbx" -type "double3" 0.87499998509883881 1 0.87499998509883881 ;
createNode polyTweak -n "polyTweak88";
	setAttr ".uopa" yes;
	setAttr -s 36 ".tk[56:91]" -type "float3"  0.15000001 0 -0.15000001 0.090000004
		 0 -0.15000001 0.090000004 0 -0.090000004 0.15000001 0 -0.090000004 0.030000005 0
		 -0.15000001 0.030000005 0 -0.090000004 -0.029999997 0 -0.15000001 -0.029999997 0
		 -0.090000004 -0.090000004 0 -0.15000001 -0.090000004 0 -0.090000004 -0.15000001 0
		 -0.15000001 -0.15000001 0 -0.090000004 0.090000004 0 -0.030000005 0.15000001 0 -0.030000005
		 0.030000005 0 -0.030000005 -0.029999997 0 -0.030000005 -0.090000004 0 -0.030000005
		 -0.15000001 0 -0.030000005 0.090000004 0 0.029999997 0.15000001 0 0.029999997 0.030000005
		 0 0.029999997 -0.029999997 0 0.029999997 -0.090000004 0 0.029999997 -0.15000001 0
		 0.029999997 0.090000004 0 0.090000004 0.15000001 0 0.090000004 0.030000005 0 0.090000004
		 -0.029999997 0 0.090000004 -0.090000004 0 0.090000004 -0.15000001 0 0.090000004 0.090000004
		 0 0.15000001 0.15000001 0 0.15000001 0.030000005 0 0.15000001 -0.029999997 0 0.15000001
		 -0.090000004 0 0.15000001 -0.15000001 0 0.15000001;
createNode polyExtrudeFace -n "polyExtrudeFace102";
	setAttr ".ics" -type "componentList" 1 "f[5:29]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 1 0 0 0 0 2.5 0 0 0.5 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 2 0 ;
	setAttr ".rs" 45238;
	setAttr ".lt" -type "double3" 0 0 1 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.87499998509883881 2 -0.87499998509883881 ;
	setAttr ".cbx" -type "double3" 0.87499998509883881 2 0.87499998509883881 ;
createNode polyExtrudeFace -n "polyExtrudeFace103";
	setAttr ".ics" -type "componentList" 1 "f[5:29]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 1 0 0 0 0 2.5 0 0 0.5 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 3 0 ;
	setAttr ".rs" 33620;
	setAttr ".lt" -type "double3" 0 0 1 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.87499998509883881 3 -0.87499998509883881 ;
	setAttr ".cbx" -type "double3" 0.87499998509883881 3 0.87499998509883881 ;
createNode polyExtrudeFace -n "polyExtrudeFace104";
	setAttr ".ics" -type "componentList" 1 "f[5:29]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 1 0 0 0 0 2.5 0 0 0.5 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 4 0 ;
	setAttr ".rs" 50012;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.87499998509883881 4 -0.87499998509883881 ;
	setAttr ".cbx" -type "double3" 0.87499998509883881 4 0.87499998509883881 ;
createNode polyExtrudeFace -n "polyExtrudeFace105";
	setAttr ".ics" -type "componentList" 1 "f[5:29]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 1 0 0 0 0 2.5 0 0 0.5 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 4 0 ;
	setAttr ".rs" 35739;
	setAttr ".lt" -type "double3" 0 0 1 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.4374999925494194 4 -0.4374999925494194 ;
	setAttr ".cbx" -type "double3" 0.4374999925494194 4 0.4374999925494194 ;
createNode polyTweak -n "polyTweak89";
	setAttr ".uopa" yes;
	setAttr -s 36 ".tk[136:171]" -type "float3"  0.175 0 -0.175 0.10500001
		 0 -0.175 0.10500001 0 -0.10500001 0.175 0 -0.10500001 0.035000004 0 -0.175 0.035000004
		 0 -0.10500001 -0.034999996 0 -0.175 -0.034999996 0 -0.10500001 -0.10500001 0 -0.175
		 -0.10500001 0 -0.10500001 -0.175 0 -0.175 -0.175 0 -0.10500001 0.10500001 0 -0.035000004
		 0.175 0 -0.035000004 0.035000004 0 -0.035000004 -0.034999996 0 -0.035000004 -0.10500001
		 0 -0.035000004 -0.175 0 -0.035000004 0.10500001 0 0.034999996 0.175 0 0.034999996
		 0.035000004 0 0.034999996 -0.034999996 0 0.034999996 -0.10500001 0 0.034999996 -0.175
		 0 0.034999996 0.10500001 0 0.10500001 0.175 0 0.10500001 0.035000004 0 0.10500001
		 -0.034999996 0 0.10500001 -0.10500001 0 0.10500001 -0.175 0 0.10500001 0.10500001
		 0 0.175 0.175 0 0.175 0.035000004 0 0.175 -0.034999996 0 0.175 -0.10500001 0 0.175
		 -0.175 0 0.175;
createNode polyExtrudeFace -n "polyExtrudeFace106";
	setAttr ".ics" -type "componentList" 2 "f[90:149]" "f[170:189]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 1 0 0 0 0 2.5 0 0 0.5 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 3 0 ;
	setAttr ".rs" 35311;
	setAttr ".ls" -type "double3" 0.5 0.5 0.5 ;
	setAttr ".kft" no;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.87499998509883881 1 -0.87499998509883881 ;
	setAttr ".cbx" -type "double3" 0.87499998509883881 5 0.87499998509883881 ;
createNode polyExtrudeFace -n "polyExtrudeFace107";
	setAttr ".ics" -type "componentList" 2 "f[90:149]" "f[170:189]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 1 0 0 0 0 2.5 0 0 0.5 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 3 0 ;
	setAttr ".rs" 47422;
	setAttr ".lt" -type "double3" 0 0 -0.2 ;
	setAttr ".kft" no;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.87499998509883881 1.25 -0.87499998509883881 ;
	setAttr ".cbx" -type "double3" 0.87499998509883881 4.75 0.87499998509883881 ;
createNode polyExtrudeFace -n "polyExtrudeFace108";
	setAttr ".ics" -type "componentList" 4 "f[2]" "f[32]" "f[62]" "f[67]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 1 0 0 0 0 2.5 0 0 0.5 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 0.5 0 ;
	setAttr ".rs" 42595;
	setAttr ".ls" -type "double3" 0.5 0.5 0.5 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1.25 0 -1.25 ;
	setAttr ".cbx" -type "double3" 1.25 1 1.25 ;
createNode polyExtrudeFace -n "polyExtrudeFace109";
	setAttr ".ics" -type "componentList" 4 "f[2]" "f[32]" "f[62]" "f[67]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 1 0 0 0 0 2.5 0 0 0.5 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 0.25 0 ;
	setAttr ".rs" 32873;
	setAttr ".lt" -type "double3" 0 0 -0.5 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1.25 0 -1.25 ;
	setAttr ".cbx" -type "double3" 1.25 0.5 1.25 ;
createNode polyTweak -n "polyTweak90";
	setAttr ".uopa" yes;
	setAttr -s 16 ".tk[832:847]" -type "float3"  0 -0.25 0 0 -0.25 0 0 -0.25
		 0 0 -0.25 0 0 -0.25 0 0 -0.25 0 0 -0.25 0 0 -0.25 0 0 -0.25 0 0 -0.25 0 0 -0.25 0
		 0 -0.25 0 0 -0.25 0 0 -0.25 0 0 -0.25 0 0 -0.25 0;
createNode polyCube -n "polyCube13";
	setAttr ".sw" 5;
	setAttr ".sd" 5;
createNode polyExtrudeFace -n "polyExtrudeFace110";
	setAttr ".ics" -type "componentList" 1 "f[5:29]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 1 0 0 0 0 2.5 0 0 0.5 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 1 0 ;
	setAttr ".rs" 60652;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1.25 1 -1.25 ;
	setAttr ".cbx" -type "double3" 1.25 1 1.25 ;
createNode polyExtrudeFace -n "polyExtrudeFace111";
	setAttr ".ics" -type "componentList" 1 "f[5:29]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 1 0 0 0 0 2.5 0 0 0.5 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 1 0 ;
	setAttr ".rs" 55950;
	setAttr ".lt" -type "double3" 0 0 1 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.87499998509883881 1 -0.87499998509883881 ;
	setAttr ".cbx" -type "double3" 0.87499998509883881 1 0.87499998509883881 ;
createNode polyTweak -n "polyTweak91";
	setAttr ".uopa" yes;
	setAttr -s 36 ".tk[56:91]" -type "float3"  0.15000001 0 -0.15000001 0.090000004
		 0 -0.15000001 0.090000004 0 -0.090000004 0.15000001 0 -0.090000004 0.030000005 0
		 -0.15000001 0.030000005 0 -0.090000004 -0.029999997 0 -0.15000001 -0.029999997 0
		 -0.090000004 -0.090000004 0 -0.15000001 -0.090000004 0 -0.090000004 -0.15000001 0
		 -0.15000001 -0.15000001 0 -0.090000004 0.090000004 0 -0.030000005 0.15000001 0 -0.030000005
		 0.030000005 0 -0.030000005 -0.029999997 0 -0.030000005 -0.090000004 0 -0.030000005
		 -0.15000001 0 -0.030000005 0.090000004 0 0.029999997 0.15000001 0 0.029999997 0.030000005
		 0 0.029999997 -0.029999997 0 0.029999997 -0.090000004 0 0.029999997 -0.15000001 0
		 0.029999997 0.090000004 0 0.090000004 0.15000001 0 0.090000004 0.030000005 0 0.090000004
		 -0.029999997 0 0.090000004 -0.090000004 0 0.090000004 -0.15000001 0 0.090000004 0.090000004
		 0 0.15000001 0.15000001 0 0.15000001 0.030000005 0 0.15000001 -0.029999997 0 0.15000001
		 -0.090000004 0 0.15000001 -0.15000001 0 0.15000001;
createNode polyExtrudeFace -n "polyExtrudeFace112";
	setAttr ".ics" -type "componentList" 1 "f[5:29]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 1 0 0 0 0 2.5 0 0 0.5 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 2 0 ;
	setAttr ".rs" 51427;
	setAttr ".lt" -type "double3" 0 0 1 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.87499998509883881 2 -0.87499998509883881 ;
	setAttr ".cbx" -type "double3" 0.87499998509883881 2 0.87499998509883881 ;
createNode polyExtrudeFace -n "polyExtrudeFace113";
	setAttr ".ics" -type "componentList" 1 "f[5:29]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 1 0 0 0 0 2.5 0 0 0.5 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 3 0 ;
	setAttr ".rs" 60909;
	setAttr ".lt" -type "double3" 0 0 1 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.87499998509883881 3 -0.87499998509883881 ;
	setAttr ".cbx" -type "double3" 0.87499998509883881 3 0.87499998509883881 ;
createNode polyExtrudeFace -n "polyExtrudeFace114";
	setAttr ".ics" -type "componentList" 1 "f[5:29]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 1 0 0 0 0 2.5 0 0 0.5 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 4 0 ;
	setAttr ".rs" 56456;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.87499998509883881 4 -0.87499998509883881 ;
	setAttr ".cbx" -type "double3" 0.87499998509883881 4 0.87499998509883881 ;
createNode polyExtrudeFace -n "polyExtrudeFace115";
	setAttr ".ics" -type "componentList" 1 "f[5:29]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 1 0 0 0 0 2.5 0 0 0.5 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 4 0 ;
	setAttr ".rs" 34195;
	setAttr ".lt" -type "double3" 0 0 1 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.4374999925494194 4 -0.4374999925494194 ;
	setAttr ".cbx" -type "double3" 0.4374999925494194 4 0.4374999925494194 ;
createNode polyTweak -n "polyTweak92";
	setAttr ".uopa" yes;
	setAttr -s 36 ".tk[136:171]" -type "float3"  0.175 0 -0.175 0.10500001
		 0 -0.175 0.10500001 0 -0.10500001 0.175 0 -0.10500001 0.035000004 0 -0.175 0.035000004
		 0 -0.10500001 -0.034999996 0 -0.175 -0.034999996 0 -0.10500001 -0.10500001 0 -0.175
		 -0.10500001 0 -0.10500001 -0.175 0 -0.175 -0.175 0 -0.10500001 0.10500001 0 -0.035000004
		 0.175 0 -0.035000004 0.035000004 0 -0.035000004 -0.034999996 0 -0.035000004 -0.10500001
		 0 -0.035000004 -0.175 0 -0.035000004 0.10500001 0 0.034999996 0.175 0 0.034999996
		 0.035000004 0 0.034999996 -0.034999996 0 0.034999996 -0.10500001 0 0.034999996 -0.175
		 0 0.034999996 0.10500001 0 0.10500001 0.175 0 0.10500001 0.035000004 0 0.10500001
		 -0.034999996 0 0.10500001 -0.10500001 0 0.10500001 -0.175 0 0.10500001 0.10500001
		 0 0.175 0.175 0 0.175 0.035000004 0 0.175 -0.034999996 0 0.175 -0.10500001 0 0.175
		 -0.175 0 0.175;
createNode polyExtrudeFace -n "polyExtrudeFace116";
	setAttr ".ics" -type "componentList" 2 "f[90:149]" "f[170:189]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 1 0 0 0 0 2.5 0 0 0.5 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 3 0 ;
	setAttr ".rs" 37780;
	setAttr ".ls" -type "double3" 0.5 0.5 0.5 ;
	setAttr ".kft" no;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.87499998509883881 1 -0.87499998509883881 ;
	setAttr ".cbx" -type "double3" 0.87499998509883881 5 0.87499998509883881 ;
createNode polyExtrudeFace -n "polyExtrudeFace117";
	setAttr ".ics" -type "componentList" 2 "f[90:149]" "f[170:189]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 1 0 0 0 0 2.5 0 0 0.5 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 3 0 ;
	setAttr ".rs" 55195;
	setAttr ".lt" -type "double3" 0 0 -0.2 ;
	setAttr ".kft" no;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.87499998509883881 1.25 -0.87499998509883881 ;
	setAttr ".cbx" -type "double3" 0.87499998509883881 4.75 0.87499998509883881 ;
createNode polyExtrudeFace -n "polyExtrudeFace118";
	setAttr ".ics" -type "componentList" 4 "f[2]" "f[32]" "f[62]" "f[67]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 1 0 0 0 0 2.5 0 0 0.5 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 0.5 0 ;
	setAttr ".rs" 54913;
	setAttr ".ls" -type "double3" 0.5 0.5 0.5 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1.25 0 -1.25 ;
	setAttr ".cbx" -type "double3" 1.25 1 1.25 ;
createNode polyExtrudeFace -n "polyExtrudeFace119";
	setAttr ".ics" -type "componentList" 4 "f[2]" "f[32]" "f[62]" "f[67]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 1 0 0 0 0 2.5 0 0 0.5 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 0.25 0 ;
	setAttr ".rs" 45242;
	setAttr ".lt" -type "double3" 0 0 -0.5 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1.25 0 -1.25 ;
	setAttr ".cbx" -type "double3" 1.25 0.5 1.25 ;
createNode polyTweak -n "polyTweak93";
	setAttr ".uopa" yes;
	setAttr -s 16 ".tk[832:847]" -type "float3"  0 -0.25 0 0 -0.25 0 0 -0.25
		 0 0 -0.25 0 0 -0.25 0 0 -0.25 0 0 -0.25 0 0 -0.25 0 0 -0.25 0 0 -0.25 0 0 -0.25 0
		 0 -0.25 0 0 -0.25 0 0 -0.25 0 0 -0.25 0 0 -0.25 0;
createNode polyCube -n "polyCube14";
	setAttr ".sw" 3;
	setAttr ".sd" 3;
createNode polySplitRing -n "polySplitRing14";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 8 "e[1]" "e[4]" "e[7]" "e[10]" "e[13]" "e[16]" "e[19]" "e[22]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 1 0 0 0 0 2.5 0 0 0.5 0 1;
	setAttr ".stp" 2;
	setAttr ".p[0]"  0 0 1;
createNode polySplitRing -n "polySplitRing15";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 6 "e[32:35]" "e[48:51]" "e[66]" "e[74]" "e[82]" "e[90]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 1 0 0 0 0 2.5 0 0 0.5 0 1;
	setAttr ".stp" 2;
	setAttr ".p[0]"  0 0 1;
createNode polyTweak -n "polyTweak94";
	setAttr ".uopa" yes;
	setAttr -s 16 ".tk[32:47]" -type "float3"  0.083333343 0 0 0.083333343
		 0 0 0.083333343 0 0 0.083333343 0 0 0.083333343 0 0 0.083333343 0 0 0.083333343 0
		 0 0.083333343 0 0 -0.083333321 0 0 -0.083333321 0 0 -0.083333321 0 0 -0.083333321
		 0 0 -0.083333321 0 0 -0.083333321 0 0 -0.083333321 0 0 -0.083333321 0 0;
createNode polyExtrudeFace -n "polyExtrudeFace120";
	setAttr ".ics" -type "componentList" 5 "f[3:11]" "f[31:33]" "f[39:41]" "f[53:57]" "f[65:69]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 1 0 0 0 0 2.5 0 0 0.5 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 1 0 ;
	setAttr ".rs" 50045;
	setAttr ".ls" -type "double3" 0.005 0.005 0.005 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1.25 1 -1.25 ;
	setAttr ".cbx" -type "double3" 1.25 1 1.25 ;
createNode polyTweak -n "polyTweak95";
	setAttr ".uopa" yes;
	setAttr -s 32 ".tk";
	setAttr ".tk[32]" -type "float3" 0 0 -0.1 ;
	setAttr ".tk[33]" -type "float3" 0 0 -0.1 ;
	setAttr ".tk[36]" -type "float3" 0 0 0.1 ;
	setAttr ".tk[37]" -type "float3" 0 0 0.1 ;
	setAttr ".tk[40]" -type "float3" 0 0 -0.1 ;
	setAttr ".tk[41]" -type "float3" 0 0 -0.1 ;
	setAttr ".tk[44]" -type "float3" 0 0 0.1 ;
	setAttr ".tk[45]" -type "float3" 0 0 0.1 ;
	setAttr ".tk[48]" -type "float3" 0.1 0 -0.083333343 ;
	setAttr ".tk[49]" -type "float3" 0.1 0 -0.083333299 ;
	setAttr ".tk[50]" -type "float3" 0 0 -0.083333299 ;
	setAttr ".tk[51]" -type "float3" 0 0 -0.083333299 ;
	setAttr ".tk[52]" -type "float3" 0 0 -0.083333299 ;
	setAttr ".tk[53]" -type "float3" 0 0 -0.083333299 ;
	setAttr ".tk[54]" -type "float3" -0.1 0 -0.083333299 ;
	setAttr ".tk[55]" -type "float3" -0.1 0 -0.083333343 ;
	setAttr ".tk[56]" -type "float3" 0 0 -0.083333343 ;
	setAttr ".tk[57]" -type "float3" 0 0 -0.083333343 ;
	setAttr ".tk[58]" -type "float3" 0 0 -0.083333343 ;
	setAttr ".tk[59]" -type "float3" 0 0 -0.083333343 ;
	setAttr ".tk[60]" -type "float3" 0.1 0 0.083333321 ;
	setAttr ".tk[61]" -type "float3" 0.1 0 0.083333366 ;
	setAttr ".tk[62]" -type "float3" 0 0 0.083333366 ;
	setAttr ".tk[63]" -type "float3" 0 0 0.083333366 ;
	setAttr ".tk[64]" -type "float3" 0 0 0.083333366 ;
	setAttr ".tk[65]" -type "float3" 0 0 0.083333366 ;
	setAttr ".tk[66]" -type "float3" -0.1 0 0.083333366 ;
	setAttr ".tk[67]" -type "float3" -0.1 0 0.083333321 ;
	setAttr ".tk[68]" -type "float3" 0 0 0.083333321 ;
	setAttr ".tk[69]" -type "float3" 0 0 0.083333321 ;
	setAttr ".tk[70]" -type "float3" 0 0 0.083333321 ;
	setAttr ".tk[71]" -type "float3" 0 0 0.083333321 ;
createNode polyExtrudeFace -n "polyExtrudeFace121";
	setAttr ".ics" -type "componentList" 5 "f[3:11]" "f[31:33]" "f[39:41]" "f[53:57]" "f[65:69]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 1 0 0 0 0 2.5 0 0 0.5 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 3.7252903e-008 1 -3.7252903e-008 ;
	setAttr ".rs" 39913;
	setAttr ".lt" -type "double3" 0 0 2 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.8354167640209198 1 -0.83541683852672577 ;
	setAttr ".cbx" -type "double3" 0.83541683852672577 1 0.8354167640209198 ;
createNode polyExtrudeFace -n "polyExtrudeFace122";
	setAttr ".ics" -type "componentList" 5 "f[3:11]" "f[31:33]" "f[39:41]" "f[53:57]" "f[65:69]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 1 0 0 0 0 2.5 0 0 0.5 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 3 0 ;
	setAttr ".rs" 46094;
	setAttr ".ls" -type "double3" 0.005 0.005 0.005 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.83541683852672577 3 -0.83541683852672577 ;
	setAttr ".cbx" -type "double3" 0.83541683852672577 3 0.83541683852672577 ;
createNode polyExtrudeFace -n "polyExtrudeFace123";
	setAttr ".ics" -type "componentList" 5 "f[3:11]" "f[31:33]" "f[39:41]" "f[53:57]" "f[65:69]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 1 0 0 0 0 2.5 0 0 0.5 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 7.4505806e-008 3 -3.7252903e-008 ;
	setAttr ".rs" 51587;
	setAttr ".lt" -type "double3" 0 0 2 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.64832583069801331 2.9999997615814209 -0.64832590520381927 ;
	setAttr ".cbx" -type "double3" 0.64832597970962524 3 0.64832583069801331 ;
createNode polyCube -n "polyCube15";
	setAttr ".sw" 3;
	setAttr ".sd" 3;
createNode polySplitRing -n "polySplitRing16";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 8 "e[1]" "e[4]" "e[7]" "e[10]" "e[13]" "e[16]" "e[19]" "e[22]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 1 0 0 0 0 2.5 0 0 0.5 0 1;
	setAttr ".stp" 2;
	setAttr ".p[0]"  0 0 1;
createNode polySplitRing -n "polySplitRing17";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 6 "e[32:35]" "e[48:51]" "e[66]" "e[74]" "e[82]" "e[90]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 1 0 0 0 0 2.5 0 0 0.5 0 1;
	setAttr ".stp" 2;
	setAttr ".p[0]"  0 0 1;
createNode polyTweak -n "polyTweak96";
	setAttr ".uopa" yes;
	setAttr -s 16 ".tk[32:47]" -type "float3"  0.083333343 0 0 0.083333343
		 0 0 0.083333343 0 0 0.083333343 0 0 0.083333343 0 0 0.083333343 0 0 0.083333343 0
		 0 0.083333343 0 0 -0.083333321 0 0 -0.083333321 0 0 -0.083333321 0 0 -0.083333321
		 0 0 -0.083333321 0 0 -0.083333321 0 0 -0.083333321 0 0 -0.083333321 0 0;
createNode polyExtrudeFace -n "polyExtrudeFace124";
	setAttr ".ics" -type "componentList" 5 "f[3:11]" "f[31:33]" "f[39:41]" "f[53:57]" "f[65:69]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 1 0 0 0 0 2.5 0 0 0.5 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 1 0 ;
	setAttr ".rs" 48463;
	setAttr ".ls" -type "double3" 0.005 0.005 0.005 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1.25 1 -1.25 ;
	setAttr ".cbx" -type "double3" 1.25 1 1.25 ;
createNode polyTweak -n "polyTweak97";
	setAttr ".uopa" yes;
	setAttr -s 32 ".tk";
	setAttr ".tk[32]" -type "float3" 0 0 -0.1 ;
	setAttr ".tk[33]" -type "float3" 0 0 -0.1 ;
	setAttr ".tk[36]" -type "float3" 0 0 0.1 ;
	setAttr ".tk[37]" -type "float3" 0 0 0.1 ;
	setAttr ".tk[40]" -type "float3" 0 0 -0.1 ;
	setAttr ".tk[41]" -type "float3" 0 0 -0.1 ;
	setAttr ".tk[44]" -type "float3" 0 0 0.1 ;
	setAttr ".tk[45]" -type "float3" 0 0 0.1 ;
	setAttr ".tk[48]" -type "float3" 0.1 0 -0.083333343 ;
	setAttr ".tk[49]" -type "float3" 0.1 0 -0.083333299 ;
	setAttr ".tk[50]" -type "float3" 0 0 -0.083333299 ;
	setAttr ".tk[51]" -type "float3" 0 0 -0.083333299 ;
	setAttr ".tk[52]" -type "float3" 0 0 -0.083333299 ;
	setAttr ".tk[53]" -type "float3" 0 0 -0.083333299 ;
	setAttr ".tk[54]" -type "float3" -0.1 0 -0.083333299 ;
	setAttr ".tk[55]" -type "float3" -0.1 0 -0.083333343 ;
	setAttr ".tk[56]" -type "float3" 0 0 -0.083333343 ;
	setAttr ".tk[57]" -type "float3" 0 0 -0.083333343 ;
	setAttr ".tk[58]" -type "float3" 0 0 -0.083333343 ;
	setAttr ".tk[59]" -type "float3" 0 0 -0.083333343 ;
	setAttr ".tk[60]" -type "float3" 0.1 0 0.083333321 ;
	setAttr ".tk[61]" -type "float3" 0.1 0 0.083333366 ;
	setAttr ".tk[62]" -type "float3" 0 0 0.083333366 ;
	setAttr ".tk[63]" -type "float3" 0 0 0.083333366 ;
	setAttr ".tk[64]" -type "float3" 0 0 0.083333366 ;
	setAttr ".tk[65]" -type "float3" 0 0 0.083333366 ;
	setAttr ".tk[66]" -type "float3" -0.1 0 0.083333366 ;
	setAttr ".tk[67]" -type "float3" -0.1 0 0.083333321 ;
	setAttr ".tk[68]" -type "float3" 0 0 0.083333321 ;
	setAttr ".tk[69]" -type "float3" 0 0 0.083333321 ;
	setAttr ".tk[70]" -type "float3" 0 0 0.083333321 ;
	setAttr ".tk[71]" -type "float3" 0 0 0.083333321 ;
createNode polyExtrudeFace -n "polyExtrudeFace125";
	setAttr ".ics" -type "componentList" 5 "f[3:11]" "f[31:33]" "f[39:41]" "f[53:57]" "f[65:69]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 1 0 0 0 0 2.5 0 0 0.5 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 3.7252903e-008 1 -3.7252903e-008 ;
	setAttr ".rs" 42058;
	setAttr ".lt" -type "double3" 0 0 2 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.8354167640209198 1 -0.83541683852672577 ;
	setAttr ".cbx" -type "double3" 0.83541683852672577 1 0.8354167640209198 ;
createNode polyExtrudeFace -n "polyExtrudeFace126";
	setAttr ".ics" -type "componentList" 5 "f[3:11]" "f[31:33]" "f[39:41]" "f[53:57]" "f[65:69]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 1 0 0 0 0 2.5 0 0 0.5 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 3 0 ;
	setAttr ".rs" 35856;
	setAttr ".ls" -type "double3" 0.005 0.005 0.005 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.83541683852672577 3 -0.83541683852672577 ;
	setAttr ".cbx" -type "double3" 0.83541683852672577 3 0.83541683852672577 ;
createNode polyExtrudeFace -n "polyExtrudeFace127";
	setAttr ".ics" -type "componentList" 5 "f[3:11]" "f[31:33]" "f[39:41]" "f[53:57]" "f[65:69]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 1 0 0 0 0 2.5 0 0 0.5 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 7.4505806e-008 3 -3.7252903e-008 ;
	setAttr ".rs" 44364;
	setAttr ".lt" -type "double3" 0 0 2 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.64832583069801331 2.9999997615814209 -0.64832590520381927 ;
	setAttr ".cbx" -type "double3" 0.64832597970962524 3 0.64832583069801331 ;
createNode polyCube -n "polyCube16";
	setAttr ".sw" 3;
	setAttr ".sd" 3;
createNode polySplitRing -n "polySplitRing18";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 8 "e[1]" "e[4]" "e[7]" "e[10]" "e[13]" "e[16]" "e[19]" "e[22]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 1 0 0 0 0 2.5 0 0 0.5 0 1;
	setAttr ".stp" 2;
	setAttr ".p[0]"  0 0 1;
createNode polySplitRing -n "polySplitRing19";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 6 "e[32:35]" "e[48:51]" "e[66]" "e[74]" "e[82]" "e[90]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 1 0 0 0 0 2.5 0 0 0.5 0 1;
	setAttr ".stp" 2;
	setAttr ".p[0]"  0 0 1;
createNode polyTweak -n "polyTweak98";
	setAttr ".uopa" yes;
	setAttr -s 16 ".tk[32:47]" -type "float3"  0.083333343 0 0 0.083333343
		 0 0 0.083333343 0 0 0.083333343 0 0 0.083333343 0 0 0.083333343 0 0 0.083333343 0
		 0 0.083333343 0 0 -0.083333321 0 0 -0.083333321 0 0 -0.083333321 0 0 -0.083333321
		 0 0 -0.083333321 0 0 -0.083333321 0 0 -0.083333321 0 0 -0.083333321 0 0;
createNode polyExtrudeFace -n "polyExtrudeFace128";
	setAttr ".ics" -type "componentList" 5 "f[3:11]" "f[31:33]" "f[39:41]" "f[53:57]" "f[65:69]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 1 0 0 0 0 2.5 0 0 0.5 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 1 0 ;
	setAttr ".rs" 62671;
	setAttr ".ls" -type "double3" 0.005 0.005 0.005 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1.25 1 -1.25 ;
	setAttr ".cbx" -type "double3" 1.25 1 1.25 ;
createNode polyTweak -n "polyTweak99";
	setAttr ".uopa" yes;
	setAttr -s 32 ".tk";
	setAttr ".tk[32]" -type "float3" 0 0 -0.1 ;
	setAttr ".tk[33]" -type "float3" 0 0 -0.1 ;
	setAttr ".tk[36]" -type "float3" 0 0 0.1 ;
	setAttr ".tk[37]" -type "float3" 0 0 0.1 ;
	setAttr ".tk[40]" -type "float3" 0 0 -0.1 ;
	setAttr ".tk[41]" -type "float3" 0 0 -0.1 ;
	setAttr ".tk[44]" -type "float3" 0 0 0.1 ;
	setAttr ".tk[45]" -type "float3" 0 0 0.1 ;
	setAttr ".tk[48]" -type "float3" 0.1 0 -0.083333343 ;
	setAttr ".tk[49]" -type "float3" 0.1 0 -0.083333299 ;
	setAttr ".tk[50]" -type "float3" 0 0 -0.083333299 ;
	setAttr ".tk[51]" -type "float3" 0 0 -0.083333299 ;
	setAttr ".tk[52]" -type "float3" 0 0 -0.083333299 ;
	setAttr ".tk[53]" -type "float3" 0 0 -0.083333299 ;
	setAttr ".tk[54]" -type "float3" -0.1 0 -0.083333299 ;
	setAttr ".tk[55]" -type "float3" -0.1 0 -0.083333343 ;
	setAttr ".tk[56]" -type "float3" 0 0 -0.083333343 ;
	setAttr ".tk[57]" -type "float3" 0 0 -0.083333343 ;
	setAttr ".tk[58]" -type "float3" 0 0 -0.083333343 ;
	setAttr ".tk[59]" -type "float3" 0 0 -0.083333343 ;
	setAttr ".tk[60]" -type "float3" 0.1 0 0.083333321 ;
	setAttr ".tk[61]" -type "float3" 0.1 0 0.083333366 ;
	setAttr ".tk[62]" -type "float3" 0 0 0.083333366 ;
	setAttr ".tk[63]" -type "float3" 0 0 0.083333366 ;
	setAttr ".tk[64]" -type "float3" 0 0 0.083333366 ;
	setAttr ".tk[65]" -type "float3" 0 0 0.083333366 ;
	setAttr ".tk[66]" -type "float3" -0.1 0 0.083333366 ;
	setAttr ".tk[67]" -type "float3" -0.1 0 0.083333321 ;
	setAttr ".tk[68]" -type "float3" 0 0 0.083333321 ;
	setAttr ".tk[69]" -type "float3" 0 0 0.083333321 ;
	setAttr ".tk[70]" -type "float3" 0 0 0.083333321 ;
	setAttr ".tk[71]" -type "float3" 0 0 0.083333321 ;
createNode polyExtrudeFace -n "polyExtrudeFace129";
	setAttr ".ics" -type "componentList" 5 "f[3:11]" "f[31:33]" "f[39:41]" "f[53:57]" "f[65:69]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 1 0 0 0 0 2.5 0 0 0.5 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 3.7252903e-008 1 -3.7252903e-008 ;
	setAttr ".rs" 48720;
	setAttr ".lt" -type "double3" 0 0 2 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.8354167640209198 1 -0.83541683852672577 ;
	setAttr ".cbx" -type "double3" 0.83541683852672577 1 0.8354167640209198 ;
createNode polyExtrudeFace -n "polyExtrudeFace130";
	setAttr ".ics" -type "componentList" 5 "f[3:11]" "f[31:33]" "f[39:41]" "f[53:57]" "f[65:69]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 1 0 0 0 0 2.5 0 0 0.5 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 3 0 ;
	setAttr ".rs" 56344;
	setAttr ".ls" -type "double3" 0.005 0.005 0.005 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.83541683852672577 3 -0.83541683852672577 ;
	setAttr ".cbx" -type "double3" 0.83541683852672577 3 0.83541683852672577 ;
createNode polyExtrudeFace -n "polyExtrudeFace131";
	setAttr ".ics" -type "componentList" 5 "f[3:11]" "f[31:33]" "f[39:41]" "f[53:57]" "f[65:69]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 1 0 0 0 0 2.5 0 0 0.5 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 7.4505806e-008 3 -3.7252903e-008 ;
	setAttr ".rs" 34274;
	setAttr ".lt" -type "double3" 0 0 2 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.64832583069801331 2.9999997615814209 -0.64832590520381927 ;
	setAttr ".cbx" -type "double3" 0.64832597970962524 3 0.64832583069801331 ;
createNode polyCube -n "polyCube17";
createNode polyExtrudeFace -n "polyExtrudeFace132";
	setAttr ".ics" -type "componentList" 3 "f[0]" "f[2]" "f[4:5]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 2 0 0 0 0 2.5 0 0 1 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 1 0 ;
	setAttr ".rs" 58282;
	setAttr ".lt" -type "double3" 0 0 0.2 ;
	setAttr ".ls" -type "double3" 0.5 1 1 ;
	setAttr ".kft" no;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1.25 0 -1.25 ;
	setAttr ".cbx" -type "double3" 1.25 2 1.25 ;
createNode polyExtrudeFace -n "polyExtrudeFace133";
	setAttr ".ics" -type "componentList" 3 "f[0]" "f[2]" "f[4:5]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 2 0 0 0 0 2.5 0 0 1 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 1 0 ;
	setAttr ".rs" 52755;
	setAttr ".lt" -type "double3" 0 0 0.4 ;
	setAttr ".kft" no;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1.4500001072883606 0 -1.4500001072883606 ;
	setAttr ".cbx" -type "double3" 1.4500001072883606 2 1.4500001072883606 ;
createNode polyExtrudeFace -n "polyExtrudeFace134";
	setAttr ".ics" -type "componentList" 3 "f[0]" "f[2]" "f[4:5]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 2 0 0 0 0 2.5 0 0 1 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 1 0 ;
	setAttr ".rs" 43852;
	setAttr ".ls" -type "double3" 0.5 0.5 1 ;
	setAttr ".kft" no;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1.8500001728534698 0 -1.8500001728534698 ;
	setAttr ".cbx" -type "double3" 1.8500001728534698 2 1.8500001728534698 ;
createNode polyExtrudeFace -n "polyExtrudeFace135";
	setAttr ".ics" -type "componentList" 3 "f[0]" "f[2]" "f[4:5]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 2 0 0 0 0 2.5 0 0 1 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 0.5 0 ;
	setAttr ".rs" 63677;
	setAttr ".lt" -type "double3" 0 0 -0.2 ;
	setAttr ".ls" -type "double3" 0.8 0.8 0.8 ;
	setAttr ".kft" no;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1.8500001728534698 0 -1.8500001728534698 ;
	setAttr ".cbx" -type "double3" 1.8500001728534698 1 1.8500001728534698 ;
createNode polyTweak -n "polyTweak100";
	setAttr ".uopa" yes;
	setAttr -s 16 ".tk[40:55]" -type "float3"  0 -0.25 0 0 -0.25 0 0 -0.25
		 0 0 -0.25 0 0 -0.25 0 0 -0.25 0 0 -0.25 0 0 -0.25 0 0 -0.25 0 0 -0.25 0 0 -0.25 0
		 0 -0.25 0 0 -0.25 0 0 -0.25 0 0 -0.25 0 0 -0.25 0;
createNode polyExtrudeFace -n "polyExtrudeFace136";
	setAttr ".ics" -type "componentList" 9 "f[1]" "f[8]" "f[10]" "f[16]" "f[20]" "f[24]" "f[26]" "f[32]" "f[36]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 2 0 0 0 0 2.5 0 0 1 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 2 0 ;
	setAttr ".rs" 62777;
	setAttr ".lt" -type "double3" 0 0 0.3 ;
	setAttr ".ls" -type "double3" 0.35 0.35 0.35 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1.8500001728534698 2 -1.8500001728534698 ;
	setAttr ".cbx" -type "double3" 1.8500001728534698 2 1.8500001728534698 ;
createNode polyExtrudeFace -n "polyExtrudeFace137";
	setAttr ".ics" -type "componentList" 9 "f[1]" "f[8]" "f[10]" "f[16]" "f[20]" "f[24]" "f[26]" "f[32]" "f[36]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 2 0 0 0 0 2.5 0 0 1 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 2.3000002 0 ;
	setAttr ".rs" 50086;
	setAttr ".lt" -type "double3" 0 0 0.5 ;
	setAttr ".ls" -type "double3" 0.35 0.35 0.35 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1.7200000584125519 2.3000001907348633 -1.7200000584125519 ;
	setAttr ".cbx" -type "double3" 1.7200000584125519 2.3000001907348633 1.7200000584125519 ;
createNode polyExtrudeFace -n "polyExtrudeFace138";
	setAttr ".ics" -type "componentList" 1 "f[1]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 2 0 0 0 0 2.5 0 0 1 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 2.8000002 0 ;
	setAttr ".rs" 54425;
	setAttr ".lt" -type "double3" 0 0 2 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.65217815339565277 2.8000001907348633 -0.65217815339565277 ;
	setAttr ".cbx" -type "double3" 0.65217815339565277 2.8000001907348633 0.65217815339565277 ;
createNode polyExtrudeFace -n "polyExtrudeFace139";
	setAttr ".ics" -type "componentList" 1 "f[1]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 2 0 0 0 0 2.5 0 0 1 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 4.8000002 0 ;
	setAttr ".rs" 37660;
	setAttr ".lt" -type "double3" 0 0 0.2 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.65217815339565277 4.8000001907348633 -0.65217815339565277 ;
	setAttr ".cbx" -type "double3" 0.65217815339565277 4.8000001907348633 0.65217815339565277 ;
createNode polyExtrudeFace -n "polyExtrudeFace140";
	setAttr ".ics" -type "componentList" 1 "f[1]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 2 0 0 0 0 2.5 0 0 1 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 5 0 ;
	setAttr ".rs" 33500;
	setAttr ".lt" -type "double3" 0 0 2 ;
	setAttr ".ls" -type "double3" 0 0 0 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.65217815339565277 5 -0.65217815339565277 ;
	setAttr ".cbx" -type "double3" 0.65217815339565277 5 0.65217815339565277 ;
createNode polyExtrudeFace -n "polyExtrudeFace141";
	setAttr ".ics" -type "componentList" 1 "f[110:113]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 2 0 0 0 0 2.5 0 0 1 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 3.8000002 0 ;
	setAttr ".rs" 46367;
	setAttr ".ls" -type "double3" 0.5 0.5 0.5 ;
	setAttr ".kft" no;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.65217815339565277 2.8000001907348633 -0.65217815339565277 ;
	setAttr ".cbx" -type "double3" 0.65217815339565277 4.8000001907348633 0.65217815339565277 ;
createNode polyExtrudeFace -n "polyExtrudeFace142";
	setAttr ".ics" -type "componentList" 1 "f[110:113]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 2 0 0 0 0 2.5 0 0 1 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 3.8000002 0 ;
	setAttr ".rs" 63792;
	setAttr ".lt" -type "double3" 0 0 -0.3 ;
	setAttr ".kft" no;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.65217815339565277 3.3000001907348633 -0.65217815339565277 ;
	setAttr ".cbx" -type "double3" 0.65217815339565277 4.3000001907348633 0.65217815339565277 ;
createNode polyExtrudeFace -n "polyExtrudeFace143";
	setAttr ".ics" -type "componentList" 1 "f[114:117]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 2 0 0 0 0 2.5 0 0 1 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 4.9000001 0 ;
	setAttr ".rs" 55233;
	setAttr ".lt" -type "double3" 0 0 0.2 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.65217815339565277 4.8000001907348633 -0.65217815339565277 ;
	setAttr ".cbx" -type "double3" 0.65217815339565277 5 0.65217815339565277 ;
createNode polyCube -n "polyCube18";
	setAttr ".sw" 5;
	setAttr ".sd" 5;
createNode polyExtrudeFace -n "polyExtrudeFace144";
	setAttr ".ics" -type "componentList" 1 "f[5:29]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 1 0 0 0 0 2.5 0 0 0.5 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 1 0 ;
	setAttr ".rs" 38068;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1.25 1 -1.25 ;
	setAttr ".cbx" -type "double3" 1.25 1 1.25 ;
createNode polyExtrudeFace -n "polyExtrudeFace145";
	setAttr ".ics" -type "componentList" 1 "f[5:29]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 1 0 0 0 0 2.5 0 0 0.5 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 1 0 ;
	setAttr ".rs" 49458;
	setAttr ".lt" -type "double3" 0 0 1 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.87499998509883881 1 -0.87499998509883881 ;
	setAttr ".cbx" -type "double3" 0.87499998509883881 1 0.87499998509883881 ;
createNode polyTweak -n "polyTweak101";
	setAttr ".uopa" yes;
	setAttr -s 36 ".tk[56:91]" -type "float3"  0.15000001 0 -0.15000001 0.090000004
		 0 -0.15000001 0.090000004 0 -0.090000004 0.15000001 0 -0.090000004 0.030000005 0
		 -0.15000001 0.030000005 0 -0.090000004 -0.029999997 0 -0.15000001 -0.029999997 0
		 -0.090000004 -0.090000004 0 -0.15000001 -0.090000004 0 -0.090000004 -0.15000001 0
		 -0.15000001 -0.15000001 0 -0.090000004 0.090000004 0 -0.030000005 0.15000001 0 -0.030000005
		 0.030000005 0 -0.030000005 -0.029999997 0 -0.030000005 -0.090000004 0 -0.030000005
		 -0.15000001 0 -0.030000005 0.090000004 0 0.029999997 0.15000001 0 0.029999997 0.030000005
		 0 0.029999997 -0.029999997 0 0.029999997 -0.090000004 0 0.029999997 -0.15000001 0
		 0.029999997 0.090000004 0 0.090000004 0.15000001 0 0.090000004 0.030000005 0 0.090000004
		 -0.029999997 0 0.090000004 -0.090000004 0 0.090000004 -0.15000001 0 0.090000004 0.090000004
		 0 0.15000001 0.15000001 0 0.15000001 0.030000005 0 0.15000001 -0.029999997 0 0.15000001
		 -0.090000004 0 0.15000001 -0.15000001 0 0.15000001;
createNode polyExtrudeFace -n "polyExtrudeFace146";
	setAttr ".ics" -type "componentList" 1 "f[5:29]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 1 0 0 0 0 2.5 0 0 0.5 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 2 0 ;
	setAttr ".rs" 55809;
	setAttr ".lt" -type "double3" 0 0 1 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.87499998509883881 2 -0.87499998509883881 ;
	setAttr ".cbx" -type "double3" 0.87499998509883881 2 0.87499998509883881 ;
createNode polyExtrudeFace -n "polyExtrudeFace147";
	setAttr ".ics" -type "componentList" 1 "f[5:29]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 1 0 0 0 0 2.5 0 0 0.5 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 3 0 ;
	setAttr ".rs" 51374;
	setAttr ".lt" -type "double3" 0 0 1 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.87499998509883881 3 -0.87499998509883881 ;
	setAttr ".cbx" -type "double3" 0.87499998509883881 3 0.87499998509883881 ;
createNode polyExtrudeFace -n "polyExtrudeFace148";
	setAttr ".ics" -type "componentList" 1 "f[5:29]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 1 0 0 0 0 2.5 0 0 0.5 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 4 0 ;
	setAttr ".rs" 47162;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.87499998509883881 4 -0.87499998509883881 ;
	setAttr ".cbx" -type "double3" 0.87499998509883881 4 0.87499998509883881 ;
createNode polyExtrudeFace -n "polyExtrudeFace149";
	setAttr ".ics" -type "componentList" 1 "f[5:29]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 1 0 0 0 0 2.5 0 0 0.5 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 4 0 ;
	setAttr ".rs" 49742;
	setAttr ".lt" -type "double3" 0 0 1 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.4374999925494194 4 -0.4374999925494194 ;
	setAttr ".cbx" -type "double3" 0.4374999925494194 4 0.4374999925494194 ;
createNode polyTweak -n "polyTweak102";
	setAttr ".uopa" yes;
	setAttr -s 36 ".tk[136:171]" -type "float3"  0.175 0 -0.175 0.10500001
		 0 -0.175 0.10500001 0 -0.10500001 0.175 0 -0.10500001 0.035000004 0 -0.175 0.035000004
		 0 -0.10500001 -0.034999996 0 -0.175 -0.034999996 0 -0.10500001 -0.10500001 0 -0.175
		 -0.10500001 0 -0.10500001 -0.175 0 -0.175 -0.175 0 -0.10500001 0.10500001 0 -0.035000004
		 0.175 0 -0.035000004 0.035000004 0 -0.035000004 -0.034999996 0 -0.035000004 -0.10500001
		 0 -0.035000004 -0.175 0 -0.035000004 0.10500001 0 0.034999996 0.175 0 0.034999996
		 0.035000004 0 0.034999996 -0.034999996 0 0.034999996 -0.10500001 0 0.034999996 -0.175
		 0 0.034999996 0.10500001 0 0.10500001 0.175 0 0.10500001 0.035000004 0 0.10500001
		 -0.034999996 0 0.10500001 -0.10500001 0 0.10500001 -0.175 0 0.10500001 0.10500001
		 0 0.175 0.175 0 0.175 0.035000004 0 0.175 -0.034999996 0 0.175 -0.10500001 0 0.175
		 -0.175 0 0.175;
createNode polyExtrudeFace -n "polyExtrudeFace150";
	setAttr ".ics" -type "componentList" 2 "f[90:149]" "f[170:189]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 1 0 0 0 0 2.5 0 0 0.5 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 3 0 ;
	setAttr ".rs" 50689;
	setAttr ".ls" -type "double3" 0.5 0.5 0.5 ;
	setAttr ".kft" no;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.87499998509883881 1 -0.87499998509883881 ;
	setAttr ".cbx" -type "double3" 0.87499998509883881 5 0.87499998509883881 ;
createNode polyExtrudeFace -n "polyExtrudeFace151";
	setAttr ".ics" -type "componentList" 2 "f[90:149]" "f[170:189]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 1 0 0 0 0 2.5 0 0 0.5 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 3 0 ;
	setAttr ".rs" 51792;
	setAttr ".lt" -type "double3" 0 0 -0.2 ;
	setAttr ".kft" no;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.87499998509883881 1.25 -0.87499998509883881 ;
	setAttr ".cbx" -type "double3" 0.87499998509883881 4.75 0.87499998509883881 ;
createNode polyExtrudeFace -n "polyExtrudeFace152";
	setAttr ".ics" -type "componentList" 4 "f[2]" "f[32]" "f[62]" "f[67]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 1 0 0 0 0 2.5 0 0 0.5 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 0.5 0 ;
	setAttr ".rs" 65207;
	setAttr ".ls" -type "double3" 0.5 0.5 0.5 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1.25 0 -1.25 ;
	setAttr ".cbx" -type "double3" 1.25 1 1.25 ;
createNode polyExtrudeFace -n "polyExtrudeFace153";
	setAttr ".ics" -type "componentList" 4 "f[2]" "f[32]" "f[62]" "f[67]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 1 0 0 0 0 2.5 0 0 0.5 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 0.25 0 ;
	setAttr ".rs" 54223;
	setAttr ".lt" -type "double3" 0 0 -0.5 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1.25 0 -1.25 ;
	setAttr ".cbx" -type "double3" 1.25 0.5 1.25 ;
createNode polyTweak -n "polyTweak103";
	setAttr ".uopa" yes;
	setAttr -s 16 ".tk[832:847]" -type "float3"  0 -0.25 0 0 -0.25 0 0 -0.25
		 0 0 -0.25 0 0 -0.25 0 0 -0.25 0 0 -0.25 0 0 -0.25 0 0 -0.25 0 0 -0.25 0 0 -0.25 0
		 0 -0.25 0 0 -0.25 0 0 -0.25 0 0 -0.25 0 0 -0.25 0;
createNode polyCube -n "polyCube19";
	setAttr ".sw" 5;
	setAttr ".sd" 5;
createNode polyExtrudeFace -n "polyExtrudeFace154";
	setAttr ".ics" -type "componentList" 1 "f[5:29]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 1 0 0 0 0 2.5 0 0 0.5 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 1 0 ;
	setAttr ".rs" 55932;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1.25 1 -1.25 ;
	setAttr ".cbx" -type "double3" 1.25 1 1.25 ;
createNode polyExtrudeFace -n "polyExtrudeFace155";
	setAttr ".ics" -type "componentList" 1 "f[5:29]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 1 0 0 0 0 2.5 0 0 0.5 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 1 0 ;
	setAttr ".rs" 42650;
	setAttr ".lt" -type "double3" 0 0 1 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.87499998509883881 1 -0.87499998509883881 ;
	setAttr ".cbx" -type "double3" 0.87499998509883881 1 0.87499998509883881 ;
createNode polyTweak -n "polyTweak104";
	setAttr ".uopa" yes;
	setAttr -s 36 ".tk[56:91]" -type "float3"  0.15000001 0 -0.15000001 0.090000004
		 0 -0.15000001 0.090000004 0 -0.090000004 0.15000001 0 -0.090000004 0.030000005 0
		 -0.15000001 0.030000005 0 -0.090000004 -0.029999997 0 -0.15000001 -0.029999997 0
		 -0.090000004 -0.090000004 0 -0.15000001 -0.090000004 0 -0.090000004 -0.15000001 0
		 -0.15000001 -0.15000001 0 -0.090000004 0.090000004 0 -0.030000005 0.15000001 0 -0.030000005
		 0.030000005 0 -0.030000005 -0.029999997 0 -0.030000005 -0.090000004 0 -0.030000005
		 -0.15000001 0 -0.030000005 0.090000004 0 0.029999997 0.15000001 0 0.029999997 0.030000005
		 0 0.029999997 -0.029999997 0 0.029999997 -0.090000004 0 0.029999997 -0.15000001 0
		 0.029999997 0.090000004 0 0.090000004 0.15000001 0 0.090000004 0.030000005 0 0.090000004
		 -0.029999997 0 0.090000004 -0.090000004 0 0.090000004 -0.15000001 0 0.090000004 0.090000004
		 0 0.15000001 0.15000001 0 0.15000001 0.030000005 0 0.15000001 -0.029999997 0 0.15000001
		 -0.090000004 0 0.15000001 -0.15000001 0 0.15000001;
createNode polyExtrudeFace -n "polyExtrudeFace156";
	setAttr ".ics" -type "componentList" 1 "f[5:29]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 1 0 0 0 0 2.5 0 0 0.5 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 2 0 ;
	setAttr ".rs" 61789;
	setAttr ".lt" -type "double3" 0 0 1 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.87499998509883881 2 -0.87499998509883881 ;
	setAttr ".cbx" -type "double3" 0.87499998509883881 2 0.87499998509883881 ;
createNode polyExtrudeFace -n "polyExtrudeFace157";
	setAttr ".ics" -type "componentList" 1 "f[5:29]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 1 0 0 0 0 2.5 0 0 0.5 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 3 0 ;
	setAttr ".rs" 43139;
	setAttr ".lt" -type "double3" 0 0 1 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.87499998509883881 3 -0.87499998509883881 ;
	setAttr ".cbx" -type "double3" 0.87499998509883881 3 0.87499998509883881 ;
createNode polyExtrudeFace -n "polyExtrudeFace158";
	setAttr ".ics" -type "componentList" 1 "f[5:29]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 1 0 0 0 0 2.5 0 0 0.5 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 4 0 ;
	setAttr ".rs" 36641;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.87499998509883881 4 -0.87499998509883881 ;
	setAttr ".cbx" -type "double3" 0.87499998509883881 4 0.87499998509883881 ;
createNode polyExtrudeFace -n "polyExtrudeFace159";
	setAttr ".ics" -type "componentList" 1 "f[5:29]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 1 0 0 0 0 2.5 0 0 0.5 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 4 0 ;
	setAttr ".rs" 60789;
	setAttr ".lt" -type "double3" 0 0 1 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.4374999925494194 4 -0.4374999925494194 ;
	setAttr ".cbx" -type "double3" 0.4374999925494194 4 0.4374999925494194 ;
createNode polyTweak -n "polyTweak105";
	setAttr ".uopa" yes;
	setAttr -s 36 ".tk[136:171]" -type "float3"  0.175 0 -0.175 0.10500001
		 0 -0.175 0.10500001 0 -0.10500001 0.175 0 -0.10500001 0.035000004 0 -0.175 0.035000004
		 0 -0.10500001 -0.034999996 0 -0.175 -0.034999996 0 -0.10500001 -0.10500001 0 -0.175
		 -0.10500001 0 -0.10500001 -0.175 0 -0.175 -0.175 0 -0.10500001 0.10500001 0 -0.035000004
		 0.175 0 -0.035000004 0.035000004 0 -0.035000004 -0.034999996 0 -0.035000004 -0.10500001
		 0 -0.035000004 -0.175 0 -0.035000004 0.10500001 0 0.034999996 0.175 0 0.034999996
		 0.035000004 0 0.034999996 -0.034999996 0 0.034999996 -0.10500001 0 0.034999996 -0.175
		 0 0.034999996 0.10500001 0 0.10500001 0.175 0 0.10500001 0.035000004 0 0.10500001
		 -0.034999996 0 0.10500001 -0.10500001 0 0.10500001 -0.175 0 0.10500001 0.10500001
		 0 0.175 0.175 0 0.175 0.035000004 0 0.175 -0.034999996 0 0.175 -0.10500001 0 0.175
		 -0.175 0 0.175;
createNode polyExtrudeFace -n "polyExtrudeFace160";
	setAttr ".ics" -type "componentList" 2 "f[90:149]" "f[170:189]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 1 0 0 0 0 2.5 0 0 0.5 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 3 0 ;
	setAttr ".rs" 52047;
	setAttr ".ls" -type "double3" 0.5 0.5 0.5 ;
	setAttr ".kft" no;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.87499998509883881 1 -0.87499998509883881 ;
	setAttr ".cbx" -type "double3" 0.87499998509883881 5 0.87499998509883881 ;
createNode polyExtrudeFace -n "polyExtrudeFace161";
	setAttr ".ics" -type "componentList" 2 "f[90:149]" "f[170:189]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 1 0 0 0 0 2.5 0 0 0.5 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 3 0 ;
	setAttr ".rs" 53496;
	setAttr ".lt" -type "double3" 0 0 -0.2 ;
	setAttr ".kft" no;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.87499998509883881 1.25 -0.87499998509883881 ;
	setAttr ".cbx" -type "double3" 0.87499998509883881 4.75 0.87499998509883881 ;
createNode polyExtrudeFace -n "polyExtrudeFace162";
	setAttr ".ics" -type "componentList" 4 "f[2]" "f[32]" "f[62]" "f[67]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 1 0 0 0 0 2.5 0 0 0.5 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 0.5 0 ;
	setAttr ".rs" 60336;
	setAttr ".ls" -type "double3" 0.5 0.5 0.5 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1.25 0 -1.25 ;
	setAttr ".cbx" -type "double3" 1.25 1 1.25 ;
createNode polyExtrudeFace -n "polyExtrudeFace163";
	setAttr ".ics" -type "componentList" 4 "f[2]" "f[32]" "f[62]" "f[67]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 1 0 0 0 0 2.5 0 0 0.5 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 0.25 0 ;
	setAttr ".rs" 60439;
	setAttr ".lt" -type "double3" 0 0 -0.5 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1.25 0 -1.25 ;
	setAttr ".cbx" -type "double3" 1.25 0.5 1.25 ;
createNode polyTweak -n "polyTweak106";
	setAttr ".uopa" yes;
	setAttr -s 16 ".tk[832:847]" -type "float3"  0 -0.25 0 0 -0.25 0 0 -0.25
		 0 0 -0.25 0 0 -0.25 0 0 -0.25 0 0 -0.25 0 0 -0.25 0 0 -0.25 0 0 -0.25 0 0 -0.25 0
		 0 -0.25 0 0 -0.25 0 0 -0.25 0 0 -0.25 0 0 -0.25 0;
createNode polyCube -n "polyCube20";
	setAttr ".sw" 3;
	setAttr ".sd" 3;
createNode polySplitRing -n "polySplitRing20";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 8 "e[1]" "e[4]" "e[7]" "e[10]" "e[13]" "e[16]" "e[19]" "e[22]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 1 0 0 0 0 2.5 0 0 0.5 0 1;
	setAttr ".stp" 2;
	setAttr ".p[0]"  0 0 1;
createNode polySplitRing -n "polySplitRing21";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 6 "e[32:35]" "e[48:51]" "e[66]" "e[74]" "e[82]" "e[90]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 1 0 0 0 0 2.5 0 0 0.5 0 1;
	setAttr ".stp" 2;
	setAttr ".p[0]"  0 0 1;
createNode polyTweak -n "polyTweak107";
	setAttr ".uopa" yes;
	setAttr -s 16 ".tk[32:47]" -type "float3"  0.083333343 0 0 0.083333343
		 0 0 0.083333343 0 0 0.083333343 0 0 0.083333343 0 0 0.083333343 0 0 0.083333343 0
		 0 0.083333343 0 0 -0.083333321 0 0 -0.083333321 0 0 -0.083333321 0 0 -0.083333321
		 0 0 -0.083333321 0 0 -0.083333321 0 0 -0.083333321 0 0 -0.083333321 0 0;
createNode polyExtrudeFace -n "polyExtrudeFace164";
	setAttr ".ics" -type "componentList" 5 "f[3:11]" "f[31:33]" "f[39:41]" "f[53:57]" "f[65:69]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 1 0 0 0 0 2.5 0 0 0.5 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 1 0 ;
	setAttr ".rs" 33281;
	setAttr ".ls" -type "double3" 0.005 0.005 0.005 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1.25 1 -1.25 ;
	setAttr ".cbx" -type "double3" 1.25 1 1.25 ;
createNode polyTweak -n "polyTweak108";
	setAttr ".uopa" yes;
	setAttr -s 32 ".tk";
	setAttr ".tk[32]" -type "float3" 0 0 -0.1 ;
	setAttr ".tk[33]" -type "float3" 0 0 -0.1 ;
	setAttr ".tk[36]" -type "float3" 0 0 0.1 ;
	setAttr ".tk[37]" -type "float3" 0 0 0.1 ;
	setAttr ".tk[40]" -type "float3" 0 0 -0.1 ;
	setAttr ".tk[41]" -type "float3" 0 0 -0.1 ;
	setAttr ".tk[44]" -type "float3" 0 0 0.1 ;
	setAttr ".tk[45]" -type "float3" 0 0 0.1 ;
	setAttr ".tk[48]" -type "float3" 0.1 0 -0.083333343 ;
	setAttr ".tk[49]" -type "float3" 0.1 0 -0.083333299 ;
	setAttr ".tk[50]" -type "float3" 0 0 -0.083333299 ;
	setAttr ".tk[51]" -type "float3" 0 0 -0.083333299 ;
	setAttr ".tk[52]" -type "float3" 0 0 -0.083333299 ;
	setAttr ".tk[53]" -type "float3" 0 0 -0.083333299 ;
	setAttr ".tk[54]" -type "float3" -0.1 0 -0.083333299 ;
	setAttr ".tk[55]" -type "float3" -0.1 0 -0.083333343 ;
	setAttr ".tk[56]" -type "float3" 0 0 -0.083333343 ;
	setAttr ".tk[57]" -type "float3" 0 0 -0.083333343 ;
	setAttr ".tk[58]" -type "float3" 0 0 -0.083333343 ;
	setAttr ".tk[59]" -type "float3" 0 0 -0.083333343 ;
	setAttr ".tk[60]" -type "float3" 0.1 0 0.083333321 ;
	setAttr ".tk[61]" -type "float3" 0.1 0 0.083333366 ;
	setAttr ".tk[62]" -type "float3" 0 0 0.083333366 ;
	setAttr ".tk[63]" -type "float3" 0 0 0.083333366 ;
	setAttr ".tk[64]" -type "float3" 0 0 0.083333366 ;
	setAttr ".tk[65]" -type "float3" 0 0 0.083333366 ;
	setAttr ".tk[66]" -type "float3" -0.1 0 0.083333366 ;
	setAttr ".tk[67]" -type "float3" -0.1 0 0.083333321 ;
	setAttr ".tk[68]" -type "float3" 0 0 0.083333321 ;
	setAttr ".tk[69]" -type "float3" 0 0 0.083333321 ;
	setAttr ".tk[70]" -type "float3" 0 0 0.083333321 ;
	setAttr ".tk[71]" -type "float3" 0 0 0.083333321 ;
createNode polyExtrudeFace -n "polyExtrudeFace165";
	setAttr ".ics" -type "componentList" 5 "f[3:11]" "f[31:33]" "f[39:41]" "f[53:57]" "f[65:69]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 1 0 0 0 0 2.5 0 0 0.5 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 3.7252903e-008 1 -3.7252903e-008 ;
	setAttr ".rs" 60657;
	setAttr ".lt" -type "double3" 0 0 2 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.8354167640209198 1 -0.83541683852672577 ;
	setAttr ".cbx" -type "double3" 0.83541683852672577 1 0.8354167640209198 ;
createNode polyExtrudeFace -n "polyExtrudeFace166";
	setAttr ".ics" -type "componentList" 5 "f[3:11]" "f[31:33]" "f[39:41]" "f[53:57]" "f[65:69]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 1 0 0 0 0 2.5 0 0 0.5 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 3 0 ;
	setAttr ".rs" 35260;
	setAttr ".ls" -type "double3" 0.005 0.005 0.005 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.83541683852672577 3 -0.83541683852672577 ;
	setAttr ".cbx" -type "double3" 0.83541683852672577 3 0.83541683852672577 ;
createNode polyExtrudeFace -n "polyExtrudeFace167";
	setAttr ".ics" -type "componentList" 5 "f[3:11]" "f[31:33]" "f[39:41]" "f[53:57]" "f[65:69]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 1 0 0 0 0 2.5 0 0 0.5 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 7.4505806e-008 3 -3.7252903e-008 ;
	setAttr ".rs" 61658;
	setAttr ".lt" -type "double3" 0 0 2 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.64832583069801331 2.9999997615814209 -0.64832590520381927 ;
	setAttr ".cbx" -type "double3" 0.64832597970962524 3 0.64832583069801331 ;
createNode polyExtrudeFace -n "polyExtrudeFace168";
	setAttr ".ics" -type "componentList" 5 "f[3:11]" "f[31:33]" "f[39:41]" "f[53:57]" "f[65:69]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 1 0 0 0 0 2.5 0 0 0.5 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -1.4901161e-007 5 1.3783574e-006 ;
	setAttr ".rs" 50092;
	setAttr ".ls" -type "double3" 0.005 0.005 0.005 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.64832627773284912 5 -0.64832486212253571 ;
	setAttr ".cbx" -type "double3" 0.64832597970962524 5 0.64832761883735657 ;
createNode polyExtrudeFace -n "polyExtrudeFace169";
	setAttr ".ics" -type "componentList" 5 "f[3:11]" "f[31:33]" "f[39:41]" "f[53:57]" "f[65:69]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 1 0 0 0 0 2.5 0 0 0.5 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -2.4214387e-007 5 9.8720193e-007 ;
	setAttr ".rs" 40133;
	setAttr ".lt" -type "double3" 0 0 2 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.54504670202732086 5 -0.54504573345184326 ;
	setAttr ".cbx" -type "double3" 0.54504621773958206 5 0.54504770785570145 ;
createNode polyExtrudeFace -n "polyExtrudeFace170";
	setAttr ".ics" -type "componentList" 5 "f[3:11]" "f[31:33]" "f[39:41]" "f[53:57]" "f[65:69]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 1 0 0 0 0 2.5 0 0 0.5 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -2.4214387e-007 7 -2.4028122e-006 ;
	setAttr ".rs" 41776;
	setAttr ".ls" -type "double3" 0.005 0.005 0.005 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.54504670202732086 7 -0.54505418986082077 ;
	setAttr ".cbx" -type "double3" 0.54504621773958206 7 0.54504938423633575 ;
createNode polyExtrudeFace -n "polyExtrudeFace171";
	setAttr ".ics" -type "componentList" 5 "f[3:11]" "f[31:33]" "f[39:41]" "f[53:57]" "f[65:69]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 1 0 0 0 0 2.5 0 0 0.5 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -5.5879354e-007 7 -2.3283064e-006 ;
	setAttr ".rs" 54159;
	setAttr ".lt" -type "double3" 0 0 2 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.48724781721830368 6.9999990463256836 -0.48725314438343048 ;
	setAttr ".cbx" -type "double3" 0.48724669963121414 7.0000004768371582 0.4872484877705574 ;
createNode polyCube -n "polyCube21";
	setAttr ".sw" 3;
	setAttr ".sd" 3;
createNode polySplitRing -n "polySplitRing22";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 8 "e[1]" "e[4]" "e[7]" "e[10]" "e[13]" "e[16]" "e[19]" "e[22]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 1 0 0 0 0 2.5 0 0 0.5 0 1;
	setAttr ".stp" 2;
	setAttr ".p[0]"  0 0 1;
createNode polySplitRing -n "polySplitRing23";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 6 "e[32:35]" "e[48:51]" "e[66]" "e[74]" "e[82]" "e[90]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 1 0 0 0 0 2.5 0 0 0.5 0 1;
	setAttr ".stp" 2;
	setAttr ".p[0]"  0 0 1;
createNode polyTweak -n "polyTweak109";
	setAttr ".uopa" yes;
	setAttr -s 16 ".tk[32:47]" -type "float3"  0.083333343 0 0 0.083333343
		 0 0 0.083333343 0 0 0.083333343 0 0 0.083333343 0 0 0.083333343 0 0 0.083333343 0
		 0 0.083333343 0 0 -0.083333321 0 0 -0.083333321 0 0 -0.083333321 0 0 -0.083333321
		 0 0 -0.083333321 0 0 -0.083333321 0 0 -0.083333321 0 0 -0.083333321 0 0;
createNode polyExtrudeFace -n "polyExtrudeFace172";
	setAttr ".ics" -type "componentList" 5 "f[3:11]" "f[31:33]" "f[39:41]" "f[53:57]" "f[65:69]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 1 0 0 0 0 2.5 0 0 0.5 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 1 0 ;
	setAttr ".rs" 54601;
	setAttr ".ls" -type "double3" 0.005 0.005 0.005 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1.25 1 -1.25 ;
	setAttr ".cbx" -type "double3" 1.25 1 1.25 ;
createNode polyTweak -n "polyTweak110";
	setAttr ".uopa" yes;
	setAttr -s 32 ".tk";
	setAttr ".tk[32]" -type "float3" 0 0 -0.1 ;
	setAttr ".tk[33]" -type "float3" 0 0 -0.1 ;
	setAttr ".tk[36]" -type "float3" 0 0 0.1 ;
	setAttr ".tk[37]" -type "float3" 0 0 0.1 ;
	setAttr ".tk[40]" -type "float3" 0 0 -0.1 ;
	setAttr ".tk[41]" -type "float3" 0 0 -0.1 ;
	setAttr ".tk[44]" -type "float3" 0 0 0.1 ;
	setAttr ".tk[45]" -type "float3" 0 0 0.1 ;
	setAttr ".tk[48]" -type "float3" 0.1 0 -0.083333343 ;
	setAttr ".tk[49]" -type "float3" 0.1 0 -0.083333299 ;
	setAttr ".tk[50]" -type "float3" 0 0 -0.083333299 ;
	setAttr ".tk[51]" -type "float3" 0 0 -0.083333299 ;
	setAttr ".tk[52]" -type "float3" 0 0 -0.083333299 ;
	setAttr ".tk[53]" -type "float3" 0 0 -0.083333299 ;
	setAttr ".tk[54]" -type "float3" -0.1 0 -0.083333299 ;
	setAttr ".tk[55]" -type "float3" -0.1 0 -0.083333343 ;
	setAttr ".tk[56]" -type "float3" 0 0 -0.083333343 ;
	setAttr ".tk[57]" -type "float3" 0 0 -0.083333343 ;
	setAttr ".tk[58]" -type "float3" 0 0 -0.083333343 ;
	setAttr ".tk[59]" -type "float3" 0 0 -0.083333343 ;
	setAttr ".tk[60]" -type "float3" 0.1 0 0.083333321 ;
	setAttr ".tk[61]" -type "float3" 0.1 0 0.083333366 ;
	setAttr ".tk[62]" -type "float3" 0 0 0.083333366 ;
	setAttr ".tk[63]" -type "float3" 0 0 0.083333366 ;
	setAttr ".tk[64]" -type "float3" 0 0 0.083333366 ;
	setAttr ".tk[65]" -type "float3" 0 0 0.083333366 ;
	setAttr ".tk[66]" -type "float3" -0.1 0 0.083333366 ;
	setAttr ".tk[67]" -type "float3" -0.1 0 0.083333321 ;
	setAttr ".tk[68]" -type "float3" 0 0 0.083333321 ;
	setAttr ".tk[69]" -type "float3" 0 0 0.083333321 ;
	setAttr ".tk[70]" -type "float3" 0 0 0.083333321 ;
	setAttr ".tk[71]" -type "float3" 0 0 0.083333321 ;
createNode polyExtrudeFace -n "polyExtrudeFace173";
	setAttr ".ics" -type "componentList" 5 "f[3:11]" "f[31:33]" "f[39:41]" "f[53:57]" "f[65:69]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 1 0 0 0 0 2.5 0 0 0.5 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 3.7252903e-008 1 -3.7252903e-008 ;
	setAttr ".rs" 58764;
	setAttr ".lt" -type "double3" 0 0 2 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.8354167640209198 1 -0.83541683852672577 ;
	setAttr ".cbx" -type "double3" 0.83541683852672577 1 0.8354167640209198 ;
createNode polyExtrudeFace -n "polyExtrudeFace174";
	setAttr ".ics" -type "componentList" 5 "f[3:11]" "f[31:33]" "f[39:41]" "f[53:57]" "f[65:69]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 1 0 0 0 0 2.5 0 0 0.5 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 3 0 ;
	setAttr ".rs" 44292;
	setAttr ".ls" -type "double3" 0.005 0.005 0.005 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.83541683852672577 3 -0.83541683852672577 ;
	setAttr ".cbx" -type "double3" 0.83541683852672577 3 0.83541683852672577 ;
createNode polyExtrudeFace -n "polyExtrudeFace175";
	setAttr ".ics" -type "componentList" 5 "f[3:11]" "f[31:33]" "f[39:41]" "f[53:57]" "f[65:69]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 1 0 0 0 0 2.5 0 0 0.5 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 7.4505806e-008 3 -3.7252903e-008 ;
	setAttr ".rs" 54234;
	setAttr ".lt" -type "double3" 0 0 2 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.64832583069801331 2.9999997615814209 -0.64832590520381927 ;
	setAttr ".cbx" -type "double3" 0.64832597970962524 3 0.64832583069801331 ;
createNode polyExtrudeFace -n "polyExtrudeFace176";
	setAttr ".ics" -type "componentList" 5 "f[3:11]" "f[31:33]" "f[39:41]" "f[53:57]" "f[65:69]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 1 0 0 0 0 2.5 0 0 0.5 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -1.4901161e-007 5 1.3783574e-006 ;
	setAttr ".rs" 57991;
	setAttr ".ls" -type "double3" 0.005 0.005 0.005 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.64832627773284912 5 -0.64832486212253571 ;
	setAttr ".cbx" -type "double3" 0.64832597970962524 5 0.64832761883735657 ;
createNode polyExtrudeFace -n "polyExtrudeFace177";
	setAttr ".ics" -type "componentList" 5 "f[3:11]" "f[31:33]" "f[39:41]" "f[53:57]" "f[65:69]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 1 0 0 0 0 2.5 0 0 0.5 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -2.4214387e-007 5 9.8720193e-007 ;
	setAttr ".rs" 46411;
	setAttr ".lt" -type "double3" 0 0 2 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.54504670202732086 5 -0.54504573345184326 ;
	setAttr ".cbx" -type "double3" 0.54504621773958206 5 0.54504770785570145 ;
createNode polyExtrudeFace -n "polyExtrudeFace178";
	setAttr ".ics" -type "componentList" 5 "f[3:11]" "f[31:33]" "f[39:41]" "f[53:57]" "f[65:69]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 1 0 0 0 0 2.5 0 0 0.5 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -2.4214387e-007 7 -2.4028122e-006 ;
	setAttr ".rs" 40269;
	setAttr ".ls" -type "double3" 0.005 0.005 0.005 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.54504670202732086 7 -0.54505418986082077 ;
	setAttr ".cbx" -type "double3" 0.54504621773958206 7 0.54504938423633575 ;
createNode polyExtrudeFace -n "polyExtrudeFace179";
	setAttr ".ics" -type "componentList" 5 "f[3:11]" "f[31:33]" "f[39:41]" "f[53:57]" "f[65:69]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 1 0 0 0 0 2.5 0 0 0.5 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -5.5879354e-007 7 -2.3283064e-006 ;
	setAttr ".rs" 50720;
	setAttr ".lt" -type "double3" 0 0 2 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.48724781721830368 6.9999990463256836 -0.48725314438343048 ;
	setAttr ".cbx" -type "double3" 0.48724669963121414 7.0000004768371582 0.4872484877705574 ;
createNode polyCube -n "polyCube22";
	setAttr ".sw" 3;
	setAttr ".sd" 3;
createNode polySplitRing -n "polySplitRing24";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 8 "e[1]" "e[4]" "e[7]" "e[10]" "e[13]" "e[16]" "e[19]" "e[22]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 1 0 0 0 0 2.5 0 0 0.5 0 1;
	setAttr ".stp" 2;
	setAttr ".p[0]"  0 0 1;
createNode polySplitRing -n "polySplitRing25";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 6 "e[32:35]" "e[48:51]" "e[66]" "e[74]" "e[82]" "e[90]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 1 0 0 0 0 2.5 0 0 0.5 0 1;
	setAttr ".stp" 2;
	setAttr ".p[0]"  0 0 1;
createNode polyTweak -n "polyTweak111";
	setAttr ".uopa" yes;
	setAttr -s 16 ".tk[32:47]" -type "float3"  0.083333343 0 0 0.083333343
		 0 0 0.083333343 0 0 0.083333343 0 0 0.083333343 0 0 0.083333343 0 0 0.083333343 0
		 0 0.083333343 0 0 -0.083333321 0 0 -0.083333321 0 0 -0.083333321 0 0 -0.083333321
		 0 0 -0.083333321 0 0 -0.083333321 0 0 -0.083333321 0 0 -0.083333321 0 0;
createNode polyExtrudeFace -n "polyExtrudeFace180";
	setAttr ".ics" -type "componentList" 5 "f[3:11]" "f[31:33]" "f[39:41]" "f[53:57]" "f[65:69]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 1 0 0 0 0 2.5 0 0 0.5 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 1 0 ;
	setAttr ".rs" 34299;
	setAttr ".ls" -type "double3" 0.005 0.005 0.005 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1.25 1 -1.25 ;
	setAttr ".cbx" -type "double3" 1.25 1 1.25 ;
createNode polyTweak -n "polyTweak112";
	setAttr ".uopa" yes;
	setAttr -s 32 ".tk";
	setAttr ".tk[32]" -type "float3" 0 0 -0.1 ;
	setAttr ".tk[33]" -type "float3" 0 0 -0.1 ;
	setAttr ".tk[36]" -type "float3" 0 0 0.1 ;
	setAttr ".tk[37]" -type "float3" 0 0 0.1 ;
	setAttr ".tk[40]" -type "float3" 0 0 -0.1 ;
	setAttr ".tk[41]" -type "float3" 0 0 -0.1 ;
	setAttr ".tk[44]" -type "float3" 0 0 0.1 ;
	setAttr ".tk[45]" -type "float3" 0 0 0.1 ;
	setAttr ".tk[48]" -type "float3" 0.1 0 -0.083333343 ;
	setAttr ".tk[49]" -type "float3" 0.1 0 -0.083333299 ;
	setAttr ".tk[50]" -type "float3" 0 0 -0.083333299 ;
	setAttr ".tk[51]" -type "float3" 0 0 -0.083333299 ;
	setAttr ".tk[52]" -type "float3" 0 0 -0.083333299 ;
	setAttr ".tk[53]" -type "float3" 0 0 -0.083333299 ;
	setAttr ".tk[54]" -type "float3" -0.1 0 -0.083333299 ;
	setAttr ".tk[55]" -type "float3" -0.1 0 -0.083333343 ;
	setAttr ".tk[56]" -type "float3" 0 0 -0.083333343 ;
	setAttr ".tk[57]" -type "float3" 0 0 -0.083333343 ;
	setAttr ".tk[58]" -type "float3" 0 0 -0.083333343 ;
	setAttr ".tk[59]" -type "float3" 0 0 -0.083333343 ;
	setAttr ".tk[60]" -type "float3" 0.1 0 0.083333321 ;
	setAttr ".tk[61]" -type "float3" 0.1 0 0.083333366 ;
	setAttr ".tk[62]" -type "float3" 0 0 0.083333366 ;
	setAttr ".tk[63]" -type "float3" 0 0 0.083333366 ;
	setAttr ".tk[64]" -type "float3" 0 0 0.083333366 ;
	setAttr ".tk[65]" -type "float3" 0 0 0.083333366 ;
	setAttr ".tk[66]" -type "float3" -0.1 0 0.083333366 ;
	setAttr ".tk[67]" -type "float3" -0.1 0 0.083333321 ;
	setAttr ".tk[68]" -type "float3" 0 0 0.083333321 ;
	setAttr ".tk[69]" -type "float3" 0 0 0.083333321 ;
	setAttr ".tk[70]" -type "float3" 0 0 0.083333321 ;
	setAttr ".tk[71]" -type "float3" 0 0 0.083333321 ;
createNode polyExtrudeFace -n "polyExtrudeFace181";
	setAttr ".ics" -type "componentList" 5 "f[3:11]" "f[31:33]" "f[39:41]" "f[53:57]" "f[65:69]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 1 0 0 0 0 2.5 0 0 0.5 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 3.7252903e-008 1 -3.7252903e-008 ;
	setAttr ".rs" 46642;
	setAttr ".lt" -type "double3" 0 0 2 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.8354167640209198 1 -0.83541683852672577 ;
	setAttr ".cbx" -type "double3" 0.83541683852672577 1 0.8354167640209198 ;
createNode polyExtrudeFace -n "polyExtrudeFace182";
	setAttr ".ics" -type "componentList" 5 "f[3:11]" "f[31:33]" "f[39:41]" "f[53:57]" "f[65:69]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 1 0 0 0 0 2.5 0 0 0.5 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 3 0 ;
	setAttr ".rs" 63086;
	setAttr ".ls" -type "double3" 0.005 0.005 0.005 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.83541683852672577 3 -0.83541683852672577 ;
	setAttr ".cbx" -type "double3" 0.83541683852672577 3 0.83541683852672577 ;
createNode polyExtrudeFace -n "polyExtrudeFace183";
	setAttr ".ics" -type "componentList" 5 "f[3:11]" "f[31:33]" "f[39:41]" "f[53:57]" "f[65:69]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 1 0 0 0 0 2.5 0 0 0.5 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 7.4505806e-008 3 -3.7252903e-008 ;
	setAttr ".rs" 57678;
	setAttr ".lt" -type "double3" 0 0 2 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.64832583069801331 2.9999997615814209 -0.64832590520381927 ;
	setAttr ".cbx" -type "double3" 0.64832597970962524 3 0.64832583069801331 ;
createNode polyCube -n "polyCube23";
	setAttr ".sw" 5;
	setAttr ".sd" 5;
createNode polyExtrudeFace -n "polyExtrudeFace184";
	setAttr ".ics" -type "componentList" 1 "f[5:29]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 1 0 0 0 0 2.5 0 0 0.5 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 1 0 ;
	setAttr ".rs" 65417;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1.25 1 -1.25 ;
	setAttr ".cbx" -type "double3" 1.25 1 1.25 ;
createNode polyExtrudeFace -n "polyExtrudeFace185";
	setAttr ".ics" -type "componentList" 1 "f[5:29]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 1 0 0 0 0 2.5 0 0 0.5 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 1 0 ;
	setAttr ".rs" 53536;
	setAttr ".lt" -type "double3" 0 0 1 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.87499998509883881 1 -0.87499998509883881 ;
	setAttr ".cbx" -type "double3" 0.87499998509883881 1 0.87499998509883881 ;
createNode polyTweak -n "polyTweak113";
	setAttr ".uopa" yes;
	setAttr -s 36 ".tk[56:91]" -type "float3"  0.15000001 0 -0.15000001 0.090000004
		 0 -0.15000001 0.090000004 0 -0.090000004 0.15000001 0 -0.090000004 0.030000005 0
		 -0.15000001 0.030000005 0 -0.090000004 -0.029999997 0 -0.15000001 -0.029999997 0
		 -0.090000004 -0.090000004 0 -0.15000001 -0.090000004 0 -0.090000004 -0.15000001 0
		 -0.15000001 -0.15000001 0 -0.090000004 0.090000004 0 -0.030000005 0.15000001 0 -0.030000005
		 0.030000005 0 -0.030000005 -0.029999997 0 -0.030000005 -0.090000004 0 -0.030000005
		 -0.15000001 0 -0.030000005 0.090000004 0 0.029999997 0.15000001 0 0.029999997 0.030000005
		 0 0.029999997 -0.029999997 0 0.029999997 -0.090000004 0 0.029999997 -0.15000001 0
		 0.029999997 0.090000004 0 0.090000004 0.15000001 0 0.090000004 0.030000005 0 0.090000004
		 -0.029999997 0 0.090000004 -0.090000004 0 0.090000004 -0.15000001 0 0.090000004 0.090000004
		 0 0.15000001 0.15000001 0 0.15000001 0.030000005 0 0.15000001 -0.029999997 0 0.15000001
		 -0.090000004 0 0.15000001 -0.15000001 0 0.15000001;
createNode polyExtrudeFace -n "polyExtrudeFace186";
	setAttr ".ics" -type "componentList" 1 "f[5:29]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 1 0 0 0 0 2.5 0 0 0.5 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 2 0 ;
	setAttr ".rs" 61282;
	setAttr ".lt" -type "double3" 0 0 1 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.87499998509883881 2 -0.87499998509883881 ;
	setAttr ".cbx" -type "double3" 0.87499998509883881 2 0.87499998509883881 ;
createNode polyExtrudeFace -n "polyExtrudeFace187";
	setAttr ".ics" -type "componentList" 1 "f[5:29]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 1 0 0 0 0 2.5 0 0 0.5 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 3 0 ;
	setAttr ".rs" 51611;
	setAttr ".lt" -type "double3" 0 0 1 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.87499998509883881 3 -0.87499998509883881 ;
	setAttr ".cbx" -type "double3" 0.87499998509883881 3 0.87499998509883881 ;
createNode polyExtrudeFace -n "polyExtrudeFace188";
	setAttr ".ics" -type "componentList" 1 "f[5:29]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 1 0 0 0 0 2.5 0 0 0.5 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 4 0 ;
	setAttr ".rs" 39999;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.87499998509883881 4 -0.87499998509883881 ;
	setAttr ".cbx" -type "double3" 0.87499998509883881 4 0.87499998509883881 ;
createNode polyExtrudeFace -n "polyExtrudeFace189";
	setAttr ".ics" -type "componentList" 1 "f[5:29]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 1 0 0 0 0 2.5 0 0 0.5 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 4 0 ;
	setAttr ".rs" 36063;
	setAttr ".lt" -type "double3" 0 0 1 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.4374999925494194 4 -0.4374999925494194 ;
	setAttr ".cbx" -type "double3" 0.4374999925494194 4 0.4374999925494194 ;
createNode polyTweak -n "polyTweak114";
	setAttr ".uopa" yes;
	setAttr -s 36 ".tk[136:171]" -type "float3"  0.175 0 -0.175 0.10500001
		 0 -0.175 0.10500001 0 -0.10500001 0.175 0 -0.10500001 0.035000004 0 -0.175 0.035000004
		 0 -0.10500001 -0.034999996 0 -0.175 -0.034999996 0 -0.10500001 -0.10500001 0 -0.175
		 -0.10500001 0 -0.10500001 -0.175 0 -0.175 -0.175 0 -0.10500001 0.10500001 0 -0.035000004
		 0.175 0 -0.035000004 0.035000004 0 -0.035000004 -0.034999996 0 -0.035000004 -0.10500001
		 0 -0.035000004 -0.175 0 -0.035000004 0.10500001 0 0.034999996 0.175 0 0.034999996
		 0.035000004 0 0.034999996 -0.034999996 0 0.034999996 -0.10500001 0 0.034999996 -0.175
		 0 0.034999996 0.10500001 0 0.10500001 0.175 0 0.10500001 0.035000004 0 0.10500001
		 -0.034999996 0 0.10500001 -0.10500001 0 0.10500001 -0.175 0 0.10500001 0.10500001
		 0 0.175 0.175 0 0.175 0.035000004 0 0.175 -0.034999996 0 0.175 -0.10500001 0 0.175
		 -0.175 0 0.175;
createNode polyExtrudeFace -n "polyExtrudeFace190";
	setAttr ".ics" -type "componentList" 2 "f[90:149]" "f[170:189]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 1 0 0 0 0 2.5 0 0 0.5 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 3 0 ;
	setAttr ".rs" 55141;
	setAttr ".ls" -type "double3" 0.5 0.5 0.5 ;
	setAttr ".kft" no;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.87499998509883881 1 -0.87499998509883881 ;
	setAttr ".cbx" -type "double3" 0.87499998509883881 5 0.87499998509883881 ;
createNode polyExtrudeFace -n "polyExtrudeFace191";
	setAttr ".ics" -type "componentList" 2 "f[90:149]" "f[170:189]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 1 0 0 0 0 2.5 0 0 0.5 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 3 0 ;
	setAttr ".rs" 50201;
	setAttr ".lt" -type "double3" 0 0 -0.2 ;
	setAttr ".kft" no;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.87499998509883881 1.25 -0.87499998509883881 ;
	setAttr ".cbx" -type "double3" 0.87499998509883881 4.75 0.87499998509883881 ;
createNode polyExtrudeFace -n "polyExtrudeFace192";
	setAttr ".ics" -type "componentList" 4 "f[2]" "f[32]" "f[62]" "f[67]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 1 0 0 0 0 2.5 0 0 0.5 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 0.5 0 ;
	setAttr ".rs" 45585;
	setAttr ".ls" -type "double3" 0.5 0.5 0.5 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1.25 0 -1.25 ;
	setAttr ".cbx" -type "double3" 1.25 1 1.25 ;
createNode polyExtrudeFace -n "polyExtrudeFace193";
	setAttr ".ics" -type "componentList" 4 "f[2]" "f[32]" "f[62]" "f[67]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 1 0 0 0 0 2.5 0 0 0.5 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 0.25 0 ;
	setAttr ".rs" 43660;
	setAttr ".lt" -type "double3" 0 0 -0.5 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1.25 0 -1.25 ;
	setAttr ".cbx" -type "double3" 1.25 0.5 1.25 ;
createNode polyTweak -n "polyTweak115";
	setAttr ".uopa" yes;
	setAttr -s 16 ".tk[832:847]" -type "float3"  0 -0.25 0 0 -0.25 0 0 -0.25
		 0 0 -0.25 0 0 -0.25 0 0 -0.25 0 0 -0.25 0 0 -0.25 0 0 -0.25 0 0 -0.25 0 0 -0.25 0
		 0 -0.25 0 0 -0.25 0 0 -0.25 0 0 -0.25 0 0 -0.25 0;
createNode polyCube -n "polyCube24";
	setAttr ".sw" 3;
	setAttr ".sd" 3;
createNode polySplitRing -n "polySplitRing26";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 8 "e[1]" "e[4]" "e[7]" "e[10]" "e[13]" "e[16]" "e[19]" "e[22]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 1 0 0 0 0 2.5 0 0 0.5 0 1;
	setAttr ".stp" 2;
	setAttr ".p[0]"  0 0 1;
createNode polySplitRing -n "polySplitRing27";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 6 "e[32:35]" "e[48:51]" "e[66]" "e[74]" "e[82]" "e[90]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 1 0 0 0 0 2.5 0 0 0.5 0 1;
	setAttr ".stp" 2;
	setAttr ".p[0]"  0 0 1;
createNode polyTweak -n "polyTweak116";
	setAttr ".uopa" yes;
	setAttr -s 16 ".tk[32:47]" -type "float3"  0.083333343 0 0 0.083333343
		 0 0 0.083333343 0 0 0.083333343 0 0 0.083333343 0 0 0.083333343 0 0 0.083333343 0
		 0 0.083333343 0 0 -0.083333321 0 0 -0.083333321 0 0 -0.083333321 0 0 -0.083333321
		 0 0 -0.083333321 0 0 -0.083333321 0 0 -0.083333321 0 0 -0.083333321 0 0;
createNode polyExtrudeFace -n "polyExtrudeFace194";
	setAttr ".ics" -type "componentList" 5 "f[3:11]" "f[31:33]" "f[39:41]" "f[53:57]" "f[65:69]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 1 0 0 0 0 2.5 0 0 0.5 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 1 0 ;
	setAttr ".rs" 64453;
	setAttr ".ls" -type "double3" 0.005 0.005 0.005 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1.25 1 -1.25 ;
	setAttr ".cbx" -type "double3" 1.25 1 1.25 ;
createNode polyTweak -n "polyTweak117";
	setAttr ".uopa" yes;
	setAttr -s 32 ".tk";
	setAttr ".tk[32]" -type "float3" 0 0 -0.1 ;
	setAttr ".tk[33]" -type "float3" 0 0 -0.1 ;
	setAttr ".tk[36]" -type "float3" 0 0 0.1 ;
	setAttr ".tk[37]" -type "float3" 0 0 0.1 ;
	setAttr ".tk[40]" -type "float3" 0 0 -0.1 ;
	setAttr ".tk[41]" -type "float3" 0 0 -0.1 ;
	setAttr ".tk[44]" -type "float3" 0 0 0.1 ;
	setAttr ".tk[45]" -type "float3" 0 0 0.1 ;
	setAttr ".tk[48]" -type "float3" 0.1 0 -0.083333343 ;
	setAttr ".tk[49]" -type "float3" 0.1 0 -0.083333299 ;
	setAttr ".tk[50]" -type "float3" 0 0 -0.083333299 ;
	setAttr ".tk[51]" -type "float3" 0 0 -0.083333299 ;
	setAttr ".tk[52]" -type "float3" 0 0 -0.083333299 ;
	setAttr ".tk[53]" -type "float3" 0 0 -0.083333299 ;
	setAttr ".tk[54]" -type "float3" -0.1 0 -0.083333299 ;
	setAttr ".tk[55]" -type "float3" -0.1 0 -0.083333343 ;
	setAttr ".tk[56]" -type "float3" 0 0 -0.083333343 ;
	setAttr ".tk[57]" -type "float3" 0 0 -0.083333343 ;
	setAttr ".tk[58]" -type "float3" 0 0 -0.083333343 ;
	setAttr ".tk[59]" -type "float3" 0 0 -0.083333343 ;
	setAttr ".tk[60]" -type "float3" 0.1 0 0.083333321 ;
	setAttr ".tk[61]" -type "float3" 0.1 0 0.083333366 ;
	setAttr ".tk[62]" -type "float3" 0 0 0.083333366 ;
	setAttr ".tk[63]" -type "float3" 0 0 0.083333366 ;
	setAttr ".tk[64]" -type "float3" 0 0 0.083333366 ;
	setAttr ".tk[65]" -type "float3" 0 0 0.083333366 ;
	setAttr ".tk[66]" -type "float3" -0.1 0 0.083333366 ;
	setAttr ".tk[67]" -type "float3" -0.1 0 0.083333321 ;
	setAttr ".tk[68]" -type "float3" 0 0 0.083333321 ;
	setAttr ".tk[69]" -type "float3" 0 0 0.083333321 ;
	setAttr ".tk[70]" -type "float3" 0 0 0.083333321 ;
	setAttr ".tk[71]" -type "float3" 0 0 0.083333321 ;
createNode polyExtrudeFace -n "polyExtrudeFace195";
	setAttr ".ics" -type "componentList" 5 "f[3:11]" "f[31:33]" "f[39:41]" "f[53:57]" "f[65:69]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 1 0 0 0 0 2.5 0 0 0.5 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 3.7252903e-008 1 -3.7252903e-008 ;
	setAttr ".rs" 64456;
	setAttr ".lt" -type "double3" 0 0 2 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.8354167640209198 1 -0.83541683852672577 ;
	setAttr ".cbx" -type "double3" 0.83541683852672577 1 0.8354167640209198 ;
createNode polyExtrudeFace -n "polyExtrudeFace196";
	setAttr ".ics" -type "componentList" 5 "f[3:11]" "f[31:33]" "f[39:41]" "f[53:57]" "f[65:69]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 1 0 0 0 0 2.5 0 0 0.5 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 3 0 ;
	setAttr ".rs" 49253;
	setAttr ".ls" -type "double3" 0.005 0.005 0.005 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.83541683852672577 3 -0.83541683852672577 ;
	setAttr ".cbx" -type "double3" 0.83541683852672577 3 0.83541683852672577 ;
createNode polyExtrudeFace -n "polyExtrudeFace197";
	setAttr ".ics" -type "componentList" 5 "f[3:11]" "f[31:33]" "f[39:41]" "f[53:57]" "f[65:69]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 1 0 0 0 0 2.5 0 0 0.5 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 7.4505806e-008 3 -3.7252903e-008 ;
	setAttr ".rs" 53806;
	setAttr ".lt" -type "double3" 0 0 2 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.64832583069801331 2.9999997615814209 -0.64832590520381927 ;
	setAttr ".cbx" -type "double3" 0.64832597970962524 3 0.64832583069801331 ;
createNode polyExtrudeFace -n "polyExtrudeFace198";
	setAttr ".ics" -type "componentList" 5 "f[3:11]" "f[31:33]" "f[39:41]" "f[53:57]" "f[65:69]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 1 0 0 0 0 2.5 0 0 0.5 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -1.4901161e-007 5 1.3783574e-006 ;
	setAttr ".rs" 48877;
	setAttr ".ls" -type "double3" 0.005 0.005 0.005 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.64832627773284912 5 -0.64832486212253571 ;
	setAttr ".cbx" -type "double3" 0.64832597970962524 5 0.64832761883735657 ;
createNode polyExtrudeFace -n "polyExtrudeFace199";
	setAttr ".ics" -type "componentList" 5 "f[3:11]" "f[31:33]" "f[39:41]" "f[53:57]" "f[65:69]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 1 0 0 0 0 2.5 0 0 0.5 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -2.4214387e-007 5 9.8720193e-007 ;
	setAttr ".rs" 38019;
	setAttr ".lt" -type "double3" 0 0 2 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.54504670202732086 5 -0.54504573345184326 ;
	setAttr ".cbx" -type "double3" 0.54504621773958206 5 0.54504770785570145 ;
createNode polyExtrudeFace -n "polyExtrudeFace200";
	setAttr ".ics" -type "componentList" 5 "f[3:11]" "f[31:33]" "f[39:41]" "f[53:57]" "f[65:69]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 1 0 0 0 0 2.5 0 0 0.5 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -2.4214387e-007 7 -2.4028122e-006 ;
	setAttr ".rs" 49996;
	setAttr ".ls" -type "double3" 0.005 0.005 0.005 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.54504670202732086 7 -0.54505418986082077 ;
	setAttr ".cbx" -type "double3" 0.54504621773958206 7 0.54504938423633575 ;
createNode polyExtrudeFace -n "polyExtrudeFace201";
	setAttr ".ics" -type "componentList" 5 "f[3:11]" "f[31:33]" "f[39:41]" "f[53:57]" "f[65:69]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 1 0 0 0 0 2.5 0 0 0.5 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -5.5879354e-007 7 -2.3283064e-006 ;
	setAttr ".rs" 46090;
	setAttr ".lt" -type "double3" 0 0 2 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.48724781721830368 6.9999990463256836 -0.48725314438343048 ;
	setAttr ".cbx" -type "double3" 0.48724669963121414 7.0000004768371582 0.4872484877705574 ;
createNode polyCube -n "polyCube25";
	setAttr ".sw" 5;
	setAttr ".sd" 5;
createNode polyExtrudeFace -n "polyExtrudeFace202";
	setAttr ".ics" -type "componentList" 1 "f[5:29]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 1 0 0 0 0 2.5 0 0 0.5 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 1 0 ;
	setAttr ".rs" 60636;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1.25 1 -1.25 ;
	setAttr ".cbx" -type "double3" 1.25 1 1.25 ;
createNode polyExtrudeFace -n "polyExtrudeFace203";
	setAttr ".ics" -type "componentList" 1 "f[5:29]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 1 0 0 0 0 2.5 0 0 0.5 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 1 0 ;
	setAttr ".rs" 56991;
	setAttr ".lt" -type "double3" 0 0 1 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.87499998509883881 1 -0.87499998509883881 ;
	setAttr ".cbx" -type "double3" 0.87499998509883881 1 0.87499998509883881 ;
createNode polyTweak -n "polyTweak118";
	setAttr ".uopa" yes;
	setAttr -s 36 ".tk[56:91]" -type "float3"  0.15000001 0 -0.15000001 0.090000004
		 0 -0.15000001 0.090000004 0 -0.090000004 0.15000001 0 -0.090000004 0.030000005 0
		 -0.15000001 0.030000005 0 -0.090000004 -0.029999997 0 -0.15000001 -0.029999997 0
		 -0.090000004 -0.090000004 0 -0.15000001 -0.090000004 0 -0.090000004 -0.15000001 0
		 -0.15000001 -0.15000001 0 -0.090000004 0.090000004 0 -0.030000005 0.15000001 0 -0.030000005
		 0.030000005 0 -0.030000005 -0.029999997 0 -0.030000005 -0.090000004 0 -0.030000005
		 -0.15000001 0 -0.030000005 0.090000004 0 0.029999997 0.15000001 0 0.029999997 0.030000005
		 0 0.029999997 -0.029999997 0 0.029999997 -0.090000004 0 0.029999997 -0.15000001 0
		 0.029999997 0.090000004 0 0.090000004 0.15000001 0 0.090000004 0.030000005 0 0.090000004
		 -0.029999997 0 0.090000004 -0.090000004 0 0.090000004 -0.15000001 0 0.090000004 0.090000004
		 0 0.15000001 0.15000001 0 0.15000001 0.030000005 0 0.15000001 -0.029999997 0 0.15000001
		 -0.090000004 0 0.15000001 -0.15000001 0 0.15000001;
createNode polyExtrudeFace -n "polyExtrudeFace204";
	setAttr ".ics" -type "componentList" 1 "f[5:29]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 1 0 0 0 0 2.5 0 0 0.5 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 2 0 ;
	setAttr ".rs" 34845;
	setAttr ".lt" -type "double3" 0 0 1 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.87499998509883881 2 -0.87499998509883881 ;
	setAttr ".cbx" -type "double3" 0.87499998509883881 2 0.87499998509883881 ;
createNode polyExtrudeFace -n "polyExtrudeFace205";
	setAttr ".ics" -type "componentList" 1 "f[5:29]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 1 0 0 0 0 2.5 0 0 0.5 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 3 0 ;
	setAttr ".rs" 54837;
	setAttr ".lt" -type "double3" 0 0 1 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.87499998509883881 3 -0.87499998509883881 ;
	setAttr ".cbx" -type "double3" 0.87499998509883881 3 0.87499998509883881 ;
createNode polyExtrudeFace -n "polyExtrudeFace206";
	setAttr ".ics" -type "componentList" 1 "f[5:29]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 1 0 0 0 0 2.5 0 0 0.5 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 4 0 ;
	setAttr ".rs" 40135;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.87499998509883881 4 -0.87499998509883881 ;
	setAttr ".cbx" -type "double3" 0.87499998509883881 4 0.87499998509883881 ;
createNode polyExtrudeFace -n "polyExtrudeFace207";
	setAttr ".ics" -type "componentList" 1 "f[5:29]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 1 0 0 0 0 2.5 0 0 0.5 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 4 0 ;
	setAttr ".rs" 52330;
	setAttr ".lt" -type "double3" 0 0 1 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.4374999925494194 4 -0.4374999925494194 ;
	setAttr ".cbx" -type "double3" 0.4374999925494194 4 0.4374999925494194 ;
createNode polyTweak -n "polyTweak119";
	setAttr ".uopa" yes;
	setAttr -s 36 ".tk[136:171]" -type "float3"  0.175 0 -0.175 0.10500001
		 0 -0.175 0.10500001 0 -0.10500001 0.175 0 -0.10500001 0.035000004 0 -0.175 0.035000004
		 0 -0.10500001 -0.034999996 0 -0.175 -0.034999996 0 -0.10500001 -0.10500001 0 -0.175
		 -0.10500001 0 -0.10500001 -0.175 0 -0.175 -0.175 0 -0.10500001 0.10500001 0 -0.035000004
		 0.175 0 -0.035000004 0.035000004 0 -0.035000004 -0.034999996 0 -0.035000004 -0.10500001
		 0 -0.035000004 -0.175 0 -0.035000004 0.10500001 0 0.034999996 0.175 0 0.034999996
		 0.035000004 0 0.034999996 -0.034999996 0 0.034999996 -0.10500001 0 0.034999996 -0.175
		 0 0.034999996 0.10500001 0 0.10500001 0.175 0 0.10500001 0.035000004 0 0.10500001
		 -0.034999996 0 0.10500001 -0.10500001 0 0.10500001 -0.175 0 0.10500001 0.10500001
		 0 0.175 0.175 0 0.175 0.035000004 0 0.175 -0.034999996 0 0.175 -0.10500001 0 0.175
		 -0.175 0 0.175;
createNode polyExtrudeFace -n "polyExtrudeFace208";
	setAttr ".ics" -type "componentList" 2 "f[90:149]" "f[170:189]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 1 0 0 0 0 2.5 0 0 0.5 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 3 0 ;
	setAttr ".rs" 38794;
	setAttr ".ls" -type "double3" 0.5 0.5 0.5 ;
	setAttr ".kft" no;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.87499998509883881 1 -0.87499998509883881 ;
	setAttr ".cbx" -type "double3" 0.87499998509883881 5 0.87499998509883881 ;
createNode polyExtrudeFace -n "polyExtrudeFace209";
	setAttr ".ics" -type "componentList" 2 "f[90:149]" "f[170:189]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 1 0 0 0 0 2.5 0 0 0.5 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 3 0 ;
	setAttr ".rs" 50185;
	setAttr ".lt" -type "double3" 0 0 -0.2 ;
	setAttr ".kft" no;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.87499998509883881 1.25 -0.87499998509883881 ;
	setAttr ".cbx" -type "double3" 0.87499998509883881 4.75 0.87499998509883881 ;
createNode polyExtrudeFace -n "polyExtrudeFace210";
	setAttr ".ics" -type "componentList" 4 "f[2]" "f[32]" "f[62]" "f[67]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 1 0 0 0 0 2.5 0 0 0.5 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 0.5 0 ;
	setAttr ".rs" 46275;
	setAttr ".ls" -type "double3" 0.5 0.5 0.5 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1.25 0 -1.25 ;
	setAttr ".cbx" -type "double3" 1.25 1 1.25 ;
createNode polyExtrudeFace -n "polyExtrudeFace211";
	setAttr ".ics" -type "componentList" 4 "f[2]" "f[32]" "f[62]" "f[67]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 1 0 0 0 0 2.5 0 0 0.5 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 0.25 0 ;
	setAttr ".rs" 51313;
	setAttr ".lt" -type "double3" 0 0 -0.5 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1.25 0 -1.25 ;
	setAttr ".cbx" -type "double3" 1.25 0.5 1.25 ;
createNode polyTweak -n "polyTweak120";
	setAttr ".uopa" yes;
	setAttr -s 16 ".tk[832:847]" -type "float3"  0 -0.25 0 0 -0.25 0 0 -0.25
		 0 0 -0.25 0 0 -0.25 0 0 -0.25 0 0 -0.25 0 0 -0.25 0 0 -0.25 0 0 -0.25 0 0 -0.25 0
		 0 -0.25 0 0 -0.25 0 0 -0.25 0 0 -0.25 0 0 -0.25 0;
createNode polyCube -n "polyCube26";
	setAttr ".sw" 5;
	setAttr ".sd" 5;
createNode polyExtrudeFace -n "polyExtrudeFace212";
	setAttr ".ics" -type "componentList" 1 "f[5:29]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 1 0 0 0 0 2.5 0 0 0.5 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 1 0 ;
	setAttr ".rs" 35130;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1.25 1 -1.25 ;
	setAttr ".cbx" -type "double3" 1.25 1 1.25 ;
createNode polyExtrudeFace -n "polyExtrudeFace213";
	setAttr ".ics" -type "componentList" 1 "f[5:29]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 1 0 0 0 0 2.5 0 0 0.5 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 1 0 ;
	setAttr ".rs" 52237;
	setAttr ".lt" -type "double3" 0 0 1 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.87499998509883881 1 -0.87499998509883881 ;
	setAttr ".cbx" -type "double3" 0.87499998509883881 1 0.87499998509883881 ;
createNode polyTweak -n "polyTweak121";
	setAttr ".uopa" yes;
	setAttr -s 36 ".tk[56:91]" -type "float3"  0.15000001 0 -0.15000001 0.090000004
		 0 -0.15000001 0.090000004 0 -0.090000004 0.15000001 0 -0.090000004 0.030000005 0
		 -0.15000001 0.030000005 0 -0.090000004 -0.029999997 0 -0.15000001 -0.029999997 0
		 -0.090000004 -0.090000004 0 -0.15000001 -0.090000004 0 -0.090000004 -0.15000001 0
		 -0.15000001 -0.15000001 0 -0.090000004 0.090000004 0 -0.030000005 0.15000001 0 -0.030000005
		 0.030000005 0 -0.030000005 -0.029999997 0 -0.030000005 -0.090000004 0 -0.030000005
		 -0.15000001 0 -0.030000005 0.090000004 0 0.029999997 0.15000001 0 0.029999997 0.030000005
		 0 0.029999997 -0.029999997 0 0.029999997 -0.090000004 0 0.029999997 -0.15000001 0
		 0.029999997 0.090000004 0 0.090000004 0.15000001 0 0.090000004 0.030000005 0 0.090000004
		 -0.029999997 0 0.090000004 -0.090000004 0 0.090000004 -0.15000001 0 0.090000004 0.090000004
		 0 0.15000001 0.15000001 0 0.15000001 0.030000005 0 0.15000001 -0.029999997 0 0.15000001
		 -0.090000004 0 0.15000001 -0.15000001 0 0.15000001;
createNode polyExtrudeFace -n "polyExtrudeFace214";
	setAttr ".ics" -type "componentList" 1 "f[5:29]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 1 0 0 0 0 2.5 0 0 0.5 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 2 0 ;
	setAttr ".rs" 43689;
	setAttr ".lt" -type "double3" 0 0 1 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.87499998509883881 2 -0.87499998509883881 ;
	setAttr ".cbx" -type "double3" 0.87499998509883881 2 0.87499998509883881 ;
createNode polyExtrudeFace -n "polyExtrudeFace215";
	setAttr ".ics" -type "componentList" 1 "f[5:29]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 1 0 0 0 0 2.5 0 0 0.5 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 3 0 ;
	setAttr ".rs" 61484;
	setAttr ".lt" -type "double3" 0 0 1 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.87499998509883881 3 -0.87499998509883881 ;
	setAttr ".cbx" -type "double3" 0.87499998509883881 3 0.87499998509883881 ;
createNode polyExtrudeFace -n "polyExtrudeFace216";
	setAttr ".ics" -type "componentList" 1 "f[5:29]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 1 0 0 0 0 2.5 0 0 0.5 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 4 0 ;
	setAttr ".rs" 64680;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.87499998509883881 4 -0.87499998509883881 ;
	setAttr ".cbx" -type "double3" 0.87499998509883881 4 0.87499998509883881 ;
createNode polyExtrudeFace -n "polyExtrudeFace217";
	setAttr ".ics" -type "componentList" 1 "f[5:29]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 1 0 0 0 0 2.5 0 0 0.5 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 4 0 ;
	setAttr ".rs" 46152;
	setAttr ".lt" -type "double3" 0 0 1 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.4374999925494194 4 -0.4374999925494194 ;
	setAttr ".cbx" -type "double3" 0.4374999925494194 4 0.4374999925494194 ;
createNode polyTweak -n "polyTweak122";
	setAttr ".uopa" yes;
	setAttr -s 36 ".tk[136:171]" -type "float3"  0.175 0 -0.175 0.10500001
		 0 -0.175 0.10500001 0 -0.10500001 0.175 0 -0.10500001 0.035000004 0 -0.175 0.035000004
		 0 -0.10500001 -0.034999996 0 -0.175 -0.034999996 0 -0.10500001 -0.10500001 0 -0.175
		 -0.10500001 0 -0.10500001 -0.175 0 -0.175 -0.175 0 -0.10500001 0.10500001 0 -0.035000004
		 0.175 0 -0.035000004 0.035000004 0 -0.035000004 -0.034999996 0 -0.035000004 -0.10500001
		 0 -0.035000004 -0.175 0 -0.035000004 0.10500001 0 0.034999996 0.175 0 0.034999996
		 0.035000004 0 0.034999996 -0.034999996 0 0.034999996 -0.10500001 0 0.034999996 -0.175
		 0 0.034999996 0.10500001 0 0.10500001 0.175 0 0.10500001 0.035000004 0 0.10500001
		 -0.034999996 0 0.10500001 -0.10500001 0 0.10500001 -0.175 0 0.10500001 0.10500001
		 0 0.175 0.175 0 0.175 0.035000004 0 0.175 -0.034999996 0 0.175 -0.10500001 0 0.175
		 -0.175 0 0.175;
createNode polyExtrudeFace -n "polyExtrudeFace218";
	setAttr ".ics" -type "componentList" 2 "f[90:149]" "f[170:189]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 1 0 0 0 0 2.5 0 0 0.5 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 3 0 ;
	setAttr ".rs" 43784;
	setAttr ".ls" -type "double3" 0.5 0.5 0.5 ;
	setAttr ".kft" no;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.87499998509883881 1 -0.87499998509883881 ;
	setAttr ".cbx" -type "double3" 0.87499998509883881 5 0.87499998509883881 ;
createNode polyExtrudeFace -n "polyExtrudeFace219";
	setAttr ".ics" -type "componentList" 2 "f[90:149]" "f[170:189]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 1 0 0 0 0 2.5 0 0 0.5 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 3 0 ;
	setAttr ".rs" 41341;
	setAttr ".lt" -type "double3" 0 0 -0.2 ;
	setAttr ".kft" no;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.87499998509883881 1.25 -0.87499998509883881 ;
	setAttr ".cbx" -type "double3" 0.87499998509883881 4.75 0.87499998509883881 ;
createNode polyExtrudeFace -n "polyExtrudeFace220";
	setAttr ".ics" -type "componentList" 4 "f[2]" "f[32]" "f[62]" "f[67]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 1 0 0 0 0 2.5 0 0 0.5 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 0.5 0 ;
	setAttr ".rs" 50236;
	setAttr ".ls" -type "double3" 0.5 0.5 0.5 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1.25 0 -1.25 ;
	setAttr ".cbx" -type "double3" 1.25 1 1.25 ;
createNode polyExtrudeFace -n "polyExtrudeFace221";
	setAttr ".ics" -type "componentList" 4 "f[2]" "f[32]" "f[62]" "f[67]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 1 0 0 0 0 2.5 0 0 0.5 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 0.25 0 ;
	setAttr ".rs" 48519;
	setAttr ".lt" -type "double3" 0 0 -0.5 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1.25 0 -1.25 ;
	setAttr ".cbx" -type "double3" 1.25 0.5 1.25 ;
createNode polyTweak -n "polyTweak123";
	setAttr ".uopa" yes;
	setAttr -s 16 ".tk[832:847]" -type "float3"  0 -0.25 0 0 -0.25 0 0 -0.25
		 0 0 -0.25 0 0 -0.25 0 0 -0.25 0 0 -0.25 0 0 -0.25 0 0 -0.25 0 0 -0.25 0 0 -0.25 0
		 0 -0.25 0 0 -0.25 0 0 -0.25 0 0 -0.25 0 0 -0.25 0;
createNode polyCube -n "polyCube27";
	setAttr ".sw" 5;
	setAttr ".sd" 5;
createNode polyExtrudeFace -n "polyExtrudeFace222";
	setAttr ".ics" -type "componentList" 1 "f[5:29]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 1 0 0 0 0 2.5 0 0 0.5 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 1 0 ;
	setAttr ".rs" 59877;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1.25 1 -1.25 ;
	setAttr ".cbx" -type "double3" 1.25 1 1.25 ;
createNode polyExtrudeFace -n "polyExtrudeFace223";
	setAttr ".ics" -type "componentList" 1 "f[5:29]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 1 0 0 0 0 2.5 0 0 0.5 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 1 0 ;
	setAttr ".rs" 41655;
	setAttr ".lt" -type "double3" 0 0 1 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.87499998509883881 1 -0.87499998509883881 ;
	setAttr ".cbx" -type "double3" 0.87499998509883881 1 0.87499998509883881 ;
createNode polyTweak -n "polyTweak124";
	setAttr ".uopa" yes;
	setAttr -s 36 ".tk[56:91]" -type "float3"  0.15000001 0 -0.15000001 0.090000004
		 0 -0.15000001 0.090000004 0 -0.090000004 0.15000001 0 -0.090000004 0.030000005 0
		 -0.15000001 0.030000005 0 -0.090000004 -0.029999997 0 -0.15000001 -0.029999997 0
		 -0.090000004 -0.090000004 0 -0.15000001 -0.090000004 0 -0.090000004 -0.15000001 0
		 -0.15000001 -0.15000001 0 -0.090000004 0.090000004 0 -0.030000005 0.15000001 0 -0.030000005
		 0.030000005 0 -0.030000005 -0.029999997 0 -0.030000005 -0.090000004 0 -0.030000005
		 -0.15000001 0 -0.030000005 0.090000004 0 0.029999997 0.15000001 0 0.029999997 0.030000005
		 0 0.029999997 -0.029999997 0 0.029999997 -0.090000004 0 0.029999997 -0.15000001 0
		 0.029999997 0.090000004 0 0.090000004 0.15000001 0 0.090000004 0.030000005 0 0.090000004
		 -0.029999997 0 0.090000004 -0.090000004 0 0.090000004 -0.15000001 0 0.090000004 0.090000004
		 0 0.15000001 0.15000001 0 0.15000001 0.030000005 0 0.15000001 -0.029999997 0 0.15000001
		 -0.090000004 0 0.15000001 -0.15000001 0 0.15000001;
createNode polyExtrudeFace -n "polyExtrudeFace224";
	setAttr ".ics" -type "componentList" 1 "f[5:29]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 1 0 0 0 0 2.5 0 0 0.5 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 2 0 ;
	setAttr ".rs" 40890;
	setAttr ".lt" -type "double3" 0 0 1 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.87499998509883881 2 -0.87499998509883881 ;
	setAttr ".cbx" -type "double3" 0.87499998509883881 2 0.87499998509883881 ;
createNode polyExtrudeFace -n "polyExtrudeFace225";
	setAttr ".ics" -type "componentList" 1 "f[5:29]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 1 0 0 0 0 2.5 0 0 0.5 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 3 0 ;
	setAttr ".rs" 33090;
	setAttr ".lt" -type "double3" 0 0 1 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.87499998509883881 3 -0.87499998509883881 ;
	setAttr ".cbx" -type "double3" 0.87499998509883881 3 0.87499998509883881 ;
createNode polyExtrudeFace -n "polyExtrudeFace226";
	setAttr ".ics" -type "componentList" 1 "f[5:29]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 1 0 0 0 0 2.5 0 0 0.5 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 4 0 ;
	setAttr ".rs" 46514;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.87499998509883881 4 -0.87499998509883881 ;
	setAttr ".cbx" -type "double3" 0.87499998509883881 4 0.87499998509883881 ;
createNode polyExtrudeFace -n "polyExtrudeFace227";
	setAttr ".ics" -type "componentList" 1 "f[5:29]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 1 0 0 0 0 2.5 0 0 0.5 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 4 0 ;
	setAttr ".rs" 60987;
	setAttr ".lt" -type "double3" 0 0 1 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.4374999925494194 4 -0.4374999925494194 ;
	setAttr ".cbx" -type "double3" 0.4374999925494194 4 0.4374999925494194 ;
createNode polyTweak -n "polyTweak125";
	setAttr ".uopa" yes;
	setAttr -s 36 ".tk[136:171]" -type "float3"  0.175 0 -0.175 0.10500001
		 0 -0.175 0.10500001 0 -0.10500001 0.175 0 -0.10500001 0.035000004 0 -0.175 0.035000004
		 0 -0.10500001 -0.034999996 0 -0.175 -0.034999996 0 -0.10500001 -0.10500001 0 -0.175
		 -0.10500001 0 -0.10500001 -0.175 0 -0.175 -0.175 0 -0.10500001 0.10500001 0 -0.035000004
		 0.175 0 -0.035000004 0.035000004 0 -0.035000004 -0.034999996 0 -0.035000004 -0.10500001
		 0 -0.035000004 -0.175 0 -0.035000004 0.10500001 0 0.034999996 0.175 0 0.034999996
		 0.035000004 0 0.034999996 -0.034999996 0 0.034999996 -0.10500001 0 0.034999996 -0.175
		 0 0.034999996 0.10500001 0 0.10500001 0.175 0 0.10500001 0.035000004 0 0.10500001
		 -0.034999996 0 0.10500001 -0.10500001 0 0.10500001 -0.175 0 0.10500001 0.10500001
		 0 0.175 0.175 0 0.175 0.035000004 0 0.175 -0.034999996 0 0.175 -0.10500001 0 0.175
		 -0.175 0 0.175;
createNode polyExtrudeFace -n "polyExtrudeFace228";
	setAttr ".ics" -type "componentList" 2 "f[90:149]" "f[170:189]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 1 0 0 0 0 2.5 0 0 0.5 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 3 0 ;
	setAttr ".rs" 54076;
	setAttr ".ls" -type "double3" 0.5 0.5 0.5 ;
	setAttr ".kft" no;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.87499998509883881 1 -0.87499998509883881 ;
	setAttr ".cbx" -type "double3" 0.87499998509883881 5 0.87499998509883881 ;
createNode polyExtrudeFace -n "polyExtrudeFace229";
	setAttr ".ics" -type "componentList" 2 "f[90:149]" "f[170:189]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 1 0 0 0 0 2.5 0 0 0.5 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 3 0 ;
	setAttr ".rs" 35520;
	setAttr ".lt" -type "double3" 0 0 -0.2 ;
	setAttr ".kft" no;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.87499998509883881 1.25 -0.87499998509883881 ;
	setAttr ".cbx" -type "double3" 0.87499998509883881 4.75 0.87499998509883881 ;
createNode polyExtrudeFace -n "polyExtrudeFace230";
	setAttr ".ics" -type "componentList" 4 "f[2]" "f[32]" "f[62]" "f[67]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 1 0 0 0 0 2.5 0 0 0.5 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 0.5 0 ;
	setAttr ".rs" 59335;
	setAttr ".ls" -type "double3" 0.5 0.5 0.5 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1.25 0 -1.25 ;
	setAttr ".cbx" -type "double3" 1.25 1 1.25 ;
createNode polyExtrudeFace -n "polyExtrudeFace231";
	setAttr ".ics" -type "componentList" 4 "f[2]" "f[32]" "f[62]" "f[67]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 1 0 0 0 0 2.5 0 0 0.5 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 0.25 0 ;
	setAttr ".rs" 57977;
	setAttr ".lt" -type "double3" 0 0 -0.5 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1.25 0 -1.25 ;
	setAttr ".cbx" -type "double3" 1.25 0.5 1.25 ;
createNode polyTweak -n "polyTweak126";
	setAttr ".uopa" yes;
	setAttr -s 16 ".tk[832:847]" -type "float3"  0 -0.25 0 0 -0.25 0 0 -0.25
		 0 0 -0.25 0 0 -0.25 0 0 -0.25 0 0 -0.25 0 0 -0.25 0 0 -0.25 0 0 -0.25 0 0 -0.25 0
		 0 -0.25 0 0 -0.25 0 0 -0.25 0 0 -0.25 0 0 -0.25 0;
createNode polyCube -n "polyCube28";
	setAttr ".sw" 5;
	setAttr ".sd" 5;
createNode polyExtrudeFace -n "polyExtrudeFace232";
	setAttr ".ics" -type "componentList" 1 "f[5:29]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 1 0 0 0 0 2.5 0 0 0.5 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 1 0 ;
	setAttr ".rs" 51904;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1.25 1 -1.25 ;
	setAttr ".cbx" -type "double3" 1.25 1 1.25 ;
createNode polyExtrudeFace -n "polyExtrudeFace233";
	setAttr ".ics" -type "componentList" 1 "f[5:29]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 1 0 0 0 0 2.5 0 0 0.5 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 1 0 ;
	setAttr ".rs" 38274;
	setAttr ".lt" -type "double3" 0 0 1 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.87499998509883881 1 -0.87499998509883881 ;
	setAttr ".cbx" -type "double3" 0.87499998509883881 1 0.87499998509883881 ;
createNode polyTweak -n "polyTweak127";
	setAttr ".uopa" yes;
	setAttr -s 36 ".tk[56:91]" -type "float3"  0.15000001 0 -0.15000001 0.090000004
		 0 -0.15000001 0.090000004 0 -0.090000004 0.15000001 0 -0.090000004 0.030000005 0
		 -0.15000001 0.030000005 0 -0.090000004 -0.029999997 0 -0.15000001 -0.029999997 0
		 -0.090000004 -0.090000004 0 -0.15000001 -0.090000004 0 -0.090000004 -0.15000001 0
		 -0.15000001 -0.15000001 0 -0.090000004 0.090000004 0 -0.030000005 0.15000001 0 -0.030000005
		 0.030000005 0 -0.030000005 -0.029999997 0 -0.030000005 -0.090000004 0 -0.030000005
		 -0.15000001 0 -0.030000005 0.090000004 0 0.029999997 0.15000001 0 0.029999997 0.030000005
		 0 0.029999997 -0.029999997 0 0.029999997 -0.090000004 0 0.029999997 -0.15000001 0
		 0.029999997 0.090000004 0 0.090000004 0.15000001 0 0.090000004 0.030000005 0 0.090000004
		 -0.029999997 0 0.090000004 -0.090000004 0 0.090000004 -0.15000001 0 0.090000004 0.090000004
		 0 0.15000001 0.15000001 0 0.15000001 0.030000005 0 0.15000001 -0.029999997 0 0.15000001
		 -0.090000004 0 0.15000001 -0.15000001 0 0.15000001;
createNode polyExtrudeFace -n "polyExtrudeFace234";
	setAttr ".ics" -type "componentList" 1 "f[5:29]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 1 0 0 0 0 2.5 0 0 0.5 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 2 0 ;
	setAttr ".rs" 43955;
	setAttr ".lt" -type "double3" 0 0 1 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.87499998509883881 2 -0.87499998509883881 ;
	setAttr ".cbx" -type "double3" 0.87499998509883881 2 0.87499998509883881 ;
createNode polyExtrudeFace -n "polyExtrudeFace235";
	setAttr ".ics" -type "componentList" 1 "f[5:29]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 1 0 0 0 0 2.5 0 0 0.5 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 3 0 ;
	setAttr ".rs" 62533;
	setAttr ".lt" -type "double3" 0 0 1 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.87499998509883881 3 -0.87499998509883881 ;
	setAttr ".cbx" -type "double3" 0.87499998509883881 3 0.87499998509883881 ;
createNode polyExtrudeFace -n "polyExtrudeFace236";
	setAttr ".ics" -type "componentList" 1 "f[5:29]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 1 0 0 0 0 2.5 0 0 0.5 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 4 0 ;
	setAttr ".rs" 60862;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.87499998509883881 4 -0.87499998509883881 ;
	setAttr ".cbx" -type "double3" 0.87499998509883881 4 0.87499998509883881 ;
createNode polyExtrudeFace -n "polyExtrudeFace237";
	setAttr ".ics" -type "componentList" 1 "f[5:29]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 1 0 0 0 0 2.5 0 0 0.5 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 4 0 ;
	setAttr ".rs" 55234;
	setAttr ".lt" -type "double3" 0 0 1 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.4374999925494194 4 -0.4374999925494194 ;
	setAttr ".cbx" -type "double3" 0.4374999925494194 4 0.4374999925494194 ;
createNode polyTweak -n "polyTweak128";
	setAttr ".uopa" yes;
	setAttr -s 36 ".tk[136:171]" -type "float3"  0.175 0 -0.175 0.10500001
		 0 -0.175 0.10500001 0 -0.10500001 0.175 0 -0.10500001 0.035000004 0 -0.175 0.035000004
		 0 -0.10500001 -0.034999996 0 -0.175 -0.034999996 0 -0.10500001 -0.10500001 0 -0.175
		 -0.10500001 0 -0.10500001 -0.175 0 -0.175 -0.175 0 -0.10500001 0.10500001 0 -0.035000004
		 0.175 0 -0.035000004 0.035000004 0 -0.035000004 -0.034999996 0 -0.035000004 -0.10500001
		 0 -0.035000004 -0.175 0 -0.035000004 0.10500001 0 0.034999996 0.175 0 0.034999996
		 0.035000004 0 0.034999996 -0.034999996 0 0.034999996 -0.10500001 0 0.034999996 -0.175
		 0 0.034999996 0.10500001 0 0.10500001 0.175 0 0.10500001 0.035000004 0 0.10500001
		 -0.034999996 0 0.10500001 -0.10500001 0 0.10500001 -0.175 0 0.10500001 0.10500001
		 0 0.175 0.175 0 0.175 0.035000004 0 0.175 -0.034999996 0 0.175 -0.10500001 0 0.175
		 -0.175 0 0.175;
createNode polyExtrudeFace -n "polyExtrudeFace238";
	setAttr ".ics" -type "componentList" 2 "f[90:149]" "f[170:189]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 1 0 0 0 0 2.5 0 0 0.5 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 3 0 ;
	setAttr ".rs" 48849;
	setAttr ".ls" -type "double3" 0.5 0.5 0.5 ;
	setAttr ".kft" no;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.87499998509883881 1 -0.87499998509883881 ;
	setAttr ".cbx" -type "double3" 0.87499998509883881 5 0.87499998509883881 ;
createNode polyExtrudeFace -n "polyExtrudeFace239";
	setAttr ".ics" -type "componentList" 2 "f[90:149]" "f[170:189]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 1 0 0 0 0 2.5 0 0 0.5 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 3 0 ;
	setAttr ".rs" 62280;
	setAttr ".lt" -type "double3" 0 0 -0.2 ;
	setAttr ".kft" no;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.87499998509883881 1.25 -0.87499998509883881 ;
	setAttr ".cbx" -type "double3" 0.87499998509883881 4.75 0.87499998509883881 ;
createNode polyExtrudeFace -n "polyExtrudeFace240";
	setAttr ".ics" -type "componentList" 4 "f[2]" "f[32]" "f[62]" "f[67]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 1 0 0 0 0 2.5 0 0 0.5 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 0.5 0 ;
	setAttr ".rs" 50391;
	setAttr ".ls" -type "double3" 0.5 0.5 0.5 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1.25 0 -1.25 ;
	setAttr ".cbx" -type "double3" 1.25 1 1.25 ;
createNode polyExtrudeFace -n "polyExtrudeFace241";
	setAttr ".ics" -type "componentList" 4 "f[2]" "f[32]" "f[62]" "f[67]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 1 0 0 0 0 2.5 0 0 0.5 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 0.25 0 ;
	setAttr ".rs" 40580;
	setAttr ".lt" -type "double3" 0 0 -0.5 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1.25 0 -1.25 ;
	setAttr ".cbx" -type "double3" 1.25 0.5 1.25 ;
createNode polyTweak -n "polyTweak129";
	setAttr ".uopa" yes;
	setAttr -s 16 ".tk[832:847]" -type "float3"  0 -0.25 0 0 -0.25 0 0 -0.25
		 0 0 -0.25 0 0 -0.25 0 0 -0.25 0 0 -0.25 0 0 -0.25 0 0 -0.25 0 0 -0.25 0 0 -0.25 0
		 0 -0.25 0 0 -0.25 0 0 -0.25 0 0 -0.25 0 0 -0.25 0;
createNode polyCube -n "polyCube29";
	setAttr ".sw" 3;
	setAttr ".sd" 3;
createNode polySplitRing -n "polySplitRing28";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 8 "e[1]" "e[4]" "e[7]" "e[10]" "e[13]" "e[16]" "e[19]" "e[22]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 1 0 0 0 0 2.5 0 0 0.5 0 1;
	setAttr ".stp" 2;
	setAttr ".p[0]"  0 0 1;
createNode polySplitRing -n "polySplitRing29";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 6 "e[32:35]" "e[48:51]" "e[66]" "e[74]" "e[82]" "e[90]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 1 0 0 0 0 2.5 0 0 0.5 0 1;
	setAttr ".stp" 2;
	setAttr ".p[0]"  0 0 1;
createNode polyTweak -n "polyTweak130";
	setAttr ".uopa" yes;
	setAttr -s 16 ".tk[32:47]" -type "float3"  0.083333343 0 0 0.083333343
		 0 0 0.083333343 0 0 0.083333343 0 0 0.083333343 0 0 0.083333343 0 0 0.083333343 0
		 0 0.083333343 0 0 -0.083333321 0 0 -0.083333321 0 0 -0.083333321 0 0 -0.083333321
		 0 0 -0.083333321 0 0 -0.083333321 0 0 -0.083333321 0 0 -0.083333321 0 0;
createNode polyExtrudeFace -n "polyExtrudeFace242";
	setAttr ".ics" -type "componentList" 5 "f[3:11]" "f[31:33]" "f[39:41]" "f[53:57]" "f[65:69]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 1 0 0 0 0 2.5 0 0 0.5 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 1 0 ;
	setAttr ".rs" 54364;
	setAttr ".ls" -type "double3" 0.005 0.005 0.005 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1.25 1 -1.25 ;
	setAttr ".cbx" -type "double3" 1.25 1 1.25 ;
createNode polyTweak -n "polyTweak131";
	setAttr ".uopa" yes;
	setAttr -s 32 ".tk";
	setAttr ".tk[32]" -type "float3" 0 0 -0.1 ;
	setAttr ".tk[33]" -type "float3" 0 0 -0.1 ;
	setAttr ".tk[36]" -type "float3" 0 0 0.1 ;
	setAttr ".tk[37]" -type "float3" 0 0 0.1 ;
	setAttr ".tk[40]" -type "float3" 0 0 -0.1 ;
	setAttr ".tk[41]" -type "float3" 0 0 -0.1 ;
	setAttr ".tk[44]" -type "float3" 0 0 0.1 ;
	setAttr ".tk[45]" -type "float3" 0 0 0.1 ;
	setAttr ".tk[48]" -type "float3" 0.1 0 -0.083333343 ;
	setAttr ".tk[49]" -type "float3" 0.1 0 -0.083333299 ;
	setAttr ".tk[50]" -type "float3" 0 0 -0.083333299 ;
	setAttr ".tk[51]" -type "float3" 0 0 -0.083333299 ;
	setAttr ".tk[52]" -type "float3" 0 0 -0.083333299 ;
	setAttr ".tk[53]" -type "float3" 0 0 -0.083333299 ;
	setAttr ".tk[54]" -type "float3" -0.1 0 -0.083333299 ;
	setAttr ".tk[55]" -type "float3" -0.1 0 -0.083333343 ;
	setAttr ".tk[56]" -type "float3" 0 0 -0.083333343 ;
	setAttr ".tk[57]" -type "float3" 0 0 -0.083333343 ;
	setAttr ".tk[58]" -type "float3" 0 0 -0.083333343 ;
	setAttr ".tk[59]" -type "float3" 0 0 -0.083333343 ;
	setAttr ".tk[60]" -type "float3" 0.1 0 0.083333321 ;
	setAttr ".tk[61]" -type "float3" 0.1 0 0.083333366 ;
	setAttr ".tk[62]" -type "float3" 0 0 0.083333366 ;
	setAttr ".tk[63]" -type "float3" 0 0 0.083333366 ;
	setAttr ".tk[64]" -type "float3" 0 0 0.083333366 ;
	setAttr ".tk[65]" -type "float3" 0 0 0.083333366 ;
	setAttr ".tk[66]" -type "float3" -0.1 0 0.083333366 ;
	setAttr ".tk[67]" -type "float3" -0.1 0 0.083333321 ;
	setAttr ".tk[68]" -type "float3" 0 0 0.083333321 ;
	setAttr ".tk[69]" -type "float3" 0 0 0.083333321 ;
	setAttr ".tk[70]" -type "float3" 0 0 0.083333321 ;
	setAttr ".tk[71]" -type "float3" 0 0 0.083333321 ;
createNode polyExtrudeFace -n "polyExtrudeFace243";
	setAttr ".ics" -type "componentList" 5 "f[3:11]" "f[31:33]" "f[39:41]" "f[53:57]" "f[65:69]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 1 0 0 0 0 2.5 0 0 0.5 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 3.7252903e-008 1 -3.7252903e-008 ;
	setAttr ".rs" 49865;
	setAttr ".lt" -type "double3" 0 0 2 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.8354167640209198 1 -0.83541683852672577 ;
	setAttr ".cbx" -type "double3" 0.83541683852672577 1 0.8354167640209198 ;
createNode polyExtrudeFace -n "polyExtrudeFace244";
	setAttr ".ics" -type "componentList" 5 "f[3:11]" "f[31:33]" "f[39:41]" "f[53:57]" "f[65:69]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 1 0 0 0 0 2.5 0 0 0.5 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 3 0 ;
	setAttr ".rs" 58182;
	setAttr ".ls" -type "double3" 0.005 0.005 0.005 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.83541683852672577 3 -0.83541683852672577 ;
	setAttr ".cbx" -type "double3" 0.83541683852672577 3 0.83541683852672577 ;
createNode polyExtrudeFace -n "polyExtrudeFace245";
	setAttr ".ics" -type "componentList" 5 "f[3:11]" "f[31:33]" "f[39:41]" "f[53:57]" "f[65:69]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 1 0 0 0 0 2.5 0 0 0.5 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 7.4505806e-008 3 -3.7252903e-008 ;
	setAttr ".rs" 51853;
	setAttr ".lt" -type "double3" 0 0 2 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.64832583069801331 2.9999997615814209 -0.64832590520381927 ;
	setAttr ".cbx" -type "double3" 0.64832597970962524 3 0.64832583069801331 ;
createNode polyCube -n "polyCube30";
	setAttr ".sw" 5;
	setAttr ".sd" 5;
createNode polyExtrudeFace -n "polyExtrudeFace246";
	setAttr ".ics" -type "componentList" 1 "f[5:29]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 1 0 0 0 0 2.5 0 0 0.5 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 1 0 ;
	setAttr ".rs" 36001;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1.25 1 -1.25 ;
	setAttr ".cbx" -type "double3" 1.25 1 1.25 ;
createNode polyExtrudeFace -n "polyExtrudeFace247";
	setAttr ".ics" -type "componentList" 1 "f[5:29]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 1 0 0 0 0 2.5 0 0 0.5 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 1 0 ;
	setAttr ".rs" 44851;
	setAttr ".lt" -type "double3" 0 0 1 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.87499998509883881 1 -0.87499998509883881 ;
	setAttr ".cbx" -type "double3" 0.87499998509883881 1 0.87499998509883881 ;
createNode polyTweak -n "polyTweak132";
	setAttr ".uopa" yes;
	setAttr -s 36 ".tk[56:91]" -type "float3"  0.15000001 0 -0.15000001 0.090000004
		 0 -0.15000001 0.090000004 0 -0.090000004 0.15000001 0 -0.090000004 0.030000005 0
		 -0.15000001 0.030000005 0 -0.090000004 -0.029999997 0 -0.15000001 -0.029999997 0
		 -0.090000004 -0.090000004 0 -0.15000001 -0.090000004 0 -0.090000004 -0.15000001 0
		 -0.15000001 -0.15000001 0 -0.090000004 0.090000004 0 -0.030000005 0.15000001 0 -0.030000005
		 0.030000005 0 -0.030000005 -0.029999997 0 -0.030000005 -0.090000004 0 -0.030000005
		 -0.15000001 0 -0.030000005 0.090000004 0 0.029999997 0.15000001 0 0.029999997 0.030000005
		 0 0.029999997 -0.029999997 0 0.029999997 -0.090000004 0 0.029999997 -0.15000001 0
		 0.029999997 0.090000004 0 0.090000004 0.15000001 0 0.090000004 0.030000005 0 0.090000004
		 -0.029999997 0 0.090000004 -0.090000004 0 0.090000004 -0.15000001 0 0.090000004 0.090000004
		 0 0.15000001 0.15000001 0 0.15000001 0.030000005 0 0.15000001 -0.029999997 0 0.15000001
		 -0.090000004 0 0.15000001 -0.15000001 0 0.15000001;
createNode polyExtrudeFace -n "polyExtrudeFace248";
	setAttr ".ics" -type "componentList" 1 "f[5:29]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 1 0 0 0 0 2.5 0 0 0.5 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 2 0 ;
	setAttr ".rs" 34424;
	setAttr ".lt" -type "double3" 0 0 1 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.87499998509883881 2 -0.87499998509883881 ;
	setAttr ".cbx" -type "double3" 0.87499998509883881 2 0.87499998509883881 ;
createNode polyExtrudeFace -n "polyExtrudeFace249";
	setAttr ".ics" -type "componentList" 1 "f[5:29]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 1 0 0 0 0 2.5 0 0 0.5 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 3 0 ;
	setAttr ".rs" 53390;
	setAttr ".lt" -type "double3" 0 0 1 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.87499998509883881 3 -0.87499998509883881 ;
	setAttr ".cbx" -type "double3" 0.87499998509883881 3 0.87499998509883881 ;
createNode polyExtrudeFace -n "polyExtrudeFace250";
	setAttr ".ics" -type "componentList" 1 "f[5:29]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 1 0 0 0 0 2.5 0 0 0.5 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 4 0 ;
	setAttr ".rs" 49991;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.87499998509883881 4 -0.87499998509883881 ;
	setAttr ".cbx" -type "double3" 0.87499998509883881 4 0.87499998509883881 ;
createNode polyExtrudeFace -n "polyExtrudeFace251";
	setAttr ".ics" -type "componentList" 1 "f[5:29]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 1 0 0 0 0 2.5 0 0 0.5 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 4 0 ;
	setAttr ".rs" 46825;
	setAttr ".lt" -type "double3" 0 0 1 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.4374999925494194 4 -0.4374999925494194 ;
	setAttr ".cbx" -type "double3" 0.4374999925494194 4 0.4374999925494194 ;
createNode polyTweak -n "polyTweak133";
	setAttr ".uopa" yes;
	setAttr -s 36 ".tk[136:171]" -type "float3"  0.175 0 -0.175 0.10500001
		 0 -0.175 0.10500001 0 -0.10500001 0.175 0 -0.10500001 0.035000004 0 -0.175 0.035000004
		 0 -0.10500001 -0.034999996 0 -0.175 -0.034999996 0 -0.10500001 -0.10500001 0 -0.175
		 -0.10500001 0 -0.10500001 -0.175 0 -0.175 -0.175 0 -0.10500001 0.10500001 0 -0.035000004
		 0.175 0 -0.035000004 0.035000004 0 -0.035000004 -0.034999996 0 -0.035000004 -0.10500001
		 0 -0.035000004 -0.175 0 -0.035000004 0.10500001 0 0.034999996 0.175 0 0.034999996
		 0.035000004 0 0.034999996 -0.034999996 0 0.034999996 -0.10500001 0 0.034999996 -0.175
		 0 0.034999996 0.10500001 0 0.10500001 0.175 0 0.10500001 0.035000004 0 0.10500001
		 -0.034999996 0 0.10500001 -0.10500001 0 0.10500001 -0.175 0 0.10500001 0.10500001
		 0 0.175 0.175 0 0.175 0.035000004 0 0.175 -0.034999996 0 0.175 -0.10500001 0 0.175
		 -0.175 0 0.175;
createNode polyExtrudeFace -n "polyExtrudeFace252";
	setAttr ".ics" -type "componentList" 2 "f[90:149]" "f[170:189]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 1 0 0 0 0 2.5 0 0 0.5 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 3 0 ;
	setAttr ".rs" 43646;
	setAttr ".ls" -type "double3" 0.5 0.5 0.5 ;
	setAttr ".kft" no;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.87499998509883881 1 -0.87499998509883881 ;
	setAttr ".cbx" -type "double3" 0.87499998509883881 5 0.87499998509883881 ;
createNode polyExtrudeFace -n "polyExtrudeFace253";
	setAttr ".ics" -type "componentList" 2 "f[90:149]" "f[170:189]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 1 0 0 0 0 2.5 0 0 0.5 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 3 0 ;
	setAttr ".rs" 40947;
	setAttr ".lt" -type "double3" 0 0 -0.2 ;
	setAttr ".kft" no;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.87499998509883881 1.25 -0.87499998509883881 ;
	setAttr ".cbx" -type "double3" 0.87499998509883881 4.75 0.87499998509883881 ;
createNode polyExtrudeFace -n "polyExtrudeFace254";
	setAttr ".ics" -type "componentList" 4 "f[2]" "f[32]" "f[62]" "f[67]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 1 0 0 0 0 2.5 0 0 0.5 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 0.5 0 ;
	setAttr ".rs" 61432;
	setAttr ".ls" -type "double3" 0.5 0.5 0.5 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1.25 0 -1.25 ;
	setAttr ".cbx" -type "double3" 1.25 1 1.25 ;
createNode polyExtrudeFace -n "polyExtrudeFace255";
	setAttr ".ics" -type "componentList" 4 "f[2]" "f[32]" "f[62]" "f[67]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 1 0 0 0 0 2.5 0 0 0.5 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 0.25 0 ;
	setAttr ".rs" 36351;
	setAttr ".lt" -type "double3" 0 0 -0.5 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1.25 0 -1.25 ;
	setAttr ".cbx" -type "double3" 1.25 0.5 1.25 ;
createNode polyTweak -n "polyTweak134";
	setAttr ".uopa" yes;
	setAttr -s 16 ".tk[832:847]" -type "float3"  0 -0.25 0 0 -0.25 0 0 -0.25
		 0 0 -0.25 0 0 -0.25 0 0 -0.25 0 0 -0.25 0 0 -0.25 0 0 -0.25 0 0 -0.25 0 0 -0.25 0
		 0 -0.25 0 0 -0.25 0 0 -0.25 0 0 -0.25 0 0 -0.25 0;
createNode polyCube -n "polyCube31";
	setAttr ".sw" 5;
	setAttr ".sd" 5;
createNode polyExtrudeFace -n "polyExtrudeFace256";
	setAttr ".ics" -type "componentList" 1 "f[5:29]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 1 0 0 0 0 2.5 0 0 0.5 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 1 0 ;
	setAttr ".rs" 40662;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1.25 1 -1.25 ;
	setAttr ".cbx" -type "double3" 1.25 1 1.25 ;
createNode polyExtrudeFace -n "polyExtrudeFace257";
	setAttr ".ics" -type "componentList" 1 "f[5:29]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 1 0 0 0 0 2.5 0 0 0.5 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 1 0 ;
	setAttr ".rs" 60501;
	setAttr ".lt" -type "double3" 0 0 1 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.87499998509883881 1 -0.87499998509883881 ;
	setAttr ".cbx" -type "double3" 0.87499998509883881 1 0.87499998509883881 ;
createNode polyTweak -n "polyTweak135";
	setAttr ".uopa" yes;
	setAttr -s 36 ".tk[56:91]" -type "float3"  0.15000001 0 -0.15000001 0.090000004
		 0 -0.15000001 0.090000004 0 -0.090000004 0.15000001 0 -0.090000004 0.030000005 0
		 -0.15000001 0.030000005 0 -0.090000004 -0.029999997 0 -0.15000001 -0.029999997 0
		 -0.090000004 -0.090000004 0 -0.15000001 -0.090000004 0 -0.090000004 -0.15000001 0
		 -0.15000001 -0.15000001 0 -0.090000004 0.090000004 0 -0.030000005 0.15000001 0 -0.030000005
		 0.030000005 0 -0.030000005 -0.029999997 0 -0.030000005 -0.090000004 0 -0.030000005
		 -0.15000001 0 -0.030000005 0.090000004 0 0.029999997 0.15000001 0 0.029999997 0.030000005
		 0 0.029999997 -0.029999997 0 0.029999997 -0.090000004 0 0.029999997 -0.15000001 0
		 0.029999997 0.090000004 0 0.090000004 0.15000001 0 0.090000004 0.030000005 0 0.090000004
		 -0.029999997 0 0.090000004 -0.090000004 0 0.090000004 -0.15000001 0 0.090000004 0.090000004
		 0 0.15000001 0.15000001 0 0.15000001 0.030000005 0 0.15000001 -0.029999997 0 0.15000001
		 -0.090000004 0 0.15000001 -0.15000001 0 0.15000001;
createNode polyExtrudeFace -n "polyExtrudeFace258";
	setAttr ".ics" -type "componentList" 1 "f[5:29]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 1 0 0 0 0 2.5 0 0 0.5 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 2 0 ;
	setAttr ".rs" 63309;
	setAttr ".lt" -type "double3" 0 0 1 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.87499998509883881 2 -0.87499998509883881 ;
	setAttr ".cbx" -type "double3" 0.87499998509883881 2 0.87499998509883881 ;
createNode polyExtrudeFace -n "polyExtrudeFace259";
	setAttr ".ics" -type "componentList" 1 "f[5:29]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 1 0 0 0 0 2.5 0 0 0.5 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 3 0 ;
	setAttr ".rs" 50234;
	setAttr ".lt" -type "double3" 0 0 1 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.87499998509883881 3 -0.87499998509883881 ;
	setAttr ".cbx" -type "double3" 0.87499998509883881 3 0.87499998509883881 ;
createNode polyExtrudeFace -n "polyExtrudeFace260";
	setAttr ".ics" -type "componentList" 1 "f[5:29]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 1 0 0 0 0 2.5 0 0 0.5 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 4 0 ;
	setAttr ".rs" 55540;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.87499998509883881 4 -0.87499998509883881 ;
	setAttr ".cbx" -type "double3" 0.87499998509883881 4 0.87499998509883881 ;
createNode polyExtrudeFace -n "polyExtrudeFace261";
	setAttr ".ics" -type "componentList" 1 "f[5:29]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 1 0 0 0 0 2.5 0 0 0.5 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 4 0 ;
	setAttr ".rs" 39804;
	setAttr ".lt" -type "double3" 0 0 1 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.4374999925494194 4 -0.4374999925494194 ;
	setAttr ".cbx" -type "double3" 0.4374999925494194 4 0.4374999925494194 ;
createNode polyTweak -n "polyTweak136";
	setAttr ".uopa" yes;
	setAttr -s 36 ".tk[136:171]" -type "float3"  0.175 0 -0.175 0.10500001
		 0 -0.175 0.10500001 0 -0.10500001 0.175 0 -0.10500001 0.035000004 0 -0.175 0.035000004
		 0 -0.10500001 -0.034999996 0 -0.175 -0.034999996 0 -0.10500001 -0.10500001 0 -0.175
		 -0.10500001 0 -0.10500001 -0.175 0 -0.175 -0.175 0 -0.10500001 0.10500001 0 -0.035000004
		 0.175 0 -0.035000004 0.035000004 0 -0.035000004 -0.034999996 0 -0.035000004 -0.10500001
		 0 -0.035000004 -0.175 0 -0.035000004 0.10500001 0 0.034999996 0.175 0 0.034999996
		 0.035000004 0 0.034999996 -0.034999996 0 0.034999996 -0.10500001 0 0.034999996 -0.175
		 0 0.034999996 0.10500001 0 0.10500001 0.175 0 0.10500001 0.035000004 0 0.10500001
		 -0.034999996 0 0.10500001 -0.10500001 0 0.10500001 -0.175 0 0.10500001 0.10500001
		 0 0.175 0.175 0 0.175 0.035000004 0 0.175 -0.034999996 0 0.175 -0.10500001 0 0.175
		 -0.175 0 0.175;
createNode polyExtrudeFace -n "polyExtrudeFace262";
	setAttr ".ics" -type "componentList" 2 "f[90:149]" "f[170:189]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 1 0 0 0 0 2.5 0 0 0.5 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 3 0 ;
	setAttr ".rs" 65259;
	setAttr ".ls" -type "double3" 0.5 0.5 0.5 ;
	setAttr ".kft" no;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.87499998509883881 1 -0.87499998509883881 ;
	setAttr ".cbx" -type "double3" 0.87499998509883881 5 0.87499998509883881 ;
createNode polyExtrudeFace -n "polyExtrudeFace263";
	setAttr ".ics" -type "componentList" 2 "f[90:149]" "f[170:189]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 1 0 0 0 0 2.5 0 0 0.5 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 3 0 ;
	setAttr ".rs" 33987;
	setAttr ".lt" -type "double3" 0 0 -0.2 ;
	setAttr ".kft" no;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.87499998509883881 1.25 -0.87499998509883881 ;
	setAttr ".cbx" -type "double3" 0.87499998509883881 4.75 0.87499998509883881 ;
createNode polyExtrudeFace -n "polyExtrudeFace264";
	setAttr ".ics" -type "componentList" 4 "f[2]" "f[32]" "f[62]" "f[67]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 1 0 0 0 0 2.5 0 0 0.5 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 0.5 0 ;
	setAttr ".rs" 41990;
	setAttr ".ls" -type "double3" 0.5 0.5 0.5 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1.25 0 -1.25 ;
	setAttr ".cbx" -type "double3" 1.25 1 1.25 ;
createNode polyExtrudeFace -n "polyExtrudeFace265";
	setAttr ".ics" -type "componentList" 4 "f[2]" "f[32]" "f[62]" "f[67]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 1 0 0 0 0 2.5 0 0 0.5 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 0.25 0 ;
	setAttr ".rs" 38069;
	setAttr ".lt" -type "double3" 0 0 -0.5 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1.25 0 -1.25 ;
	setAttr ".cbx" -type "double3" 1.25 0.5 1.25 ;
createNode polyTweak -n "polyTweak137";
	setAttr ".uopa" yes;
	setAttr -s 16 ".tk[832:847]" -type "float3"  0 -0.25 0 0 -0.25 0 0 -0.25
		 0 0 -0.25 0 0 -0.25 0 0 -0.25 0 0 -0.25 0 0 -0.25 0 0 -0.25 0 0 -0.25 0 0 -0.25 0
		 0 -0.25 0 0 -0.25 0 0 -0.25 0 0 -0.25 0 0 -0.25 0;
createNode polyCube -n "polyCube32";
createNode polyExtrudeFace -n "polyExtrudeFace266";
	setAttr ".ics" -type "componentList" 3 "f[0]" "f[2]" "f[4:5]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 2 0 0 0 0 2.5 0 0 1 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 1 0 ;
	setAttr ".rs" 40239;
	setAttr ".lt" -type "double3" 0 0 0.2 ;
	setAttr ".ls" -type "double3" 0.5 1 1 ;
	setAttr ".kft" no;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1.25 0 -1.25 ;
	setAttr ".cbx" -type "double3" 1.25 2 1.25 ;
createNode polyExtrudeFace -n "polyExtrudeFace267";
	setAttr ".ics" -type "componentList" 3 "f[0]" "f[2]" "f[4:5]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 2 0 0 0 0 2.5 0 0 1 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 1 0 ;
	setAttr ".rs" 55800;
	setAttr ".lt" -type "double3" 0 0 0.4 ;
	setAttr ".kft" no;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1.4500001072883606 0 -1.4500001072883606 ;
	setAttr ".cbx" -type "double3" 1.4500001072883606 2 1.4500001072883606 ;
createNode polyExtrudeFace -n "polyExtrudeFace268";
	setAttr ".ics" -type "componentList" 3 "f[0]" "f[2]" "f[4:5]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 2 0 0 0 0 2.5 0 0 1 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 1 0 ;
	setAttr ".rs" 65435;
	setAttr ".ls" -type "double3" 0.5 0.5 1 ;
	setAttr ".kft" no;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1.8500001728534698 0 -1.8500001728534698 ;
	setAttr ".cbx" -type "double3" 1.8500001728534698 2 1.8500001728534698 ;
createNode polyExtrudeFace -n "polyExtrudeFace269";
	setAttr ".ics" -type "componentList" 3 "f[0]" "f[2]" "f[4:5]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 2 0 0 0 0 2.5 0 0 1 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 0.5 0 ;
	setAttr ".rs" 35939;
	setAttr ".lt" -type "double3" 0 0 -0.2 ;
	setAttr ".ls" -type "double3" 0.8 0.8 0.8 ;
	setAttr ".kft" no;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1.8500001728534698 0 -1.8500001728534698 ;
	setAttr ".cbx" -type "double3" 1.8500001728534698 1 1.8500001728534698 ;
createNode polyTweak -n "polyTweak138";
	setAttr ".uopa" yes;
	setAttr -s 16 ".tk[40:55]" -type "float3"  0 -0.25 0 0 -0.25 0 0 -0.25
		 0 0 -0.25 0 0 -0.25 0 0 -0.25 0 0 -0.25 0 0 -0.25 0 0 -0.25 0 0 -0.25 0 0 -0.25 0
		 0 -0.25 0 0 -0.25 0 0 -0.25 0 0 -0.25 0 0 -0.25 0;
createNode polyExtrudeFace -n "polyExtrudeFace270";
	setAttr ".ics" -type "componentList" 9 "f[1]" "f[8]" "f[10]" "f[16]" "f[20]" "f[24]" "f[26]" "f[32]" "f[36]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 2 0 0 0 0 2.5 0 0 1 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 2 0 ;
	setAttr ".rs" 34091;
	setAttr ".lt" -type "double3" 0 0 0.3 ;
	setAttr ".ls" -type "double3" 0.35 0.35 0.35 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1.8500001728534698 2 -1.8500001728534698 ;
	setAttr ".cbx" -type "double3" 1.8500001728534698 2 1.8500001728534698 ;
createNode polyExtrudeFace -n "polyExtrudeFace271";
	setAttr ".ics" -type "componentList" 9 "f[1]" "f[8]" "f[10]" "f[16]" "f[20]" "f[24]" "f[26]" "f[32]" "f[36]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 2 0 0 0 0 2.5 0 0 1 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 2.3000002 0 ;
	setAttr ".rs" 43508;
	setAttr ".lt" -type "double3" 0 0 0.5 ;
	setAttr ".ls" -type "double3" 0.35 0.35 0.35 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1.7200000584125519 2.3000001907348633 -1.7200000584125519 ;
	setAttr ".cbx" -type "double3" 1.7200000584125519 2.3000001907348633 1.7200000584125519 ;
createNode polyExtrudeFace -n "polyExtrudeFace272";
	setAttr ".ics" -type "componentList" 1 "f[1]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 2 0 0 0 0 2.5 0 0 1 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 2.8000002 0 ;
	setAttr ".rs" 48164;
	setAttr ".lt" -type "double3" 0 0 2 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.65217815339565277 2.8000001907348633 -0.65217815339565277 ;
	setAttr ".cbx" -type "double3" 0.65217815339565277 2.8000001907348633 0.65217815339565277 ;
createNode polyExtrudeFace -n "polyExtrudeFace273";
	setAttr ".ics" -type "componentList" 1 "f[1]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 2 0 0 0 0 2.5 0 0 1 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 4.8000002 0 ;
	setAttr ".rs" 64536;
	setAttr ".lt" -type "double3" 0 0 0.2 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.65217815339565277 4.8000001907348633 -0.65217815339565277 ;
	setAttr ".cbx" -type "double3" 0.65217815339565277 4.8000001907348633 0.65217815339565277 ;
createNode polyExtrudeFace -n "polyExtrudeFace274";
	setAttr ".ics" -type "componentList" 1 "f[1]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 2 0 0 0 0 2.5 0 0 1 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 5 0 ;
	setAttr ".rs" 60815;
	setAttr ".lt" -type "double3" 0 0 2 ;
	setAttr ".ls" -type "double3" 0 0 0 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.65217815339565277 5 -0.65217815339565277 ;
	setAttr ".cbx" -type "double3" 0.65217815339565277 5 0.65217815339565277 ;
createNode polyExtrudeFace -n "polyExtrudeFace275";
	setAttr ".ics" -type "componentList" 1 "f[110:113]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 2 0 0 0 0 2.5 0 0 1 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 3.8000002 0 ;
	setAttr ".rs" 34353;
	setAttr ".ls" -type "double3" 0.5 0.5 0.5 ;
	setAttr ".kft" no;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.65217815339565277 2.8000001907348633 -0.65217815339565277 ;
	setAttr ".cbx" -type "double3" 0.65217815339565277 4.8000001907348633 0.65217815339565277 ;
createNode polyExtrudeFace -n "polyExtrudeFace276";
	setAttr ".ics" -type "componentList" 1 "f[110:113]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 2 0 0 0 0 2.5 0 0 1 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 3.8000002 0 ;
	setAttr ".rs" 47749;
	setAttr ".lt" -type "double3" 0 0 -0.3 ;
	setAttr ".kft" no;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.65217815339565277 3.3000001907348633 -0.65217815339565277 ;
	setAttr ".cbx" -type "double3" 0.65217815339565277 4.3000001907348633 0.65217815339565277 ;
createNode polyExtrudeFace -n "polyExtrudeFace277";
	setAttr ".ics" -type "componentList" 1 "f[114:117]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 2 0 0 0 0 2.5 0 0 1 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 4.9000001 0 ;
	setAttr ".rs" 38971;
	setAttr ".lt" -type "double3" 0 0 0.2 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.65217815339565277 4.8000001907348633 -0.65217815339565277 ;
	setAttr ".cbx" -type "double3" 0.65217815339565277 5 0.65217815339565277 ;
createNode polyCube -n "polyCube33";
	setAttr ".sw" 3;
	setAttr ".sd" 3;
createNode polySplitRing -n "polySplitRing30";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 8 "e[1]" "e[4]" "e[7]" "e[10]" "e[13]" "e[16]" "e[19]" "e[22]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 1 0 0 0 0 2.5 0 0 0.5 0 1;
	setAttr ".stp" 2;
	setAttr ".p[0]"  0 0 1;
createNode polySplitRing -n "polySplitRing31";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 6 "e[32:35]" "e[48:51]" "e[66]" "e[74]" "e[82]" "e[90]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 1 0 0 0 0 2.5 0 0 0.5 0 1;
	setAttr ".stp" 2;
	setAttr ".p[0]"  0 0 1;
createNode polyTweak -n "polyTweak139";
	setAttr ".uopa" yes;
	setAttr -s 16 ".tk[32:47]" -type "float3"  0.083333343 0 0 0.083333343
		 0 0 0.083333343 0 0 0.083333343 0 0 0.083333343 0 0 0.083333343 0 0 0.083333343 0
		 0 0.083333343 0 0 -0.083333321 0 0 -0.083333321 0 0 -0.083333321 0 0 -0.083333321
		 0 0 -0.083333321 0 0 -0.083333321 0 0 -0.083333321 0 0 -0.083333321 0 0;
createNode polyExtrudeFace -n "polyExtrudeFace278";
	setAttr ".ics" -type "componentList" 5 "f[3:11]" "f[31:33]" "f[39:41]" "f[53:57]" "f[65:69]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 1 0 0 0 0 2.5 0 0 0.5 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 1 0 ;
	setAttr ".rs" 55007;
	setAttr ".ls" -type "double3" 0.005 0.005 0.005 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1.25 1 -1.25 ;
	setAttr ".cbx" -type "double3" 1.25 1 1.25 ;
createNode polyTweak -n "polyTweak140";
	setAttr ".uopa" yes;
	setAttr -s 32 ".tk";
	setAttr ".tk[32]" -type "float3" 0 0 -0.1 ;
	setAttr ".tk[33]" -type "float3" 0 0 -0.1 ;
	setAttr ".tk[36]" -type "float3" 0 0 0.1 ;
	setAttr ".tk[37]" -type "float3" 0 0 0.1 ;
	setAttr ".tk[40]" -type "float3" 0 0 -0.1 ;
	setAttr ".tk[41]" -type "float3" 0 0 -0.1 ;
	setAttr ".tk[44]" -type "float3" 0 0 0.1 ;
	setAttr ".tk[45]" -type "float3" 0 0 0.1 ;
	setAttr ".tk[48]" -type "float3" 0.1 0 -0.083333343 ;
	setAttr ".tk[49]" -type "float3" 0.1 0 -0.083333299 ;
	setAttr ".tk[50]" -type "float3" 0 0 -0.083333299 ;
	setAttr ".tk[51]" -type "float3" 0 0 -0.083333299 ;
	setAttr ".tk[52]" -type "float3" 0 0 -0.083333299 ;
	setAttr ".tk[53]" -type "float3" 0 0 -0.083333299 ;
	setAttr ".tk[54]" -type "float3" -0.1 0 -0.083333299 ;
	setAttr ".tk[55]" -type "float3" -0.1 0 -0.083333343 ;
	setAttr ".tk[56]" -type "float3" 0 0 -0.083333343 ;
	setAttr ".tk[57]" -type "float3" 0 0 -0.083333343 ;
	setAttr ".tk[58]" -type "float3" 0 0 -0.083333343 ;
	setAttr ".tk[59]" -type "float3" 0 0 -0.083333343 ;
	setAttr ".tk[60]" -type "float3" 0.1 0 0.083333321 ;
	setAttr ".tk[61]" -type "float3" 0.1 0 0.083333366 ;
	setAttr ".tk[62]" -type "float3" 0 0 0.083333366 ;
	setAttr ".tk[63]" -type "float3" 0 0 0.083333366 ;
	setAttr ".tk[64]" -type "float3" 0 0 0.083333366 ;
	setAttr ".tk[65]" -type "float3" 0 0 0.083333366 ;
	setAttr ".tk[66]" -type "float3" -0.1 0 0.083333366 ;
	setAttr ".tk[67]" -type "float3" -0.1 0 0.083333321 ;
	setAttr ".tk[68]" -type "float3" 0 0 0.083333321 ;
	setAttr ".tk[69]" -type "float3" 0 0 0.083333321 ;
	setAttr ".tk[70]" -type "float3" 0 0 0.083333321 ;
	setAttr ".tk[71]" -type "float3" 0 0 0.083333321 ;
createNode polyExtrudeFace -n "polyExtrudeFace279";
	setAttr ".ics" -type "componentList" 5 "f[3:11]" "f[31:33]" "f[39:41]" "f[53:57]" "f[65:69]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 1 0 0 0 0 2.5 0 0 0.5 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 3.7252903e-008 1 -3.7252903e-008 ;
	setAttr ".rs" 43578;
	setAttr ".lt" -type "double3" 0 0 2 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.8354167640209198 1 -0.83541683852672577 ;
	setAttr ".cbx" -type "double3" 0.83541683852672577 1 0.8354167640209198 ;
createNode polyExtrudeFace -n "polyExtrudeFace280";
	setAttr ".ics" -type "componentList" 5 "f[3:11]" "f[31:33]" "f[39:41]" "f[53:57]" "f[65:69]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 1 0 0 0 0 2.5 0 0 0.5 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 3 0 ;
	setAttr ".rs" 52161;
	setAttr ".ls" -type "double3" 0.005 0.005 0.005 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.83541683852672577 3 -0.83541683852672577 ;
	setAttr ".cbx" -type "double3" 0.83541683852672577 3 0.83541683852672577 ;
createNode polyExtrudeFace -n "polyExtrudeFace281";
	setAttr ".ics" -type "componentList" 5 "f[3:11]" "f[31:33]" "f[39:41]" "f[53:57]" "f[65:69]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 1 0 0 0 0 2.5 0 0 0.5 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 7.4505806e-008 3 -3.7252903e-008 ;
	setAttr ".rs" 33915;
	setAttr ".lt" -type "double3" 0 0 2 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.64832583069801331 2.9999997615814209 -0.64832590520381927 ;
	setAttr ".cbx" -type "double3" 0.64832597970962524 3 0.64832583069801331 ;
createNode polyCube -n "polyCube34";
	setAttr ".sw" 5;
	setAttr ".sd" 5;
createNode polyExtrudeFace -n "polyExtrudeFace282";
	setAttr ".ics" -type "componentList" 1 "f[5:29]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 1 0 0 0 0 2.5 0 0 0.5 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 1 0 ;
	setAttr ".rs" 53351;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1.25 1 -1.25 ;
	setAttr ".cbx" -type "double3" 1.25 1 1.25 ;
createNode polyExtrudeFace -n "polyExtrudeFace283";
	setAttr ".ics" -type "componentList" 1 "f[5:29]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 1 0 0 0 0 2.5 0 0 0.5 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 1 0 ;
	setAttr ".rs" 61621;
	setAttr ".lt" -type "double3" 0 0 1 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.87499998509883881 1 -0.87499998509883881 ;
	setAttr ".cbx" -type "double3" 0.87499998509883881 1 0.87499998509883881 ;
createNode polyTweak -n "polyTweak141";
	setAttr ".uopa" yes;
	setAttr -s 36 ".tk[56:91]" -type "float3"  0.15000001 0 -0.15000001 0.090000004
		 0 -0.15000001 0.090000004 0 -0.090000004 0.15000001 0 -0.090000004 0.030000005 0
		 -0.15000001 0.030000005 0 -0.090000004 -0.029999997 0 -0.15000001 -0.029999997 0
		 -0.090000004 -0.090000004 0 -0.15000001 -0.090000004 0 -0.090000004 -0.15000001 0
		 -0.15000001 -0.15000001 0 -0.090000004 0.090000004 0 -0.030000005 0.15000001 0 -0.030000005
		 0.030000005 0 -0.030000005 -0.029999997 0 -0.030000005 -0.090000004 0 -0.030000005
		 -0.15000001 0 -0.030000005 0.090000004 0 0.029999997 0.15000001 0 0.029999997 0.030000005
		 0 0.029999997 -0.029999997 0 0.029999997 -0.090000004 0 0.029999997 -0.15000001 0
		 0.029999997 0.090000004 0 0.090000004 0.15000001 0 0.090000004 0.030000005 0 0.090000004
		 -0.029999997 0 0.090000004 -0.090000004 0 0.090000004 -0.15000001 0 0.090000004 0.090000004
		 0 0.15000001 0.15000001 0 0.15000001 0.030000005 0 0.15000001 -0.029999997 0 0.15000001
		 -0.090000004 0 0.15000001 -0.15000001 0 0.15000001;
createNode polyExtrudeFace -n "polyExtrudeFace284";
	setAttr ".ics" -type "componentList" 1 "f[5:29]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 1 0 0 0 0 2.5 0 0 0.5 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 2 0 ;
	setAttr ".rs" 36492;
	setAttr ".lt" -type "double3" 0 0 1 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.87499998509883881 2 -0.87499998509883881 ;
	setAttr ".cbx" -type "double3" 0.87499998509883881 2 0.87499998509883881 ;
createNode polyExtrudeFace -n "polyExtrudeFace285";
	setAttr ".ics" -type "componentList" 1 "f[5:29]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 1 0 0 0 0 2.5 0 0 0.5 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 3 0 ;
	setAttr ".rs" 57259;
	setAttr ".lt" -type "double3" 0 0 1 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.87499998509883881 3 -0.87499998509883881 ;
	setAttr ".cbx" -type "double3" 0.87499998509883881 3 0.87499998509883881 ;
createNode polyExtrudeFace -n "polyExtrudeFace286";
	setAttr ".ics" -type "componentList" 1 "f[5:29]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 1 0 0 0 0 2.5 0 0 0.5 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 4 0 ;
	setAttr ".rs" 58639;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.87499998509883881 4 -0.87499998509883881 ;
	setAttr ".cbx" -type "double3" 0.87499998509883881 4 0.87499998509883881 ;
createNode polyExtrudeFace -n "polyExtrudeFace287";
	setAttr ".ics" -type "componentList" 1 "f[5:29]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 1 0 0 0 0 2.5 0 0 0.5 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 4 0 ;
	setAttr ".rs" 52265;
	setAttr ".lt" -type "double3" 0 0 1 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.4374999925494194 4 -0.4374999925494194 ;
	setAttr ".cbx" -type "double3" 0.4374999925494194 4 0.4374999925494194 ;
createNode polyTweak -n "polyTweak142";
	setAttr ".uopa" yes;
	setAttr -s 36 ".tk[136:171]" -type "float3"  0.175 0 -0.175 0.10500001
		 0 -0.175 0.10500001 0 -0.10500001 0.175 0 -0.10500001 0.035000004 0 -0.175 0.035000004
		 0 -0.10500001 -0.034999996 0 -0.175 -0.034999996 0 -0.10500001 -0.10500001 0 -0.175
		 -0.10500001 0 -0.10500001 -0.175 0 -0.175 -0.175 0 -0.10500001 0.10500001 0 -0.035000004
		 0.175 0 -0.035000004 0.035000004 0 -0.035000004 -0.034999996 0 -0.035000004 -0.10500001
		 0 -0.035000004 -0.175 0 -0.035000004 0.10500001 0 0.034999996 0.175 0 0.034999996
		 0.035000004 0 0.034999996 -0.034999996 0 0.034999996 -0.10500001 0 0.034999996 -0.175
		 0 0.034999996 0.10500001 0 0.10500001 0.175 0 0.10500001 0.035000004 0 0.10500001
		 -0.034999996 0 0.10500001 -0.10500001 0 0.10500001 -0.175 0 0.10500001 0.10500001
		 0 0.175 0.175 0 0.175 0.035000004 0 0.175 -0.034999996 0 0.175 -0.10500001 0 0.175
		 -0.175 0 0.175;
createNode polyExtrudeFace -n "polyExtrudeFace288";
	setAttr ".ics" -type "componentList" 2 "f[90:149]" "f[170:189]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 1 0 0 0 0 2.5 0 0 0.5 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 3 0 ;
	setAttr ".rs" 62717;
	setAttr ".ls" -type "double3" 0.5 0.5 0.5 ;
	setAttr ".kft" no;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.87499998509883881 1 -0.87499998509883881 ;
	setAttr ".cbx" -type "double3" 0.87499998509883881 5 0.87499998509883881 ;
createNode polyExtrudeFace -n "polyExtrudeFace289";
	setAttr ".ics" -type "componentList" 2 "f[90:149]" "f[170:189]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 1 0 0 0 0 2.5 0 0 0.5 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 3 0 ;
	setAttr ".rs" 64248;
	setAttr ".lt" -type "double3" 0 0 -0.2 ;
	setAttr ".kft" no;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.87499998509883881 1.25 -0.87499998509883881 ;
	setAttr ".cbx" -type "double3" 0.87499998509883881 4.75 0.87499998509883881 ;
createNode polyExtrudeFace -n "polyExtrudeFace290";
	setAttr ".ics" -type "componentList" 4 "f[2]" "f[32]" "f[62]" "f[67]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 1 0 0 0 0 2.5 0 0 0.5 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 0.5 0 ;
	setAttr ".rs" 46062;
	setAttr ".ls" -type "double3" 0.5 0.5 0.5 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1.25 0 -1.25 ;
	setAttr ".cbx" -type "double3" 1.25 1 1.25 ;
createNode polyExtrudeFace -n "polyExtrudeFace291";
	setAttr ".ics" -type "componentList" 4 "f[2]" "f[32]" "f[62]" "f[67]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 1 0 0 0 0 2.5 0 0 0.5 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 0.25 0 ;
	setAttr ".rs" 51341;
	setAttr ".lt" -type "double3" 0 0 -0.5 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1.25 0 -1.25 ;
	setAttr ".cbx" -type "double3" 1.25 0.5 1.25 ;
createNode polyTweak -n "polyTweak143";
	setAttr ".uopa" yes;
	setAttr -s 16 ".tk[832:847]" -type "float3"  0 -0.25 0 0 -0.25 0 0 -0.25
		 0 0 -0.25 0 0 -0.25 0 0 -0.25 0 0 -0.25 0 0 -0.25 0 0 -0.25 0 0 -0.25 0 0 -0.25 0
		 0 -0.25 0 0 -0.25 0 0 -0.25 0 0 -0.25 0 0 -0.25 0;
createNode polyCube -n "polyCube35";
	setAttr ".sw" 5;
	setAttr ".sd" 5;
createNode polyExtrudeFace -n "polyExtrudeFace292";
	setAttr ".ics" -type "componentList" 1 "f[5:29]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 1 0 0 0 0 2.5 0 0 0.5 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 1 0 ;
	setAttr ".rs" 38003;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1.25 1 -1.25 ;
	setAttr ".cbx" -type "double3" 1.25 1 1.25 ;
createNode polyExtrudeFace -n "polyExtrudeFace293";
	setAttr ".ics" -type "componentList" 1 "f[5:29]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 1 0 0 0 0 2.5 0 0 0.5 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 1 0 ;
	setAttr ".rs" 43690;
	setAttr ".lt" -type "double3" 0 0 1 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.87499998509883881 1 -0.87499998509883881 ;
	setAttr ".cbx" -type "double3" 0.87499998509883881 1 0.87499998509883881 ;
createNode polyTweak -n "polyTweak144";
	setAttr ".uopa" yes;
	setAttr -s 36 ".tk[56:91]" -type "float3"  0.15000001 0 -0.15000001 0.090000004
		 0 -0.15000001 0.090000004 0 -0.090000004 0.15000001 0 -0.090000004 0.030000005 0
		 -0.15000001 0.030000005 0 -0.090000004 -0.029999997 0 -0.15000001 -0.029999997 0
		 -0.090000004 -0.090000004 0 -0.15000001 -0.090000004 0 -0.090000004 -0.15000001 0
		 -0.15000001 -0.15000001 0 -0.090000004 0.090000004 0 -0.030000005 0.15000001 0 -0.030000005
		 0.030000005 0 -0.030000005 -0.029999997 0 -0.030000005 -0.090000004 0 -0.030000005
		 -0.15000001 0 -0.030000005 0.090000004 0 0.029999997 0.15000001 0 0.029999997 0.030000005
		 0 0.029999997 -0.029999997 0 0.029999997 -0.090000004 0 0.029999997 -0.15000001 0
		 0.029999997 0.090000004 0 0.090000004 0.15000001 0 0.090000004 0.030000005 0 0.090000004
		 -0.029999997 0 0.090000004 -0.090000004 0 0.090000004 -0.15000001 0 0.090000004 0.090000004
		 0 0.15000001 0.15000001 0 0.15000001 0.030000005 0 0.15000001 -0.029999997 0 0.15000001
		 -0.090000004 0 0.15000001 -0.15000001 0 0.15000001;
createNode polyExtrudeFace -n "polyExtrudeFace294";
	setAttr ".ics" -type "componentList" 1 "f[5:29]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 1 0 0 0 0 2.5 0 0 0.5 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 2 0 ;
	setAttr ".rs" 61696;
	setAttr ".lt" -type "double3" 0 0 1 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.87499998509883881 2 -0.87499998509883881 ;
	setAttr ".cbx" -type "double3" 0.87499998509883881 2 0.87499998509883881 ;
createNode polyExtrudeFace -n "polyExtrudeFace295";
	setAttr ".ics" -type "componentList" 1 "f[5:29]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 1 0 0 0 0 2.5 0 0 0.5 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 3 0 ;
	setAttr ".rs" 56937;
	setAttr ".lt" -type "double3" 0 0 1 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.87499998509883881 3 -0.87499998509883881 ;
	setAttr ".cbx" -type "double3" 0.87499998509883881 3 0.87499998509883881 ;
createNode polyExtrudeFace -n "polyExtrudeFace296";
	setAttr ".ics" -type "componentList" 1 "f[5:29]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 1 0 0 0 0 2.5 0 0 0.5 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 4 0 ;
	setAttr ".rs" 41320;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.87499998509883881 4 -0.87499998509883881 ;
	setAttr ".cbx" -type "double3" 0.87499998509883881 4 0.87499998509883881 ;
createNode polyExtrudeFace -n "polyExtrudeFace297";
	setAttr ".ics" -type "componentList" 1 "f[5:29]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 1 0 0 0 0 2.5 0 0 0.5 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 4 0 ;
	setAttr ".rs" 54183;
	setAttr ".lt" -type "double3" 0 0 1 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.4374999925494194 4 -0.4374999925494194 ;
	setAttr ".cbx" -type "double3" 0.4374999925494194 4 0.4374999925494194 ;
createNode polyTweak -n "polyTweak145";
	setAttr ".uopa" yes;
	setAttr -s 36 ".tk[136:171]" -type "float3"  0.175 0 -0.175 0.10500001
		 0 -0.175 0.10500001 0 -0.10500001 0.175 0 -0.10500001 0.035000004 0 -0.175 0.035000004
		 0 -0.10500001 -0.034999996 0 -0.175 -0.034999996 0 -0.10500001 -0.10500001 0 -0.175
		 -0.10500001 0 -0.10500001 -0.175 0 -0.175 -0.175 0 -0.10500001 0.10500001 0 -0.035000004
		 0.175 0 -0.035000004 0.035000004 0 -0.035000004 -0.034999996 0 -0.035000004 -0.10500001
		 0 -0.035000004 -0.175 0 -0.035000004 0.10500001 0 0.034999996 0.175 0 0.034999996
		 0.035000004 0 0.034999996 -0.034999996 0 0.034999996 -0.10500001 0 0.034999996 -0.175
		 0 0.034999996 0.10500001 0 0.10500001 0.175 0 0.10500001 0.035000004 0 0.10500001
		 -0.034999996 0 0.10500001 -0.10500001 0 0.10500001 -0.175 0 0.10500001 0.10500001
		 0 0.175 0.175 0 0.175 0.035000004 0 0.175 -0.034999996 0 0.175 -0.10500001 0 0.175
		 -0.175 0 0.175;
createNode polyExtrudeFace -n "polyExtrudeFace298";
	setAttr ".ics" -type "componentList" 2 "f[90:149]" "f[170:189]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 1 0 0 0 0 2.5 0 0 0.5 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 3 0 ;
	setAttr ".rs" 36504;
	setAttr ".ls" -type "double3" 0.5 0.5 0.5 ;
	setAttr ".kft" no;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.87499998509883881 1 -0.87499998509883881 ;
	setAttr ".cbx" -type "double3" 0.87499998509883881 5 0.87499998509883881 ;
createNode polyExtrudeFace -n "polyExtrudeFace299";
	setAttr ".ics" -type "componentList" 2 "f[90:149]" "f[170:189]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 1 0 0 0 0 2.5 0 0 0.5 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 3 0 ;
	setAttr ".rs" 56385;
	setAttr ".lt" -type "double3" 0 0 -0.2 ;
	setAttr ".kft" no;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.87499998509883881 1.25 -0.87499998509883881 ;
	setAttr ".cbx" -type "double3" 0.87499998509883881 4.75 0.87499998509883881 ;
createNode polyExtrudeFace -n "polyExtrudeFace300";
	setAttr ".ics" -type "componentList" 4 "f[2]" "f[32]" "f[62]" "f[67]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 1 0 0 0 0 2.5 0 0 0.5 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 0.5 0 ;
	setAttr ".rs" 48772;
	setAttr ".ls" -type "double3" 0.5 0.5 0.5 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1.25 0 -1.25 ;
	setAttr ".cbx" -type "double3" 1.25 1 1.25 ;
createNode polyExtrudeFace -n "polyExtrudeFace301";
	setAttr ".ics" -type "componentList" 4 "f[2]" "f[32]" "f[62]" "f[67]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 1 0 0 0 0 2.5 0 0 0.5 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 0.25 0 ;
	setAttr ".rs" 45024;
	setAttr ".lt" -type "double3" 0 0 -0.5 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1.25 0 -1.25 ;
	setAttr ".cbx" -type "double3" 1.25 0.5 1.25 ;
createNode polyTweak -n "polyTweak146";
	setAttr ".uopa" yes;
	setAttr -s 16 ".tk[832:847]" -type "float3"  0 -0.25 0 0 -0.25 0 0 -0.25
		 0 0 -0.25 0 0 -0.25 0 0 -0.25 0 0 -0.25 0 0 -0.25 0 0 -0.25 0 0 -0.25 0 0 -0.25 0
		 0 -0.25 0 0 -0.25 0 0 -0.25 0 0 -0.25 0 0 -0.25 0;
createNode polyCube -n "polyCube36";
	setAttr ".sw" 5;
	setAttr ".sd" 5;
createNode polyExtrudeFace -n "polyExtrudeFace302";
	setAttr ".ics" -type "componentList" 1 "f[5:29]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 1 0 0 0 0 2.5 0 0 0.5 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 1 0 ;
	setAttr ".rs" 41357;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1.25 1 -1.25 ;
	setAttr ".cbx" -type "double3" 1.25 1 1.25 ;
createNode polyExtrudeFace -n "polyExtrudeFace303";
	setAttr ".ics" -type "componentList" 1 "f[5:29]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 1 0 0 0 0 2.5 0 0 0.5 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 1 0 ;
	setAttr ".rs" 42887;
	setAttr ".lt" -type "double3" 0 0 1 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.87499998509883881 1 -0.87499998509883881 ;
	setAttr ".cbx" -type "double3" 0.87499998509883881 1 0.87499998509883881 ;
createNode polyTweak -n "polyTweak147";
	setAttr ".uopa" yes;
	setAttr -s 36 ".tk[56:91]" -type "float3"  0.15000001 0 -0.15000001 0.090000004
		 0 -0.15000001 0.090000004 0 -0.090000004 0.15000001 0 -0.090000004 0.030000005 0
		 -0.15000001 0.030000005 0 -0.090000004 -0.029999997 0 -0.15000001 -0.029999997 0
		 -0.090000004 -0.090000004 0 -0.15000001 -0.090000004 0 -0.090000004 -0.15000001 0
		 -0.15000001 -0.15000001 0 -0.090000004 0.090000004 0 -0.030000005 0.15000001 0 -0.030000005
		 0.030000005 0 -0.030000005 -0.029999997 0 -0.030000005 -0.090000004 0 -0.030000005
		 -0.15000001 0 -0.030000005 0.090000004 0 0.029999997 0.15000001 0 0.029999997 0.030000005
		 0 0.029999997 -0.029999997 0 0.029999997 -0.090000004 0 0.029999997 -0.15000001 0
		 0.029999997 0.090000004 0 0.090000004 0.15000001 0 0.090000004 0.030000005 0 0.090000004
		 -0.029999997 0 0.090000004 -0.090000004 0 0.090000004 -0.15000001 0 0.090000004 0.090000004
		 0 0.15000001 0.15000001 0 0.15000001 0.030000005 0 0.15000001 -0.029999997 0 0.15000001
		 -0.090000004 0 0.15000001 -0.15000001 0 0.15000001;
createNode polyExtrudeFace -n "polyExtrudeFace304";
	setAttr ".ics" -type "componentList" 1 "f[5:29]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 1 0 0 0 0 2.5 0 0 0.5 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 2 0 ;
	setAttr ".rs" 43027;
	setAttr ".lt" -type "double3" 0 0 1 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.87499998509883881 2 -0.87499998509883881 ;
	setAttr ".cbx" -type "double3" 0.87499998509883881 2 0.87499998509883881 ;
createNode polyExtrudeFace -n "polyExtrudeFace305";
	setAttr ".ics" -type "componentList" 1 "f[5:29]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 1 0 0 0 0 2.5 0 0 0.5 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 3 0 ;
	setAttr ".rs" 61437;
	setAttr ".lt" -type "double3" 0 0 1 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.87499998509883881 3 -0.87499998509883881 ;
	setAttr ".cbx" -type "double3" 0.87499998509883881 3 0.87499998509883881 ;
createNode polyExtrudeFace -n "polyExtrudeFace306";
	setAttr ".ics" -type "componentList" 1 "f[5:29]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 1 0 0 0 0 2.5 0 0 0.5 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 4 0 ;
	setAttr ".rs" 43509;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.87499998509883881 4 -0.87499998509883881 ;
	setAttr ".cbx" -type "double3" 0.87499998509883881 4 0.87499998509883881 ;
createNode polyExtrudeFace -n "polyExtrudeFace307";
	setAttr ".ics" -type "componentList" 1 "f[5:29]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 1 0 0 0 0 2.5 0 0 0.5 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 4 0 ;
	setAttr ".rs" 49488;
	setAttr ".lt" -type "double3" 0 0 1 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.4374999925494194 4 -0.4374999925494194 ;
	setAttr ".cbx" -type "double3" 0.4374999925494194 4 0.4374999925494194 ;
createNode polyTweak -n "polyTweak148";
	setAttr ".uopa" yes;
	setAttr -s 36 ".tk[136:171]" -type "float3"  0.175 0 -0.175 0.10500001
		 0 -0.175 0.10500001 0 -0.10500001 0.175 0 -0.10500001 0.035000004 0 -0.175 0.035000004
		 0 -0.10500001 -0.034999996 0 -0.175 -0.034999996 0 -0.10500001 -0.10500001 0 -0.175
		 -0.10500001 0 -0.10500001 -0.175 0 -0.175 -0.175 0 -0.10500001 0.10500001 0 -0.035000004
		 0.175 0 -0.035000004 0.035000004 0 -0.035000004 -0.034999996 0 -0.035000004 -0.10500001
		 0 -0.035000004 -0.175 0 -0.035000004 0.10500001 0 0.034999996 0.175 0 0.034999996
		 0.035000004 0 0.034999996 -0.034999996 0 0.034999996 -0.10500001 0 0.034999996 -0.175
		 0 0.034999996 0.10500001 0 0.10500001 0.175 0 0.10500001 0.035000004 0 0.10500001
		 -0.034999996 0 0.10500001 -0.10500001 0 0.10500001 -0.175 0 0.10500001 0.10500001
		 0 0.175 0.175 0 0.175 0.035000004 0 0.175 -0.034999996 0 0.175 -0.10500001 0 0.175
		 -0.175 0 0.175;
createNode polyExtrudeFace -n "polyExtrudeFace308";
	setAttr ".ics" -type "componentList" 2 "f[90:149]" "f[170:189]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 1 0 0 0 0 2.5 0 0 0.5 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 3 0 ;
	setAttr ".rs" 42397;
	setAttr ".ls" -type "double3" 0.5 0.5 0.5 ;
	setAttr ".kft" no;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.87499998509883881 1 -0.87499998509883881 ;
	setAttr ".cbx" -type "double3" 0.87499998509883881 5 0.87499998509883881 ;
createNode polyExtrudeFace -n "polyExtrudeFace309";
	setAttr ".ics" -type "componentList" 2 "f[90:149]" "f[170:189]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 1 0 0 0 0 2.5 0 0 0.5 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 3 0 ;
	setAttr ".rs" 42455;
	setAttr ".lt" -type "double3" 0 0 -0.2 ;
	setAttr ".kft" no;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.87499998509883881 1.25 -0.87499998509883881 ;
	setAttr ".cbx" -type "double3" 0.87499998509883881 4.75 0.87499998509883881 ;
createNode polyExtrudeFace -n "polyExtrudeFace310";
	setAttr ".ics" -type "componentList" 4 "f[2]" "f[32]" "f[62]" "f[67]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 1 0 0 0 0 2.5 0 0 0.5 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 0.5 0 ;
	setAttr ".rs" 41314;
	setAttr ".ls" -type "double3" 0.5 0.5 0.5 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1.25 0 -1.25 ;
	setAttr ".cbx" -type "double3" 1.25 1 1.25 ;
createNode polyExtrudeFace -n "polyExtrudeFace311";
	setAttr ".ics" -type "componentList" 4 "f[2]" "f[32]" "f[62]" "f[67]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 1 0 0 0 0 2.5 0 0 0.5 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 0.25 0 ;
	setAttr ".rs" 36930;
	setAttr ".lt" -type "double3" 0 0 -0.5 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1.25 0 -1.25 ;
	setAttr ".cbx" -type "double3" 1.25 0.5 1.25 ;
createNode polyTweak -n "polyTweak149";
	setAttr ".uopa" yes;
	setAttr -s 16 ".tk[832:847]" -type "float3"  0 -0.25 0 0 -0.25 0 0 -0.25
		 0 0 -0.25 0 0 -0.25 0 0 -0.25 0 0 -0.25 0 0 -0.25 0 0 -0.25 0 0 -0.25 0 0 -0.25 0
		 0 -0.25 0 0 -0.25 0 0 -0.25 0 0 -0.25 0 0 -0.25 0;
createNode polyCube -n "polyCube37";
createNode polyExtrudeFace -n "polyExtrudeFace312";
	setAttr ".ics" -type "componentList" 3 "f[0]" "f[2]" "f[4:5]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 2 0 0 0 0 2.5 0 0 1 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 1 0 ;
	setAttr ".rs" 65533;
	setAttr ".lt" -type "double3" 0 0 0.2 ;
	setAttr ".ls" -type "double3" 0.5 1 1 ;
	setAttr ".kft" no;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1.25 0 -1.25 ;
	setAttr ".cbx" -type "double3" 1.25 2 1.25 ;
createNode polyExtrudeFace -n "polyExtrudeFace313";
	setAttr ".ics" -type "componentList" 3 "f[0]" "f[2]" "f[4:5]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 2 0 0 0 0 2.5 0 0 1 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 1 0 ;
	setAttr ".rs" 57141;
	setAttr ".lt" -type "double3" 0 0 0.4 ;
	setAttr ".kft" no;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1.4500001072883606 0 -1.4500001072883606 ;
	setAttr ".cbx" -type "double3" 1.4500001072883606 2 1.4500001072883606 ;
createNode polyExtrudeFace -n "polyExtrudeFace314";
	setAttr ".ics" -type "componentList" 3 "f[0]" "f[2]" "f[4:5]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 2 0 0 0 0 2.5 0 0 1 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 1 0 ;
	setAttr ".rs" 39104;
	setAttr ".ls" -type "double3" 0.5 0.5 1 ;
	setAttr ".kft" no;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1.8500001728534698 0 -1.8500001728534698 ;
	setAttr ".cbx" -type "double3" 1.8500001728534698 2 1.8500001728534698 ;
createNode polyExtrudeFace -n "polyExtrudeFace315";
	setAttr ".ics" -type "componentList" 3 "f[0]" "f[2]" "f[4:5]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 2 0 0 0 0 2.5 0 0 1 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 0.5 0 ;
	setAttr ".rs" 65508;
	setAttr ".lt" -type "double3" 0 0 -0.2 ;
	setAttr ".ls" -type "double3" 0.8 0.8 0.8 ;
	setAttr ".kft" no;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1.8500001728534698 0 -1.8500001728534698 ;
	setAttr ".cbx" -type "double3" 1.8500001728534698 1 1.8500001728534698 ;
createNode polyTweak -n "polyTweak150";
	setAttr ".uopa" yes;
	setAttr -s 16 ".tk[40:55]" -type "float3"  0 -0.25 0 0 -0.25 0 0 -0.25
		 0 0 -0.25 0 0 -0.25 0 0 -0.25 0 0 -0.25 0 0 -0.25 0 0 -0.25 0 0 -0.25 0 0 -0.25 0
		 0 -0.25 0 0 -0.25 0 0 -0.25 0 0 -0.25 0 0 -0.25 0;
createNode polyExtrudeFace -n "polyExtrudeFace316";
	setAttr ".ics" -type "componentList" 9 "f[1]" "f[8]" "f[10]" "f[16]" "f[20]" "f[24]" "f[26]" "f[32]" "f[36]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 2 0 0 0 0 2.5 0 0 1 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 2 0 ;
	setAttr ".rs" 60771;
	setAttr ".lt" -type "double3" 0 0 0.3 ;
	setAttr ".ls" -type "double3" 0.35 0.35 0.35 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1.8500001728534698 2 -1.8500001728534698 ;
	setAttr ".cbx" -type "double3" 1.8500001728534698 2 1.8500001728534698 ;
createNode polyExtrudeFace -n "polyExtrudeFace317";
	setAttr ".ics" -type "componentList" 9 "f[1]" "f[8]" "f[10]" "f[16]" "f[20]" "f[24]" "f[26]" "f[32]" "f[36]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 2 0 0 0 0 2.5 0 0 1 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 2.3000002 0 ;
	setAttr ".rs" 48176;
	setAttr ".lt" -type "double3" 0 0 0.5 ;
	setAttr ".ls" -type "double3" 0.35 0.35 0.35 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1.7200000584125519 2.3000001907348633 -1.7200000584125519 ;
	setAttr ".cbx" -type "double3" 1.7200000584125519 2.3000001907348633 1.7200000584125519 ;
createNode polyExtrudeFace -n "polyExtrudeFace318";
	setAttr ".ics" -type "componentList" 1 "f[1]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 2 0 0 0 0 2.5 0 0 1 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 2.8000002 0 ;
	setAttr ".rs" 34004;
	setAttr ".lt" -type "double3" 0 0 2 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.65217815339565277 2.8000001907348633 -0.65217815339565277 ;
	setAttr ".cbx" -type "double3" 0.65217815339565277 2.8000001907348633 0.65217815339565277 ;
createNode polyExtrudeFace -n "polyExtrudeFace319";
	setAttr ".ics" -type "componentList" 1 "f[1]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 2 0 0 0 0 2.5 0 0 1 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 4.8000002 0 ;
	setAttr ".rs" 47786;
	setAttr ".lt" -type "double3" 0 0 0.2 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.65217815339565277 4.8000001907348633 -0.65217815339565277 ;
	setAttr ".cbx" -type "double3" 0.65217815339565277 4.8000001907348633 0.65217815339565277 ;
createNode polyExtrudeFace -n "polyExtrudeFace320";
	setAttr ".ics" -type "componentList" 1 "f[1]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 2 0 0 0 0 2.5 0 0 1 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 5 0 ;
	setAttr ".rs" 62764;
	setAttr ".lt" -type "double3" 0 0 2 ;
	setAttr ".ls" -type "double3" 0 0 0 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.65217815339565277 5 -0.65217815339565277 ;
	setAttr ".cbx" -type "double3" 0.65217815339565277 5 0.65217815339565277 ;
createNode polyExtrudeFace -n "polyExtrudeFace321";
	setAttr ".ics" -type "componentList" 1 "f[110:113]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 2 0 0 0 0 2.5 0 0 1 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 3.8000002 0 ;
	setAttr ".rs" 34820;
	setAttr ".ls" -type "double3" 0.5 0.5 0.5 ;
	setAttr ".kft" no;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.65217815339565277 2.8000001907348633 -0.65217815339565277 ;
	setAttr ".cbx" -type "double3" 0.65217815339565277 4.8000001907348633 0.65217815339565277 ;
createNode polyExtrudeFace -n "polyExtrudeFace322";
	setAttr ".ics" -type "componentList" 1 "f[110:113]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 2 0 0 0 0 2.5 0 0 1 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 3.8000002 0 ;
	setAttr ".rs" 54113;
	setAttr ".lt" -type "double3" 0 0 -0.3 ;
	setAttr ".kft" no;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.65217815339565277 3.3000001907348633 -0.65217815339565277 ;
	setAttr ".cbx" -type "double3" 0.65217815339565277 4.3000001907348633 0.65217815339565277 ;
createNode polyExtrudeFace -n "polyExtrudeFace323";
	setAttr ".ics" -type "componentList" 1 "f[114:117]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 2 0 0 0 0 2.5 0 0 1 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 4.9000001 0 ;
	setAttr ".rs" 46536;
	setAttr ".lt" -type "double3" 0 0 0.2 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.65217815339565277 4.8000001907348633 -0.65217815339565277 ;
	setAttr ".cbx" -type "double3" 0.65217815339565277 5 0.65217815339565277 ;
createNode polyCube -n "polyCube38";
createNode polyExtrudeFace -n "polyExtrudeFace324";
	setAttr ".ics" -type "componentList" 3 "f[0]" "f[2]" "f[4:5]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 2 0 0 0 0 2.5 0 0 1 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 1 0 ;
	setAttr ".rs" 52029;
	setAttr ".lt" -type "double3" 0 0 0.2 ;
	setAttr ".ls" -type "double3" 0.5 1 1 ;
	setAttr ".kft" no;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1.25 0 -1.25 ;
	setAttr ".cbx" -type "double3" 1.25 2 1.25 ;
createNode polyExtrudeFace -n "polyExtrudeFace325";
	setAttr ".ics" -type "componentList" 3 "f[0]" "f[2]" "f[4:5]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 2 0 0 0 0 2.5 0 0 1 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 1 0 ;
	setAttr ".rs" 58298;
	setAttr ".lt" -type "double3" 0 0 0.4 ;
	setAttr ".kft" no;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1.4500001072883606 0 -1.4500001072883606 ;
	setAttr ".cbx" -type "double3" 1.4500001072883606 2 1.4500001072883606 ;
createNode polyExtrudeFace -n "polyExtrudeFace326";
	setAttr ".ics" -type "componentList" 3 "f[0]" "f[2]" "f[4:5]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 2 0 0 0 0 2.5 0 0 1 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 1 0 ;
	setAttr ".rs" 60457;
	setAttr ".ls" -type "double3" 0.5 0.5 1 ;
	setAttr ".kft" no;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1.8500001728534698 0 -1.8500001728534698 ;
	setAttr ".cbx" -type "double3" 1.8500001728534698 2 1.8500001728534698 ;
createNode polyExtrudeFace -n "polyExtrudeFace327";
	setAttr ".ics" -type "componentList" 3 "f[0]" "f[2]" "f[4:5]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 2 0 0 0 0 2.5 0 0 1 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 0.5 0 ;
	setAttr ".rs" 57425;
	setAttr ".lt" -type "double3" 0 0 -0.2 ;
	setAttr ".ls" -type "double3" 0.8 0.8 0.8 ;
	setAttr ".kft" no;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1.8500001728534698 0 -1.8500001728534698 ;
	setAttr ".cbx" -type "double3" 1.8500001728534698 1 1.8500001728534698 ;
createNode polyTweak -n "polyTweak151";
	setAttr ".uopa" yes;
	setAttr -s 16 ".tk[40:55]" -type "float3"  0 -0.25 0 0 -0.25 0 0 -0.25
		 0 0 -0.25 0 0 -0.25 0 0 -0.25 0 0 -0.25 0 0 -0.25 0 0 -0.25 0 0 -0.25 0 0 -0.25 0
		 0 -0.25 0 0 -0.25 0 0 -0.25 0 0 -0.25 0 0 -0.25 0;
createNode polyExtrudeFace -n "polyExtrudeFace328";
	setAttr ".ics" -type "componentList" 9 "f[1]" "f[8]" "f[10]" "f[16]" "f[20]" "f[24]" "f[26]" "f[32]" "f[36]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 2 0 0 0 0 2.5 0 0 1 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 2 0 ;
	setAttr ".rs" 60551;
	setAttr ".lt" -type "double3" 0 0 0.3 ;
	setAttr ".ls" -type "double3" 0.35 0.35 0.35 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1.8500001728534698 2 -1.8500001728534698 ;
	setAttr ".cbx" -type "double3" 1.8500001728534698 2 1.8500001728534698 ;
createNode polyExtrudeFace -n "polyExtrudeFace329";
	setAttr ".ics" -type "componentList" 9 "f[1]" "f[8]" "f[10]" "f[16]" "f[20]" "f[24]" "f[26]" "f[32]" "f[36]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 2 0 0 0 0 2.5 0 0 1 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 2.3000002 0 ;
	setAttr ".rs" 35480;
	setAttr ".lt" -type "double3" 0 0 0.5 ;
	setAttr ".ls" -type "double3" 0.35 0.35 0.35 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1.7200000584125519 2.3000001907348633 -1.7200000584125519 ;
	setAttr ".cbx" -type "double3" 1.7200000584125519 2.3000001907348633 1.7200000584125519 ;
createNode polyExtrudeFace -n "polyExtrudeFace330";
	setAttr ".ics" -type "componentList" 1 "f[1]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 2 0 0 0 0 2.5 0 0 1 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 2.8000002 0 ;
	setAttr ".rs" 50838;
	setAttr ".lt" -type "double3" 0 0 2 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.65217815339565277 2.8000001907348633 -0.65217815339565277 ;
	setAttr ".cbx" -type "double3" 0.65217815339565277 2.8000001907348633 0.65217815339565277 ;
createNode polyExtrudeFace -n "polyExtrudeFace331";
	setAttr ".ics" -type "componentList" 1 "f[1]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 2 0 0 0 0 2.5 0 0 1 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 4.8000002 0 ;
	setAttr ".rs" 33370;
	setAttr ".lt" -type "double3" 0 0 0.2 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.65217815339565277 4.8000001907348633 -0.65217815339565277 ;
	setAttr ".cbx" -type "double3" 0.65217815339565277 4.8000001907348633 0.65217815339565277 ;
createNode polyExtrudeFace -n "polyExtrudeFace332";
	setAttr ".ics" -type "componentList" 1 "f[1]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 2 0 0 0 0 2.5 0 0 1 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 5 0 ;
	setAttr ".rs" 58428;
	setAttr ".lt" -type "double3" 0 0 2 ;
	setAttr ".ls" -type "double3" 0 0 0 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.65217815339565277 5 -0.65217815339565277 ;
	setAttr ".cbx" -type "double3" 0.65217815339565277 5 0.65217815339565277 ;
createNode polyExtrudeFace -n "polyExtrudeFace333";
	setAttr ".ics" -type "componentList" 1 "f[110:113]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 2 0 0 0 0 2.5 0 0 1 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 3.8000002 0 ;
	setAttr ".rs" 52430;
	setAttr ".ls" -type "double3" 0.5 0.5 0.5 ;
	setAttr ".kft" no;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.65217815339565277 2.8000001907348633 -0.65217815339565277 ;
	setAttr ".cbx" -type "double3" 0.65217815339565277 4.8000001907348633 0.65217815339565277 ;
createNode polyExtrudeFace -n "polyExtrudeFace334";
	setAttr ".ics" -type "componentList" 1 "f[110:113]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 2 0 0 0 0 2.5 0 0 1 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 3.8000002 0 ;
	setAttr ".rs" 62804;
	setAttr ".lt" -type "double3" 0 0 -0.3 ;
	setAttr ".kft" no;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.65217815339565277 3.3000001907348633 -0.65217815339565277 ;
	setAttr ".cbx" -type "double3" 0.65217815339565277 4.3000001907348633 0.65217815339565277 ;
createNode polyExtrudeFace -n "polyExtrudeFace335";
	setAttr ".ics" -type "componentList" 1 "f[114:117]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 2 0 0 0 0 2.5 0 0 1 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 4.9000001 0 ;
	setAttr ".rs" 53412;
	setAttr ".lt" -type "double3" 0 0 0.2 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.65217815339565277 4.8000001907348633 -0.65217815339565277 ;
	setAttr ".cbx" -type "double3" 0.65217815339565277 5 0.65217815339565277 ;
createNode polyCube -n "polyCube39";
	setAttr ".sw" 5;
	setAttr ".sd" 5;
createNode polyExtrudeFace -n "polyExtrudeFace336";
	setAttr ".ics" -type "componentList" 1 "f[5:29]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 1 0 0 0 0 2.5 0 0 0.5 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 1 0 ;
	setAttr ".rs" 36902;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1.25 1 -1.25 ;
	setAttr ".cbx" -type "double3" 1.25 1 1.25 ;
createNode polyExtrudeFace -n "polyExtrudeFace337";
	setAttr ".ics" -type "componentList" 1 "f[5:29]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 1 0 0 0 0 2.5 0 0 0.5 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 1 0 ;
	setAttr ".rs" 52400;
	setAttr ".lt" -type "double3" 0 0 1 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.87499998509883881 1 -0.87499998509883881 ;
	setAttr ".cbx" -type "double3" 0.87499998509883881 1 0.87499998509883881 ;
createNode polyTweak -n "polyTweak152";
	setAttr ".uopa" yes;
	setAttr -s 36 ".tk[56:91]" -type "float3"  0.15000001 0 -0.15000001 0.090000004
		 0 -0.15000001 0.090000004 0 -0.090000004 0.15000001 0 -0.090000004 0.030000005 0
		 -0.15000001 0.030000005 0 -0.090000004 -0.029999997 0 -0.15000001 -0.029999997 0
		 -0.090000004 -0.090000004 0 -0.15000001 -0.090000004 0 -0.090000004 -0.15000001 0
		 -0.15000001 -0.15000001 0 -0.090000004 0.090000004 0 -0.030000005 0.15000001 0 -0.030000005
		 0.030000005 0 -0.030000005 -0.029999997 0 -0.030000005 -0.090000004 0 -0.030000005
		 -0.15000001 0 -0.030000005 0.090000004 0 0.029999997 0.15000001 0 0.029999997 0.030000005
		 0 0.029999997 -0.029999997 0 0.029999997 -0.090000004 0 0.029999997 -0.15000001 0
		 0.029999997 0.090000004 0 0.090000004 0.15000001 0 0.090000004 0.030000005 0 0.090000004
		 -0.029999997 0 0.090000004 -0.090000004 0 0.090000004 -0.15000001 0 0.090000004 0.090000004
		 0 0.15000001 0.15000001 0 0.15000001 0.030000005 0 0.15000001 -0.029999997 0 0.15000001
		 -0.090000004 0 0.15000001 -0.15000001 0 0.15000001;
createNode polyExtrudeFace -n "polyExtrudeFace338";
	setAttr ".ics" -type "componentList" 1 "f[5:29]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 1 0 0 0 0 2.5 0 0 0.5 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 2 0 ;
	setAttr ".rs" 49898;
	setAttr ".lt" -type "double3" 0 0 1 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.87499998509883881 2 -0.87499998509883881 ;
	setAttr ".cbx" -type "double3" 0.87499998509883881 2 0.87499998509883881 ;
createNode polyExtrudeFace -n "polyExtrudeFace339";
	setAttr ".ics" -type "componentList" 1 "f[5:29]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 1 0 0 0 0 2.5 0 0 0.5 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 3 0 ;
	setAttr ".rs" 55338;
	setAttr ".lt" -type "double3" 0 0 1 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.87499998509883881 3 -0.87499998509883881 ;
	setAttr ".cbx" -type "double3" 0.87499998509883881 3 0.87499998509883881 ;
createNode polyExtrudeFace -n "polyExtrudeFace340";
	setAttr ".ics" -type "componentList" 1 "f[5:29]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 1 0 0 0 0 2.5 0 0 0.5 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 4 0 ;
	setAttr ".rs" 39640;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.87499998509883881 4 -0.87499998509883881 ;
	setAttr ".cbx" -type "double3" 0.87499998509883881 4 0.87499998509883881 ;
createNode polyExtrudeFace -n "polyExtrudeFace341";
	setAttr ".ics" -type "componentList" 1 "f[5:29]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 1 0 0 0 0 2.5 0 0 0.5 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 4 0 ;
	setAttr ".rs" 44471;
	setAttr ".lt" -type "double3" 0 0 1 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.4374999925494194 4 -0.4374999925494194 ;
	setAttr ".cbx" -type "double3" 0.4374999925494194 4 0.4374999925494194 ;
createNode polyTweak -n "polyTweak153";
	setAttr ".uopa" yes;
	setAttr -s 36 ".tk[136:171]" -type "float3"  0.175 0 -0.175 0.10500001
		 0 -0.175 0.10500001 0 -0.10500001 0.175 0 -0.10500001 0.035000004 0 -0.175 0.035000004
		 0 -0.10500001 -0.034999996 0 -0.175 -0.034999996 0 -0.10500001 -0.10500001 0 -0.175
		 -0.10500001 0 -0.10500001 -0.175 0 -0.175 -0.175 0 -0.10500001 0.10500001 0 -0.035000004
		 0.175 0 -0.035000004 0.035000004 0 -0.035000004 -0.034999996 0 -0.035000004 -0.10500001
		 0 -0.035000004 -0.175 0 -0.035000004 0.10500001 0 0.034999996 0.175 0 0.034999996
		 0.035000004 0 0.034999996 -0.034999996 0 0.034999996 -0.10500001 0 0.034999996 -0.175
		 0 0.034999996 0.10500001 0 0.10500001 0.175 0 0.10500001 0.035000004 0 0.10500001
		 -0.034999996 0 0.10500001 -0.10500001 0 0.10500001 -0.175 0 0.10500001 0.10500001
		 0 0.175 0.175 0 0.175 0.035000004 0 0.175 -0.034999996 0 0.175 -0.10500001 0 0.175
		 -0.175 0 0.175;
createNode polyExtrudeFace -n "polyExtrudeFace342";
	setAttr ".ics" -type "componentList" 2 "f[90:149]" "f[170:189]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 1 0 0 0 0 2.5 0 0 0.5 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 3 0 ;
	setAttr ".rs" 64891;
	setAttr ".ls" -type "double3" 0.5 0.5 0.5 ;
	setAttr ".kft" no;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.87499998509883881 1 -0.87499998509883881 ;
	setAttr ".cbx" -type "double3" 0.87499998509883881 5 0.87499998509883881 ;
createNode polyExtrudeFace -n "polyExtrudeFace343";
	setAttr ".ics" -type "componentList" 2 "f[90:149]" "f[170:189]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 1 0 0 0 0 2.5 0 0 0.5 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 3 0 ;
	setAttr ".rs" 54044;
	setAttr ".lt" -type "double3" 0 0 -0.2 ;
	setAttr ".kft" no;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.87499998509883881 1.25 -0.87499998509883881 ;
	setAttr ".cbx" -type "double3" 0.87499998509883881 4.75 0.87499998509883881 ;
createNode polyExtrudeFace -n "polyExtrudeFace344";
	setAttr ".ics" -type "componentList" 4 "f[2]" "f[32]" "f[62]" "f[67]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 1 0 0 0 0 2.5 0 0 0.5 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 0.5 0 ;
	setAttr ".rs" 59253;
	setAttr ".ls" -type "double3" 0.5 0.5 0.5 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1.25 0 -1.25 ;
	setAttr ".cbx" -type "double3" 1.25 1 1.25 ;
createNode polyExtrudeFace -n "polyExtrudeFace345";
	setAttr ".ics" -type "componentList" 4 "f[2]" "f[32]" "f[62]" "f[67]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 1 0 0 0 0 2.5 0 0 0.5 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 0.25 0 ;
	setAttr ".rs" 35597;
	setAttr ".lt" -type "double3" 0 0 -0.5 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1.25 0 -1.25 ;
	setAttr ".cbx" -type "double3" 1.25 0.5 1.25 ;
createNode polyTweak -n "polyTweak154";
	setAttr ".uopa" yes;
	setAttr -s 16 ".tk[832:847]" -type "float3"  0 -0.25 0 0 -0.25 0 0 -0.25
		 0 0 -0.25 0 0 -0.25 0 0 -0.25 0 0 -0.25 0 0 -0.25 0 0 -0.25 0 0 -0.25 0 0 -0.25 0
		 0 -0.25 0 0 -0.25 0 0 -0.25 0 0 -0.25 0 0 -0.25 0;
createNode polyCube -n "polyCube40";
	setAttr ".sw" 5;
	setAttr ".sd" 5;
createNode polyExtrudeFace -n "polyExtrudeFace346";
	setAttr ".ics" -type "componentList" 1 "f[5:29]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 1 0 0 0 0 2.5 0 0 0.5 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 1 0 ;
	setAttr ".rs" 54913;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1.25 1 -1.25 ;
	setAttr ".cbx" -type "double3" 1.25 1 1.25 ;
createNode polyExtrudeFace -n "polyExtrudeFace347";
	setAttr ".ics" -type "componentList" 1 "f[5:29]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 1 0 0 0 0 2.5 0 0 0.5 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 1 0 ;
	setAttr ".rs" 54988;
	setAttr ".lt" -type "double3" 0 0 1 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.87499998509883881 1 -0.87499998509883881 ;
	setAttr ".cbx" -type "double3" 0.87499998509883881 1 0.87499998509883881 ;
createNode polyTweak -n "polyTweak155";
	setAttr ".uopa" yes;
	setAttr -s 36 ".tk[56:91]" -type "float3"  0.15000001 0 -0.15000001 0.090000004
		 0 -0.15000001 0.090000004 0 -0.090000004 0.15000001 0 -0.090000004 0.030000005 0
		 -0.15000001 0.030000005 0 -0.090000004 -0.029999997 0 -0.15000001 -0.029999997 0
		 -0.090000004 -0.090000004 0 -0.15000001 -0.090000004 0 -0.090000004 -0.15000001 0
		 -0.15000001 -0.15000001 0 -0.090000004 0.090000004 0 -0.030000005 0.15000001 0 -0.030000005
		 0.030000005 0 -0.030000005 -0.029999997 0 -0.030000005 -0.090000004 0 -0.030000005
		 -0.15000001 0 -0.030000005 0.090000004 0 0.029999997 0.15000001 0 0.029999997 0.030000005
		 0 0.029999997 -0.029999997 0 0.029999997 -0.090000004 0 0.029999997 -0.15000001 0
		 0.029999997 0.090000004 0 0.090000004 0.15000001 0 0.090000004 0.030000005 0 0.090000004
		 -0.029999997 0 0.090000004 -0.090000004 0 0.090000004 -0.15000001 0 0.090000004 0.090000004
		 0 0.15000001 0.15000001 0 0.15000001 0.030000005 0 0.15000001 -0.029999997 0 0.15000001
		 -0.090000004 0 0.15000001 -0.15000001 0 0.15000001;
createNode polyExtrudeFace -n "polyExtrudeFace348";
	setAttr ".ics" -type "componentList" 1 "f[5:29]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 1 0 0 0 0 2.5 0 0 0.5 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 2 0 ;
	setAttr ".rs" 58468;
	setAttr ".lt" -type "double3" 0 0 1 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.87499998509883881 2 -0.87499998509883881 ;
	setAttr ".cbx" -type "double3" 0.87499998509883881 2 0.87499998509883881 ;
createNode polyExtrudeFace -n "polyExtrudeFace349";
	setAttr ".ics" -type "componentList" 1 "f[5:29]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 1 0 0 0 0 2.5 0 0 0.5 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 3 0 ;
	setAttr ".rs" 58899;
	setAttr ".lt" -type "double3" 0 0 1 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.87499998509883881 3 -0.87499998509883881 ;
	setAttr ".cbx" -type "double3" 0.87499998509883881 3 0.87499998509883881 ;
createNode polyExtrudeFace -n "polyExtrudeFace350";
	setAttr ".ics" -type "componentList" 1 "f[5:29]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 1 0 0 0 0 2.5 0 0 0.5 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 4 0 ;
	setAttr ".rs" 38117;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.87499998509883881 4 -0.87499998509883881 ;
	setAttr ".cbx" -type "double3" 0.87499998509883881 4 0.87499998509883881 ;
createNode polyExtrudeFace -n "polyExtrudeFace351";
	setAttr ".ics" -type "componentList" 1 "f[5:29]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 1 0 0 0 0 2.5 0 0 0.5 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 4 0 ;
	setAttr ".rs" 45791;
	setAttr ".lt" -type "double3" 0 0 1 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.4374999925494194 4 -0.4374999925494194 ;
	setAttr ".cbx" -type "double3" 0.4374999925494194 4 0.4374999925494194 ;
createNode polyTweak -n "polyTweak156";
	setAttr ".uopa" yes;
	setAttr -s 36 ".tk[136:171]" -type "float3"  0.175 0 -0.175 0.10500001
		 0 -0.175 0.10500001 0 -0.10500001 0.175 0 -0.10500001 0.035000004 0 -0.175 0.035000004
		 0 -0.10500001 -0.034999996 0 -0.175 -0.034999996 0 -0.10500001 -0.10500001 0 -0.175
		 -0.10500001 0 -0.10500001 -0.175 0 -0.175 -0.175 0 -0.10500001 0.10500001 0 -0.035000004
		 0.175 0 -0.035000004 0.035000004 0 -0.035000004 -0.034999996 0 -0.035000004 -0.10500001
		 0 -0.035000004 -0.175 0 -0.035000004 0.10500001 0 0.034999996 0.175 0 0.034999996
		 0.035000004 0 0.034999996 -0.034999996 0 0.034999996 -0.10500001 0 0.034999996 -0.175
		 0 0.034999996 0.10500001 0 0.10500001 0.175 0 0.10500001 0.035000004 0 0.10500001
		 -0.034999996 0 0.10500001 -0.10500001 0 0.10500001 -0.175 0 0.10500001 0.10500001
		 0 0.175 0.175 0 0.175 0.035000004 0 0.175 -0.034999996 0 0.175 -0.10500001 0 0.175
		 -0.175 0 0.175;
createNode polyExtrudeFace -n "polyExtrudeFace352";
	setAttr ".ics" -type "componentList" 2 "f[90:149]" "f[170:189]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 1 0 0 0 0 2.5 0 0 0.5 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 3 0 ;
	setAttr ".rs" 55718;
	setAttr ".ls" -type "double3" 0.5 0.5 0.5 ;
	setAttr ".kft" no;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.87499998509883881 1 -0.87499998509883881 ;
	setAttr ".cbx" -type "double3" 0.87499998509883881 5 0.87499998509883881 ;
createNode polyExtrudeFace -n "polyExtrudeFace353";
	setAttr ".ics" -type "componentList" 2 "f[90:149]" "f[170:189]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 1 0 0 0 0 2.5 0 0 0.5 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 3 0 ;
	setAttr ".rs" 61877;
	setAttr ".lt" -type "double3" 0 0 -0.2 ;
	setAttr ".kft" no;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.87499998509883881 1.25 -0.87499998509883881 ;
	setAttr ".cbx" -type "double3" 0.87499998509883881 4.75 0.87499998509883881 ;
createNode polyExtrudeFace -n "polyExtrudeFace354";
	setAttr ".ics" -type "componentList" 4 "f[2]" "f[32]" "f[62]" "f[67]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 1 0 0 0 0 2.5 0 0 0.5 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 0.5 0 ;
	setAttr ".rs" 64672;
	setAttr ".ls" -type "double3" 0.5 0.5 0.5 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1.25 0 -1.25 ;
	setAttr ".cbx" -type "double3" 1.25 1 1.25 ;
createNode polyExtrudeFace -n "polyExtrudeFace355";
	setAttr ".ics" -type "componentList" 4 "f[2]" "f[32]" "f[62]" "f[67]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 1 0 0 0 0 2.5 0 0 0.5 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 0.25 0 ;
	setAttr ".rs" 63077;
	setAttr ".lt" -type "double3" 0 0 -0.5 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1.25 0 -1.25 ;
	setAttr ".cbx" -type "double3" 1.25 0.5 1.25 ;
createNode polyTweak -n "polyTweak157";
	setAttr ".uopa" yes;
	setAttr -s 16 ".tk[832:847]" -type "float3"  0 -0.25 0 0 -0.25 0 0 -0.25
		 0 0 -0.25 0 0 -0.25 0 0 -0.25 0 0 -0.25 0 0 -0.25 0 0 -0.25 0 0 -0.25 0 0 -0.25 0
		 0 -0.25 0 0 -0.25 0 0 -0.25 0 0 -0.25 0 0 -0.25 0;
createNode polyCube -n "polyCube41";
	setAttr ".sw" 5;
	setAttr ".sd" 5;
createNode polyExtrudeFace -n "polyExtrudeFace356";
	setAttr ".ics" -type "componentList" 1 "f[5:29]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 1 0 0 0 0 2.5 0 0 0.5 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 1 0 ;
	setAttr ".rs" 33725;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1.25 1 -1.25 ;
	setAttr ".cbx" -type "double3" 1.25 1 1.25 ;
createNode polyExtrudeFace -n "polyExtrudeFace357";
	setAttr ".ics" -type "componentList" 1 "f[5:29]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 1 0 0 0 0 2.5 0 0 0.5 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 1 0 ;
	setAttr ".rs" 36589;
	setAttr ".lt" -type "double3" 0 0 1 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.87499998509883881 1 -0.87499998509883881 ;
	setAttr ".cbx" -type "double3" 0.87499998509883881 1 0.87499998509883881 ;
createNode polyTweak -n "polyTweak158";
	setAttr ".uopa" yes;
	setAttr -s 36 ".tk[56:91]" -type "float3"  0.15000001 0 -0.15000001 0.090000004
		 0 -0.15000001 0.090000004 0 -0.090000004 0.15000001 0 -0.090000004 0.030000005 0
		 -0.15000001 0.030000005 0 -0.090000004 -0.029999997 0 -0.15000001 -0.029999997 0
		 -0.090000004 -0.090000004 0 -0.15000001 -0.090000004 0 -0.090000004 -0.15000001 0
		 -0.15000001 -0.15000001 0 -0.090000004 0.090000004 0 -0.030000005 0.15000001 0 -0.030000005
		 0.030000005 0 -0.030000005 -0.029999997 0 -0.030000005 -0.090000004 0 -0.030000005
		 -0.15000001 0 -0.030000005 0.090000004 0 0.029999997 0.15000001 0 0.029999997 0.030000005
		 0 0.029999997 -0.029999997 0 0.029999997 -0.090000004 0 0.029999997 -0.15000001 0
		 0.029999997 0.090000004 0 0.090000004 0.15000001 0 0.090000004 0.030000005 0 0.090000004
		 -0.029999997 0 0.090000004 -0.090000004 0 0.090000004 -0.15000001 0 0.090000004 0.090000004
		 0 0.15000001 0.15000001 0 0.15000001 0.030000005 0 0.15000001 -0.029999997 0 0.15000001
		 -0.090000004 0 0.15000001 -0.15000001 0 0.15000001;
createNode polyExtrudeFace -n "polyExtrudeFace358";
	setAttr ".ics" -type "componentList" 1 "f[5:29]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 1 0 0 0 0 2.5 0 0 0.5 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 2 0 ;
	setAttr ".rs" 56418;
	setAttr ".lt" -type "double3" 0 0 1 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.87499998509883881 2 -0.87499998509883881 ;
	setAttr ".cbx" -type "double3" 0.87499998509883881 2 0.87499998509883881 ;
createNode polyExtrudeFace -n "polyExtrudeFace359";
	setAttr ".ics" -type "componentList" 1 "f[5:29]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 1 0 0 0 0 2.5 0 0 0.5 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 3 0 ;
	setAttr ".rs" 36060;
	setAttr ".lt" -type "double3" 0 0 1 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.87499998509883881 3 -0.87499998509883881 ;
	setAttr ".cbx" -type "double3" 0.87499998509883881 3 0.87499998509883881 ;
createNode polyExtrudeFace -n "polyExtrudeFace360";
	setAttr ".ics" -type "componentList" 1 "f[5:29]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 1 0 0 0 0 2.5 0 0 0.5 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 4 0 ;
	setAttr ".rs" 56125;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.87499998509883881 4 -0.87499998509883881 ;
	setAttr ".cbx" -type "double3" 0.87499998509883881 4 0.87499998509883881 ;
createNode polyExtrudeFace -n "polyExtrudeFace361";
	setAttr ".ics" -type "componentList" 1 "f[5:29]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 1 0 0 0 0 2.5 0 0 0.5 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 4 0 ;
	setAttr ".rs" 55871;
	setAttr ".lt" -type "double3" 0 0 1 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.4374999925494194 4 -0.4374999925494194 ;
	setAttr ".cbx" -type "double3" 0.4374999925494194 4 0.4374999925494194 ;
createNode polyTweak -n "polyTweak159";
	setAttr ".uopa" yes;
	setAttr -s 36 ".tk[136:171]" -type "float3"  0.175 0 -0.175 0.10500001
		 0 -0.175 0.10500001 0 -0.10500001 0.175 0 -0.10500001 0.035000004 0 -0.175 0.035000004
		 0 -0.10500001 -0.034999996 0 -0.175 -0.034999996 0 -0.10500001 -0.10500001 0 -0.175
		 -0.10500001 0 -0.10500001 -0.175 0 -0.175 -0.175 0 -0.10500001 0.10500001 0 -0.035000004
		 0.175 0 -0.035000004 0.035000004 0 -0.035000004 -0.034999996 0 -0.035000004 -0.10500001
		 0 -0.035000004 -0.175 0 -0.035000004 0.10500001 0 0.034999996 0.175 0 0.034999996
		 0.035000004 0 0.034999996 -0.034999996 0 0.034999996 -0.10500001 0 0.034999996 -0.175
		 0 0.034999996 0.10500001 0 0.10500001 0.175 0 0.10500001 0.035000004 0 0.10500001
		 -0.034999996 0 0.10500001 -0.10500001 0 0.10500001 -0.175 0 0.10500001 0.10500001
		 0 0.175 0.175 0 0.175 0.035000004 0 0.175 -0.034999996 0 0.175 -0.10500001 0 0.175
		 -0.175 0 0.175;
createNode polyExtrudeFace -n "polyExtrudeFace362";
	setAttr ".ics" -type "componentList" 2 "f[90:149]" "f[170:189]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 1 0 0 0 0 2.5 0 0 0.5 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 3 0 ;
	setAttr ".rs" 38531;
	setAttr ".ls" -type "double3" 0.5 0.5 0.5 ;
	setAttr ".kft" no;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.87499998509883881 1 -0.87499998509883881 ;
	setAttr ".cbx" -type "double3" 0.87499998509883881 5 0.87499998509883881 ;
createNode polyExtrudeFace -n "polyExtrudeFace363";
	setAttr ".ics" -type "componentList" 2 "f[90:149]" "f[170:189]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 1 0 0 0 0 2.5 0 0 0.5 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 3 0 ;
	setAttr ".rs" 48802;
	setAttr ".lt" -type "double3" 0 0 -0.2 ;
	setAttr ".kft" no;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.87499998509883881 1.25 -0.87499998509883881 ;
	setAttr ".cbx" -type "double3" 0.87499998509883881 4.75 0.87499998509883881 ;
createNode polyExtrudeFace -n "polyExtrudeFace364";
	setAttr ".ics" -type "componentList" 4 "f[2]" "f[32]" "f[62]" "f[67]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 1 0 0 0 0 2.5 0 0 0.5 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 0.5 0 ;
	setAttr ".rs" 46684;
	setAttr ".ls" -type "double3" 0.5 0.5 0.5 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1.25 0 -1.25 ;
	setAttr ".cbx" -type "double3" 1.25 1 1.25 ;
createNode polyExtrudeFace -n "polyExtrudeFace365";
	setAttr ".ics" -type "componentList" 4 "f[2]" "f[32]" "f[62]" "f[67]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 1 0 0 0 0 2.5 0 0 0.5 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 0.25 0 ;
	setAttr ".rs" 47969;
	setAttr ".lt" -type "double3" 0 0 -0.5 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1.25 0 -1.25 ;
	setAttr ".cbx" -type "double3" 1.25 0.5 1.25 ;
createNode polyTweak -n "polyTweak160";
	setAttr ".uopa" yes;
	setAttr -s 16 ".tk[832:847]" -type "float3"  0 -0.25 0 0 -0.25 0 0 -0.25
		 0 0 -0.25 0 0 -0.25 0 0 -0.25 0 0 -0.25 0 0 -0.25 0 0 -0.25 0 0 -0.25 0 0 -0.25 0
		 0 -0.25 0 0 -0.25 0 0 -0.25 0 0 -0.25 0 0 -0.25 0;
createNode polyCube -n "polyCube42";
	setAttr ".sw" 5;
	setAttr ".sd" 5;
createNode polyExtrudeFace -n "polyExtrudeFace366";
	setAttr ".ics" -type "componentList" 1 "f[5:29]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 1 0 0 0 0 2.5 0 0 0.5 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 1 0 ;
	setAttr ".rs" 64157;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1.25 1 -1.25 ;
	setAttr ".cbx" -type "double3" 1.25 1 1.25 ;
createNode polyExtrudeFace -n "polyExtrudeFace367";
	setAttr ".ics" -type "componentList" 1 "f[5:29]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 1 0 0 0 0 2.5 0 0 0.5 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 1 0 ;
	setAttr ".rs" 44979;
	setAttr ".lt" -type "double3" 0 0 1 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.87499998509883881 1 -0.87499998509883881 ;
	setAttr ".cbx" -type "double3" 0.87499998509883881 1 0.87499998509883881 ;
createNode polyTweak -n "polyTweak161";
	setAttr ".uopa" yes;
	setAttr -s 36 ".tk[56:91]" -type "float3"  0.15000001 0 -0.15000001 0.090000004
		 0 -0.15000001 0.090000004 0 -0.090000004 0.15000001 0 -0.090000004 0.030000005 0
		 -0.15000001 0.030000005 0 -0.090000004 -0.029999997 0 -0.15000001 -0.029999997 0
		 -0.090000004 -0.090000004 0 -0.15000001 -0.090000004 0 -0.090000004 -0.15000001 0
		 -0.15000001 -0.15000001 0 -0.090000004 0.090000004 0 -0.030000005 0.15000001 0 -0.030000005
		 0.030000005 0 -0.030000005 -0.029999997 0 -0.030000005 -0.090000004 0 -0.030000005
		 -0.15000001 0 -0.030000005 0.090000004 0 0.029999997 0.15000001 0 0.029999997 0.030000005
		 0 0.029999997 -0.029999997 0 0.029999997 -0.090000004 0 0.029999997 -0.15000001 0
		 0.029999997 0.090000004 0 0.090000004 0.15000001 0 0.090000004 0.030000005 0 0.090000004
		 -0.029999997 0 0.090000004 -0.090000004 0 0.090000004 -0.15000001 0 0.090000004 0.090000004
		 0 0.15000001 0.15000001 0 0.15000001 0.030000005 0 0.15000001 -0.029999997 0 0.15000001
		 -0.090000004 0 0.15000001 -0.15000001 0 0.15000001;
createNode polyExtrudeFace -n "polyExtrudeFace368";
	setAttr ".ics" -type "componentList" 1 "f[5:29]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 1 0 0 0 0 2.5 0 0 0.5 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 2 0 ;
	setAttr ".rs" 40565;
	setAttr ".lt" -type "double3" 0 0 1 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.87499998509883881 2 -0.87499998509883881 ;
	setAttr ".cbx" -type "double3" 0.87499998509883881 2 0.87499998509883881 ;
createNode polyExtrudeFace -n "polyExtrudeFace369";
	setAttr ".ics" -type "componentList" 1 "f[5:29]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 1 0 0 0 0 2.5 0 0 0.5 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 3 0 ;
	setAttr ".rs" 64813;
	setAttr ".lt" -type "double3" 0 0 1 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.87499998509883881 3 -0.87499998509883881 ;
	setAttr ".cbx" -type "double3" 0.87499998509883881 3 0.87499998509883881 ;
createNode polyExtrudeFace -n "polyExtrudeFace370";
	setAttr ".ics" -type "componentList" 1 "f[5:29]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 1 0 0 0 0 2.5 0 0 0.5 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 4 0 ;
	setAttr ".rs" 49222;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.87499998509883881 4 -0.87499998509883881 ;
	setAttr ".cbx" -type "double3" 0.87499998509883881 4 0.87499998509883881 ;
createNode polyExtrudeFace -n "polyExtrudeFace371";
	setAttr ".ics" -type "componentList" 1 "f[5:29]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 1 0 0 0 0 2.5 0 0 0.5 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 4 0 ;
	setAttr ".rs" 41026;
	setAttr ".lt" -type "double3" 0 0 1 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.4374999925494194 4 -0.4374999925494194 ;
	setAttr ".cbx" -type "double3" 0.4374999925494194 4 0.4374999925494194 ;
createNode polyTweak -n "polyTweak162";
	setAttr ".uopa" yes;
	setAttr -s 36 ".tk[136:171]" -type "float3"  0.175 0 -0.175 0.10500001
		 0 -0.175 0.10500001 0 -0.10500001 0.175 0 -0.10500001 0.035000004 0 -0.175 0.035000004
		 0 -0.10500001 -0.034999996 0 -0.175 -0.034999996 0 -0.10500001 -0.10500001 0 -0.175
		 -0.10500001 0 -0.10500001 -0.175 0 -0.175 -0.175 0 -0.10500001 0.10500001 0 -0.035000004
		 0.175 0 -0.035000004 0.035000004 0 -0.035000004 -0.034999996 0 -0.035000004 -0.10500001
		 0 -0.035000004 -0.175 0 -0.035000004 0.10500001 0 0.034999996 0.175 0 0.034999996
		 0.035000004 0 0.034999996 -0.034999996 0 0.034999996 -0.10500001 0 0.034999996 -0.175
		 0 0.034999996 0.10500001 0 0.10500001 0.175 0 0.10500001 0.035000004 0 0.10500001
		 -0.034999996 0 0.10500001 -0.10500001 0 0.10500001 -0.175 0 0.10500001 0.10500001
		 0 0.175 0.175 0 0.175 0.035000004 0 0.175 -0.034999996 0 0.175 -0.10500001 0 0.175
		 -0.175 0 0.175;
createNode polyExtrudeFace -n "polyExtrudeFace372";
	setAttr ".ics" -type "componentList" 2 "f[90:149]" "f[170:189]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 1 0 0 0 0 2.5 0 0 0.5 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 3 0 ;
	setAttr ".rs" 40682;
	setAttr ".ls" -type "double3" 0.5 0.5 0.5 ;
	setAttr ".kft" no;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.87499998509883881 1 -0.87499998509883881 ;
	setAttr ".cbx" -type "double3" 0.87499998509883881 5 0.87499998509883881 ;
createNode polyExtrudeFace -n "polyExtrudeFace373";
	setAttr ".ics" -type "componentList" 2 "f[90:149]" "f[170:189]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 1 0 0 0 0 2.5 0 0 0.5 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 3 0 ;
	setAttr ".rs" 59700;
	setAttr ".lt" -type "double3" 0 0 -0.2 ;
	setAttr ".kft" no;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.87499998509883881 1.25 -0.87499998509883881 ;
	setAttr ".cbx" -type "double3" 0.87499998509883881 4.75 0.87499998509883881 ;
createNode polyExtrudeFace -n "polyExtrudeFace374";
	setAttr ".ics" -type "componentList" 4 "f[2]" "f[32]" "f[62]" "f[67]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 1 0 0 0 0 2.5 0 0 0.5 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 0.5 0 ;
	setAttr ".rs" 61687;
	setAttr ".ls" -type "double3" 0.5 0.5 0.5 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1.25 0 -1.25 ;
	setAttr ".cbx" -type "double3" 1.25 1 1.25 ;
createNode polyExtrudeFace -n "polyExtrudeFace375";
	setAttr ".ics" -type "componentList" 4 "f[2]" "f[32]" "f[62]" "f[67]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 1 0 0 0 0 2.5 0 0 0.5 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 0.25 0 ;
	setAttr ".rs" 57546;
	setAttr ".lt" -type "double3" 0 0 -0.5 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1.25 0 -1.25 ;
	setAttr ".cbx" -type "double3" 1.25 0.5 1.25 ;
createNode polyTweak -n "polyTweak163";
	setAttr ".uopa" yes;
	setAttr -s 16 ".tk[832:847]" -type "float3"  0 -0.25 0 0 -0.25 0 0 -0.25
		 0 0 -0.25 0 0 -0.25 0 0 -0.25 0 0 -0.25 0 0 -0.25 0 0 -0.25 0 0 -0.25 0 0 -0.25 0
		 0 -0.25 0 0 -0.25 0 0 -0.25 0 0 -0.25 0 0 -0.25 0;
createNode polyCube -n "polyCube43";
	setAttr ".sw" 5;
	setAttr ".sd" 5;
createNode polyExtrudeFace -n "polyExtrudeFace376";
	setAttr ".ics" -type "componentList" 1 "f[5:29]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 1 0 0 0 0 2.5 0 0 0.5 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 1 0 ;
	setAttr ".rs" 65386;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1.25 1 -1.25 ;
	setAttr ".cbx" -type "double3" 1.25 1 1.25 ;
createNode polyExtrudeFace -n "polyExtrudeFace377";
	setAttr ".ics" -type "componentList" 1 "f[5:29]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 1 0 0 0 0 2.5 0 0 0.5 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 1 0 ;
	setAttr ".rs" 44877;
	setAttr ".lt" -type "double3" 0 0 1 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.87499998509883881 1 -0.87499998509883881 ;
	setAttr ".cbx" -type "double3" 0.87499998509883881 1 0.87499998509883881 ;
createNode polyTweak -n "polyTweak164";
	setAttr ".uopa" yes;
	setAttr -s 36 ".tk[56:91]" -type "float3"  0.15000001 0 -0.15000001 0.090000004
		 0 -0.15000001 0.090000004 0 -0.090000004 0.15000001 0 -0.090000004 0.030000005 0
		 -0.15000001 0.030000005 0 -0.090000004 -0.029999997 0 -0.15000001 -0.029999997 0
		 -0.090000004 -0.090000004 0 -0.15000001 -0.090000004 0 -0.090000004 -0.15000001 0
		 -0.15000001 -0.15000001 0 -0.090000004 0.090000004 0 -0.030000005 0.15000001 0 -0.030000005
		 0.030000005 0 -0.030000005 -0.029999997 0 -0.030000005 -0.090000004 0 -0.030000005
		 -0.15000001 0 -0.030000005 0.090000004 0 0.029999997 0.15000001 0 0.029999997 0.030000005
		 0 0.029999997 -0.029999997 0 0.029999997 -0.090000004 0 0.029999997 -0.15000001 0
		 0.029999997 0.090000004 0 0.090000004 0.15000001 0 0.090000004 0.030000005 0 0.090000004
		 -0.029999997 0 0.090000004 -0.090000004 0 0.090000004 -0.15000001 0 0.090000004 0.090000004
		 0 0.15000001 0.15000001 0 0.15000001 0.030000005 0 0.15000001 -0.029999997 0 0.15000001
		 -0.090000004 0 0.15000001 -0.15000001 0 0.15000001;
createNode polyExtrudeFace -n "polyExtrudeFace378";
	setAttr ".ics" -type "componentList" 1 "f[5:29]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 1 0 0 0 0 2.5 0 0 0.5 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 2 0 ;
	setAttr ".rs" 47663;
	setAttr ".lt" -type "double3" 0 0 1 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.87499998509883881 2 -0.87499998509883881 ;
	setAttr ".cbx" -type "double3" 0.87499998509883881 2 0.87499998509883881 ;
createNode polyExtrudeFace -n "polyExtrudeFace379";
	setAttr ".ics" -type "componentList" 1 "f[5:29]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 1 0 0 0 0 2.5 0 0 0.5 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 3 0 ;
	setAttr ".rs" 53031;
	setAttr ".lt" -type "double3" 0 0 1 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.87499998509883881 3 -0.87499998509883881 ;
	setAttr ".cbx" -type "double3" 0.87499998509883881 3 0.87499998509883881 ;
createNode polyExtrudeFace -n "polyExtrudeFace380";
	setAttr ".ics" -type "componentList" 1 "f[5:29]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 1 0 0 0 0 2.5 0 0 0.5 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 4 0 ;
	setAttr ".rs" 58013;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.87499998509883881 4 -0.87499998509883881 ;
	setAttr ".cbx" -type "double3" 0.87499998509883881 4 0.87499998509883881 ;
createNode polyExtrudeFace -n "polyExtrudeFace381";
	setAttr ".ics" -type "componentList" 1 "f[5:29]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 1 0 0 0 0 2.5 0 0 0.5 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 4 0 ;
	setAttr ".rs" 34305;
	setAttr ".lt" -type "double3" 0 0 1 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.4374999925494194 4 -0.4374999925494194 ;
	setAttr ".cbx" -type "double3" 0.4374999925494194 4 0.4374999925494194 ;
createNode polyTweak -n "polyTweak165";
	setAttr ".uopa" yes;
	setAttr -s 36 ".tk[136:171]" -type "float3"  0.175 0 -0.175 0.10500001
		 0 -0.175 0.10500001 0 -0.10500001 0.175 0 -0.10500001 0.035000004 0 -0.175 0.035000004
		 0 -0.10500001 -0.034999996 0 -0.175 -0.034999996 0 -0.10500001 -0.10500001 0 -0.175
		 -0.10500001 0 -0.10500001 -0.175 0 -0.175 -0.175 0 -0.10500001 0.10500001 0 -0.035000004
		 0.175 0 -0.035000004 0.035000004 0 -0.035000004 -0.034999996 0 -0.035000004 -0.10500001
		 0 -0.035000004 -0.175 0 -0.035000004 0.10500001 0 0.034999996 0.175 0 0.034999996
		 0.035000004 0 0.034999996 -0.034999996 0 0.034999996 -0.10500001 0 0.034999996 -0.175
		 0 0.034999996 0.10500001 0 0.10500001 0.175 0 0.10500001 0.035000004 0 0.10500001
		 -0.034999996 0 0.10500001 -0.10500001 0 0.10500001 -0.175 0 0.10500001 0.10500001
		 0 0.175 0.175 0 0.175 0.035000004 0 0.175 -0.034999996 0 0.175 -0.10500001 0 0.175
		 -0.175 0 0.175;
createNode polyExtrudeFace -n "polyExtrudeFace382";
	setAttr ".ics" -type "componentList" 2 "f[90:149]" "f[170:189]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 1 0 0 0 0 2.5 0 0 0.5 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 3 0 ;
	setAttr ".rs" 53197;
	setAttr ".ls" -type "double3" 0.5 0.5 0.5 ;
	setAttr ".kft" no;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.87499998509883881 1 -0.87499998509883881 ;
	setAttr ".cbx" -type "double3" 0.87499998509883881 5 0.87499998509883881 ;
createNode polyExtrudeFace -n "polyExtrudeFace383";
	setAttr ".ics" -type "componentList" 2 "f[90:149]" "f[170:189]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 1 0 0 0 0 2.5 0 0 0.5 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 3 0 ;
	setAttr ".rs" 33544;
	setAttr ".lt" -type "double3" 0 0 -0.2 ;
	setAttr ".kft" no;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.87499998509883881 1.25 -0.87499998509883881 ;
	setAttr ".cbx" -type "double3" 0.87499998509883881 4.75 0.87499998509883881 ;
createNode polyExtrudeFace -n "polyExtrudeFace384";
	setAttr ".ics" -type "componentList" 4 "f[2]" "f[32]" "f[62]" "f[67]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 1 0 0 0 0 2.5 0 0 0.5 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 0.5 0 ;
	setAttr ".rs" 45610;
	setAttr ".ls" -type "double3" 0.5 0.5 0.5 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1.25 0 -1.25 ;
	setAttr ".cbx" -type "double3" 1.25 1 1.25 ;
createNode polyExtrudeFace -n "polyExtrudeFace385";
	setAttr ".ics" -type "componentList" 4 "f[2]" "f[32]" "f[62]" "f[67]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 1 0 0 0 0 2.5 0 0 0.5 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 0.25 0 ;
	setAttr ".rs" 43446;
	setAttr ".lt" -type "double3" 0 0 -0.5 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1.25 0 -1.25 ;
	setAttr ".cbx" -type "double3" 1.25 0.5 1.25 ;
createNode polyTweak -n "polyTweak166";
	setAttr ".uopa" yes;
	setAttr -s 16 ".tk[832:847]" -type "float3"  0 -0.25 0 0 -0.25 0 0 -0.25
		 0 0 -0.25 0 0 -0.25 0 0 -0.25 0 0 -0.25 0 0 -0.25 0 0 -0.25 0 0 -0.25 0 0 -0.25 0
		 0 -0.25 0 0 -0.25 0 0 -0.25 0 0 -0.25 0 0 -0.25 0;
createNode polyCube -n "polyCube44";
createNode polyExtrudeFace -n "polyExtrudeFace386";
	setAttr ".ics" -type "componentList" 3 "f[0]" "f[2]" "f[4:5]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 2 0 0 0 0 2.5 0 0 1 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 1 0 ;
	setAttr ".rs" 55392;
	setAttr ".lt" -type "double3" 0 0 0.2 ;
	setAttr ".ls" -type "double3" 0.5 1 1 ;
	setAttr ".kft" no;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1.25 0 -1.25 ;
	setAttr ".cbx" -type "double3" 1.25 2 1.25 ;
createNode polyExtrudeFace -n "polyExtrudeFace387";
	setAttr ".ics" -type "componentList" 3 "f[0]" "f[2]" "f[4:5]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 2 0 0 0 0 2.5 0 0 1 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 1 0 ;
	setAttr ".rs" 53577;
	setAttr ".lt" -type "double3" 0 0 0.4 ;
	setAttr ".kft" no;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1.4500001072883606 0 -1.4500001072883606 ;
	setAttr ".cbx" -type "double3" 1.4500001072883606 2 1.4500001072883606 ;
createNode polyExtrudeFace -n "polyExtrudeFace388";
	setAttr ".ics" -type "componentList" 3 "f[0]" "f[2]" "f[4:5]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 2 0 0 0 0 2.5 0 0 1 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 1 0 ;
	setAttr ".rs" 39339;
	setAttr ".ls" -type "double3" 0.5 0.5 1 ;
	setAttr ".kft" no;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1.8500001728534698 0 -1.8500001728534698 ;
	setAttr ".cbx" -type "double3" 1.8500001728534698 2 1.8500001728534698 ;
createNode polyExtrudeFace -n "polyExtrudeFace389";
	setAttr ".ics" -type "componentList" 3 "f[0]" "f[2]" "f[4:5]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 2 0 0 0 0 2.5 0 0 1 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 0.5 0 ;
	setAttr ".rs" 42200;
	setAttr ".lt" -type "double3" 0 0 -0.2 ;
	setAttr ".ls" -type "double3" 0.8 0.8 0.8 ;
	setAttr ".kft" no;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1.8500001728534698 0 -1.8500001728534698 ;
	setAttr ".cbx" -type "double3" 1.8500001728534698 1 1.8500001728534698 ;
createNode polyTweak -n "polyTweak167";
	setAttr ".uopa" yes;
	setAttr -s 16 ".tk[40:55]" -type "float3"  0 -0.25 0 0 -0.25 0 0 -0.25
		 0 0 -0.25 0 0 -0.25 0 0 -0.25 0 0 -0.25 0 0 -0.25 0 0 -0.25 0 0 -0.25 0 0 -0.25 0
		 0 -0.25 0 0 -0.25 0 0 -0.25 0 0 -0.25 0 0 -0.25 0;
createNode polyExtrudeFace -n "polyExtrudeFace390";
	setAttr ".ics" -type "componentList" 9 "f[1]" "f[8]" "f[10]" "f[16]" "f[20]" "f[24]" "f[26]" "f[32]" "f[36]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 2 0 0 0 0 2.5 0 0 1 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 2 0 ;
	setAttr ".rs" 36863;
	setAttr ".lt" -type "double3" 0 0 0.3 ;
	setAttr ".ls" -type "double3" 0.35 0.35 0.35 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1.8500001728534698 2 -1.8500001728534698 ;
	setAttr ".cbx" -type "double3" 1.8500001728534698 2 1.8500001728534698 ;
createNode polyExtrudeFace -n "polyExtrudeFace391";
	setAttr ".ics" -type "componentList" 9 "f[1]" "f[8]" "f[10]" "f[16]" "f[20]" "f[24]" "f[26]" "f[32]" "f[36]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 2 0 0 0 0 2.5 0 0 1 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 2.3000002 0 ;
	setAttr ".rs" 43447;
	setAttr ".lt" -type "double3" 0 0 0.5 ;
	setAttr ".ls" -type "double3" 0.35 0.35 0.35 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1.7200000584125519 2.3000001907348633 -1.7200000584125519 ;
	setAttr ".cbx" -type "double3" 1.7200000584125519 2.3000001907348633 1.7200000584125519 ;
createNode polyExtrudeFace -n "polyExtrudeFace392";
	setAttr ".ics" -type "componentList" 1 "f[1]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 2 0 0 0 0 2.5 0 0 1 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 2.8000002 0 ;
	setAttr ".rs" 40879;
	setAttr ".lt" -type "double3" 0 0 2 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.65217815339565277 2.8000001907348633 -0.65217815339565277 ;
	setAttr ".cbx" -type "double3" 0.65217815339565277 2.8000001907348633 0.65217815339565277 ;
createNode polyExtrudeFace -n "polyExtrudeFace393";
	setAttr ".ics" -type "componentList" 1 "f[1]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 2 0 0 0 0 2.5 0 0 1 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 4.8000002 0 ;
	setAttr ".rs" 39908;
	setAttr ".lt" -type "double3" 0 0 0.2 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.65217815339565277 4.8000001907348633 -0.65217815339565277 ;
	setAttr ".cbx" -type "double3" 0.65217815339565277 4.8000001907348633 0.65217815339565277 ;
createNode polyExtrudeFace -n "polyExtrudeFace394";
	setAttr ".ics" -type "componentList" 1 "f[1]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 2 0 0 0 0 2.5 0 0 1 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 5 0 ;
	setAttr ".rs" 37960;
	setAttr ".lt" -type "double3" 0 0 2 ;
	setAttr ".ls" -type "double3" 0 0 0 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.65217815339565277 5 -0.65217815339565277 ;
	setAttr ".cbx" -type "double3" 0.65217815339565277 5 0.65217815339565277 ;
createNode polyExtrudeFace -n "polyExtrudeFace395";
	setAttr ".ics" -type "componentList" 1 "f[110:113]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 2 0 0 0 0 2.5 0 0 1 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 3.8000002 0 ;
	setAttr ".rs" 47986;
	setAttr ".ls" -type "double3" 0.5 0.5 0.5 ;
	setAttr ".kft" no;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.65217815339565277 2.8000001907348633 -0.65217815339565277 ;
	setAttr ".cbx" -type "double3" 0.65217815339565277 4.8000001907348633 0.65217815339565277 ;
createNode polyExtrudeFace -n "polyExtrudeFace396";
	setAttr ".ics" -type "componentList" 1 "f[110:113]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 2 0 0 0 0 2.5 0 0 1 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 3.8000002 0 ;
	setAttr ".rs" 56007;
	setAttr ".lt" -type "double3" 0 0 -0.3 ;
	setAttr ".kft" no;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.65217815339565277 3.3000001907348633 -0.65217815339565277 ;
	setAttr ".cbx" -type "double3" 0.65217815339565277 4.3000001907348633 0.65217815339565277 ;
createNode polyExtrudeFace -n "polyExtrudeFace397";
	setAttr ".ics" -type "componentList" 1 "f[114:117]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 2 0 0 0 0 2.5 0 0 1 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 4.9000001 0 ;
	setAttr ".rs" 39299;
	setAttr ".lt" -type "double3" 0 0 0.2 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.65217815339565277 4.8000001907348633 -0.65217815339565277 ;
	setAttr ".cbx" -type "double3" 0.65217815339565277 5 0.65217815339565277 ;
createNode polyCube -n "polyCube45";
	setAttr ".sw" 5;
	setAttr ".sd" 5;
createNode polyExtrudeFace -n "polyExtrudeFace398";
	setAttr ".ics" -type "componentList" 1 "f[5:29]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 1 0 0 0 0 2.5 0 0 0.5 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 1 0 ;
	setAttr ".rs" 47073;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1.25 1 -1.25 ;
	setAttr ".cbx" -type "double3" 1.25 1 1.25 ;
createNode polyExtrudeFace -n "polyExtrudeFace399";
	setAttr ".ics" -type "componentList" 1 "f[5:29]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 1 0 0 0 0 2.5 0 0 0.5 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 1 0 ;
	setAttr ".rs" 48242;
	setAttr ".lt" -type "double3" 0 0 1 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.87499998509883881 1 -0.87499998509883881 ;
	setAttr ".cbx" -type "double3" 0.87499998509883881 1 0.87499998509883881 ;
createNode polyTweak -n "polyTweak168";
	setAttr ".uopa" yes;
	setAttr -s 36 ".tk[56:91]" -type "float3"  0.15000001 0 -0.15000001 0.090000004
		 0 -0.15000001 0.090000004 0 -0.090000004 0.15000001 0 -0.090000004 0.030000005 0
		 -0.15000001 0.030000005 0 -0.090000004 -0.029999997 0 -0.15000001 -0.029999997 0
		 -0.090000004 -0.090000004 0 -0.15000001 -0.090000004 0 -0.090000004 -0.15000001 0
		 -0.15000001 -0.15000001 0 -0.090000004 0.090000004 0 -0.030000005 0.15000001 0 -0.030000005
		 0.030000005 0 -0.030000005 -0.029999997 0 -0.030000005 -0.090000004 0 -0.030000005
		 -0.15000001 0 -0.030000005 0.090000004 0 0.029999997 0.15000001 0 0.029999997 0.030000005
		 0 0.029999997 -0.029999997 0 0.029999997 -0.090000004 0 0.029999997 -0.15000001 0
		 0.029999997 0.090000004 0 0.090000004 0.15000001 0 0.090000004 0.030000005 0 0.090000004
		 -0.029999997 0 0.090000004 -0.090000004 0 0.090000004 -0.15000001 0 0.090000004 0.090000004
		 0 0.15000001 0.15000001 0 0.15000001 0.030000005 0 0.15000001 -0.029999997 0 0.15000001
		 -0.090000004 0 0.15000001 -0.15000001 0 0.15000001;
createNode polyExtrudeFace -n "polyExtrudeFace400";
	setAttr ".ics" -type "componentList" 1 "f[5:29]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 1 0 0 0 0 2.5 0 0 0.5 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 2 0 ;
	setAttr ".rs" 34246;
	setAttr ".lt" -type "double3" 0 0 1 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.87499998509883881 2 -0.87499998509883881 ;
	setAttr ".cbx" -type "double3" 0.87499998509883881 2 0.87499998509883881 ;
createNode polyExtrudeFace -n "polyExtrudeFace401";
	setAttr ".ics" -type "componentList" 1 "f[5:29]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 1 0 0 0 0 2.5 0 0 0.5 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 3 0 ;
	setAttr ".rs" 61686;
	setAttr ".lt" -type "double3" 0 0 1 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.87499998509883881 3 -0.87499998509883881 ;
	setAttr ".cbx" -type "double3" 0.87499998509883881 3 0.87499998509883881 ;
createNode polyExtrudeFace -n "polyExtrudeFace402";
	setAttr ".ics" -type "componentList" 1 "f[5:29]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 1 0 0 0 0 2.5 0 0 0.5 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 4 0 ;
	setAttr ".rs" 40656;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.87499998509883881 4 -0.87499998509883881 ;
	setAttr ".cbx" -type "double3" 0.87499998509883881 4 0.87499998509883881 ;
createNode polyExtrudeFace -n "polyExtrudeFace403";
	setAttr ".ics" -type "componentList" 1 "f[5:29]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 1 0 0 0 0 2.5 0 0 0.5 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 4 0 ;
	setAttr ".rs" 42627;
	setAttr ".lt" -type "double3" 0 0 1 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.4374999925494194 4 -0.4374999925494194 ;
	setAttr ".cbx" -type "double3" 0.4374999925494194 4 0.4374999925494194 ;
createNode polyTweak -n "polyTweak169";
	setAttr ".uopa" yes;
	setAttr -s 36 ".tk[136:171]" -type "float3"  0.175 0 -0.175 0.10500001
		 0 -0.175 0.10500001 0 -0.10500001 0.175 0 -0.10500001 0.035000004 0 -0.175 0.035000004
		 0 -0.10500001 -0.034999996 0 -0.175 -0.034999996 0 -0.10500001 -0.10500001 0 -0.175
		 -0.10500001 0 -0.10500001 -0.175 0 -0.175 -0.175 0 -0.10500001 0.10500001 0 -0.035000004
		 0.175 0 -0.035000004 0.035000004 0 -0.035000004 -0.034999996 0 -0.035000004 -0.10500001
		 0 -0.035000004 -0.175 0 -0.035000004 0.10500001 0 0.034999996 0.175 0 0.034999996
		 0.035000004 0 0.034999996 -0.034999996 0 0.034999996 -0.10500001 0 0.034999996 -0.175
		 0 0.034999996 0.10500001 0 0.10500001 0.175 0 0.10500001 0.035000004 0 0.10500001
		 -0.034999996 0 0.10500001 -0.10500001 0 0.10500001 -0.175 0 0.10500001 0.10500001
		 0 0.175 0.175 0 0.175 0.035000004 0 0.175 -0.034999996 0 0.175 -0.10500001 0 0.175
		 -0.175 0 0.175;
createNode polyExtrudeFace -n "polyExtrudeFace404";
	setAttr ".ics" -type "componentList" 2 "f[90:149]" "f[170:189]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 1 0 0 0 0 2.5 0 0 0.5 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 3 0 ;
	setAttr ".rs" 50785;
	setAttr ".ls" -type "double3" 0.5 0.5 0.5 ;
	setAttr ".kft" no;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.87499998509883881 1 -0.87499998509883881 ;
	setAttr ".cbx" -type "double3" 0.87499998509883881 5 0.87499998509883881 ;
createNode polyExtrudeFace -n "polyExtrudeFace405";
	setAttr ".ics" -type "componentList" 2 "f[90:149]" "f[170:189]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 1 0 0 0 0 2.5 0 0 0.5 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 3 0 ;
	setAttr ".rs" 54668;
	setAttr ".lt" -type "double3" 0 0 -0.2 ;
	setAttr ".kft" no;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.87499998509883881 1.25 -0.87499998509883881 ;
	setAttr ".cbx" -type "double3" 0.87499998509883881 4.75 0.87499998509883881 ;
createNode polyExtrudeFace -n "polyExtrudeFace406";
	setAttr ".ics" -type "componentList" 4 "f[2]" "f[32]" "f[62]" "f[67]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 1 0 0 0 0 2.5 0 0 0.5 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 0.5 0 ;
	setAttr ".rs" 46948;
	setAttr ".ls" -type "double3" 0.5 0.5 0.5 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1.25 0 -1.25 ;
	setAttr ".cbx" -type "double3" 1.25 1 1.25 ;
createNode polyExtrudeFace -n "polyExtrudeFace407";
	setAttr ".ics" -type "componentList" 4 "f[2]" "f[32]" "f[62]" "f[67]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 1 0 0 0 0 2.5 0 0 0.5 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 0.25 0 ;
	setAttr ".rs" 34555;
	setAttr ".lt" -type "double3" 0 0 -0.5 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1.25 0 -1.25 ;
	setAttr ".cbx" -type "double3" 1.25 0.5 1.25 ;
createNode polyTweak -n "polyTweak170";
	setAttr ".uopa" yes;
	setAttr -s 16 ".tk[832:847]" -type "float3"  0 -0.25 0 0 -0.25 0 0 -0.25
		 0 0 -0.25 0 0 -0.25 0 0 -0.25 0 0 -0.25 0 0 -0.25 0 0 -0.25 0 0 -0.25 0 0 -0.25 0
		 0 -0.25 0 0 -0.25 0 0 -0.25 0 0 -0.25 0 0 -0.25 0;
createNode polyCube -n "polyCube46";
	setAttr ".sw" 5;
	setAttr ".sd" 5;
createNode polyExtrudeFace -n "polyExtrudeFace408";
	setAttr ".ics" -type "componentList" 1 "f[5:29]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 1 0 0 0 0 2.5 0 0 0.5 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 1 0 ;
	setAttr ".rs" 48184;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1.25 1 -1.25 ;
	setAttr ".cbx" -type "double3" 1.25 1 1.25 ;
createNode polyExtrudeFace -n "polyExtrudeFace409";
	setAttr ".ics" -type "componentList" 1 "f[5:29]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 1 0 0 0 0 2.5 0 0 0.5 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 1 0 ;
	setAttr ".rs" 40305;
	setAttr ".lt" -type "double3" 0 0 1 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.87499998509883881 1 -0.87499998509883881 ;
	setAttr ".cbx" -type "double3" 0.87499998509883881 1 0.87499998509883881 ;
createNode polyTweak -n "polyTweak171";
	setAttr ".uopa" yes;
	setAttr -s 36 ".tk[56:91]" -type "float3"  0.15000001 0 -0.15000001 0.090000004
		 0 -0.15000001 0.090000004 0 -0.090000004 0.15000001 0 -0.090000004 0.030000005 0
		 -0.15000001 0.030000005 0 -0.090000004 -0.029999997 0 -0.15000001 -0.029999997 0
		 -0.090000004 -0.090000004 0 -0.15000001 -0.090000004 0 -0.090000004 -0.15000001 0
		 -0.15000001 -0.15000001 0 -0.090000004 0.090000004 0 -0.030000005 0.15000001 0 -0.030000005
		 0.030000005 0 -0.030000005 -0.029999997 0 -0.030000005 -0.090000004 0 -0.030000005
		 -0.15000001 0 -0.030000005 0.090000004 0 0.029999997 0.15000001 0 0.029999997 0.030000005
		 0 0.029999997 -0.029999997 0 0.029999997 -0.090000004 0 0.029999997 -0.15000001 0
		 0.029999997 0.090000004 0 0.090000004 0.15000001 0 0.090000004 0.030000005 0 0.090000004
		 -0.029999997 0 0.090000004 -0.090000004 0 0.090000004 -0.15000001 0 0.090000004 0.090000004
		 0 0.15000001 0.15000001 0 0.15000001 0.030000005 0 0.15000001 -0.029999997 0 0.15000001
		 -0.090000004 0 0.15000001 -0.15000001 0 0.15000001;
createNode polyExtrudeFace -n "polyExtrudeFace410";
	setAttr ".ics" -type "componentList" 1 "f[5:29]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 1 0 0 0 0 2.5 0 0 0.5 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 2 0 ;
	setAttr ".rs" 42129;
	setAttr ".lt" -type "double3" 0 0 1 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.87499998509883881 2 -0.87499998509883881 ;
	setAttr ".cbx" -type "double3" 0.87499998509883881 2 0.87499998509883881 ;
createNode polyExtrudeFace -n "polyExtrudeFace411";
	setAttr ".ics" -type "componentList" 1 "f[5:29]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 1 0 0 0 0 2.5 0 0 0.5 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 3 0 ;
	setAttr ".rs" 59055;
	setAttr ".lt" -type "double3" 0 0 1 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.87499998509883881 3 -0.87499998509883881 ;
	setAttr ".cbx" -type "double3" 0.87499998509883881 3 0.87499998509883881 ;
createNode polyExtrudeFace -n "polyExtrudeFace412";
	setAttr ".ics" -type "componentList" 1 "f[5:29]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 1 0 0 0 0 2.5 0 0 0.5 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 4 0 ;
	setAttr ".rs" 36671;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.87499998509883881 4 -0.87499998509883881 ;
	setAttr ".cbx" -type "double3" 0.87499998509883881 4 0.87499998509883881 ;
createNode polyExtrudeFace -n "polyExtrudeFace413";
	setAttr ".ics" -type "componentList" 1 "f[5:29]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 1 0 0 0 0 2.5 0 0 0.5 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 4 0 ;
	setAttr ".rs" 48037;
	setAttr ".lt" -type "double3" 0 0 1 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.4374999925494194 4 -0.4374999925494194 ;
	setAttr ".cbx" -type "double3" 0.4374999925494194 4 0.4374999925494194 ;
createNode polyTweak -n "polyTweak172";
	setAttr ".uopa" yes;
	setAttr -s 36 ".tk[136:171]" -type "float3"  0.175 0 -0.175 0.10500001
		 0 -0.175 0.10500001 0 -0.10500001 0.175 0 -0.10500001 0.035000004 0 -0.175 0.035000004
		 0 -0.10500001 -0.034999996 0 -0.175 -0.034999996 0 -0.10500001 -0.10500001 0 -0.175
		 -0.10500001 0 -0.10500001 -0.175 0 -0.175 -0.175 0 -0.10500001 0.10500001 0 -0.035000004
		 0.175 0 -0.035000004 0.035000004 0 -0.035000004 -0.034999996 0 -0.035000004 -0.10500001
		 0 -0.035000004 -0.175 0 -0.035000004 0.10500001 0 0.034999996 0.175 0 0.034999996
		 0.035000004 0 0.034999996 -0.034999996 0 0.034999996 -0.10500001 0 0.034999996 -0.175
		 0 0.034999996 0.10500001 0 0.10500001 0.175 0 0.10500001 0.035000004 0 0.10500001
		 -0.034999996 0 0.10500001 -0.10500001 0 0.10500001 -0.175 0 0.10500001 0.10500001
		 0 0.175 0.175 0 0.175 0.035000004 0 0.175 -0.034999996 0 0.175 -0.10500001 0 0.175
		 -0.175 0 0.175;
createNode polyExtrudeFace -n "polyExtrudeFace414";
	setAttr ".ics" -type "componentList" 2 "f[90:149]" "f[170:189]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 1 0 0 0 0 2.5 0 0 0.5 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 3 0 ;
	setAttr ".rs" 42536;
	setAttr ".ls" -type "double3" 0.5 0.5 0.5 ;
	setAttr ".kft" no;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.87499998509883881 1 -0.87499998509883881 ;
	setAttr ".cbx" -type "double3" 0.87499998509883881 5 0.87499998509883881 ;
createNode polyExtrudeFace -n "polyExtrudeFace415";
	setAttr ".ics" -type "componentList" 2 "f[90:149]" "f[170:189]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 1 0 0 0 0 2.5 0 0 0.5 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 3 0 ;
	setAttr ".rs" 33808;
	setAttr ".lt" -type "double3" 0 0 -0.2 ;
	setAttr ".kft" no;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.87499998509883881 1.25 -0.87499998509883881 ;
	setAttr ".cbx" -type "double3" 0.87499998509883881 4.75 0.87499998509883881 ;
createNode polyExtrudeFace -n "polyExtrudeFace416";
	setAttr ".ics" -type "componentList" 4 "f[2]" "f[32]" "f[62]" "f[67]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 1 0 0 0 0 2.5 0 0 0.5 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 0.5 0 ;
	setAttr ".rs" 51402;
	setAttr ".ls" -type "double3" 0.5 0.5 0.5 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1.25 0 -1.25 ;
	setAttr ".cbx" -type "double3" 1.25 1 1.25 ;
createNode polyExtrudeFace -n "polyExtrudeFace417";
	setAttr ".ics" -type "componentList" 4 "f[2]" "f[32]" "f[62]" "f[67]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 1 0 0 0 0 2.5 0 0 0.5 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 0.25 0 ;
	setAttr ".rs" 37691;
	setAttr ".lt" -type "double3" 0 0 -0.5 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1.25 0 -1.25 ;
	setAttr ".cbx" -type "double3" 1.25 0.5 1.25 ;
createNode polyTweak -n "polyTweak173";
	setAttr ".uopa" yes;
	setAttr -s 16 ".tk[832:847]" -type "float3"  0 -0.25 0 0 -0.25 0 0 -0.25
		 0 0 -0.25 0 0 -0.25 0 0 -0.25 0 0 -0.25 0 0 -0.25 0 0 -0.25 0 0 -0.25 0 0 -0.25 0
		 0 -0.25 0 0 -0.25 0 0 -0.25 0 0 -0.25 0 0 -0.25 0;
createNode polyCube -n "polyCube47";
	setAttr ".sw" 5;
	setAttr ".sd" 5;
createNode polyExtrudeFace -n "polyExtrudeFace418";
	setAttr ".ics" -type "componentList" 1 "f[5:29]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 1 0 0 0 0 2.5 0 0 0.5 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 1 0 ;
	setAttr ".rs" 33349;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1.25 1 -1.25 ;
	setAttr ".cbx" -type "double3" 1.25 1 1.25 ;
createNode polyExtrudeFace -n "polyExtrudeFace419";
	setAttr ".ics" -type "componentList" 1 "f[5:29]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 1 0 0 0 0 2.5 0 0 0.5 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 1 0 ;
	setAttr ".rs" 37423;
	setAttr ".lt" -type "double3" 0 0 1 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.87499998509883881 1 -0.87499998509883881 ;
	setAttr ".cbx" -type "double3" 0.87499998509883881 1 0.87499998509883881 ;
createNode polyTweak -n "polyTweak174";
	setAttr ".uopa" yes;
	setAttr -s 36 ".tk[56:91]" -type "float3"  0.15000001 0 -0.15000001 0.090000004
		 0 -0.15000001 0.090000004 0 -0.090000004 0.15000001 0 -0.090000004 0.030000005 0
		 -0.15000001 0.030000005 0 -0.090000004 -0.029999997 0 -0.15000001 -0.029999997 0
		 -0.090000004 -0.090000004 0 -0.15000001 -0.090000004 0 -0.090000004 -0.15000001 0
		 -0.15000001 -0.15000001 0 -0.090000004 0.090000004 0 -0.030000005 0.15000001 0 -0.030000005
		 0.030000005 0 -0.030000005 -0.029999997 0 -0.030000005 -0.090000004 0 -0.030000005
		 -0.15000001 0 -0.030000005 0.090000004 0 0.029999997 0.15000001 0 0.029999997 0.030000005
		 0 0.029999997 -0.029999997 0 0.029999997 -0.090000004 0 0.029999997 -0.15000001 0
		 0.029999997 0.090000004 0 0.090000004 0.15000001 0 0.090000004 0.030000005 0 0.090000004
		 -0.029999997 0 0.090000004 -0.090000004 0 0.090000004 -0.15000001 0 0.090000004 0.090000004
		 0 0.15000001 0.15000001 0 0.15000001 0.030000005 0 0.15000001 -0.029999997 0 0.15000001
		 -0.090000004 0 0.15000001 -0.15000001 0 0.15000001;
createNode polyExtrudeFace -n "polyExtrudeFace420";
	setAttr ".ics" -type "componentList" 1 "f[5:29]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 1 0 0 0 0 2.5 0 0 0.5 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 2 0 ;
	setAttr ".rs" 62019;
	setAttr ".lt" -type "double3" 0 0 1 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.87499998509883881 2 -0.87499998509883881 ;
	setAttr ".cbx" -type "double3" 0.87499998509883881 2 0.87499998509883881 ;
createNode polyExtrudeFace -n "polyExtrudeFace421";
	setAttr ".ics" -type "componentList" 1 "f[5:29]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 1 0 0 0 0 2.5 0 0 0.5 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 3 0 ;
	setAttr ".rs" 61920;
	setAttr ".lt" -type "double3" 0 0 1 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.87499998509883881 3 -0.87499998509883881 ;
	setAttr ".cbx" -type "double3" 0.87499998509883881 3 0.87499998509883881 ;
createNode polyExtrudeFace -n "polyExtrudeFace422";
	setAttr ".ics" -type "componentList" 1 "f[5:29]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 1 0 0 0 0 2.5 0 0 0.5 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 4 0 ;
	setAttr ".rs" 33775;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.87499998509883881 4 -0.87499998509883881 ;
	setAttr ".cbx" -type "double3" 0.87499998509883881 4 0.87499998509883881 ;
createNode polyExtrudeFace -n "polyExtrudeFace423";
	setAttr ".ics" -type "componentList" 1 "f[5:29]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 1 0 0 0 0 2.5 0 0 0.5 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 4 0 ;
	setAttr ".rs" 54596;
	setAttr ".lt" -type "double3" 0 0 1 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.4374999925494194 4 -0.4374999925494194 ;
	setAttr ".cbx" -type "double3" 0.4374999925494194 4 0.4374999925494194 ;
createNode polyTweak -n "polyTweak175";
	setAttr ".uopa" yes;
	setAttr -s 36 ".tk[136:171]" -type "float3"  0.175 0 -0.175 0.10500001
		 0 -0.175 0.10500001 0 -0.10500001 0.175 0 -0.10500001 0.035000004 0 -0.175 0.035000004
		 0 -0.10500001 -0.034999996 0 -0.175 -0.034999996 0 -0.10500001 -0.10500001 0 -0.175
		 -0.10500001 0 -0.10500001 -0.175 0 -0.175 -0.175 0 -0.10500001 0.10500001 0 -0.035000004
		 0.175 0 -0.035000004 0.035000004 0 -0.035000004 -0.034999996 0 -0.035000004 -0.10500001
		 0 -0.035000004 -0.175 0 -0.035000004 0.10500001 0 0.034999996 0.175 0 0.034999996
		 0.035000004 0 0.034999996 -0.034999996 0 0.034999996 -0.10500001 0 0.034999996 -0.175
		 0 0.034999996 0.10500001 0 0.10500001 0.175 0 0.10500001 0.035000004 0 0.10500001
		 -0.034999996 0 0.10500001 -0.10500001 0 0.10500001 -0.175 0 0.10500001 0.10500001
		 0 0.175 0.175 0 0.175 0.035000004 0 0.175 -0.034999996 0 0.175 -0.10500001 0 0.175
		 -0.175 0 0.175;
createNode polyExtrudeFace -n "polyExtrudeFace424";
	setAttr ".ics" -type "componentList" 2 "f[90:149]" "f[170:189]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 1 0 0 0 0 2.5 0 0 0.5 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 3 0 ;
	setAttr ".rs" 36954;
	setAttr ".ls" -type "double3" 0.5 0.5 0.5 ;
	setAttr ".kft" no;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.87499998509883881 1 -0.87499998509883881 ;
	setAttr ".cbx" -type "double3" 0.87499998509883881 5 0.87499998509883881 ;
createNode polyExtrudeFace -n "polyExtrudeFace425";
	setAttr ".ics" -type "componentList" 2 "f[90:149]" "f[170:189]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 1 0 0 0 0 2.5 0 0 0.5 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 3 0 ;
	setAttr ".rs" 33117;
	setAttr ".lt" -type "double3" 0 0 -0.2 ;
	setAttr ".kft" no;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.87499998509883881 1.25 -0.87499998509883881 ;
	setAttr ".cbx" -type "double3" 0.87499998509883881 4.75 0.87499998509883881 ;
createNode polyExtrudeFace -n "polyExtrudeFace426";
	setAttr ".ics" -type "componentList" 4 "f[2]" "f[32]" "f[62]" "f[67]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 1 0 0 0 0 2.5 0 0 0.5 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 0.5 0 ;
	setAttr ".rs" 53837;
	setAttr ".ls" -type "double3" 0.5 0.5 0.5 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1.25 0 -1.25 ;
	setAttr ".cbx" -type "double3" 1.25 1 1.25 ;
createNode polyExtrudeFace -n "polyExtrudeFace427";
	setAttr ".ics" -type "componentList" 4 "f[2]" "f[32]" "f[62]" "f[67]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 1 0 0 0 0 2.5 0 0 0.5 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 0.25 0 ;
	setAttr ".rs" 59534;
	setAttr ".lt" -type "double3" 0 0 -0.5 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1.25 0 -1.25 ;
	setAttr ".cbx" -type "double3" 1.25 0.5 1.25 ;
createNode polyTweak -n "polyTweak176";
	setAttr ".uopa" yes;
	setAttr -s 16 ".tk[832:847]" -type "float3"  0 -0.25 0 0 -0.25 0 0 -0.25
		 0 0 -0.25 0 0 -0.25 0 0 -0.25 0 0 -0.25 0 0 -0.25 0 0 -0.25 0 0 -0.25 0 0 -0.25 0
		 0 -0.25 0 0 -0.25 0 0 -0.25 0 0 -0.25 0 0 -0.25 0;
createNode polyCube -n "polyCube48";
createNode polyExtrudeFace -n "polyExtrudeFace428";
	setAttr ".ics" -type "componentList" 3 "f[0]" "f[2]" "f[4:5]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 2 0 0 0 0 2.5 0 0 1 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 1 0 ;
	setAttr ".rs" 43053;
	setAttr ".lt" -type "double3" 0 0 0.2 ;
	setAttr ".ls" -type "double3" 0.5 1 1 ;
	setAttr ".kft" no;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1.25 0 -1.25 ;
	setAttr ".cbx" -type "double3" 1.25 2 1.25 ;
createNode polyExtrudeFace -n "polyExtrudeFace429";
	setAttr ".ics" -type "componentList" 3 "f[0]" "f[2]" "f[4:5]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 2 0 0 0 0 2.5 0 0 1 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 1 0 ;
	setAttr ".rs" 36489;
	setAttr ".lt" -type "double3" 0 0 0.4 ;
	setAttr ".kft" no;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1.4500001072883606 0 -1.4500001072883606 ;
	setAttr ".cbx" -type "double3" 1.4500001072883606 2 1.4500001072883606 ;
createNode polyExtrudeFace -n "polyExtrudeFace430";
	setAttr ".ics" -type "componentList" 3 "f[0]" "f[2]" "f[4:5]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 2 0 0 0 0 2.5 0 0 1 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 1 0 ;
	setAttr ".rs" 56229;
	setAttr ".ls" -type "double3" 0.5 0.5 1 ;
	setAttr ".kft" no;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1.8500001728534698 0 -1.8500001728534698 ;
	setAttr ".cbx" -type "double3" 1.8500001728534698 2 1.8500001728534698 ;
createNode polyExtrudeFace -n "polyExtrudeFace431";
	setAttr ".ics" -type "componentList" 3 "f[0]" "f[2]" "f[4:5]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 2 0 0 0 0 2.5 0 0 1 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 0.5 0 ;
	setAttr ".rs" 52608;
	setAttr ".lt" -type "double3" 0 0 -0.2 ;
	setAttr ".ls" -type "double3" 0.8 0.8 0.8 ;
	setAttr ".kft" no;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1.8500001728534698 0 -1.8500001728534698 ;
	setAttr ".cbx" -type "double3" 1.8500001728534698 1 1.8500001728534698 ;
createNode polyTweak -n "polyTweak177";
	setAttr ".uopa" yes;
	setAttr -s 16 ".tk[40:55]" -type "float3"  0 -0.25 0 0 -0.25 0 0 -0.25
		 0 0 -0.25 0 0 -0.25 0 0 -0.25 0 0 -0.25 0 0 -0.25 0 0 -0.25 0 0 -0.25 0 0 -0.25 0
		 0 -0.25 0 0 -0.25 0 0 -0.25 0 0 -0.25 0 0 -0.25 0;
createNode polyExtrudeFace -n "polyExtrudeFace432";
	setAttr ".ics" -type "componentList" 9 "f[1]" "f[8]" "f[10]" "f[16]" "f[20]" "f[24]" "f[26]" "f[32]" "f[36]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 2 0 0 0 0 2.5 0 0 1 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 2 0 ;
	setAttr ".rs" 54216;
	setAttr ".lt" -type "double3" 0 0 0.3 ;
	setAttr ".ls" -type "double3" 0.35 0.35 0.35 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1.8500001728534698 2 -1.8500001728534698 ;
	setAttr ".cbx" -type "double3" 1.8500001728534698 2 1.8500001728534698 ;
createNode polyExtrudeFace -n "polyExtrudeFace433";
	setAttr ".ics" -type "componentList" 9 "f[1]" "f[8]" "f[10]" "f[16]" "f[20]" "f[24]" "f[26]" "f[32]" "f[36]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 2 0 0 0 0 2.5 0 0 1 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 2.3000002 0 ;
	setAttr ".rs" 60993;
	setAttr ".lt" -type "double3" 0 0 0.5 ;
	setAttr ".ls" -type "double3" 0.35 0.35 0.35 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1.7200000584125519 2.3000001907348633 -1.7200000584125519 ;
	setAttr ".cbx" -type "double3" 1.7200000584125519 2.3000001907348633 1.7200000584125519 ;
createNode polyExtrudeFace -n "polyExtrudeFace434";
	setAttr ".ics" -type "componentList" 1 "f[1]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 2 0 0 0 0 2.5 0 0 1 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 2.8000002 0 ;
	setAttr ".rs" 53257;
	setAttr ".lt" -type "double3" 0 0 2 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.65217815339565277 2.8000001907348633 -0.65217815339565277 ;
	setAttr ".cbx" -type "double3" 0.65217815339565277 2.8000001907348633 0.65217815339565277 ;
createNode polyExtrudeFace -n "polyExtrudeFace435";
	setAttr ".ics" -type "componentList" 1 "f[1]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 2 0 0 0 0 2.5 0 0 1 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 4.8000002 0 ;
	setAttr ".rs" 63775;
	setAttr ".lt" -type "double3" 0 0 0.2 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.65217815339565277 4.8000001907348633 -0.65217815339565277 ;
	setAttr ".cbx" -type "double3" 0.65217815339565277 4.8000001907348633 0.65217815339565277 ;
createNode polyExtrudeFace -n "polyExtrudeFace436";
	setAttr ".ics" -type "componentList" 1 "f[1]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 2 0 0 0 0 2.5 0 0 1 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 5 0 ;
	setAttr ".rs" 48070;
	setAttr ".lt" -type "double3" 0 0 2 ;
	setAttr ".ls" -type "double3" 0 0 0 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.65217815339565277 5 -0.65217815339565277 ;
	setAttr ".cbx" -type "double3" 0.65217815339565277 5 0.65217815339565277 ;
createNode polyExtrudeFace -n "polyExtrudeFace437";
	setAttr ".ics" -type "componentList" 1 "f[110:113]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 2 0 0 0 0 2.5 0 0 1 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 3.8000002 0 ;
	setAttr ".rs" 40216;
	setAttr ".ls" -type "double3" 0.5 0.5 0.5 ;
	setAttr ".kft" no;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.65217815339565277 2.8000001907348633 -0.65217815339565277 ;
	setAttr ".cbx" -type "double3" 0.65217815339565277 4.8000001907348633 0.65217815339565277 ;
createNode polyExtrudeFace -n "polyExtrudeFace438";
	setAttr ".ics" -type "componentList" 1 "f[110:113]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 2 0 0 0 0 2.5 0 0 1 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 3.8000002 0 ;
	setAttr ".rs" 37073;
	setAttr ".lt" -type "double3" 0 0 -0.3 ;
	setAttr ".kft" no;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.65217815339565277 3.3000001907348633 -0.65217815339565277 ;
	setAttr ".cbx" -type "double3" 0.65217815339565277 4.3000001907348633 0.65217815339565277 ;
createNode polyExtrudeFace -n "polyExtrudeFace439";
	setAttr ".ics" -type "componentList" 1 "f[114:117]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 2 0 0 0 0 2.5 0 0 1 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 4.9000001 0 ;
	setAttr ".rs" 65089;
	setAttr ".lt" -type "double3" 0 0 0.2 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.65217815339565277 4.8000001907348633 -0.65217815339565277 ;
	setAttr ".cbx" -type "double3" 0.65217815339565277 5 0.65217815339565277 ;
createNode expression -n "expression1";
	setAttr -k on ".nds";
	setAttr ".ixp" -type "string" "python(\"update(\"+frame+\")\");";
createNode script -n "uiConfigurationScriptNode";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"top\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n"
		+ "                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n"
		+ "                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n"
		+ "                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n"
		+ "            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n"
		+ "            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"side\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n"
		+ "                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n"
		+ "                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n"
		+ "            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n"
		+ "            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n"
		+ "            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"front\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n"
		+ "                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n"
		+ "                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n"
		+ "                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n"
		+ "            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n"
		+ "            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n"
		+ "            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n"
		+ "                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 1\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n"
		+ "                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 0\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n"
		+ "                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n"
		+ "            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 1\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"base_OpenGL_Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n"
		+ "            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 0\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n"
		+ "            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `outlinerPanel -unParent -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            outlinerEditor -e \n                -docTag \"isolOutln_fromSeln\" \n                -showShapes 0\n"
		+ "                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 0\n                -showConnected 0\n                -showAnimCurvesOnly 0\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 1\n                -showAssets 1\n                -showContainedOnly 1\n                -showPublishedAsConnected 0\n                -showContainerContents 1\n                -ignoreDagHierarchy 0\n                -expandConnections 0\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 0\n                -highlightActive 1\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"defaultSetFilter\" \n                -showSetMembers 1\n"
		+ "                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 0\n                -ignoreHiddenAttribute 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n"
		+ "            -showShapes 0\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n"
		+ "            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\tif ($useSceneConfig) {\n\t\toutlinerPanel -e -to $panelName;\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"graphEditor\" -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n"
		+ "                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n"
		+ "                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n"
		+ "                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n"
		+ "                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n"
		+ "                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dopeSheetPanel\" -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n"
		+ "                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n"
		+ "                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n"
		+ "                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n"
		+ "                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n"
		+ "                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"clipEditorPanel\" -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n"
		+ "            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"sequenceEditorPanel\" -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n"
		+ "                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperGraphPanel\" -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n"
		+ "                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n"
		+ "                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperShadePanel\" -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"visorPanel\" -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n"
		+ "                -defaultPinnedState 0\n                -ignoreAssets 1\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -keyReleaseCommand \"nodeEdKeyReleaseCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                $editorName;;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n"
		+ "                -autoSizeNodes 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -ignoreAssets 1\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -keyReleaseCommand \"nodeEdKeyReleaseCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                $editorName;;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"createNodePanel\" -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Texture Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"polyTexturePlacementPanel\" -l (localizedPanelLabel(\"UV Texture Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Texture Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"renderWindowPanel\" -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"Blend Shape\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\tblendShapePanel -unParent -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels ;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tblendShapePanel -edit -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" == $panelName) {\n"
		+ "\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynRelEdPanel\" -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"relationshipPanel\" -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"referenceEditorPanel\" -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"componentEditorPanel\" -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynPaintScriptedPanelType\" -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"scriptEditorPanel\" -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n"
		+ "        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"base_OpenGL_Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 0\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"base_OpenGL_Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 0\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        setFocus `paneLayout -q -p1 $gMainPane`;\n        sceneUIReplacement -deleteRemaining;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
createNode polyPlane -n "polyPlane69";
	setAttr ".w" 60;
	setAttr ".h" 60;
	setAttr ".sw" 15;
	setAttr ".sh" 15;
createNode polyMoveVertex -n "polyMoveVertex1";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "vtx[0:255]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".rs" 45094;
createNode polyCube -n "polyCube49";
	setAttr ".w" 0.5;
	setAttr ".h" 0.5;
createNode transformGeometry -n "transformGeometry68";
	setAttr ".txf" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 1 0 -1 1;
createNode polyCube -n "polyCube50";
	setAttr ".w" 0.5;
	setAttr ".h" 0.5;
createNode transformGeometry -n "transformGeometry69";
	setAttr ".txf" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 1 0 -1 1;
createNode polyCube -n "polyCube51";
	setAttr ".w" 0.5;
	setAttr ".h" 0.5;
createNode transformGeometry -n "transformGeometry70";
	setAttr ".txf" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 1 0 -1 1;
createNode polyCube -n "polyCube52";
	setAttr ".w" 0.5;
	setAttr ".h" 0.5;
createNode transformGeometry -n "transformGeometry71";
	setAttr ".txf" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 1 0 -1 1;
createNode polyCube -n "polyCube53";
	setAttr ".w" 0.5;
	setAttr ".h" 0.5;
createNode transformGeometry -n "transformGeometry72";
	setAttr ".txf" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 1 0 -1 1;
createNode polyCube -n "polyCube54";
	setAttr ".w" 0.5;
	setAttr ".h" 0.5;
createNode transformGeometry -n "transformGeometry73";
	setAttr ".txf" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 1 0 -1 1;
select -ne :time1;
	setAttr ".o" 57;
	setAttr ".unw" 57;
select -ne :renderPartition;
	setAttr -s 9 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 9 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderingList1;
select -ne :defaultTextureList1;
	setAttr -s 4 ".tx";
select -ne :initialShadingGroup;
	setAttr -s 77 ".dsm";
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
select -ne :defaultHardwareRenderGlobals;
	setAttr ".res" -type "string" "ntsc_4d 646 485 1.333";
connectAttr "transformGeometry1.og" "RoadStraight1Shape.i";
connectAttr "transformGeometry2.og" "RoadStraight2Shape.i";
connectAttr "transformGeometry4.og" "RoadStraight4Shape.i";
connectAttr "transformGeometry5.og" "RoadStraight5Shape.i";
connectAttr "transformGeometry6.og" "RoadStraight6Shape.i";
connectAttr "transformGeometry7.og" "RoadStraight7Shape.i";
connectAttr "transformGeometry8.og" "RoadStraight8Shape.i";
connectAttr "transformGeometry9.og" "RoadStraight9Shape.i";
connectAttr "transformGeometry10.og" "RoadStraight10Shape.i";
connectAttr "transformGeometry11.og" "RoadStraight11Shape.i";
connectAttr "transformGeometry12.og" "RoadStraight12Shape.i";
connectAttr "transformGeometry14.og" "RoadStraight14Shape.i";
connectAttr "transformGeometry15.og" "RoadStraight15Shape.i";
connectAttr "transformGeometry16.og" "RoadStraight16Shape.i";
connectAttr "transformGeometry18.og" "RoadStraight18Shape.i";
connectAttr "transformGeometry19.og" "RoadStraight19Shape.i";
connectAttr "transformGeometry23.og" "RoadStraight20Shape.i";
connectAttr "transformGeometry24.og" "RoadStraight21Shape.i";
connectAttr "transformGeometry25.og" "RoadStraight22Shape.i";
connectAttr "transformGeometry26.og" "RoadStraight23Shape.i";
connectAttr "transformGeometry27.og" "RoadStraight24Shape.i";
connectAttr "transformGeometry28.og" "RoadStraight25Shape.i";
connectAttr "transformGeometry29.og" "RoadStraight26Shape.i";
connectAttr "transformGeometry30.og" "RoadStraight27Shape.i";
connectAttr "transformGeometry31.og" "RoadStraight28Shape.i";
connectAttr "transformGeometry32.og" "RoadStraight29Shape.i";
connectAttr "transformGeometry35.og" "RoadStraight30Shape.i";
connectAttr "transformGeometry36.og" "RoadStraight31Shape.i";
connectAttr "transformGeometry37.og" "RoadStraight32Shape.i";
connectAttr "transformGeometry38.og" "RoadStraight33Shape.i";
connectAttr "transformGeometry39.og" "RoadStraight34Shape.i";
connectAttr "transformGeometry40.og" "RoadStraight35Shape.i";
connectAttr "transformGeometry41.og" "RoadStraight36Shape.i";
connectAttr "transformGeometry42.og" "RoadStraight37Shape.i";
connectAttr "transformGeometry43.og" "RoadStraight38Shape.i";
connectAttr "transformGeometry44.og" "RoadStraight39Shape.i";
connectAttr "transformGeometry45.og" "RoadStraight40Shape.i";
connectAttr "transformGeometry46.og" "RoadStraight41Shape.i";
connectAttr "transformGeometry47.og" "RoadStraight42Shape.i";
connectAttr "transformGeometry48.og" "RoadStraight43Shape.i";
connectAttr "transformGeometry49.og" "RoadStraight44Shape.i";
connectAttr "transformGeometry50.og" "RoadStraight45Shape.i";
connectAttr "transformGeometry51.og" "RoadStraight46Shape.i";
connectAttr "transformGeometry58.og" "RoadStraight47Shape.i";
connectAttr "transformGeometry59.og" "RoadStraight48Shape.i";
connectAttr "transformGeometry60.og" "RoadStraight49Shape.i";
connectAttr "transformGeometry61.og" "RoadStraight50Shape.i";
connectAttr "transformGeometry62.og" "RoadStraight51Shape.i";
connectAttr "transformGeometry63.og" "RoadStraight52Shape.i";
connectAttr "transformGeometry64.og" "RoadStraight53Shape.i";
connectAttr "transformGeometry65.og" "RoadStraight54Shape.i";
connectAttr "transformGeometry20.og" "RoadRtCurve1Shape.i";
connectAttr "transformGeometry21.og" "RoadRtCurve2Shape.i";
connectAttr "transformGeometry56.og" "RoadRtCurve3Shape.i";
connectAttr "transformGeometry57.og" "RoadRtCurve4Shape.i";
connectAttr "transformGeometry66.og" "RoadRtCurve5Shape.i";
connectAttr "transformGeometry33.og" "RoadTJunction2Shape.i";
connectAttr "transformGeometry34.og" "RoadTJunction3Shape.i";
connectAttr "transformGeometry52.og" "RoadTJunction4Shape.i";
connectAttr "transformGeometry53.og" "RoadTJunction5Shape.i";
connectAttr "transformGeometry55.og" "RoadTJunction6Shape.i";
connectAttr "transformGeometry67.og" "RoadTJunction7Shape.i";
connectAttr "transformGeometry54.og" "RoadCrossJunction1Shape.i";
connectAttr "polyExtrudeFace79.out" "Building1Shape.i";
connectAttr "polyExtrudeFace89.out" "Building2Shape.i";
connectAttr "polyExtrudeFace99.out" "Building3Shape.i";
connectAttr "polyExtrudeFace109.out" "Building4Shape.i";
connectAttr "polyExtrudeFace119.out" "Building5Shape.i";
connectAttr "polyExtrudeFace123.out" "Building6Shape.i";
connectAttr "polyExtrudeFace127.out" "Building7Shape.i";
connectAttr "polyExtrudeFace131.out" "Building8Shape.i";
connectAttr "polyExtrudeFace143.out" "Building9Shape.i";
connectAttr "polyExtrudeFace153.out" "Building10Shape.i";
connectAttr "polyExtrudeFace163.out" "Building11Shape.i";
connectAttr "polyExtrudeFace171.out" "Building12Shape.i";
connectAttr "polyExtrudeFace179.out" "Building13Shape.i";
connectAttr "polyExtrudeFace183.out" "Building14Shape.i";
connectAttr "polyExtrudeFace193.out" "Building15Shape.i";
connectAttr "polyExtrudeFace201.out" "Building16Shape.i";
connectAttr "polyExtrudeFace211.out" "Building17Shape.i";
connectAttr "polyExtrudeFace221.out" "Building18Shape.i";
connectAttr "polyExtrudeFace231.out" "Building19Shape.i";
connectAttr "polyExtrudeFace241.out" "Building20Shape.i";
connectAttr "polyExtrudeFace245.out" "Building21Shape.i";
connectAttr "polyExtrudeFace255.out" "Building22Shape.i";
connectAttr "polyExtrudeFace265.out" "Building23Shape.i";
connectAttr "polyExtrudeFace277.out" "Building24Shape.i";
connectAttr "polyExtrudeFace281.out" "Building25Shape.i";
connectAttr "polyExtrudeFace291.out" "Building26Shape.i";
connectAttr "polyExtrudeFace301.out" "Building27Shape.i";
connectAttr "polyExtrudeFace311.out" "Building28Shape.i";
connectAttr "polyExtrudeFace323.out" "Building29Shape.i";
connectAttr "polyExtrudeFace335.out" "Building30Shape.i";
connectAttr "polyExtrudeFace345.out" "Building31Shape.i";
connectAttr "polyExtrudeFace355.out" "Building32Shape.i";
connectAttr "polyExtrudeFace365.out" "Building33Shape.i";
connectAttr "polyExtrudeFace375.out" "Building34Shape.i";
connectAttr "polyExtrudeFace385.out" "Building35Shape.i";
connectAttr "polyExtrudeFace397.out" "Building36Shape.i";
connectAttr "polyExtrudeFace407.out" "Building37Shape.i";
connectAttr "polyExtrudeFace417.out" "Building38Shape.i";
connectAttr "polyExtrudeFace427.out" "Building39Shape.i";
connectAttr "polyExtrudeFace439.out" "Building40Shape.i";
connectAttr "polyMoveVertex1.out" "My_Unique_TerrainShape.i";
connectAttr "transformGeometry68.og" "car1Shape.i";
connectAttr "transformGeometry69.og" "car2Shape.i";
connectAttr "transformGeometry70.og" "car3Shape.i";
connectAttr "transformGeometry71.og" "car4Shape.i";
connectAttr "transformGeometry72.og" "car5Shape.i";
connectAttr "transformGeometry73.og" "car6Shape.i";
connectAttr ":mentalrayGlobals.msg" ":mentalrayItemsList.glb";
connectAttr ":miDefaultOptions.msg" ":mentalrayItemsList.opt" -na;
connectAttr ":miDefaultFramebuffer.msg" ":mentalrayItemsList.fb" -na;
connectAttr ":miDefaultOptions.msg" ":mentalrayGlobals.opt";
connectAttr ":miDefaultFramebuffer.msg" ":mentalrayGlobals.fb";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "RedShaderSG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "OrangeShaderSG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "GreenShaderSG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "StraightRoadShaderSG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "CurveRoadShaderSG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "CrossJunctionShaderSG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "TJunctionShaderSG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "RedShaderSG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "OrangeShaderSG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "GreenShaderSG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "StraightRoadShaderSG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "CurveRoadShaderSG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "CrossJunctionShaderSG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "TJunctionShaderSG.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "RedShader.oc" "RedShaderSG.ss";
connectAttr "RedLight_Traffic_Light5Shape.iog" "RedShaderSG.dsm" -na;
connectAttr "RedLight_Traffic_Light8Shape.iog" "RedShaderSG.dsm" -na;
connectAttr "RedLight_Traffic_Light1Shape.iog" "RedShaderSG.dsm" -na;
connectAttr "RedLight_Traffic_Light2Shape.iog" "RedShaderSG.dsm" -na;
connectAttr "RedLight_Traffic_Light7Shape.iog" "RedShaderSG.dsm" -na;
connectAttr "RedLight_Traffic_Light6Shape.iog" "RedShaderSG.dsm" -na;
connectAttr "RedLight_Traffic_Light4Shape.iog" "RedShaderSG.dsm" -na;
connectAttr "RedShaderSG.msg" "materialInfo1.sg";
connectAttr "RedShader.msg" "materialInfo1.m";
connectAttr "OrangeShader.oc" "OrangeShaderSG.ss";
connectAttr "OrangeLight_Traffic_Light3Shape.iog" "OrangeShaderSG.dsm" -na;
connectAttr "OrangeLight_Traffic_Light9Shape.iog" "OrangeShaderSG.dsm" -na;
connectAttr "OrangeLight_Traffic_Light10Shape.iog" "OrangeShaderSG.dsm" -na;
connectAttr "OrangeShaderSG.msg" "materialInfo2.sg";
connectAttr "OrangeShader.msg" "materialInfo2.m";
connectAttr "GreenShader.oc" "GreenShaderSG.ss";
connectAttr "GreenShaderSG.msg" "materialInfo3.sg";
connectAttr "GreenShader.msg" "materialInfo3.m";
connectAttr "file1.oc" "StraightRoadShader.c";
connectAttr "StraightRoadShader.oc" "StraightRoadShaderSG.ss";
connectAttr "RoadStraight1Shape.iog" "StraightRoadShaderSG.dsm" -na;
connectAttr "RoadStraight2Shape.iog" "StraightRoadShaderSG.dsm" -na;
connectAttr "RoadStraight4Shape.iog" "StraightRoadShaderSG.dsm" -na;
connectAttr "RoadStraight5Shape.iog" "StraightRoadShaderSG.dsm" -na;
connectAttr "RoadStraight6Shape.iog" "StraightRoadShaderSG.dsm" -na;
connectAttr "RoadStraight7Shape.iog" "StraightRoadShaderSG.dsm" -na;
connectAttr "RoadStraight8Shape.iog" "StraightRoadShaderSG.dsm" -na;
connectAttr "RoadStraight9Shape.iog" "StraightRoadShaderSG.dsm" -na;
connectAttr "RoadStraight10Shape.iog" "StraightRoadShaderSG.dsm" -na;
connectAttr "RoadStraight11Shape.iog" "StraightRoadShaderSG.dsm" -na;
connectAttr "RoadStraight12Shape.iog" "StraightRoadShaderSG.dsm" -na;
connectAttr "RoadStraight14Shape.iog" "StraightRoadShaderSG.dsm" -na;
connectAttr "RoadStraight15Shape.iog" "StraightRoadShaderSG.dsm" -na;
connectAttr "RoadStraight16Shape.iog" "StraightRoadShaderSG.dsm" -na;
connectAttr "RoadStraight18Shape.iog" "StraightRoadShaderSG.dsm" -na;
connectAttr "RoadStraight19Shape.iog" "StraightRoadShaderSG.dsm" -na;
connectAttr "RoadStraight20Shape.iog" "StraightRoadShaderSG.dsm" -na;
connectAttr "RoadStraight21Shape.iog" "StraightRoadShaderSG.dsm" -na;
connectAttr "RoadStraight22Shape.iog" "StraightRoadShaderSG.dsm" -na;
connectAttr "RoadStraight23Shape.iog" "StraightRoadShaderSG.dsm" -na;
connectAttr "RoadStraight24Shape.iog" "StraightRoadShaderSG.dsm" -na;
connectAttr "RoadStraight25Shape.iog" "StraightRoadShaderSG.dsm" -na;
connectAttr "RoadStraight26Shape.iog" "StraightRoadShaderSG.dsm" -na;
connectAttr "RoadStraight27Shape.iog" "StraightRoadShaderSG.dsm" -na;
connectAttr "RoadStraight28Shape.iog" "StraightRoadShaderSG.dsm" -na;
connectAttr "RoadStraight29Shape.iog" "StraightRoadShaderSG.dsm" -na;
connectAttr "RoadStraight30Shape.iog" "StraightRoadShaderSG.dsm" -na;
connectAttr "RoadStraight31Shape.iog" "StraightRoadShaderSG.dsm" -na;
connectAttr "RoadStraight32Shape.iog" "StraightRoadShaderSG.dsm" -na;
connectAttr "RoadStraight33Shape.iog" "StraightRoadShaderSG.dsm" -na;
connectAttr "RoadStraight34Shape.iog" "StraightRoadShaderSG.dsm" -na;
connectAttr "RoadStraight35Shape.iog" "StraightRoadShaderSG.dsm" -na;
connectAttr "RoadStraight36Shape.iog" "StraightRoadShaderSG.dsm" -na;
connectAttr "RoadStraight37Shape.iog" "StraightRoadShaderSG.dsm" -na;
connectAttr "RoadStraight38Shape.iog" "StraightRoadShaderSG.dsm" -na;
connectAttr "RoadStraight39Shape.iog" "StraightRoadShaderSG.dsm" -na;
connectAttr "RoadStraight40Shape.iog" "StraightRoadShaderSG.dsm" -na;
connectAttr "RoadStraight41Shape.iog" "StraightRoadShaderSG.dsm" -na;
connectAttr "RoadStraight42Shape.iog" "StraightRoadShaderSG.dsm" -na;
connectAttr "RoadStraight43Shape.iog" "StraightRoadShaderSG.dsm" -na;
connectAttr "RoadStraight44Shape.iog" "StraightRoadShaderSG.dsm" -na;
connectAttr "RoadStraight45Shape.iog" "StraightRoadShaderSG.dsm" -na;
connectAttr "RoadStraight46Shape.iog" "StraightRoadShaderSG.dsm" -na;
connectAttr "RoadStraight47Shape.iog" "StraightRoadShaderSG.dsm" -na;
connectAttr "RoadStraight48Shape.iog" "StraightRoadShaderSG.dsm" -na;
connectAttr "RoadStraight49Shape.iog" "StraightRoadShaderSG.dsm" -na;
connectAttr "RoadStraight50Shape.iog" "StraightRoadShaderSG.dsm" -na;
connectAttr "RoadStraight51Shape.iog" "StraightRoadShaderSG.dsm" -na;
connectAttr "RoadStraight52Shape.iog" "StraightRoadShaderSG.dsm" -na;
connectAttr "RoadStraight53Shape.iog" "StraightRoadShaderSG.dsm" -na;
connectAttr "RoadStraight54Shape.iog" "StraightRoadShaderSG.dsm" -na;
connectAttr "StraightRoadShaderSG.msg" "materialInfo4.sg";
connectAttr "StraightRoadShader.msg" "materialInfo4.m";
connectAttr "file1.msg" "materialInfo4.t" -na;
connectAttr "file2.oc" "CurveRoadShader.c";
connectAttr "CurveRoadShader.oc" "CurveRoadShaderSG.ss";
connectAttr "RoadRtCurve1Shape.iog" "CurveRoadShaderSG.dsm" -na;
connectAttr "RoadRtCurve2Shape.iog" "CurveRoadShaderSG.dsm" -na;
connectAttr "RoadRtCurve3Shape.iog" "CurveRoadShaderSG.dsm" -na;
connectAttr "RoadRtCurve4Shape.iog" "CurveRoadShaderSG.dsm" -na;
connectAttr "RoadRtCurve5Shape.iog" "CurveRoadShaderSG.dsm" -na;
connectAttr "CurveRoadShaderSG.msg" "materialInfo5.sg";
connectAttr "CurveRoadShader.msg" "materialInfo5.m";
connectAttr "file2.msg" "materialInfo5.t" -na;
connectAttr "file3.oc" "CrossJunctionShader.c";
connectAttr "CrossJunctionShader.oc" "CrossJunctionShaderSG.ss";
connectAttr "RoadCrossJunction1Shape.iog" "CrossJunctionShaderSG.dsm" -na;
connectAttr "CrossJunctionShaderSG.msg" "materialInfo6.sg";
connectAttr "CrossJunctionShader.msg" "materialInfo6.m";
connectAttr "file3.msg" "materialInfo6.t" -na;
connectAttr "file4.oc" "TJunctionShader.c";
connectAttr "TJunctionShader.oc" "TJunctionShaderSG.ss";
connectAttr "RoadTJunction2Shape.iog" "TJunctionShaderSG.dsm" -na;
connectAttr "RoadTJunction3Shape.iog" "TJunctionShaderSG.dsm" -na;
connectAttr "RoadTJunction4Shape.iog" "TJunctionShaderSG.dsm" -na;
connectAttr "RoadTJunction5Shape.iog" "TJunctionShaderSG.dsm" -na;
connectAttr "RoadTJunction6Shape.iog" "TJunctionShaderSG.dsm" -na;
connectAttr "RoadTJunction7Shape.iog" "TJunctionShaderSG.dsm" -na;
connectAttr "TJunctionShaderSG.msg" "materialInfo7.sg";
connectAttr "TJunctionShader.msg" "materialInfo7.m";
connectAttr "file4.msg" "materialInfo7.t" -na;
connectAttr "polyTweak1.out" "polyExtrudeFace1.ip";
connectAttr "RoadStraight1Shape.wm" "polyExtrudeFace1.mp";
connectAttr "polyPlane2.out" "polyTweak1.ip";
connectAttr "polyExtrudeFace1.out" "transformGeometry1.ig";
connectAttr "polyTweak2.out" "polyExtrudeFace2.ip";
connectAttr "RoadStraight2Shape.wm" "polyExtrudeFace2.mp";
connectAttr "polyPlane3.out" "polyTweak2.ip";
connectAttr "polyExtrudeFace2.out" "transformGeometry2.ig";
connectAttr "polyTweak4.out" "polyExtrudeFace4.ip";
connectAttr "RoadStraight4Shape.wm" "polyExtrudeFace4.mp";
connectAttr "polyPlane5.out" "polyTweak4.ip";
connectAttr "polyExtrudeFace4.out" "transformGeometry4.ig";
connectAttr "polyTweak5.out" "polyExtrudeFace5.ip";
connectAttr "RoadStraight5Shape.wm" "polyExtrudeFace5.mp";
connectAttr "polyPlane6.out" "polyTweak5.ip";
connectAttr "polyExtrudeFace5.out" "transformGeometry5.ig";
connectAttr "polyTweak6.out" "polyExtrudeFace6.ip";
connectAttr "RoadStraight6Shape.wm" "polyExtrudeFace6.mp";
connectAttr "polyPlane7.out" "polyTweak6.ip";
connectAttr "polyExtrudeFace6.out" "transformGeometry6.ig";
connectAttr "polyTweak7.out" "polyExtrudeFace7.ip";
connectAttr "RoadStraight7Shape.wm" "polyExtrudeFace7.mp";
connectAttr "polyPlane8.out" "polyTweak7.ip";
connectAttr "polyExtrudeFace7.out" "transformGeometry7.ig";
connectAttr "polyTweak8.out" "polyExtrudeFace8.ip";
connectAttr "RoadStraight8Shape.wm" "polyExtrudeFace8.mp";
connectAttr "polyPlane9.out" "polyTweak8.ip";
connectAttr "polyExtrudeFace8.out" "transformGeometry8.ig";
connectAttr "polyTweak9.out" "polyExtrudeFace9.ip";
connectAttr "RoadStraight9Shape.wm" "polyExtrudeFace9.mp";
connectAttr "polyPlane10.out" "polyTweak9.ip";
connectAttr "polyExtrudeFace9.out" "transformGeometry9.ig";
connectAttr "polyTweak10.out" "polyExtrudeFace10.ip";
connectAttr "RoadStraight10Shape.wm" "polyExtrudeFace10.mp";
connectAttr "polyPlane11.out" "polyTweak10.ip";
connectAttr "polyExtrudeFace10.out" "transformGeometry10.ig";
connectAttr "polyTweak11.out" "polyExtrudeFace11.ip";
connectAttr "RoadStraight11Shape.wm" "polyExtrudeFace11.mp";
connectAttr "polyPlane12.out" "polyTweak11.ip";
connectAttr "polyExtrudeFace11.out" "transformGeometry11.ig";
connectAttr "polyTweak12.out" "polyExtrudeFace12.ip";
connectAttr "RoadStraight12Shape.wm" "polyExtrudeFace12.mp";
connectAttr "polyPlane13.out" "polyTweak12.ip";
connectAttr "polyExtrudeFace12.out" "transformGeometry12.ig";
connectAttr "polyTweak14.out" "polyExtrudeFace14.ip";
connectAttr "RoadStraight14Shape.wm" "polyExtrudeFace14.mp";
connectAttr "polyPlane15.out" "polyTweak14.ip";
connectAttr "polyExtrudeFace14.out" "transformGeometry14.ig";
connectAttr "polyTweak15.out" "polyExtrudeFace15.ip";
connectAttr "RoadStraight15Shape.wm" "polyExtrudeFace15.mp";
connectAttr "polyPlane16.out" "polyTweak15.ip";
connectAttr "polyExtrudeFace15.out" "transformGeometry15.ig";
connectAttr "polyTweak16.out" "polyExtrudeFace16.ip";
connectAttr "RoadStraight16Shape.wm" "polyExtrudeFace16.mp";
connectAttr "polyPlane17.out" "polyTweak16.ip";
connectAttr "polyExtrudeFace16.out" "transformGeometry16.ig";
connectAttr "polyTweak18.out" "polyExtrudeFace18.ip";
connectAttr "RoadStraight18Shape.wm" "polyExtrudeFace18.mp";
connectAttr "polyPlane19.out" "polyTweak18.ip";
connectAttr "polyExtrudeFace18.out" "transformGeometry18.ig";
connectAttr "polyTweak19.out" "polyExtrudeFace19.ip";
connectAttr "RoadStraight19Shape.wm" "polyExtrudeFace19.mp";
connectAttr "polyPlane20.out" "polyTweak19.ip";
connectAttr "polyExtrudeFace19.out" "transformGeometry19.ig";
connectAttr "polyTweak20.out" "polySplitRing1.ip";
connectAttr "RoadRtCurve1Shape.wm" "polySplitRing1.mp";
connectAttr "polyPlane21.out" "polyTweak20.ip";
connectAttr "polyTweak21.out" "polyExtrudeFace20.ip";
connectAttr "RoadRtCurve1Shape.wm" "polyExtrudeFace20.mp";
connectAttr "polySplitRing1.out" "polyTweak21.ip";
connectAttr "polyExtrudeFace20.out" "transformGeometry20.ig";
connectAttr "polyTweak22.out" "polySplitRing2.ip";
connectAttr "RoadRtCurve2Shape.wm" "polySplitRing2.mp";
connectAttr "polyPlane22.out" "polyTweak22.ip";
connectAttr "polyTweak23.out" "polyExtrudeFace21.ip";
connectAttr "RoadRtCurve2Shape.wm" "polyExtrudeFace21.mp";
connectAttr "polySplitRing2.out" "polyTweak23.ip";
connectAttr "polyExtrudeFace21.out" "transformGeometry21.ig";
connectAttr "polyTweak26.out" "polyExtrudeFace23.ip";
connectAttr "RoadStraight20Shape.wm" "polyExtrudeFace23.mp";
connectAttr "polyPlane24.out" "polyTweak26.ip";
connectAttr "polyExtrudeFace23.out" "transformGeometry23.ig";
connectAttr "polyTweak27.out" "polyExtrudeFace24.ip";
connectAttr "RoadStraight21Shape.wm" "polyExtrudeFace24.mp";
connectAttr "polyPlane25.out" "polyTweak27.ip";
connectAttr "polyExtrudeFace24.out" "transformGeometry24.ig";
connectAttr "polyTweak28.out" "polyExtrudeFace25.ip";
connectAttr "RoadStraight22Shape.wm" "polyExtrudeFace25.mp";
connectAttr "polyPlane26.out" "polyTweak28.ip";
connectAttr "polyExtrudeFace25.out" "transformGeometry25.ig";
connectAttr "polyTweak29.out" "polyExtrudeFace26.ip";
connectAttr "RoadStraight23Shape.wm" "polyExtrudeFace26.mp";
connectAttr "polyPlane27.out" "polyTweak29.ip";
connectAttr "polyExtrudeFace26.out" "transformGeometry26.ig";
connectAttr "polyTweak30.out" "polyExtrudeFace27.ip";
connectAttr "RoadStraight24Shape.wm" "polyExtrudeFace27.mp";
connectAttr "polyPlane28.out" "polyTweak30.ip";
connectAttr "polyExtrudeFace27.out" "transformGeometry27.ig";
connectAttr "polyTweak31.out" "polyExtrudeFace28.ip";
connectAttr "RoadStraight25Shape.wm" "polyExtrudeFace28.mp";
connectAttr "polyPlane29.out" "polyTweak31.ip";
connectAttr "polyExtrudeFace28.out" "transformGeometry28.ig";
connectAttr "polyTweak32.out" "polyExtrudeFace29.ip";
connectAttr "RoadStraight26Shape.wm" "polyExtrudeFace29.mp";
connectAttr "polyPlane30.out" "polyTweak32.ip";
connectAttr "polyExtrudeFace29.out" "transformGeometry29.ig";
connectAttr "polyTweak33.out" "polyExtrudeFace30.ip";
connectAttr "RoadStraight27Shape.wm" "polyExtrudeFace30.mp";
connectAttr "polyPlane31.out" "polyTweak33.ip";
connectAttr "polyExtrudeFace30.out" "transformGeometry30.ig";
connectAttr "polyTweak34.out" "polyExtrudeFace31.ip";
connectAttr "RoadStraight28Shape.wm" "polyExtrudeFace31.mp";
connectAttr "polyPlane32.out" "polyTweak34.ip";
connectAttr "polyExtrudeFace31.out" "transformGeometry31.ig";
connectAttr "polyTweak35.out" "polyExtrudeFace32.ip";
connectAttr "RoadStraight29Shape.wm" "polyExtrudeFace32.mp";
connectAttr "polyPlane33.out" "polyTweak35.ip";
connectAttr "polyExtrudeFace32.out" "transformGeometry32.ig";
connectAttr "polyTweak36.out" "polySplitRing4.ip";
connectAttr "RoadTJunction2Shape.wm" "polySplitRing4.mp";
connectAttr "polyPlane34.out" "polyTweak36.ip";
connectAttr "polyTweak37.out" "polyExtrudeFace33.ip";
connectAttr "RoadTJunction2Shape.wm" "polyExtrudeFace33.mp";
connectAttr "polySplitRing4.out" "polyTweak37.ip";
connectAttr "polyExtrudeFace33.out" "transformGeometry33.ig";
connectAttr "polyTweak38.out" "polySplitRing5.ip";
connectAttr "RoadTJunction3Shape.wm" "polySplitRing5.mp";
connectAttr "polyPlane35.out" "polyTweak38.ip";
connectAttr "polyTweak39.out" "polyExtrudeFace34.ip";
connectAttr "RoadTJunction3Shape.wm" "polyExtrudeFace34.mp";
connectAttr "polySplitRing5.out" "polyTweak39.ip";
connectAttr "polyExtrudeFace34.out" "transformGeometry34.ig";
connectAttr "polyTweak40.out" "polyExtrudeFace35.ip";
connectAttr "RoadStraight30Shape.wm" "polyExtrudeFace35.mp";
connectAttr "polyPlane36.out" "polyTweak40.ip";
connectAttr "polyExtrudeFace35.out" "transformGeometry35.ig";
connectAttr "polyTweak41.out" "polyExtrudeFace36.ip";
connectAttr "RoadStraight31Shape.wm" "polyExtrudeFace36.mp";
connectAttr "polyPlane37.out" "polyTweak41.ip";
connectAttr "polyExtrudeFace36.out" "transformGeometry36.ig";
connectAttr "polyTweak42.out" "polyExtrudeFace37.ip";
connectAttr "RoadStraight32Shape.wm" "polyExtrudeFace37.mp";
connectAttr "polyPlane38.out" "polyTweak42.ip";
connectAttr "polyExtrudeFace37.out" "transformGeometry37.ig";
connectAttr "polyTweak43.out" "polyExtrudeFace38.ip";
connectAttr "RoadStraight33Shape.wm" "polyExtrudeFace38.mp";
connectAttr "polyPlane39.out" "polyTweak43.ip";
connectAttr "polyExtrudeFace38.out" "transformGeometry38.ig";
connectAttr "polyTweak44.out" "polyExtrudeFace39.ip";
connectAttr "RoadStraight34Shape.wm" "polyExtrudeFace39.mp";
connectAttr "polyPlane40.out" "polyTweak44.ip";
connectAttr "polyExtrudeFace39.out" "transformGeometry39.ig";
connectAttr "polyTweak45.out" "polyExtrudeFace40.ip";
connectAttr "RoadStraight35Shape.wm" "polyExtrudeFace40.mp";
connectAttr "polyPlane41.out" "polyTweak45.ip";
connectAttr "polyExtrudeFace40.out" "transformGeometry40.ig";
connectAttr "polyTweak46.out" "polyExtrudeFace41.ip";
connectAttr "RoadStraight36Shape.wm" "polyExtrudeFace41.mp";
connectAttr "polyPlane42.out" "polyTweak46.ip";
connectAttr "polyExtrudeFace41.out" "transformGeometry41.ig";
connectAttr "polyTweak47.out" "polyExtrudeFace42.ip";
connectAttr "RoadStraight37Shape.wm" "polyExtrudeFace42.mp";
connectAttr "polyPlane43.out" "polyTweak47.ip";
connectAttr "polyExtrudeFace42.out" "transformGeometry42.ig";
connectAttr "polyTweak48.out" "polyExtrudeFace43.ip";
connectAttr "RoadStraight38Shape.wm" "polyExtrudeFace43.mp";
connectAttr "polyPlane44.out" "polyTweak48.ip";
connectAttr "polyExtrudeFace43.out" "transformGeometry43.ig";
connectAttr "polyTweak49.out" "polyExtrudeFace44.ip";
connectAttr "RoadStraight39Shape.wm" "polyExtrudeFace44.mp";
connectAttr "polyPlane45.out" "polyTweak49.ip";
connectAttr "polyExtrudeFace44.out" "transformGeometry44.ig";
connectAttr "polyTweak50.out" "polyExtrudeFace45.ip";
connectAttr "RoadStraight40Shape.wm" "polyExtrudeFace45.mp";
connectAttr "polyPlane46.out" "polyTweak50.ip";
connectAttr "polyExtrudeFace45.out" "transformGeometry45.ig";
connectAttr "polyTweak51.out" "polyExtrudeFace46.ip";
connectAttr "RoadStraight41Shape.wm" "polyExtrudeFace46.mp";
connectAttr "polyPlane47.out" "polyTweak51.ip";
connectAttr "polyExtrudeFace46.out" "transformGeometry46.ig";
connectAttr "polyTweak52.out" "polyExtrudeFace47.ip";
connectAttr "RoadStraight42Shape.wm" "polyExtrudeFace47.mp";
connectAttr "polyPlane48.out" "polyTweak52.ip";
connectAttr "polyExtrudeFace47.out" "transformGeometry47.ig";
connectAttr "polyTweak53.out" "polyExtrudeFace48.ip";
connectAttr "RoadStraight43Shape.wm" "polyExtrudeFace48.mp";
connectAttr "polyPlane49.out" "polyTweak53.ip";
connectAttr "polyExtrudeFace48.out" "transformGeometry48.ig";
connectAttr "polyTweak54.out" "polyExtrudeFace49.ip";
connectAttr "RoadStraight44Shape.wm" "polyExtrudeFace49.mp";
connectAttr "polyPlane50.out" "polyTweak54.ip";
connectAttr "polyExtrudeFace49.out" "transformGeometry49.ig";
connectAttr "polyTweak55.out" "polyExtrudeFace50.ip";
connectAttr "RoadStraight45Shape.wm" "polyExtrudeFace50.mp";
connectAttr "polyPlane51.out" "polyTweak55.ip";
connectAttr "polyExtrudeFace50.out" "transformGeometry50.ig";
connectAttr "polyTweak56.out" "polyExtrudeFace51.ip";
connectAttr "RoadStraight46Shape.wm" "polyExtrudeFace51.mp";
connectAttr "polyPlane52.out" "polyTweak56.ip";
connectAttr "polyExtrudeFace51.out" "transformGeometry51.ig";
connectAttr "polyTweak57.out" "polySplitRing6.ip";
connectAttr "RoadTJunction4Shape.wm" "polySplitRing6.mp";
connectAttr "polyPlane53.out" "polyTweak57.ip";
connectAttr "polyTweak58.out" "polyExtrudeFace52.ip";
connectAttr "RoadTJunction4Shape.wm" "polyExtrudeFace52.mp";
connectAttr "polySplitRing6.out" "polyTweak58.ip";
connectAttr "polyExtrudeFace52.out" "transformGeometry52.ig";
connectAttr "polyTweak59.out" "polySplitRing7.ip";
connectAttr "RoadTJunction5Shape.wm" "polySplitRing7.mp";
connectAttr "polyPlane54.out" "polyTweak59.ip";
connectAttr "polyTweak60.out" "polyExtrudeFace53.ip";
connectAttr "RoadTJunction5Shape.wm" "polyExtrudeFace53.mp";
connectAttr "polySplitRing7.out" "polyTweak60.ip";
connectAttr "polyExtrudeFace53.out" "transformGeometry53.ig";
connectAttr "polyTweak61.out" "polySplitRing8.ip";
connectAttr "RoadCrossJunction1Shape.wm" "polySplitRing8.mp";
connectAttr "polyPlane55.out" "polyTweak61.ip";
connectAttr "polyTweak62.out" "polyExtrudeFace54.ip";
connectAttr "RoadCrossJunction1Shape.wm" "polyExtrudeFace54.mp";
connectAttr "polySplitRing8.out" "polyTweak62.ip";
connectAttr "polyExtrudeFace54.out" "transformGeometry54.ig";
connectAttr "polyTweak63.out" "polySplitRing9.ip";
connectAttr "RoadTJunction6Shape.wm" "polySplitRing9.mp";
connectAttr "polyPlane56.out" "polyTweak63.ip";
connectAttr "polyTweak64.out" "polyExtrudeFace55.ip";
connectAttr "RoadTJunction6Shape.wm" "polyExtrudeFace55.mp";
connectAttr "polySplitRing9.out" "polyTweak64.ip";
connectAttr "polyExtrudeFace55.out" "transformGeometry55.ig";
connectAttr "polyTweak65.out" "polySplitRing10.ip";
connectAttr "RoadRtCurve3Shape.wm" "polySplitRing10.mp";
connectAttr "polyPlane57.out" "polyTweak65.ip";
connectAttr "polyTweak66.out" "polyExtrudeFace56.ip";
connectAttr "RoadRtCurve3Shape.wm" "polyExtrudeFace56.mp";
connectAttr "polySplitRing10.out" "polyTweak66.ip";
connectAttr "polyExtrudeFace56.out" "transformGeometry56.ig";
connectAttr "polyTweak67.out" "polySplitRing11.ip";
connectAttr "RoadRtCurve4Shape.wm" "polySplitRing11.mp";
connectAttr "polyPlane58.out" "polyTweak67.ip";
connectAttr "polyTweak68.out" "polyExtrudeFace57.ip";
connectAttr "RoadRtCurve4Shape.wm" "polyExtrudeFace57.mp";
connectAttr "polySplitRing11.out" "polyTweak68.ip";
connectAttr "polyExtrudeFace57.out" "transformGeometry57.ig";
connectAttr "polyTweak69.out" "polyExtrudeFace58.ip";
connectAttr "RoadStraight47Shape.wm" "polyExtrudeFace58.mp";
connectAttr "polyPlane59.out" "polyTweak69.ip";
connectAttr "polyExtrudeFace58.out" "transformGeometry58.ig";
connectAttr "polyTweak70.out" "polyExtrudeFace59.ip";
connectAttr "RoadStraight48Shape.wm" "polyExtrudeFace59.mp";
connectAttr "polyPlane60.out" "polyTweak70.ip";
connectAttr "polyExtrudeFace59.out" "transformGeometry59.ig";
connectAttr "polyTweak71.out" "polyExtrudeFace60.ip";
connectAttr "RoadStraight49Shape.wm" "polyExtrudeFace60.mp";
connectAttr "polyPlane61.out" "polyTweak71.ip";
connectAttr "polyExtrudeFace60.out" "transformGeometry60.ig";
connectAttr "polyTweak72.out" "polyExtrudeFace61.ip";
connectAttr "RoadStraight50Shape.wm" "polyExtrudeFace61.mp";
connectAttr "polyPlane62.out" "polyTweak72.ip";
connectAttr "polyExtrudeFace61.out" "transformGeometry61.ig";
connectAttr "polyTweak73.out" "polyExtrudeFace62.ip";
connectAttr "RoadStraight51Shape.wm" "polyExtrudeFace62.mp";
connectAttr "polyPlane63.out" "polyTweak73.ip";
connectAttr "polyExtrudeFace62.out" "transformGeometry62.ig";
connectAttr "polyTweak74.out" "polyExtrudeFace63.ip";
connectAttr "RoadStraight52Shape.wm" "polyExtrudeFace63.mp";
connectAttr "polyPlane64.out" "polyTweak74.ip";
connectAttr "polyExtrudeFace63.out" "transformGeometry63.ig";
connectAttr "polyTweak75.out" "polyExtrudeFace64.ip";
connectAttr "RoadStraight53Shape.wm" "polyExtrudeFace64.mp";
connectAttr "polyPlane65.out" "polyTweak75.ip";
connectAttr "polyExtrudeFace64.out" "transformGeometry64.ig";
connectAttr "polyTweak76.out" "polyExtrudeFace65.ip";
connectAttr "RoadStraight54Shape.wm" "polyExtrudeFace65.mp";
connectAttr "polyPlane66.out" "polyTweak76.ip";
connectAttr "polyExtrudeFace65.out" "transformGeometry65.ig";
connectAttr "polyTweak77.out" "polySplitRing12.ip";
connectAttr "RoadRtCurve5Shape.wm" "polySplitRing12.mp";
connectAttr "polyPlane67.out" "polyTweak77.ip";
connectAttr "polyTweak78.out" "polyExtrudeFace66.ip";
connectAttr "RoadRtCurve5Shape.wm" "polyExtrudeFace66.mp";
connectAttr "polySplitRing12.out" "polyTweak78.ip";
connectAttr "polyExtrudeFace66.out" "transformGeometry66.ig";
connectAttr "polyTweak79.out" "polySplitRing13.ip";
connectAttr "RoadTJunction7Shape.wm" "polySplitRing13.mp";
connectAttr "polyPlane68.out" "polyTweak79.ip";
connectAttr "polyTweak80.out" "polyExtrudeFace67.ip";
connectAttr "RoadTJunction7Shape.wm" "polyExtrudeFace67.mp";
connectAttr "polySplitRing13.out" "polyTweak80.ip";
connectAttr "polyExtrudeFace67.out" "transformGeometry67.ig";
connectAttr "polyCube9.out" "polyExtrudeFace68.ip";
connectAttr "Building1Shape.wm" "polyExtrudeFace68.mp";
connectAttr "polyExtrudeFace68.out" "polyExtrudeFace69.ip";
connectAttr "Building1Shape.wm" "polyExtrudeFace69.mp";
connectAttr "polyExtrudeFace69.out" "polyExtrudeFace70.ip";
connectAttr "Building1Shape.wm" "polyExtrudeFace70.mp";
connectAttr "polyTweak81.out" "polyExtrudeFace71.ip";
connectAttr "Building1Shape.wm" "polyExtrudeFace71.mp";
connectAttr "polyExtrudeFace70.out" "polyTweak81.ip";
connectAttr "polyExtrudeFace71.out" "polyExtrudeFace72.ip";
connectAttr "Building1Shape.wm" "polyExtrudeFace72.mp";
connectAttr "polyExtrudeFace72.out" "polyExtrudeFace73.ip";
connectAttr "Building1Shape.wm" "polyExtrudeFace73.mp";
connectAttr "polyExtrudeFace73.out" "polyExtrudeFace74.ip";
connectAttr "Building1Shape.wm" "polyExtrudeFace74.mp";
connectAttr "polyExtrudeFace74.out" "polyExtrudeFace75.ip";
connectAttr "Building1Shape.wm" "polyExtrudeFace75.mp";
connectAttr "polyExtrudeFace75.out" "polyExtrudeFace76.ip";
connectAttr "Building1Shape.wm" "polyExtrudeFace76.mp";
connectAttr "polyExtrudeFace76.out" "polyExtrudeFace77.ip";
connectAttr "Building1Shape.wm" "polyExtrudeFace77.mp";
connectAttr "polyExtrudeFace77.out" "polyExtrudeFace78.ip";
connectAttr "Building1Shape.wm" "polyExtrudeFace78.mp";
connectAttr "polyExtrudeFace78.out" "polyExtrudeFace79.ip";
connectAttr "Building1Shape.wm" "polyExtrudeFace79.mp";
connectAttr "polyCube10.out" "polyExtrudeFace80.ip";
connectAttr "Building2Shape.wm" "polyExtrudeFace80.mp";
connectAttr "polyTweak82.out" "polyExtrudeFace81.ip";
connectAttr "Building2Shape.wm" "polyExtrudeFace81.mp";
connectAttr "polyExtrudeFace80.out" "polyTweak82.ip";
connectAttr "polyExtrudeFace81.out" "polyExtrudeFace82.ip";
connectAttr "Building2Shape.wm" "polyExtrudeFace82.mp";
connectAttr "polyExtrudeFace82.out" "polyExtrudeFace83.ip";
connectAttr "Building2Shape.wm" "polyExtrudeFace83.mp";
connectAttr "polyExtrudeFace83.out" "polyExtrudeFace84.ip";
connectAttr "Building2Shape.wm" "polyExtrudeFace84.mp";
connectAttr "polyTweak83.out" "polyExtrudeFace85.ip";
connectAttr "Building2Shape.wm" "polyExtrudeFace85.mp";
connectAttr "polyExtrudeFace84.out" "polyTweak83.ip";
connectAttr "polyExtrudeFace85.out" "polyExtrudeFace86.ip";
connectAttr "Building2Shape.wm" "polyExtrudeFace86.mp";
connectAttr "polyExtrudeFace86.out" "polyExtrudeFace87.ip";
connectAttr "Building2Shape.wm" "polyExtrudeFace87.mp";
connectAttr "polyExtrudeFace87.out" "polyExtrudeFace88.ip";
connectAttr "Building2Shape.wm" "polyExtrudeFace88.mp";
connectAttr "polyTweak84.out" "polyExtrudeFace89.ip";
connectAttr "Building2Shape.wm" "polyExtrudeFace89.mp";
connectAttr "polyExtrudeFace88.out" "polyTweak84.ip";
connectAttr "polyCube11.out" "polyExtrudeFace90.ip";
connectAttr "Building3Shape.wm" "polyExtrudeFace90.mp";
connectAttr "polyTweak85.out" "polyExtrudeFace91.ip";
connectAttr "Building3Shape.wm" "polyExtrudeFace91.mp";
connectAttr "polyExtrudeFace90.out" "polyTweak85.ip";
connectAttr "polyExtrudeFace91.out" "polyExtrudeFace92.ip";
connectAttr "Building3Shape.wm" "polyExtrudeFace92.mp";
connectAttr "polyExtrudeFace92.out" "polyExtrudeFace93.ip";
connectAttr "Building3Shape.wm" "polyExtrudeFace93.mp";
connectAttr "polyExtrudeFace93.out" "polyExtrudeFace94.ip";
connectAttr "Building3Shape.wm" "polyExtrudeFace94.mp";
connectAttr "polyTweak86.out" "polyExtrudeFace95.ip";
connectAttr "Building3Shape.wm" "polyExtrudeFace95.mp";
connectAttr "polyExtrudeFace94.out" "polyTweak86.ip";
connectAttr "polyExtrudeFace95.out" "polyExtrudeFace96.ip";
connectAttr "Building3Shape.wm" "polyExtrudeFace96.mp";
connectAttr "polyExtrudeFace96.out" "polyExtrudeFace97.ip";
connectAttr "Building3Shape.wm" "polyExtrudeFace97.mp";
connectAttr "polyExtrudeFace97.out" "polyExtrudeFace98.ip";
connectAttr "Building3Shape.wm" "polyExtrudeFace98.mp";
connectAttr "polyTweak87.out" "polyExtrudeFace99.ip";
connectAttr "Building3Shape.wm" "polyExtrudeFace99.mp";
connectAttr "polyExtrudeFace98.out" "polyTweak87.ip";
connectAttr "polyCube12.out" "polyExtrudeFace100.ip";
connectAttr "Building4Shape.wm" "polyExtrudeFace100.mp";
connectAttr "polyTweak88.out" "polyExtrudeFace101.ip";
connectAttr "Building4Shape.wm" "polyExtrudeFace101.mp";
connectAttr "polyExtrudeFace100.out" "polyTweak88.ip";
connectAttr "polyExtrudeFace101.out" "polyExtrudeFace102.ip";
connectAttr "Building4Shape.wm" "polyExtrudeFace102.mp";
connectAttr "polyExtrudeFace102.out" "polyExtrudeFace103.ip";
connectAttr "Building4Shape.wm" "polyExtrudeFace103.mp";
connectAttr "polyExtrudeFace103.out" "polyExtrudeFace104.ip";
connectAttr "Building4Shape.wm" "polyExtrudeFace104.mp";
connectAttr "polyTweak89.out" "polyExtrudeFace105.ip";
connectAttr "Building4Shape.wm" "polyExtrudeFace105.mp";
connectAttr "polyExtrudeFace104.out" "polyTweak89.ip";
connectAttr "polyExtrudeFace105.out" "polyExtrudeFace106.ip";
connectAttr "Building4Shape.wm" "polyExtrudeFace106.mp";
connectAttr "polyExtrudeFace106.out" "polyExtrudeFace107.ip";
connectAttr "Building4Shape.wm" "polyExtrudeFace107.mp";
connectAttr "polyExtrudeFace107.out" "polyExtrudeFace108.ip";
connectAttr "Building4Shape.wm" "polyExtrudeFace108.mp";
connectAttr "polyTweak90.out" "polyExtrudeFace109.ip";
connectAttr "Building4Shape.wm" "polyExtrudeFace109.mp";
connectAttr "polyExtrudeFace108.out" "polyTweak90.ip";
connectAttr "polyCube13.out" "polyExtrudeFace110.ip";
connectAttr "Building5Shape.wm" "polyExtrudeFace110.mp";
connectAttr "polyTweak91.out" "polyExtrudeFace111.ip";
connectAttr "Building5Shape.wm" "polyExtrudeFace111.mp";
connectAttr "polyExtrudeFace110.out" "polyTweak91.ip";
connectAttr "polyExtrudeFace111.out" "polyExtrudeFace112.ip";
connectAttr "Building5Shape.wm" "polyExtrudeFace112.mp";
connectAttr "polyExtrudeFace112.out" "polyExtrudeFace113.ip";
connectAttr "Building5Shape.wm" "polyExtrudeFace113.mp";
connectAttr "polyExtrudeFace113.out" "polyExtrudeFace114.ip";
connectAttr "Building5Shape.wm" "polyExtrudeFace114.mp";
connectAttr "polyTweak92.out" "polyExtrudeFace115.ip";
connectAttr "Building5Shape.wm" "polyExtrudeFace115.mp";
connectAttr "polyExtrudeFace114.out" "polyTweak92.ip";
connectAttr "polyExtrudeFace115.out" "polyExtrudeFace116.ip";
connectAttr "Building5Shape.wm" "polyExtrudeFace116.mp";
connectAttr "polyExtrudeFace116.out" "polyExtrudeFace117.ip";
connectAttr "Building5Shape.wm" "polyExtrudeFace117.mp";
connectAttr "polyExtrudeFace117.out" "polyExtrudeFace118.ip";
connectAttr "Building5Shape.wm" "polyExtrudeFace118.mp";
connectAttr "polyTweak93.out" "polyExtrudeFace119.ip";
connectAttr "Building5Shape.wm" "polyExtrudeFace119.mp";
connectAttr "polyExtrudeFace118.out" "polyTweak93.ip";
connectAttr "polyCube14.out" "polySplitRing14.ip";
connectAttr "Building6Shape.wm" "polySplitRing14.mp";
connectAttr "polyTweak94.out" "polySplitRing15.ip";
connectAttr "Building6Shape.wm" "polySplitRing15.mp";
connectAttr "polySplitRing14.out" "polyTweak94.ip";
connectAttr "polyTweak95.out" "polyExtrudeFace120.ip";
connectAttr "Building6Shape.wm" "polyExtrudeFace120.mp";
connectAttr "polySplitRing15.out" "polyTweak95.ip";
connectAttr "polyExtrudeFace120.out" "polyExtrudeFace121.ip";
connectAttr "Building6Shape.wm" "polyExtrudeFace121.mp";
connectAttr "polyExtrudeFace121.out" "polyExtrudeFace122.ip";
connectAttr "Building6Shape.wm" "polyExtrudeFace122.mp";
connectAttr "polyExtrudeFace122.out" "polyExtrudeFace123.ip";
connectAttr "Building6Shape.wm" "polyExtrudeFace123.mp";
connectAttr "polyCube15.out" "polySplitRing16.ip";
connectAttr "Building7Shape.wm" "polySplitRing16.mp";
connectAttr "polyTweak96.out" "polySplitRing17.ip";
connectAttr "Building7Shape.wm" "polySplitRing17.mp";
connectAttr "polySplitRing16.out" "polyTweak96.ip";
connectAttr "polyTweak97.out" "polyExtrudeFace124.ip";
connectAttr "Building7Shape.wm" "polyExtrudeFace124.mp";
connectAttr "polySplitRing17.out" "polyTweak97.ip";
connectAttr "polyExtrudeFace124.out" "polyExtrudeFace125.ip";
connectAttr "Building7Shape.wm" "polyExtrudeFace125.mp";
connectAttr "polyExtrudeFace125.out" "polyExtrudeFace126.ip";
connectAttr "Building7Shape.wm" "polyExtrudeFace126.mp";
connectAttr "polyExtrudeFace126.out" "polyExtrudeFace127.ip";
connectAttr "Building7Shape.wm" "polyExtrudeFace127.mp";
connectAttr "polyCube16.out" "polySplitRing18.ip";
connectAttr "Building8Shape.wm" "polySplitRing18.mp";
connectAttr "polyTweak98.out" "polySplitRing19.ip";
connectAttr "Building8Shape.wm" "polySplitRing19.mp";
connectAttr "polySplitRing18.out" "polyTweak98.ip";
connectAttr "polyTweak99.out" "polyExtrudeFace128.ip";
connectAttr "Building8Shape.wm" "polyExtrudeFace128.mp";
connectAttr "polySplitRing19.out" "polyTweak99.ip";
connectAttr "polyExtrudeFace128.out" "polyExtrudeFace129.ip";
connectAttr "Building8Shape.wm" "polyExtrudeFace129.mp";
connectAttr "polyExtrudeFace129.out" "polyExtrudeFace130.ip";
connectAttr "Building8Shape.wm" "polyExtrudeFace130.mp";
connectAttr "polyExtrudeFace130.out" "polyExtrudeFace131.ip";
connectAttr "Building8Shape.wm" "polyExtrudeFace131.mp";
connectAttr "polyCube17.out" "polyExtrudeFace132.ip";
connectAttr "Building9Shape.wm" "polyExtrudeFace132.mp";
connectAttr "polyExtrudeFace132.out" "polyExtrudeFace133.ip";
connectAttr "Building9Shape.wm" "polyExtrudeFace133.mp";
connectAttr "polyExtrudeFace133.out" "polyExtrudeFace134.ip";
connectAttr "Building9Shape.wm" "polyExtrudeFace134.mp";
connectAttr "polyTweak100.out" "polyExtrudeFace135.ip";
connectAttr "Building9Shape.wm" "polyExtrudeFace135.mp";
connectAttr "polyExtrudeFace134.out" "polyTweak100.ip";
connectAttr "polyExtrudeFace135.out" "polyExtrudeFace136.ip";
connectAttr "Building9Shape.wm" "polyExtrudeFace136.mp";
connectAttr "polyExtrudeFace136.out" "polyExtrudeFace137.ip";
connectAttr "Building9Shape.wm" "polyExtrudeFace137.mp";
connectAttr "polyExtrudeFace137.out" "polyExtrudeFace138.ip";
connectAttr "Building9Shape.wm" "polyExtrudeFace138.mp";
connectAttr "polyExtrudeFace138.out" "polyExtrudeFace139.ip";
connectAttr "Building9Shape.wm" "polyExtrudeFace139.mp";
connectAttr "polyExtrudeFace139.out" "polyExtrudeFace140.ip";
connectAttr "Building9Shape.wm" "polyExtrudeFace140.mp";
connectAttr "polyExtrudeFace140.out" "polyExtrudeFace141.ip";
connectAttr "Building9Shape.wm" "polyExtrudeFace141.mp";
connectAttr "polyExtrudeFace141.out" "polyExtrudeFace142.ip";
connectAttr "Building9Shape.wm" "polyExtrudeFace142.mp";
connectAttr "polyExtrudeFace142.out" "polyExtrudeFace143.ip";
connectAttr "Building9Shape.wm" "polyExtrudeFace143.mp";
connectAttr "polyCube18.out" "polyExtrudeFace144.ip";
connectAttr "Building10Shape.wm" "polyExtrudeFace144.mp";
connectAttr "polyTweak101.out" "polyExtrudeFace145.ip";
connectAttr "Building10Shape.wm" "polyExtrudeFace145.mp";
connectAttr "polyExtrudeFace144.out" "polyTweak101.ip";
connectAttr "polyExtrudeFace145.out" "polyExtrudeFace146.ip";
connectAttr "Building10Shape.wm" "polyExtrudeFace146.mp";
connectAttr "polyExtrudeFace146.out" "polyExtrudeFace147.ip";
connectAttr "Building10Shape.wm" "polyExtrudeFace147.mp";
connectAttr "polyExtrudeFace147.out" "polyExtrudeFace148.ip";
connectAttr "Building10Shape.wm" "polyExtrudeFace148.mp";
connectAttr "polyTweak102.out" "polyExtrudeFace149.ip";
connectAttr "Building10Shape.wm" "polyExtrudeFace149.mp";
connectAttr "polyExtrudeFace148.out" "polyTweak102.ip";
connectAttr "polyExtrudeFace149.out" "polyExtrudeFace150.ip";
connectAttr "Building10Shape.wm" "polyExtrudeFace150.mp";
connectAttr "polyExtrudeFace150.out" "polyExtrudeFace151.ip";
connectAttr "Building10Shape.wm" "polyExtrudeFace151.mp";
connectAttr "polyExtrudeFace151.out" "polyExtrudeFace152.ip";
connectAttr "Building10Shape.wm" "polyExtrudeFace152.mp";
connectAttr "polyTweak103.out" "polyExtrudeFace153.ip";
connectAttr "Building10Shape.wm" "polyExtrudeFace153.mp";
connectAttr "polyExtrudeFace152.out" "polyTweak103.ip";
connectAttr "polyCube19.out" "polyExtrudeFace154.ip";
connectAttr "Building11Shape.wm" "polyExtrudeFace154.mp";
connectAttr "polyTweak104.out" "polyExtrudeFace155.ip";
connectAttr "Building11Shape.wm" "polyExtrudeFace155.mp";
connectAttr "polyExtrudeFace154.out" "polyTweak104.ip";
connectAttr "polyExtrudeFace155.out" "polyExtrudeFace156.ip";
connectAttr "Building11Shape.wm" "polyExtrudeFace156.mp";
connectAttr "polyExtrudeFace156.out" "polyExtrudeFace157.ip";
connectAttr "Building11Shape.wm" "polyExtrudeFace157.mp";
connectAttr "polyExtrudeFace157.out" "polyExtrudeFace158.ip";
connectAttr "Building11Shape.wm" "polyExtrudeFace158.mp";
connectAttr "polyTweak105.out" "polyExtrudeFace159.ip";
connectAttr "Building11Shape.wm" "polyExtrudeFace159.mp";
connectAttr "polyExtrudeFace158.out" "polyTweak105.ip";
connectAttr "polyExtrudeFace159.out" "polyExtrudeFace160.ip";
connectAttr "Building11Shape.wm" "polyExtrudeFace160.mp";
connectAttr "polyExtrudeFace160.out" "polyExtrudeFace161.ip";
connectAttr "Building11Shape.wm" "polyExtrudeFace161.mp";
connectAttr "polyExtrudeFace161.out" "polyExtrudeFace162.ip";
connectAttr "Building11Shape.wm" "polyExtrudeFace162.mp";
connectAttr "polyTweak106.out" "polyExtrudeFace163.ip";
connectAttr "Building11Shape.wm" "polyExtrudeFace163.mp";
connectAttr "polyExtrudeFace162.out" "polyTweak106.ip";
connectAttr "polyCube20.out" "polySplitRing20.ip";
connectAttr "Building12Shape.wm" "polySplitRing20.mp";
connectAttr "polyTweak107.out" "polySplitRing21.ip";
connectAttr "Building12Shape.wm" "polySplitRing21.mp";
connectAttr "polySplitRing20.out" "polyTweak107.ip";
connectAttr "polyTweak108.out" "polyExtrudeFace164.ip";
connectAttr "Building12Shape.wm" "polyExtrudeFace164.mp";
connectAttr "polySplitRing21.out" "polyTweak108.ip";
connectAttr "polyExtrudeFace164.out" "polyExtrudeFace165.ip";
connectAttr "Building12Shape.wm" "polyExtrudeFace165.mp";
connectAttr "polyExtrudeFace165.out" "polyExtrudeFace166.ip";
connectAttr "Building12Shape.wm" "polyExtrudeFace166.mp";
connectAttr "polyExtrudeFace166.out" "polyExtrudeFace167.ip";
connectAttr "Building12Shape.wm" "polyExtrudeFace167.mp";
connectAttr "polyExtrudeFace167.out" "polyExtrudeFace168.ip";
connectAttr "Building12Shape.wm" "polyExtrudeFace168.mp";
connectAttr "polyExtrudeFace168.out" "polyExtrudeFace169.ip";
connectAttr "Building12Shape.wm" "polyExtrudeFace169.mp";
connectAttr "polyExtrudeFace169.out" "polyExtrudeFace170.ip";
connectAttr "Building12Shape.wm" "polyExtrudeFace170.mp";
connectAttr "polyExtrudeFace170.out" "polyExtrudeFace171.ip";
connectAttr "Building12Shape.wm" "polyExtrudeFace171.mp";
connectAttr "polyCube21.out" "polySplitRing22.ip";
connectAttr "Building13Shape.wm" "polySplitRing22.mp";
connectAttr "polyTweak109.out" "polySplitRing23.ip";
connectAttr "Building13Shape.wm" "polySplitRing23.mp";
connectAttr "polySplitRing22.out" "polyTweak109.ip";
connectAttr "polyTweak110.out" "polyExtrudeFace172.ip";
connectAttr "Building13Shape.wm" "polyExtrudeFace172.mp";
connectAttr "polySplitRing23.out" "polyTweak110.ip";
connectAttr "polyExtrudeFace172.out" "polyExtrudeFace173.ip";
connectAttr "Building13Shape.wm" "polyExtrudeFace173.mp";
connectAttr "polyExtrudeFace173.out" "polyExtrudeFace174.ip";
connectAttr "Building13Shape.wm" "polyExtrudeFace174.mp";
connectAttr "polyExtrudeFace174.out" "polyExtrudeFace175.ip";
connectAttr "Building13Shape.wm" "polyExtrudeFace175.mp";
connectAttr "polyExtrudeFace175.out" "polyExtrudeFace176.ip";
connectAttr "Building13Shape.wm" "polyExtrudeFace176.mp";
connectAttr "polyExtrudeFace176.out" "polyExtrudeFace177.ip";
connectAttr "Building13Shape.wm" "polyExtrudeFace177.mp";
connectAttr "polyExtrudeFace177.out" "polyExtrudeFace178.ip";
connectAttr "Building13Shape.wm" "polyExtrudeFace178.mp";
connectAttr "polyExtrudeFace178.out" "polyExtrudeFace179.ip";
connectAttr "Building13Shape.wm" "polyExtrudeFace179.mp";
connectAttr "polyCube22.out" "polySplitRing24.ip";
connectAttr "Building14Shape.wm" "polySplitRing24.mp";
connectAttr "polyTweak111.out" "polySplitRing25.ip";
connectAttr "Building14Shape.wm" "polySplitRing25.mp";
connectAttr "polySplitRing24.out" "polyTweak111.ip";
connectAttr "polyTweak112.out" "polyExtrudeFace180.ip";
connectAttr "Building14Shape.wm" "polyExtrudeFace180.mp";
connectAttr "polySplitRing25.out" "polyTweak112.ip";
connectAttr "polyExtrudeFace180.out" "polyExtrudeFace181.ip";
connectAttr "Building14Shape.wm" "polyExtrudeFace181.mp";
connectAttr "polyExtrudeFace181.out" "polyExtrudeFace182.ip";
connectAttr "Building14Shape.wm" "polyExtrudeFace182.mp";
connectAttr "polyExtrudeFace182.out" "polyExtrudeFace183.ip";
connectAttr "Building14Shape.wm" "polyExtrudeFace183.mp";
connectAttr "polyCube23.out" "polyExtrudeFace184.ip";
connectAttr "Building15Shape.wm" "polyExtrudeFace184.mp";
connectAttr "polyTweak113.out" "polyExtrudeFace185.ip";
connectAttr "Building15Shape.wm" "polyExtrudeFace185.mp";
connectAttr "polyExtrudeFace184.out" "polyTweak113.ip";
connectAttr "polyExtrudeFace185.out" "polyExtrudeFace186.ip";
connectAttr "Building15Shape.wm" "polyExtrudeFace186.mp";
connectAttr "polyExtrudeFace186.out" "polyExtrudeFace187.ip";
connectAttr "Building15Shape.wm" "polyExtrudeFace187.mp";
connectAttr "polyExtrudeFace187.out" "polyExtrudeFace188.ip";
connectAttr "Building15Shape.wm" "polyExtrudeFace188.mp";
connectAttr "polyTweak114.out" "polyExtrudeFace189.ip";
connectAttr "Building15Shape.wm" "polyExtrudeFace189.mp";
connectAttr "polyExtrudeFace188.out" "polyTweak114.ip";
connectAttr "polyExtrudeFace189.out" "polyExtrudeFace190.ip";
connectAttr "Building15Shape.wm" "polyExtrudeFace190.mp";
connectAttr "polyExtrudeFace190.out" "polyExtrudeFace191.ip";
connectAttr "Building15Shape.wm" "polyExtrudeFace191.mp";
connectAttr "polyExtrudeFace191.out" "polyExtrudeFace192.ip";
connectAttr "Building15Shape.wm" "polyExtrudeFace192.mp";
connectAttr "polyTweak115.out" "polyExtrudeFace193.ip";
connectAttr "Building15Shape.wm" "polyExtrudeFace193.mp";
connectAttr "polyExtrudeFace192.out" "polyTweak115.ip";
connectAttr "polyCube24.out" "polySplitRing26.ip";
connectAttr "Building16Shape.wm" "polySplitRing26.mp";
connectAttr "polyTweak116.out" "polySplitRing27.ip";
connectAttr "Building16Shape.wm" "polySplitRing27.mp";
connectAttr "polySplitRing26.out" "polyTweak116.ip";
connectAttr "polyTweak117.out" "polyExtrudeFace194.ip";
connectAttr "Building16Shape.wm" "polyExtrudeFace194.mp";
connectAttr "polySplitRing27.out" "polyTweak117.ip";
connectAttr "polyExtrudeFace194.out" "polyExtrudeFace195.ip";
connectAttr "Building16Shape.wm" "polyExtrudeFace195.mp";
connectAttr "polyExtrudeFace195.out" "polyExtrudeFace196.ip";
connectAttr "Building16Shape.wm" "polyExtrudeFace196.mp";
connectAttr "polyExtrudeFace196.out" "polyExtrudeFace197.ip";
connectAttr "Building16Shape.wm" "polyExtrudeFace197.mp";
connectAttr "polyExtrudeFace197.out" "polyExtrudeFace198.ip";
connectAttr "Building16Shape.wm" "polyExtrudeFace198.mp";
connectAttr "polyExtrudeFace198.out" "polyExtrudeFace199.ip";
connectAttr "Building16Shape.wm" "polyExtrudeFace199.mp";
connectAttr "polyExtrudeFace199.out" "polyExtrudeFace200.ip";
connectAttr "Building16Shape.wm" "polyExtrudeFace200.mp";
connectAttr "polyExtrudeFace200.out" "polyExtrudeFace201.ip";
connectAttr "Building16Shape.wm" "polyExtrudeFace201.mp";
connectAttr "polyCube25.out" "polyExtrudeFace202.ip";
connectAttr "Building17Shape.wm" "polyExtrudeFace202.mp";
connectAttr "polyTweak118.out" "polyExtrudeFace203.ip";
connectAttr "Building17Shape.wm" "polyExtrudeFace203.mp";
connectAttr "polyExtrudeFace202.out" "polyTweak118.ip";
connectAttr "polyExtrudeFace203.out" "polyExtrudeFace204.ip";
connectAttr "Building17Shape.wm" "polyExtrudeFace204.mp";
connectAttr "polyExtrudeFace204.out" "polyExtrudeFace205.ip";
connectAttr "Building17Shape.wm" "polyExtrudeFace205.mp";
connectAttr "polyExtrudeFace205.out" "polyExtrudeFace206.ip";
connectAttr "Building17Shape.wm" "polyExtrudeFace206.mp";
connectAttr "polyTweak119.out" "polyExtrudeFace207.ip";
connectAttr "Building17Shape.wm" "polyExtrudeFace207.mp";
connectAttr "polyExtrudeFace206.out" "polyTweak119.ip";
connectAttr "polyExtrudeFace207.out" "polyExtrudeFace208.ip";
connectAttr "Building17Shape.wm" "polyExtrudeFace208.mp";
connectAttr "polyExtrudeFace208.out" "polyExtrudeFace209.ip";
connectAttr "Building17Shape.wm" "polyExtrudeFace209.mp";
connectAttr "polyExtrudeFace209.out" "polyExtrudeFace210.ip";
connectAttr "Building17Shape.wm" "polyExtrudeFace210.mp";
connectAttr "polyTweak120.out" "polyExtrudeFace211.ip";
connectAttr "Building17Shape.wm" "polyExtrudeFace211.mp";
connectAttr "polyExtrudeFace210.out" "polyTweak120.ip";
connectAttr "polyCube26.out" "polyExtrudeFace212.ip";
connectAttr "Building18Shape.wm" "polyExtrudeFace212.mp";
connectAttr "polyTweak121.out" "polyExtrudeFace213.ip";
connectAttr "Building18Shape.wm" "polyExtrudeFace213.mp";
connectAttr "polyExtrudeFace212.out" "polyTweak121.ip";
connectAttr "polyExtrudeFace213.out" "polyExtrudeFace214.ip";
connectAttr "Building18Shape.wm" "polyExtrudeFace214.mp";
connectAttr "polyExtrudeFace214.out" "polyExtrudeFace215.ip";
connectAttr "Building18Shape.wm" "polyExtrudeFace215.mp";
connectAttr "polyExtrudeFace215.out" "polyExtrudeFace216.ip";
connectAttr "Building18Shape.wm" "polyExtrudeFace216.mp";
connectAttr "polyTweak122.out" "polyExtrudeFace217.ip";
connectAttr "Building18Shape.wm" "polyExtrudeFace217.mp";
connectAttr "polyExtrudeFace216.out" "polyTweak122.ip";
connectAttr "polyExtrudeFace217.out" "polyExtrudeFace218.ip";
connectAttr "Building18Shape.wm" "polyExtrudeFace218.mp";
connectAttr "polyExtrudeFace218.out" "polyExtrudeFace219.ip";
connectAttr "Building18Shape.wm" "polyExtrudeFace219.mp";
connectAttr "polyExtrudeFace219.out" "polyExtrudeFace220.ip";
connectAttr "Building18Shape.wm" "polyExtrudeFace220.mp";
connectAttr "polyTweak123.out" "polyExtrudeFace221.ip";
connectAttr "Building18Shape.wm" "polyExtrudeFace221.mp";
connectAttr "polyExtrudeFace220.out" "polyTweak123.ip";
connectAttr "polyCube27.out" "polyExtrudeFace222.ip";
connectAttr "Building19Shape.wm" "polyExtrudeFace222.mp";
connectAttr "polyTweak124.out" "polyExtrudeFace223.ip";
connectAttr "Building19Shape.wm" "polyExtrudeFace223.mp";
connectAttr "polyExtrudeFace222.out" "polyTweak124.ip";
connectAttr "polyExtrudeFace223.out" "polyExtrudeFace224.ip";
connectAttr "Building19Shape.wm" "polyExtrudeFace224.mp";
connectAttr "polyExtrudeFace224.out" "polyExtrudeFace225.ip";
connectAttr "Building19Shape.wm" "polyExtrudeFace225.mp";
connectAttr "polyExtrudeFace225.out" "polyExtrudeFace226.ip";
connectAttr "Building19Shape.wm" "polyExtrudeFace226.mp";
connectAttr "polyTweak125.out" "polyExtrudeFace227.ip";
connectAttr "Building19Shape.wm" "polyExtrudeFace227.mp";
connectAttr "polyExtrudeFace226.out" "polyTweak125.ip";
connectAttr "polyExtrudeFace227.out" "polyExtrudeFace228.ip";
connectAttr "Building19Shape.wm" "polyExtrudeFace228.mp";
connectAttr "polyExtrudeFace228.out" "polyExtrudeFace229.ip";
connectAttr "Building19Shape.wm" "polyExtrudeFace229.mp";
connectAttr "polyExtrudeFace229.out" "polyExtrudeFace230.ip";
connectAttr "Building19Shape.wm" "polyExtrudeFace230.mp";
connectAttr "polyTweak126.out" "polyExtrudeFace231.ip";
connectAttr "Building19Shape.wm" "polyExtrudeFace231.mp";
connectAttr "polyExtrudeFace230.out" "polyTweak126.ip";
connectAttr "polyCube28.out" "polyExtrudeFace232.ip";
connectAttr "Building20Shape.wm" "polyExtrudeFace232.mp";
connectAttr "polyTweak127.out" "polyExtrudeFace233.ip";
connectAttr "Building20Shape.wm" "polyExtrudeFace233.mp";
connectAttr "polyExtrudeFace232.out" "polyTweak127.ip";
connectAttr "polyExtrudeFace233.out" "polyExtrudeFace234.ip";
connectAttr "Building20Shape.wm" "polyExtrudeFace234.mp";
connectAttr "polyExtrudeFace234.out" "polyExtrudeFace235.ip";
connectAttr "Building20Shape.wm" "polyExtrudeFace235.mp";
connectAttr "polyExtrudeFace235.out" "polyExtrudeFace236.ip";
connectAttr "Building20Shape.wm" "polyExtrudeFace236.mp";
connectAttr "polyTweak128.out" "polyExtrudeFace237.ip";
connectAttr "Building20Shape.wm" "polyExtrudeFace237.mp";
connectAttr "polyExtrudeFace236.out" "polyTweak128.ip";
connectAttr "polyExtrudeFace237.out" "polyExtrudeFace238.ip";
connectAttr "Building20Shape.wm" "polyExtrudeFace238.mp";
connectAttr "polyExtrudeFace238.out" "polyExtrudeFace239.ip";
connectAttr "Building20Shape.wm" "polyExtrudeFace239.mp";
connectAttr "polyExtrudeFace239.out" "polyExtrudeFace240.ip";
connectAttr "Building20Shape.wm" "polyExtrudeFace240.mp";
connectAttr "polyTweak129.out" "polyExtrudeFace241.ip";
connectAttr "Building20Shape.wm" "polyExtrudeFace241.mp";
connectAttr "polyExtrudeFace240.out" "polyTweak129.ip";
connectAttr "polyCube29.out" "polySplitRing28.ip";
connectAttr "Building21Shape.wm" "polySplitRing28.mp";
connectAttr "polyTweak130.out" "polySplitRing29.ip";
connectAttr "Building21Shape.wm" "polySplitRing29.mp";
connectAttr "polySplitRing28.out" "polyTweak130.ip";
connectAttr "polyTweak131.out" "polyExtrudeFace242.ip";
connectAttr "Building21Shape.wm" "polyExtrudeFace242.mp";
connectAttr "polySplitRing29.out" "polyTweak131.ip";
connectAttr "polyExtrudeFace242.out" "polyExtrudeFace243.ip";
connectAttr "Building21Shape.wm" "polyExtrudeFace243.mp";
connectAttr "polyExtrudeFace243.out" "polyExtrudeFace244.ip";
connectAttr "Building21Shape.wm" "polyExtrudeFace244.mp";
connectAttr "polyExtrudeFace244.out" "polyExtrudeFace245.ip";
connectAttr "Building21Shape.wm" "polyExtrudeFace245.mp";
connectAttr "polyCube30.out" "polyExtrudeFace246.ip";
connectAttr "Building22Shape.wm" "polyExtrudeFace246.mp";
connectAttr "polyTweak132.out" "polyExtrudeFace247.ip";
connectAttr "Building22Shape.wm" "polyExtrudeFace247.mp";
connectAttr "polyExtrudeFace246.out" "polyTweak132.ip";
connectAttr "polyExtrudeFace247.out" "polyExtrudeFace248.ip";
connectAttr "Building22Shape.wm" "polyExtrudeFace248.mp";
connectAttr "polyExtrudeFace248.out" "polyExtrudeFace249.ip";
connectAttr "Building22Shape.wm" "polyExtrudeFace249.mp";
connectAttr "polyExtrudeFace249.out" "polyExtrudeFace250.ip";
connectAttr "Building22Shape.wm" "polyExtrudeFace250.mp";
connectAttr "polyTweak133.out" "polyExtrudeFace251.ip";
connectAttr "Building22Shape.wm" "polyExtrudeFace251.mp";
connectAttr "polyExtrudeFace250.out" "polyTweak133.ip";
connectAttr "polyExtrudeFace251.out" "polyExtrudeFace252.ip";
connectAttr "Building22Shape.wm" "polyExtrudeFace252.mp";
connectAttr "polyExtrudeFace252.out" "polyExtrudeFace253.ip";
connectAttr "Building22Shape.wm" "polyExtrudeFace253.mp";
connectAttr "polyExtrudeFace253.out" "polyExtrudeFace254.ip";
connectAttr "Building22Shape.wm" "polyExtrudeFace254.mp";
connectAttr "polyTweak134.out" "polyExtrudeFace255.ip";
connectAttr "Building22Shape.wm" "polyExtrudeFace255.mp";
connectAttr "polyExtrudeFace254.out" "polyTweak134.ip";
connectAttr "polyCube31.out" "polyExtrudeFace256.ip";
connectAttr "Building23Shape.wm" "polyExtrudeFace256.mp";
connectAttr "polyTweak135.out" "polyExtrudeFace257.ip";
connectAttr "Building23Shape.wm" "polyExtrudeFace257.mp";
connectAttr "polyExtrudeFace256.out" "polyTweak135.ip";
connectAttr "polyExtrudeFace257.out" "polyExtrudeFace258.ip";
connectAttr "Building23Shape.wm" "polyExtrudeFace258.mp";
connectAttr "polyExtrudeFace258.out" "polyExtrudeFace259.ip";
connectAttr "Building23Shape.wm" "polyExtrudeFace259.mp";
connectAttr "polyExtrudeFace259.out" "polyExtrudeFace260.ip";
connectAttr "Building23Shape.wm" "polyExtrudeFace260.mp";
connectAttr "polyTweak136.out" "polyExtrudeFace261.ip";
connectAttr "Building23Shape.wm" "polyExtrudeFace261.mp";
connectAttr "polyExtrudeFace260.out" "polyTweak136.ip";
connectAttr "polyExtrudeFace261.out" "polyExtrudeFace262.ip";
connectAttr "Building23Shape.wm" "polyExtrudeFace262.mp";
connectAttr "polyExtrudeFace262.out" "polyExtrudeFace263.ip";
connectAttr "Building23Shape.wm" "polyExtrudeFace263.mp";
connectAttr "polyExtrudeFace263.out" "polyExtrudeFace264.ip";
connectAttr "Building23Shape.wm" "polyExtrudeFace264.mp";
connectAttr "polyTweak137.out" "polyExtrudeFace265.ip";
connectAttr "Building23Shape.wm" "polyExtrudeFace265.mp";
connectAttr "polyExtrudeFace264.out" "polyTweak137.ip";
connectAttr "polyCube32.out" "polyExtrudeFace266.ip";
connectAttr "Building24Shape.wm" "polyExtrudeFace266.mp";
connectAttr "polyExtrudeFace266.out" "polyExtrudeFace267.ip";
connectAttr "Building24Shape.wm" "polyExtrudeFace267.mp";
connectAttr "polyExtrudeFace267.out" "polyExtrudeFace268.ip";
connectAttr "Building24Shape.wm" "polyExtrudeFace268.mp";
connectAttr "polyTweak138.out" "polyExtrudeFace269.ip";
connectAttr "Building24Shape.wm" "polyExtrudeFace269.mp";
connectAttr "polyExtrudeFace268.out" "polyTweak138.ip";
connectAttr "polyExtrudeFace269.out" "polyExtrudeFace270.ip";
connectAttr "Building24Shape.wm" "polyExtrudeFace270.mp";
connectAttr "polyExtrudeFace270.out" "polyExtrudeFace271.ip";
connectAttr "Building24Shape.wm" "polyExtrudeFace271.mp";
connectAttr "polyExtrudeFace271.out" "polyExtrudeFace272.ip";
connectAttr "Building24Shape.wm" "polyExtrudeFace272.mp";
connectAttr "polyExtrudeFace272.out" "polyExtrudeFace273.ip";
connectAttr "Building24Shape.wm" "polyExtrudeFace273.mp";
connectAttr "polyExtrudeFace273.out" "polyExtrudeFace274.ip";
connectAttr "Building24Shape.wm" "polyExtrudeFace274.mp";
connectAttr "polyExtrudeFace274.out" "polyExtrudeFace275.ip";
connectAttr "Building24Shape.wm" "polyExtrudeFace275.mp";
connectAttr "polyExtrudeFace275.out" "polyExtrudeFace276.ip";
connectAttr "Building24Shape.wm" "polyExtrudeFace276.mp";
connectAttr "polyExtrudeFace276.out" "polyExtrudeFace277.ip";
connectAttr "Building24Shape.wm" "polyExtrudeFace277.mp";
connectAttr "polyCube33.out" "polySplitRing30.ip";
connectAttr "Building25Shape.wm" "polySplitRing30.mp";
connectAttr "polyTweak139.out" "polySplitRing31.ip";
connectAttr "Building25Shape.wm" "polySplitRing31.mp";
connectAttr "polySplitRing30.out" "polyTweak139.ip";
connectAttr "polyTweak140.out" "polyExtrudeFace278.ip";
connectAttr "Building25Shape.wm" "polyExtrudeFace278.mp";
connectAttr "polySplitRing31.out" "polyTweak140.ip";
connectAttr "polyExtrudeFace278.out" "polyExtrudeFace279.ip";
connectAttr "Building25Shape.wm" "polyExtrudeFace279.mp";
connectAttr "polyExtrudeFace279.out" "polyExtrudeFace280.ip";
connectAttr "Building25Shape.wm" "polyExtrudeFace280.mp";
connectAttr "polyExtrudeFace280.out" "polyExtrudeFace281.ip";
connectAttr "Building25Shape.wm" "polyExtrudeFace281.mp";
connectAttr "polyCube34.out" "polyExtrudeFace282.ip";
connectAttr "Building26Shape.wm" "polyExtrudeFace282.mp";
connectAttr "polyTweak141.out" "polyExtrudeFace283.ip";
connectAttr "Building26Shape.wm" "polyExtrudeFace283.mp";
connectAttr "polyExtrudeFace282.out" "polyTweak141.ip";
connectAttr "polyExtrudeFace283.out" "polyExtrudeFace284.ip";
connectAttr "Building26Shape.wm" "polyExtrudeFace284.mp";
connectAttr "polyExtrudeFace284.out" "polyExtrudeFace285.ip";
connectAttr "Building26Shape.wm" "polyExtrudeFace285.mp";
connectAttr "polyExtrudeFace285.out" "polyExtrudeFace286.ip";
connectAttr "Building26Shape.wm" "polyExtrudeFace286.mp";
connectAttr "polyTweak142.out" "polyExtrudeFace287.ip";
connectAttr "Building26Shape.wm" "polyExtrudeFace287.mp";
connectAttr "polyExtrudeFace286.out" "polyTweak142.ip";
connectAttr "polyExtrudeFace287.out" "polyExtrudeFace288.ip";
connectAttr "Building26Shape.wm" "polyExtrudeFace288.mp";
connectAttr "polyExtrudeFace288.out" "polyExtrudeFace289.ip";
connectAttr "Building26Shape.wm" "polyExtrudeFace289.mp";
connectAttr "polyExtrudeFace289.out" "polyExtrudeFace290.ip";
connectAttr "Building26Shape.wm" "polyExtrudeFace290.mp";
connectAttr "polyTweak143.out" "polyExtrudeFace291.ip";
connectAttr "Building26Shape.wm" "polyExtrudeFace291.mp";
connectAttr "polyExtrudeFace290.out" "polyTweak143.ip";
connectAttr "polyCube35.out" "polyExtrudeFace292.ip";
connectAttr "Building27Shape.wm" "polyExtrudeFace292.mp";
connectAttr "polyTweak144.out" "polyExtrudeFace293.ip";
connectAttr "Building27Shape.wm" "polyExtrudeFace293.mp";
connectAttr "polyExtrudeFace292.out" "polyTweak144.ip";
connectAttr "polyExtrudeFace293.out" "polyExtrudeFace294.ip";
connectAttr "Building27Shape.wm" "polyExtrudeFace294.mp";
connectAttr "polyExtrudeFace294.out" "polyExtrudeFace295.ip";
connectAttr "Building27Shape.wm" "polyExtrudeFace295.mp";
connectAttr "polyExtrudeFace295.out" "polyExtrudeFace296.ip";
connectAttr "Building27Shape.wm" "polyExtrudeFace296.mp";
connectAttr "polyTweak145.out" "polyExtrudeFace297.ip";
connectAttr "Building27Shape.wm" "polyExtrudeFace297.mp";
connectAttr "polyExtrudeFace296.out" "polyTweak145.ip";
connectAttr "polyExtrudeFace297.out" "polyExtrudeFace298.ip";
connectAttr "Building27Shape.wm" "polyExtrudeFace298.mp";
connectAttr "polyExtrudeFace298.out" "polyExtrudeFace299.ip";
connectAttr "Building27Shape.wm" "polyExtrudeFace299.mp";
connectAttr "polyExtrudeFace299.out" "polyExtrudeFace300.ip";
connectAttr "Building27Shape.wm" "polyExtrudeFace300.mp";
connectAttr "polyTweak146.out" "polyExtrudeFace301.ip";
connectAttr "Building27Shape.wm" "polyExtrudeFace301.mp";
connectAttr "polyExtrudeFace300.out" "polyTweak146.ip";
connectAttr "polyCube36.out" "polyExtrudeFace302.ip";
connectAttr "Building28Shape.wm" "polyExtrudeFace302.mp";
connectAttr "polyTweak147.out" "polyExtrudeFace303.ip";
connectAttr "Building28Shape.wm" "polyExtrudeFace303.mp";
connectAttr "polyExtrudeFace302.out" "polyTweak147.ip";
connectAttr "polyExtrudeFace303.out" "polyExtrudeFace304.ip";
connectAttr "Building28Shape.wm" "polyExtrudeFace304.mp";
connectAttr "polyExtrudeFace304.out" "polyExtrudeFace305.ip";
connectAttr "Building28Shape.wm" "polyExtrudeFace305.mp";
connectAttr "polyExtrudeFace305.out" "polyExtrudeFace306.ip";
connectAttr "Building28Shape.wm" "polyExtrudeFace306.mp";
connectAttr "polyTweak148.out" "polyExtrudeFace307.ip";
connectAttr "Building28Shape.wm" "polyExtrudeFace307.mp";
connectAttr "polyExtrudeFace306.out" "polyTweak148.ip";
connectAttr "polyExtrudeFace307.out" "polyExtrudeFace308.ip";
connectAttr "Building28Shape.wm" "polyExtrudeFace308.mp";
connectAttr "polyExtrudeFace308.out" "polyExtrudeFace309.ip";
connectAttr "Building28Shape.wm" "polyExtrudeFace309.mp";
connectAttr "polyExtrudeFace309.out" "polyExtrudeFace310.ip";
connectAttr "Building28Shape.wm" "polyExtrudeFace310.mp";
connectAttr "polyTweak149.out" "polyExtrudeFace311.ip";
connectAttr "Building28Shape.wm" "polyExtrudeFace311.mp";
connectAttr "polyExtrudeFace310.out" "polyTweak149.ip";
connectAttr "polyCube37.out" "polyExtrudeFace312.ip";
connectAttr "Building29Shape.wm" "polyExtrudeFace312.mp";
connectAttr "polyExtrudeFace312.out" "polyExtrudeFace313.ip";
connectAttr "Building29Shape.wm" "polyExtrudeFace313.mp";
connectAttr "polyExtrudeFace313.out" "polyExtrudeFace314.ip";
connectAttr "Building29Shape.wm" "polyExtrudeFace314.mp";
connectAttr "polyTweak150.out" "polyExtrudeFace315.ip";
connectAttr "Building29Shape.wm" "polyExtrudeFace315.mp";
connectAttr "polyExtrudeFace314.out" "polyTweak150.ip";
connectAttr "polyExtrudeFace315.out" "polyExtrudeFace316.ip";
connectAttr "Building29Shape.wm" "polyExtrudeFace316.mp";
connectAttr "polyExtrudeFace316.out" "polyExtrudeFace317.ip";
connectAttr "Building29Shape.wm" "polyExtrudeFace317.mp";
connectAttr "polyExtrudeFace317.out" "polyExtrudeFace318.ip";
connectAttr "Building29Shape.wm" "polyExtrudeFace318.mp";
connectAttr "polyExtrudeFace318.out" "polyExtrudeFace319.ip";
connectAttr "Building29Shape.wm" "polyExtrudeFace319.mp";
connectAttr "polyExtrudeFace319.out" "polyExtrudeFace320.ip";
connectAttr "Building29Shape.wm" "polyExtrudeFace320.mp";
connectAttr "polyExtrudeFace320.out" "polyExtrudeFace321.ip";
connectAttr "Building29Shape.wm" "polyExtrudeFace321.mp";
connectAttr "polyExtrudeFace321.out" "polyExtrudeFace322.ip";
connectAttr "Building29Shape.wm" "polyExtrudeFace322.mp";
connectAttr "polyExtrudeFace322.out" "polyExtrudeFace323.ip";
connectAttr "Building29Shape.wm" "polyExtrudeFace323.mp";
connectAttr "polyCube38.out" "polyExtrudeFace324.ip";
connectAttr "Building30Shape.wm" "polyExtrudeFace324.mp";
connectAttr "polyExtrudeFace324.out" "polyExtrudeFace325.ip";
connectAttr "Building30Shape.wm" "polyExtrudeFace325.mp";
connectAttr "polyExtrudeFace325.out" "polyExtrudeFace326.ip";
connectAttr "Building30Shape.wm" "polyExtrudeFace326.mp";
connectAttr "polyTweak151.out" "polyExtrudeFace327.ip";
connectAttr "Building30Shape.wm" "polyExtrudeFace327.mp";
connectAttr "polyExtrudeFace326.out" "polyTweak151.ip";
connectAttr "polyExtrudeFace327.out" "polyExtrudeFace328.ip";
connectAttr "Building30Shape.wm" "polyExtrudeFace328.mp";
connectAttr "polyExtrudeFace328.out" "polyExtrudeFace329.ip";
connectAttr "Building30Shape.wm" "polyExtrudeFace329.mp";
connectAttr "polyExtrudeFace329.out" "polyExtrudeFace330.ip";
connectAttr "Building30Shape.wm" "polyExtrudeFace330.mp";
connectAttr "polyExtrudeFace330.out" "polyExtrudeFace331.ip";
connectAttr "Building30Shape.wm" "polyExtrudeFace331.mp";
connectAttr "polyExtrudeFace331.out" "polyExtrudeFace332.ip";
connectAttr "Building30Shape.wm" "polyExtrudeFace332.mp";
connectAttr "polyExtrudeFace332.out" "polyExtrudeFace333.ip";
connectAttr "Building30Shape.wm" "polyExtrudeFace333.mp";
connectAttr "polyExtrudeFace333.out" "polyExtrudeFace334.ip";
connectAttr "Building30Shape.wm" "polyExtrudeFace334.mp";
connectAttr "polyExtrudeFace334.out" "polyExtrudeFace335.ip";
connectAttr "Building30Shape.wm" "polyExtrudeFace335.mp";
connectAttr "polyCube39.out" "polyExtrudeFace336.ip";
connectAttr "Building31Shape.wm" "polyExtrudeFace336.mp";
connectAttr "polyTweak152.out" "polyExtrudeFace337.ip";
connectAttr "Building31Shape.wm" "polyExtrudeFace337.mp";
connectAttr "polyExtrudeFace336.out" "polyTweak152.ip";
connectAttr "polyExtrudeFace337.out" "polyExtrudeFace338.ip";
connectAttr "Building31Shape.wm" "polyExtrudeFace338.mp";
connectAttr "polyExtrudeFace338.out" "polyExtrudeFace339.ip";
connectAttr "Building31Shape.wm" "polyExtrudeFace339.mp";
connectAttr "polyExtrudeFace339.out" "polyExtrudeFace340.ip";
connectAttr "Building31Shape.wm" "polyExtrudeFace340.mp";
connectAttr "polyTweak153.out" "polyExtrudeFace341.ip";
connectAttr "Building31Shape.wm" "polyExtrudeFace341.mp";
connectAttr "polyExtrudeFace340.out" "polyTweak153.ip";
connectAttr "polyExtrudeFace341.out" "polyExtrudeFace342.ip";
connectAttr "Building31Shape.wm" "polyExtrudeFace342.mp";
connectAttr "polyExtrudeFace342.out" "polyExtrudeFace343.ip";
connectAttr "Building31Shape.wm" "polyExtrudeFace343.mp";
connectAttr "polyExtrudeFace343.out" "polyExtrudeFace344.ip";
connectAttr "Building31Shape.wm" "polyExtrudeFace344.mp";
connectAttr "polyTweak154.out" "polyExtrudeFace345.ip";
connectAttr "Building31Shape.wm" "polyExtrudeFace345.mp";
connectAttr "polyExtrudeFace344.out" "polyTweak154.ip";
connectAttr "polyCube40.out" "polyExtrudeFace346.ip";
connectAttr "Building32Shape.wm" "polyExtrudeFace346.mp";
connectAttr "polyTweak155.out" "polyExtrudeFace347.ip";
connectAttr "Building32Shape.wm" "polyExtrudeFace347.mp";
connectAttr "polyExtrudeFace346.out" "polyTweak155.ip";
connectAttr "polyExtrudeFace347.out" "polyExtrudeFace348.ip";
connectAttr "Building32Shape.wm" "polyExtrudeFace348.mp";
connectAttr "polyExtrudeFace348.out" "polyExtrudeFace349.ip";
connectAttr "Building32Shape.wm" "polyExtrudeFace349.mp";
connectAttr "polyExtrudeFace349.out" "polyExtrudeFace350.ip";
connectAttr "Building32Shape.wm" "polyExtrudeFace350.mp";
connectAttr "polyTweak156.out" "polyExtrudeFace351.ip";
connectAttr "Building32Shape.wm" "polyExtrudeFace351.mp";
connectAttr "polyExtrudeFace350.out" "polyTweak156.ip";
connectAttr "polyExtrudeFace351.out" "polyExtrudeFace352.ip";
connectAttr "Building32Shape.wm" "polyExtrudeFace352.mp";
connectAttr "polyExtrudeFace352.out" "polyExtrudeFace353.ip";
connectAttr "Building32Shape.wm" "polyExtrudeFace353.mp";
connectAttr "polyExtrudeFace353.out" "polyExtrudeFace354.ip";
connectAttr "Building32Shape.wm" "polyExtrudeFace354.mp";
connectAttr "polyTweak157.out" "polyExtrudeFace355.ip";
connectAttr "Building32Shape.wm" "polyExtrudeFace355.mp";
connectAttr "polyExtrudeFace354.out" "polyTweak157.ip";
connectAttr "polyCube41.out" "polyExtrudeFace356.ip";
connectAttr "Building33Shape.wm" "polyExtrudeFace356.mp";
connectAttr "polyTweak158.out" "polyExtrudeFace357.ip";
connectAttr "Building33Shape.wm" "polyExtrudeFace357.mp";
connectAttr "polyExtrudeFace356.out" "polyTweak158.ip";
connectAttr "polyExtrudeFace357.out" "polyExtrudeFace358.ip";
connectAttr "Building33Shape.wm" "polyExtrudeFace358.mp";
connectAttr "polyExtrudeFace358.out" "polyExtrudeFace359.ip";
connectAttr "Building33Shape.wm" "polyExtrudeFace359.mp";
connectAttr "polyExtrudeFace359.out" "polyExtrudeFace360.ip";
connectAttr "Building33Shape.wm" "polyExtrudeFace360.mp";
connectAttr "polyTweak159.out" "polyExtrudeFace361.ip";
connectAttr "Building33Shape.wm" "polyExtrudeFace361.mp";
connectAttr "polyExtrudeFace360.out" "polyTweak159.ip";
connectAttr "polyExtrudeFace361.out" "polyExtrudeFace362.ip";
connectAttr "Building33Shape.wm" "polyExtrudeFace362.mp";
connectAttr "polyExtrudeFace362.out" "polyExtrudeFace363.ip";
connectAttr "Building33Shape.wm" "polyExtrudeFace363.mp";
connectAttr "polyExtrudeFace363.out" "polyExtrudeFace364.ip";
connectAttr "Building33Shape.wm" "polyExtrudeFace364.mp";
connectAttr "polyTweak160.out" "polyExtrudeFace365.ip";
connectAttr "Building33Shape.wm" "polyExtrudeFace365.mp";
connectAttr "polyExtrudeFace364.out" "polyTweak160.ip";
connectAttr "polyCube42.out" "polyExtrudeFace366.ip";
connectAttr "Building34Shape.wm" "polyExtrudeFace366.mp";
connectAttr "polyTweak161.out" "polyExtrudeFace367.ip";
connectAttr "Building34Shape.wm" "polyExtrudeFace367.mp";
connectAttr "polyExtrudeFace366.out" "polyTweak161.ip";
connectAttr "polyExtrudeFace367.out" "polyExtrudeFace368.ip";
connectAttr "Building34Shape.wm" "polyExtrudeFace368.mp";
connectAttr "polyExtrudeFace368.out" "polyExtrudeFace369.ip";
connectAttr "Building34Shape.wm" "polyExtrudeFace369.mp";
connectAttr "polyExtrudeFace369.out" "polyExtrudeFace370.ip";
connectAttr "Building34Shape.wm" "polyExtrudeFace370.mp";
connectAttr "polyTweak162.out" "polyExtrudeFace371.ip";
connectAttr "Building34Shape.wm" "polyExtrudeFace371.mp";
connectAttr "polyExtrudeFace370.out" "polyTweak162.ip";
connectAttr "polyExtrudeFace371.out" "polyExtrudeFace372.ip";
connectAttr "Building34Shape.wm" "polyExtrudeFace372.mp";
connectAttr "polyExtrudeFace372.out" "polyExtrudeFace373.ip";
connectAttr "Building34Shape.wm" "polyExtrudeFace373.mp";
connectAttr "polyExtrudeFace373.out" "polyExtrudeFace374.ip";
connectAttr "Building34Shape.wm" "polyExtrudeFace374.mp";
connectAttr "polyTweak163.out" "polyExtrudeFace375.ip";
connectAttr "Building34Shape.wm" "polyExtrudeFace375.mp";
connectAttr "polyExtrudeFace374.out" "polyTweak163.ip";
connectAttr "polyCube43.out" "polyExtrudeFace376.ip";
connectAttr "Building35Shape.wm" "polyExtrudeFace376.mp";
connectAttr "polyTweak164.out" "polyExtrudeFace377.ip";
connectAttr "Building35Shape.wm" "polyExtrudeFace377.mp";
connectAttr "polyExtrudeFace376.out" "polyTweak164.ip";
connectAttr "polyExtrudeFace377.out" "polyExtrudeFace378.ip";
connectAttr "Building35Shape.wm" "polyExtrudeFace378.mp";
connectAttr "polyExtrudeFace378.out" "polyExtrudeFace379.ip";
connectAttr "Building35Shape.wm" "polyExtrudeFace379.mp";
connectAttr "polyExtrudeFace379.out" "polyExtrudeFace380.ip";
connectAttr "Building35Shape.wm" "polyExtrudeFace380.mp";
connectAttr "polyTweak165.out" "polyExtrudeFace381.ip";
connectAttr "Building35Shape.wm" "polyExtrudeFace381.mp";
connectAttr "polyExtrudeFace380.out" "polyTweak165.ip";
connectAttr "polyExtrudeFace381.out" "polyExtrudeFace382.ip";
connectAttr "Building35Shape.wm" "polyExtrudeFace382.mp";
connectAttr "polyExtrudeFace382.out" "polyExtrudeFace383.ip";
connectAttr "Building35Shape.wm" "polyExtrudeFace383.mp";
connectAttr "polyExtrudeFace383.out" "polyExtrudeFace384.ip";
connectAttr "Building35Shape.wm" "polyExtrudeFace384.mp";
connectAttr "polyTweak166.out" "polyExtrudeFace385.ip";
connectAttr "Building35Shape.wm" "polyExtrudeFace385.mp";
connectAttr "polyExtrudeFace384.out" "polyTweak166.ip";
connectAttr "polyCube44.out" "polyExtrudeFace386.ip";
connectAttr "Building36Shape.wm" "polyExtrudeFace386.mp";
connectAttr "polyExtrudeFace386.out" "polyExtrudeFace387.ip";
connectAttr "Building36Shape.wm" "polyExtrudeFace387.mp";
connectAttr "polyExtrudeFace387.out" "polyExtrudeFace388.ip";
connectAttr "Building36Shape.wm" "polyExtrudeFace388.mp";
connectAttr "polyTweak167.out" "polyExtrudeFace389.ip";
connectAttr "Building36Shape.wm" "polyExtrudeFace389.mp";
connectAttr "polyExtrudeFace388.out" "polyTweak167.ip";
connectAttr "polyExtrudeFace389.out" "polyExtrudeFace390.ip";
connectAttr "Building36Shape.wm" "polyExtrudeFace390.mp";
connectAttr "polyExtrudeFace390.out" "polyExtrudeFace391.ip";
connectAttr "Building36Shape.wm" "polyExtrudeFace391.mp";
connectAttr "polyExtrudeFace391.out" "polyExtrudeFace392.ip";
connectAttr "Building36Shape.wm" "polyExtrudeFace392.mp";
connectAttr "polyExtrudeFace392.out" "polyExtrudeFace393.ip";
connectAttr "Building36Shape.wm" "polyExtrudeFace393.mp";
connectAttr "polyExtrudeFace393.out" "polyExtrudeFace394.ip";
connectAttr "Building36Shape.wm" "polyExtrudeFace394.mp";
connectAttr "polyExtrudeFace394.out" "polyExtrudeFace395.ip";
connectAttr "Building36Shape.wm" "polyExtrudeFace395.mp";
connectAttr "polyExtrudeFace395.out" "polyExtrudeFace396.ip";
connectAttr "Building36Shape.wm" "polyExtrudeFace396.mp";
connectAttr "polyExtrudeFace396.out" "polyExtrudeFace397.ip";
connectAttr "Building36Shape.wm" "polyExtrudeFace397.mp";
connectAttr "polyCube45.out" "polyExtrudeFace398.ip";
connectAttr "Building37Shape.wm" "polyExtrudeFace398.mp";
connectAttr "polyTweak168.out" "polyExtrudeFace399.ip";
connectAttr "Building37Shape.wm" "polyExtrudeFace399.mp";
connectAttr "polyExtrudeFace398.out" "polyTweak168.ip";
connectAttr "polyExtrudeFace399.out" "polyExtrudeFace400.ip";
connectAttr "Building37Shape.wm" "polyExtrudeFace400.mp";
connectAttr "polyExtrudeFace400.out" "polyExtrudeFace401.ip";
connectAttr "Building37Shape.wm" "polyExtrudeFace401.mp";
connectAttr "polyExtrudeFace401.out" "polyExtrudeFace402.ip";
connectAttr "Building37Shape.wm" "polyExtrudeFace402.mp";
connectAttr "polyTweak169.out" "polyExtrudeFace403.ip";
connectAttr "Building37Shape.wm" "polyExtrudeFace403.mp";
connectAttr "polyExtrudeFace402.out" "polyTweak169.ip";
connectAttr "polyExtrudeFace403.out" "polyExtrudeFace404.ip";
connectAttr "Building37Shape.wm" "polyExtrudeFace404.mp";
connectAttr "polyExtrudeFace404.out" "polyExtrudeFace405.ip";
connectAttr "Building37Shape.wm" "polyExtrudeFace405.mp";
connectAttr "polyExtrudeFace405.out" "polyExtrudeFace406.ip";
connectAttr "Building37Shape.wm" "polyExtrudeFace406.mp";
connectAttr "polyTweak170.out" "polyExtrudeFace407.ip";
connectAttr "Building37Shape.wm" "polyExtrudeFace407.mp";
connectAttr "polyExtrudeFace406.out" "polyTweak170.ip";
connectAttr "polyCube46.out" "polyExtrudeFace408.ip";
connectAttr "Building38Shape.wm" "polyExtrudeFace408.mp";
connectAttr "polyTweak171.out" "polyExtrudeFace409.ip";
connectAttr "Building38Shape.wm" "polyExtrudeFace409.mp";
connectAttr "polyExtrudeFace408.out" "polyTweak171.ip";
connectAttr "polyExtrudeFace409.out" "polyExtrudeFace410.ip";
connectAttr "Building38Shape.wm" "polyExtrudeFace410.mp";
connectAttr "polyExtrudeFace410.out" "polyExtrudeFace411.ip";
connectAttr "Building38Shape.wm" "polyExtrudeFace411.mp";
connectAttr "polyExtrudeFace411.out" "polyExtrudeFace412.ip";
connectAttr "Building38Shape.wm" "polyExtrudeFace412.mp";
connectAttr "polyTweak172.out" "polyExtrudeFace413.ip";
connectAttr "Building38Shape.wm" "polyExtrudeFace413.mp";
connectAttr "polyExtrudeFace412.out" "polyTweak172.ip";
connectAttr "polyExtrudeFace413.out" "polyExtrudeFace414.ip";
connectAttr "Building38Shape.wm" "polyExtrudeFace414.mp";
connectAttr "polyExtrudeFace414.out" "polyExtrudeFace415.ip";
connectAttr "Building38Shape.wm" "polyExtrudeFace415.mp";
connectAttr "polyExtrudeFace415.out" "polyExtrudeFace416.ip";
connectAttr "Building38Shape.wm" "polyExtrudeFace416.mp";
connectAttr "polyTweak173.out" "polyExtrudeFace417.ip";
connectAttr "Building38Shape.wm" "polyExtrudeFace417.mp";
connectAttr "polyExtrudeFace416.out" "polyTweak173.ip";
connectAttr "polyCube47.out" "polyExtrudeFace418.ip";
connectAttr "Building39Shape.wm" "polyExtrudeFace418.mp";
connectAttr "polyTweak174.out" "polyExtrudeFace419.ip";
connectAttr "Building39Shape.wm" "polyExtrudeFace419.mp";
connectAttr "polyExtrudeFace418.out" "polyTweak174.ip";
connectAttr "polyExtrudeFace419.out" "polyExtrudeFace420.ip";
connectAttr "Building39Shape.wm" "polyExtrudeFace420.mp";
connectAttr "polyExtrudeFace420.out" "polyExtrudeFace421.ip";
connectAttr "Building39Shape.wm" "polyExtrudeFace421.mp";
connectAttr "polyExtrudeFace421.out" "polyExtrudeFace422.ip";
connectAttr "Building39Shape.wm" "polyExtrudeFace422.mp";
connectAttr "polyTweak175.out" "polyExtrudeFace423.ip";
connectAttr "Building39Shape.wm" "polyExtrudeFace423.mp";
connectAttr "polyExtrudeFace422.out" "polyTweak175.ip";
connectAttr "polyExtrudeFace423.out" "polyExtrudeFace424.ip";
connectAttr "Building39Shape.wm" "polyExtrudeFace424.mp";
connectAttr "polyExtrudeFace424.out" "polyExtrudeFace425.ip";
connectAttr "Building39Shape.wm" "polyExtrudeFace425.mp";
connectAttr "polyExtrudeFace425.out" "polyExtrudeFace426.ip";
connectAttr "Building39Shape.wm" "polyExtrudeFace426.mp";
connectAttr "polyTweak176.out" "polyExtrudeFace427.ip";
connectAttr "Building39Shape.wm" "polyExtrudeFace427.mp";
connectAttr "polyExtrudeFace426.out" "polyTweak176.ip";
connectAttr "polyCube48.out" "polyExtrudeFace428.ip";
connectAttr "Building40Shape.wm" "polyExtrudeFace428.mp";
connectAttr "polyExtrudeFace428.out" "polyExtrudeFace429.ip";
connectAttr "Building40Shape.wm" "polyExtrudeFace429.mp";
connectAttr "polyExtrudeFace429.out" "polyExtrudeFace430.ip";
connectAttr "Building40Shape.wm" "polyExtrudeFace430.mp";
connectAttr "polyTweak177.out" "polyExtrudeFace431.ip";
connectAttr "Building40Shape.wm" "polyExtrudeFace431.mp";
connectAttr "polyExtrudeFace430.out" "polyTweak177.ip";
connectAttr "polyExtrudeFace431.out" "polyExtrudeFace432.ip";
connectAttr "Building40Shape.wm" "polyExtrudeFace432.mp";
connectAttr "polyExtrudeFace432.out" "polyExtrudeFace433.ip";
connectAttr "Building40Shape.wm" "polyExtrudeFace433.mp";
connectAttr "polyExtrudeFace433.out" "polyExtrudeFace434.ip";
connectAttr "Building40Shape.wm" "polyExtrudeFace434.mp";
connectAttr "polyExtrudeFace434.out" "polyExtrudeFace435.ip";
connectAttr "Building40Shape.wm" "polyExtrudeFace435.mp";
connectAttr "polyExtrudeFace435.out" "polyExtrudeFace436.ip";
connectAttr "Building40Shape.wm" "polyExtrudeFace436.mp";
connectAttr "polyExtrudeFace436.out" "polyExtrudeFace437.ip";
connectAttr "Building40Shape.wm" "polyExtrudeFace437.mp";
connectAttr "polyExtrudeFace437.out" "polyExtrudeFace438.ip";
connectAttr "Building40Shape.wm" "polyExtrudeFace438.mp";
connectAttr "polyExtrudeFace438.out" "polyExtrudeFace439.ip";
connectAttr "Building40Shape.wm" "polyExtrudeFace439.mp";
connectAttr ":time1.o" "expression1.tim";
connectAttr "polyPlane69.out" "polyMoveVertex1.ip";
connectAttr "My_Unique_TerrainShape.wm" "polyMoveVertex1.mp";
connectAttr "polyCube49.out" "transformGeometry68.ig";
connectAttr "polyCube50.out" "transformGeometry69.ig";
connectAttr "polyCube51.out" "transformGeometry70.ig";
connectAttr "polyCube52.out" "transformGeometry71.ig";
connectAttr "polyCube53.out" "transformGeometry72.ig";
connectAttr "polyCube54.out" "transformGeometry73.ig";
connectAttr "RedShaderSG.pa" ":renderPartition.st" -na;
connectAttr "OrangeShaderSG.pa" ":renderPartition.st" -na;
connectAttr "GreenShaderSG.pa" ":renderPartition.st" -na;
connectAttr "StraightRoadShaderSG.pa" ":renderPartition.st" -na;
connectAttr "CurveRoadShaderSG.pa" ":renderPartition.st" -na;
connectAttr "CrossJunctionShaderSG.pa" ":renderPartition.st" -na;
connectAttr "TJunctionShaderSG.pa" ":renderPartition.st" -na;
connectAttr "RedShader.msg" ":defaultShaderList1.s" -na;
connectAttr "OrangeShader.msg" ":defaultShaderList1.s" -na;
connectAttr "GreenShader.msg" ":defaultShaderList1.s" -na;
connectAttr "StraightRoadShader.msg" ":defaultShaderList1.s" -na;
connectAttr "CurveRoadShader.msg" ":defaultShaderList1.s" -na;
connectAttr "CrossJunctionShader.msg" ":defaultShaderList1.s" -na;
connectAttr "TJunctionShader.msg" ":defaultShaderList1.s" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "file1.msg" ":defaultTextureList1.tx" -na;
connectAttr "file2.msg" ":defaultTextureList1.tx" -na;
connectAttr "file3.msg" ":defaultTextureList1.tx" -na;
connectAttr "file4.msg" ":defaultTextureList1.tx" -na;
connectAttr "Traffic_Light1Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Traffic_Light2Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Traffic_Light3Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Traffic_Light4Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Traffic_Light5Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Traffic_Light6Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Traffic_Light7Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Traffic_Light8Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Traffic_Light9Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Traffic_Light10Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Building1Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Building2Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Building3Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Building4Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Building5Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Building6Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Building7Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Building8Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Building9Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Building10Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Building11Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Building12Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Building13Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Building14Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Building15Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Building16Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Building17Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Building18Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Building19Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Building20Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Building21Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Building22Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Building23Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Building24Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Building25Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Building26Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Building27Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Building28Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Building29Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Building30Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Building31Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Building32Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Building33Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Building34Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Building35Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Building36Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Building37Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Building38Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Building39Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Building40Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "OrangeLight_Traffic_Light4Shape.iog" ":initialShadingGroup.dsm" -na
		;
connectAttr "GreenLight_Traffic_Light5Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "OrangeLight_Traffic_Light5Shape.iog" ":initialShadingGroup.dsm" -na
		;
connectAttr "OrangeLight_Traffic_Light6Shape.iog" ":initialShadingGroup.dsm" -na
		;
connectAttr "GreenLight_Traffic_Light8Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "OrangeLight_Traffic_Light8Shape.iog" ":initialShadingGroup.dsm" -na
		;
connectAttr "GreenLight_Traffic_Light1Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "GreenLight_Traffic_Light2Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "GreenLight_Traffic_Light7Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "OrangeLight_Traffic_Light1Shape.iog" ":initialShadingGroup.dsm" -na
		;
connectAttr "OrangeLight_Traffic_Light2Shape.iog" ":initialShadingGroup.dsm" -na
		;
connectAttr "RedLight_Traffic_Light9Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "OrangeLight_Traffic_Light7Shape.iog" ":initialShadingGroup.dsm" -na
		;
connectAttr "My_Unique_TerrainShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "GreenLight_Traffic_Light6Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "RedLight_Traffic_Light10Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "RedLight_Traffic_Light3Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "GreenLight_Traffic_Light4Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "GreenLight_Traffic_Light3Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "GreenLight_Traffic_Light9Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "GreenLight_Traffic_Light10Shape.iog" ":initialShadingGroup.dsm" -na
		;
connectAttr "car1Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "car2Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "car3Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "car4Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "car5Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "car6Shape.iog" ":initialShadingGroup.dsm" -na;
dataStructure -fmt "raw" -as "name=externalContentTable:string=node:string=key:string=upath:uint32=upathcrc:string=rpath:string=roles";
applyMetadata -fmt "raw" -v "channel\nname externalContentTable\nstream\nname v1.0\nindexType numeric\nstructure externalContentTable\n0\n\"file1\" \"fileTextureName\" \"C:/Users/Sim/Desktop/City_Builder/sourceimages/StraightRoadTexture.png\" 3445305538 \"C:/Users/Sim/Desktop/City_Builder/sourceimages/StraightRoadTexture.png\" \"sourceImages\"\n1\n\"file2\" \"fileTextureName\" \"C:/Users/Sim/Desktop/City_Builder/sourceimages/CurveRoadTexture.png\" 310446158 \"C:/Users/Sim/Desktop/City_Builder/sourceimages/CurveRoadTexture.png\" \"sourceImages\"\n2\n\"file3\" \"fileTextureName\" \"C:/Users/Sim/Desktop/City_Builder/sourceimages/CrossJunctionTexture.png\" 2860222720 \"C:/Users/Sim/Desktop/City_Builder/sourceimages/CrossJunctionTexture.png\" \"sourceImages\"\n3\n\"file4\" \"fileTextureName\" \"C:/Users/Sim/Desktop/City_Builder/sourceimages/T_JunctionTexture.png\" 2057231585 \"C:/Users/Sim/Desktop/City_Builder/sourceimages/T_JunctionTexture.png\" \"sourceImages\"\nendStream\nendChannel\nendAssociations\n" 
		-scn;
// End of Example_SceneFile.ma
