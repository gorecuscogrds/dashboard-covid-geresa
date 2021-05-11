   * ******************************************************************** *
   * ******************************************************************** *
   *                                                                      *
   *               GERESA Cusco                                           *
   *               Direción de Epidemiología                              *
   *               Master Do File                                         *
   *                                                                      *
   * ******************************************************************** *
   * ******************************************************************** *

       /*
       ** PROPÓSITO:	Generar los indicadores para el Dashboard de GERESA
	   ** https://geresacusco.shinyapps.io/DASHBOARD_COVID-19_CUSCO/

       ** OUTLINE:      PARTE 0: Preparar globales y definir usuarios
                        PARTE 1: Correr do files

       ** ESCRITO POR:	Brandon Mora

       ** FECHA DE ÚLTIMA MODIFICACIÓN:  11 de Mayo 2021
       */

   * ******************************************************************** *
   *
   *       PARTE 0:  PREPARANDO FOLDER Y DEFINIENDO GLOBALES
   *
   * ******************************************************************** *

   * Definir Usuarios
   * --------------------

   *Número de usuario:
   * Brandon Oficina GORE		1
   * Brandon Casa				2

   *Establecer este valor para el usuario que actualmente usa el script
   global user  1
	
   * Definir Globales
   * ---------------------

   if $user == 1 {
       global path "D:/Documents/GitHub/dashboard-covid-geresa/data"
   }

   if $user == 2 {
       global path "/Users/bran/Documents/GitHub/dashboard-covid-geresa/data" 
   }

   
	global main					"$path"
	global source1_camas		"$path/source1_camas"
	global source2_siscovid		"$path/source2_siscovid"
	global source3_semaforo		"$path/source3_semaforo"
	global source4_mapas		"$path/source4_mapas"

	set more off, permanent  	
	
   * ******************************************************************** *
   *
   *		PARTE 1:  GENERAR INDICADORES EPIDEMIOLÓGICOS
   *
   *		Input:	"$source2_siscovid/input/data_dashboard"
   *
   *		Output:	"$source2_siscovid/output/data_distrital.csv"
   *				"$source2_siscovid/output/data_provincial.csv"
   *				"$source2_siscovid/output/data_regional.csv"
   *
   * ******************************************************************** *

      *do "$source2_siscovid/main.do" 
	 
   * ******************************************************************** *
   *
   *       PARTE 2:  GENERAR INDICADORES HOSPITALARIOS
   *
   *		Input:	"$source1_camas/input/disponibilidad_camas_hospitalarias.xlsx"
   *
   *		Output:	"$source1_camas/output/camas.csv"
   *
   * ******************************************************************** *

      do "$source1_camas/main.do" 
