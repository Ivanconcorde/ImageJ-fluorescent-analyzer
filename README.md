# ImageJ-fluorescent-analyzer
Repository, created by E. Suricova, V. Gladun and I. Morzhakov for analyzing GFP- and RFP- tagged proteins in yeast mitochonria. Includes scripts for ImageJ.
Macro_triangle.ijm - main script, commented lines stop it from closing the selected image, thus allowing to check, whether the script has worked correctly. close.ijm allows users to quickly close the image and clear the ROI manager.
Script was created and edited using ImageJ, however will work correctly in FIJI.
For the script to function, you need to insert the file path into Macro_triangle.ijm (see comments). The script WILL NOT WORK if the ROI manager isn't empty.
