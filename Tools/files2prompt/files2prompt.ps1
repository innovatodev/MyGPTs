# Retreive the content of a list of files, format them inside of codeblocks for easier communication and copy the formatted output to clipboard.
# Script must be in the Project's Root directory.
[string[]]$files = @(
    ".\File1.cs",
    ".\File2.cs"
)
$formattedContent = ""
foreach ($file in $files) {
    if (Test-Path $file) {
        Write-Host "Copying: $file"
        $content = Get-Content $file -Raw
        $formattedContent += "`r`n" + '```'
        $formattedContent += "$file" + "`r`n"
        $formattedContent += $content + "`r`n"
        $formattedContent += '```' + "`r`n"
    } else {
        Write-Warning "File not found: $file"
    }
}
$formattedContent | Set-Clipboard
