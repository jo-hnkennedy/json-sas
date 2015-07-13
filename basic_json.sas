
data temp;
     length attribute value $80; 
     infile datalines; 
       input @;
     if _infile_ ne: '{' and _infile_ ne: '}'; 
       input attribute: $quote. x $ value: $quote.;
      put '<' attribute '>' value '</' attribute '>'; 

datalines;
{
     "name" : "John",
     "position" : "intern"
}
;
run;
