Write-Host "Starting PROD deployment..."

Copy-Item -Path "app\index.html" -Destination "environments\prod\index.html" -Force

Write-Host "PROD deployment complete."
Write-Host "Running health check..."

if (Test-Path "environments\prod\index.html") {
    Write-Host "PROD health check passed."
} else {
    Write-Host "PROD health check failed."
    exit 1
}