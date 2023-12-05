# Retreive the content of a list of files, format them inside of codeblocks for easier communication and copy the formatted output to clipboard.
[string[]]$files = @(
    "File1",
    "File2",
    "File3"
)
$formattedContent = ""
foreach ($file in $files) {
    if (Test-Path $file) {
        Write-Host "Copying: $file"
        $content = Get-Content $file -Raw
        $fileName = Split-Path $file -Leaf
        $formattedContent += "`r`n" + '```'
        $formattedContent += "$fileName" + "`r`n"
        $formattedContent += $content + "`r`n"
        $formattedContent += '```' + "`r`n"
    } else {
        Write-Warning "File not found: $file"
    }
}
$formattedContent | Set-Clipboard
