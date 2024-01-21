# PowerShell Script to Sync Local Folder with GitHub Repository

# Variables - Update these with your specific information
$githubRepoUrl = ""
$commitMessage = "Initial commit with PowerShell script"

# Initialize the folder as a Git repository
git init

# Add the remote GitHub repository
git remote add origin $githubRepoUrl

# Pull contents from the GitHub repository to merge with your local repository
git pull origin main --allow-unrelated-histories

# Add all files in the current directory to the Git repository
git add .

# Commit the changes with a message
git commit -m $commitMessage

# Push your local commits to GitHub
git push -u origin main
