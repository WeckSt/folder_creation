ECHO off

SET /p folder="In which path should the folders be created?"
SET /p folderName="How would you like to name your folders?"
SET /p counter="How many folders should be created?"

PAUSE

IF NOT EXIST %folder% (
	ECHO Given path is not existing.
	ECHO Service aborted.
	GOTO :EOF
) 
IF EXIST "%folder%\%folderName%" (
		ECHO A folder with this name is already existing.
		ECHO Service aborted.
		GOTO :EOF
)

FOR /L %%A IN (1,1,%counter%) DO (
	IF NOT EXIST "%folder%\%folderName%_%%A" (
		mkdir %folder%\%folderName%_%%A
		echo %folder%\%folderName%_%%A was created
	)
)
PAUSE

:EOF
