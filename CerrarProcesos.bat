@echo off
:Menu
cls
color 5F
echo ======================================================
echo =                                                    =
echo =                      Cerrar Programas              =
echo =                                                    =
echo ======================================================
echo.
echo ======================================================
echo Seleccione la opcion deseada:
echo.
echo 1. Cerrar Ifrun (GDM, Etiquetas y Motor DB)
echo 2. Cerrar Internet Explorer (en caso de error Electro)
echo 3. Cerrar Programa
echo.
set /p var=
if %var%==1 goto :Ifrun
if %var%==2 goto :Iexplore
if %var%==3 goto :Exit
if %var% GTR 3 echo Error
goto :Menu
:Ifrun
cls
color 5F
taskkill /im ifrun60.exe /f /t
echo Presione una tecla para regresar al menu
pause>null
goto :Menu
:Iexplore
cls
color 5F
taskkill /im iexplore.exe /f /t
echo Presione una tecla para recgresar al menu
pause>null
goto :Menu
:Exit
echo Para salir presiona una tecla.
pause>nul
exit