filename=getInfo("image.filename");
file1=filename;
count = roiManager("count");
array = newArray(count);
  for (i=0; i<array.length; i++) {
      array[i] = i;
  }
selectImage(file1);
run("Close");
roiManager("select", array);
roiManager("Delete");