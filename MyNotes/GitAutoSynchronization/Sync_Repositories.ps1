# Принудительная установка кодировки UTF-8 для консоли
[Console]::OutputEncoding = [System.Text.Encoding]::UTF8
[Console]::InputEncoding = [System.Text.Encoding]::UTF8
$OutputEncoding = [System.Text.Encoding]::UTF8
# ==============================================================================
# КОНФИГУРАЦИЯ
# ==============================================================================
# Укажите абсолютные пути к репозиториям
$SourceDir = "C:\Users\user\Documents\Repositories\mfua"
$DestDir   = "C:\Users\user\Documents\Repositories\reallymatters-learning"

# Настройки Git для целевого репозитория
$DoPush = $true                           # $true - делать push, $false - только локальное копирование
$CommitMessage = "Updated, auto-sync"  # Сообщение коммита

# ==============================================================================
# ФУНКЦИИ И ЛОГИКА
# ==============================================================================

function Write-Log {
    param([string]$Message, [string]$Level = "INFO")
    $color = "White"
    if ($Level -eq "ERROR") { $color = "Red" }
    if ($Level -eq "SUCCESS") { $color = "Green" }
    if ($Level -eq "WARN") { $color = "Yellow" }
    Write-Host "[$Level] $Message" -ForegroundColor $color
}

function Pause-Exit {
    param([int]$code = 0)
    Write-Host ""
    Read-Host "Нажмите Enter для завершения"
    exit $code
}

# 1. Проверка путей
Write-Log "Проверка путей..."
if (-not (Test-Path -Path $SourceDir -PathType Container)) {
    Write-Log "Исходная папка не найдена: $SourceDir" "ERROR"
    Pause-Exit 1
}
if (-not (Test-Path -Path "$SourceDir\.git" -PathType Container)) {
    Write-Log "Исходная папка не является Git репозиторием" "ERROR"
    Pause-Exit 1
}
if (-not (Test-Path -Path $DestDir -PathType Container)) {
    Write-Log "Целевая папка не найдена: $DestDir" "ERROR"
    Pause-Exit 1
}
if (-not (Test-Path -Path "$DestDir\.git" -PathType Container)) {
    Write-Log "Целевая папка не является Git репозиторием" "ERROR"
    Pause-Exit 1
}

# 2. Обновление исходного репозитория
Write-Log "Выполнение git pull в источнике: $SourceDir"
try {
    & git -C $SourceDir pull
    if ($LASTEXITCODE -ne 0) {
        Write-Log "git pull в источнике завершился с кодом $LASTEXITCODE" "WARN"
    }
} catch {
    Write-Log "Ошибка выполнения git: $_" "ERROR"
}

# 3. Синхронизация файлов (исключая .git)
Write-Log "Копирование файлов (исключая .git)..."
# Используем Robocopy, так как он встроен в Windows и надежнее Copy-Item
# /E - копировать подпапки, /XD .git - исключить папку .git, /PURGE - удалить в назначении лишнее (как rsync --delete)
# Если не хотите удалять лишние файлы в назначении, уберите ключ /PURGE
$robocopyArgs = @($SourceDir, $DestDir, "/E", "/XD", ".git", ".gitignore", "/NFL", "/NDL", "/NJH", "/NJS")

$robocopyOutput = & robocopy $robocopyArgs
# Robocopy возвращает коды 0-7 как успех, 8+ как ошибка
if ($LASTEXITCODE -ge 8) {
    Write-Log "Ошибка при копировании файлов (Robocopy). Код: $LASTEXITCODE" "ERROR"
    Pause-Exit 1
} else {
    Write-Log "Копирование файлов завершено успешно." "SUCCESS"
}

# 4. Обновление целевого репозитория (Опционально)
if ($DoPush) {
    Write-Log "Обновление целевого репозитория: $DestDir"
    Set-Location $DestDir

    # Проверка статуса
    $status = & git status --porcelain
    if ($status) {
        Write-Log "Обнаружены изменения. Выполняем commit..."
        & git add .
        & git commit -m $CommitMessage
        if ($LASTEXITCODE -eq 0) {
            Write-Log "Выполнение git push..."
            & git push
            if ($LASTEXITCODE -ne 0) {
                Write-Log "Ошибка git push. Проверьте доступ." "ERROR"
            } else {
                Write-Log "Успешно запушено!" "SUCCESS"
            }
        } else {
            Write-Log "Ошибка коммита или нет изменений для коммита." "WARN"
        }
    } else {
        Write-Log "Изменений нет, коммит не требуется." "INFO"
    }
} else {
    Write-Log "DoPush = false. Пропускаем commit/push." "INFO"
}

Write-Log "Синхронизация завершена." "SUCCESS"
Pause-Exit 0