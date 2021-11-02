   * ******************************************************************** *
   *
   *       PARTE 2:  GENERAR INDICADORES HOSPITALARIOS
   *
   *		Input:	"$source1_camas/input/disponibilidad_camas_hospitalarias.xlsx"
   *
   *		Output:	"$source1_camas/output/camas.csv"
   *
   * ******************************************************************** *

*** 1. Importar data en excel

import excel		"D:\7. Work\covid_cusco\datos\raw\base_ocupacion_camas_hospitalarias.xlsx", sheet("Hoja1") firstrow clear


format fecha %tdCCYY-NN-DD


*** 2. Renombrar variables

*rename NOUCIseconsideralasumade NOUCI

*** 2. Exportar data en csv


*export delimited using "$source1_camas/output/camas.csv", replace
export delimited using "C:\Users\HP\Documents\GitHub\covid-cusco\dashboard-covid-geresa\data\source1_camas\output\camas.csv", replace

clear
********************************************************************************
