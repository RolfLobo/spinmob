call E:\Python\Scripts\activate.bat

@echo off
setlocal

:: Clean up previous builds
if exist dist\ (
    echo Cleaning old builds...
    del /Q /F dist\*
)

:: Ensure modern build tools are present
echo.
echo Updating build tools...
python -m pip install --upgrade pip build twine

:: Build the package (creates sdist and wheel)
echo.
echo Building spinmob...
python -m build

:: Upload to PyPI
echo.
echo Uploading to PyPI via Twine...
python -m twine upload dist/*

echo Done!
pause