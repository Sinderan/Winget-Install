$PublicDesktopPath = [Environment]::GetFolderPath("CommonDesktopDirectory")
$ShortcutPath = Resolve-Path "$PublicDesktopPath\R *.lnk" -ErrorAction SilentlyContinue -ErrorVariable _frperror
if (-not($ShortcutPath)) {
    $ShortcutPath = $_frperror[0].TargetObject
}

Write-Output $ShortcutPath
If (Test-Path $ShortcutPath) {
    Write-Output 'Removing Desktop Shortcut'
    Remove-Item $ShortcutPath
} Else {
    Write-Output 'Desktop Shortcut Not Found'
}
