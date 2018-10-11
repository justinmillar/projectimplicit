# projectimplicit: A minimal package for Project Implicit data

Minimal package for exploring and reporting on descriptive and inferential statistics using Project Implicit data (here, the Race Implicit Association Test).

This package was made by Liz Redford using the publicly-available Project Implicit <a href = "https://osf.io/y9hiq/">demo website datasets</a>. 

**How to write a methods & results section using built-in data**  

Activate built-in dataset using ```data(raceiatdat)```  
Write methods & results using ```writemr(workingdata = raceiatdat)```

**How to write a methods & results section using other data**  

Open methods-results.Rmd  
Follow data formatting rules (TBA)  
Run ```writemr()```, setting “workingdata” argument to the name of your data object
