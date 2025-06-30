filename=getInfo("image.filename");
file1=filename;
file2=replace(file1, ".tif", ""); 
newname=filename+"_res.csv";
//setTool("hand");
run("Duplicate...", " ");
run("Gaussian Blur...", "sigma=7");
//run("Auto Threshold", "method=RenyiEntropy white");
run("Auto Threshold", "method=Triangle white");
setOption("BlackBackground", false);
run("Convert to Mask");
run("Create Selection");
selectImage(file1);
run("Restore Selection");
run("Find Maxima...", "prominence=800 output=[Point Selection]");
run("Enlarge...", "enlarge=0.015");
roiManager("Add");
roiManager("Select", 0);
roiManager("Split");
roiManager("Select", 0);
roiManager("Delete");
roiManager("Select", 0);
count = roiManager("count");
array = newArray(count);
  for (i=0; i<array.length; i++) {
      array[i] = i;
  }
roiManager("select", array);
roiManager("Measure");
selectImage(file2+"-1.tif");
run("Select None");
run("Invert");
run("Create Selection");
selectImage(file1);
run("Restore Selection");
run("Measure");
//Insert the path results will be saved to. IMPORTANT use '/' instead of '\' 
saveAs("Results", "E:/User/your directory/Results "+newname);
run("Clear Results");
selectImage(file1);
run("Close");
//Un-comment the following lines, if you want close the image and clear the roiManager immediatly after the completion of the script
//roiManager("select", array);
//roiManager("Delete");
//selectImage(file2+"-1.tif");
//run("Close");
