# Function to process each directory
function CheckGitRemotes($dirPath) {
    Get-ChildItem -Path $dirPath -Recurse -Directory -ErrorAction Continue | ForEach-Object {
        $gitDir = Join-Path $_.FullName '.git'
        if (Test-Path -Path $gitDir) {
            Write-Host "Git repository found: $($_.FullName)"
            Push-Location -Path $_.FullName
            try {
                $remotes = git remote -v
                if ($remotes) {
                    $uniqueUrls = $remotes | ForEach-Object { $_ -split '\s+' } | Where-Object { $_ -match 'https?://' } | Select-Object -Unique
                    foreach ($url in $uniqueUrls) {
                        if ($url -match 'github.com') {
                            Write-Host "Syncing with GitHub: $url"
                        } elseif ($url -match 'bitbucket.org') {
                            Write-Host "Syncing with Bitbucket: $url"
                        } else {
                            Write-Host "Syncing with remote: $url"
                        }
                    }
                } else {
                    Write-Host "Not syncing with any remote"
                }
                Write-Host ""
            } catch {
                Write-Host "Error checking remotes"
            }
            Pop-Location
        }
    }
}

# List of directories to check
Write-Host ""
$directoriesToCheck = "C:\", "D:\"

foreach ($dir in $directoriesToCheck) {
    CheckGitRemotes $dir
}
