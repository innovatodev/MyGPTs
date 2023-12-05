# files2prompt.ps1

[RAW Script here](https://github.com/innovatodev/MyGPTs/raw/main/Tools/files2prompt/files2prompt.ps1)

- Copy the content of the files you want to include in your prompt.
- Format it inside of code blocks for each of them.
- Put the formated prompt inside of your clipboard to paste inside of your input.

You only have to modify the **$files** variable with the path of each files you want to include.

Example:

```powershell
[string[]]$files = @(
    "C:\MyAwesomeProject\Program.cs",
    "C:\MyAwesomeProject\Constants.cs",
    "C:\MyAwesomeProject\AnotherFile.cs"
)
```
