Write-Host "Starting DEV deployment..."

Copy-Item -Path "app\index.html" -Destination "environments\dev\index.html" -Force

Write-Host "DEV deployment complete."
Write-Host "Running health check..."

if (Test-Path "environments\dev\index.html") {
    Write-Host "DEV health check passed."
} else {
    Write-Host "DEV health check failed."
    exit 1
}