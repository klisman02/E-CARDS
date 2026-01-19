# Pegar o diretório atual do script
$scriptDir = Split-Path -Parent $MyInvocation.MyCommand.Definition

# Arquivo de saída
$outputFile = Join-Path $scriptDir "migration.sql"

# Se existir, apaga
if (Test-Path $outputFile) {
    Remove-Item $outputFile -Force
}

# Pega os .sql, EXCETO o migration.sql
$sqlFiles = Get-ChildItem -Path $scriptDir -Filter "*.sql" -File |
    Where-Object { $_.FullName -ne $outputFile } |
    Sort-Object Name

# Concatena
foreach ($file in $sqlFiles) {
    # Cabeçalho opcional pra identificar o arquivo
    Add-Content -Path $outputFile -Encoding utf8 -Value ("-- ===== " + $file.Name + " =====")

    Get-Content -Path $file.FullName | Add-Content -Path $outputFile -Encoding utf8

    # Separador seguro no PostgreSQL (comentário, não "GO")
    Add-Content -Path $outputFile -Encoding utf8 -Value "`n-- ===== END =====`n"
}

Write-Host "Arquivos combinados em: $outputFile"
