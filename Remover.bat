@echo off
REM Renouveler les licences d'essai des logicielles jetbrain !!!
for %%I in ("WebStorm", "IntelliJ", "CLion", "Rider", "GoLand", "PhpStorm", "Resharper", "PyCharm") do (
    for /d %%a in ("%APPDATA%\JetBrains\%%I*") do (
        rd /s /q "%%a/eval"
        del /q "%%a\options\other.xml"
    )
)

reg delete "HKEY_CURRENT_USER\SOFTWARE\JavaSoft\Prefs\jetbrains" /f
