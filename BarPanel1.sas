/*--Bar Panel--
Version 1.1 modified June 25, 2024*/

title 'Mileage by Origin and Type';
proc sgpanel data=sashelp.cars(where=(type in ('Sedan' 'Sports'))) noautolegend;
  panelby Type / novarname columns=2 onepanel;
  vbar origin / response=mpg_city stat=mean group=origin;
  rowaxis grid;
  run;
