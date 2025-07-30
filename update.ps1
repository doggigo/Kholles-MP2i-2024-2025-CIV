# PowerShell script to compile .typ files and move the resulting PDFs to the 'dist' folder

$scriptDir = Split-Path -Parent -Path $MyInvocation.MyCommand.Definition
$redigeFolder = Join-Path -Path $scriptDir -ChildPath "redige"
$distFolder = Join-Path -Path $scriptDir -ChildPath "dist"

if (!(Test-Path -Path $distFolder)) {
    New-Item -ItemType Directory -Path $distFolder
}

$typFiles = Get-ChildItem -Path $redigeFolder -Filter "*.typ"

foreach ($file in $typFiles) {
    $filePath = $file.FullName

    $pdfFileName = [System.IO.Path]::ChangeExtension($file.Name, ".pdf")
    $pdfFilePath = Join-Path -Path $distFolder -ChildPath $pdfFileName

    typst compile $filePath

    $compiledPdfPath = Join-Path -Path $redigeFolder -ChildPath $pdfFileName
    if (Test-Path -Path $compiledPdfPath) {
        Move-Item -Path $compiledPdfPath -Destination $pdfFilePath -Force
    }
}
