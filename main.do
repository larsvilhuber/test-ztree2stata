include "config.do"

// All files listed at 
// https://sites.google.com/view/takekan/research/ztree2stata
// Copyright remains with author.
// Do not redistribute from here

// get the Ztree test dataset
// copy "https://docs.google.com/spreadsheets/d/13SLiBI4-CSIBgCPERih3z3OWzCSt5NAC/edit#gid=1188394499" 221024_0215.xls
// doesn't work b/c Google drive

// Install Ztree ado file 
// doesn't work b/c Google Drive.
// net install ztree2stata, from("https://drive.google.com/open?id=1hOWdrutjUp1LXRg46YX0iUwXNJq3IsHL")
// copy "https://drive.google.com/open?id=1hOWdrutjUp1LXRg46YX0iUwXNJq3IsHL" 

global data "$rootdir/data"

// So we've copied it into the local "adolocal" FOLDER manually
adopath ++ "$rootdir/adolocal"
ls "$rootdir/adolocal"

// let's try it out
ztree2stata subjects using "$data/221024_0215.xls"
ztree2stata subjects using "$data/221024_0215.xls", clear treatment(2) save

// This saves it into the same folder as the XLS file
ls "$data"


