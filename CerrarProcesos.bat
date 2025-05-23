@echo off
:Menu
cls
color 5F
echo ======================================================
echo =                                                    =
echo =              Cerrar Programas                      =
echo =                                                    =
echo ======================================================
echo.
echo ======================================================
echo Seleccione la opcion deseada:
echo.
echo 1. Cerrar Ifrun (GDM, Etiquetas y Motor DB)
echo 2. Cerrar Geolocalizador (en caso de error Electro - Servicio Tecnico)
echo 3. Cerrar programas para abrir GESCOM (Jusched, Jucheck, Soffice.bin, Soffice.exe, chrome.exe)
echo 4. Cerrar Servicio Tecnico (en caso de que no inicie)
echo 5. Salir del programa
echo.
set /p var=
if %var%==1 goto :Ifrun
if %var%==2 goto :Iexplore
if %var%==3 goto :JavaExecute
if %var%==4 goto :ServicioTecnico
if %var%==5 goto :Exit
if %var% GTR 5 echo Error opcion no disponible, intente nuevamente
pause>null
goto :Menu
:Ifrun
cls
color 5F
taskkill /im ifrun60.exe /f /t
taskkill /im RWRBE60.exe /f /t
echo Presione una tecla para regresar al menu
pause>null
goto :Menu
:Iexplore
cls
color 5F
taskkill /im iexplore.exe /f /t
taskkill /im NormalizadorGeoUbicacion.exe /f /t
echo Presione una tecla para regresar al menu
pause>null
goto :Menu
:JavaExecute
cls
color 5F
taskkill /im javaw.exe /f /t
taskkill /im jucheck.exe /f /t
taskkill /im jusched.exe /f /t
taskkill /im soffice.bin /f /t
taskkill /im soffice.exe /f /t
taskkill /im chrome.exe /f /t
echo Presione una tecla para regresar al menu
pause>null
goto :Menu
:ServicioTecnico
cls
color 5f
taskkill /im ServicioTecnico.exe /f /t
taskkill /im ServicioTecnico2025.exe /f /t
taskkill /im ServicioTecnico-.exe /f /t
echo Presione una tecla para regresar al menu
pause>null
goto :Menu
:Exit
echo Para salir presiona una tecla.
pause>null
exit