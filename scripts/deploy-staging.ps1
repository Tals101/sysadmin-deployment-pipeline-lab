Write-Host "Starting STAGING deployment..."

Copy-Item -Path "app\index.html" -Destination "environments\staging\index.html" -Force

Write-Host "STAGING deployment complete."
Write-Host "Running health check..."

if (Test-Path "environments\staging\index.html") {
    Write-Host "STAGING health check passed."
} else {
    Write-Host "STAGING health check failed."
    exit 1
}