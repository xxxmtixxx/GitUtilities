#### Overview:
`GitUtilities` is a repository containing a set of PowerShell scripts designed to streamline and automate common Git operations. This repository includes scripts for identifying Git repositories across multiple directories and syncing local folders with remote GitHub repositories.

#### Scripts:

1. **DiscoverGitSyncServices.ps1**
   - **Purpose**: Scans specified directories to identify Git repositories and determine their remote syncing services (e.g., GitHub, Bitbucket).
   - **Usage**: Users specify directories to scan, and the script outputs the sync status and remote URLs of each discovered Git repository.
   - **Features**: Multi-directory scanning, remote service identification, and user-friendly output.

2. **SyncLocalToGitHub.ps1**
   - **Purpose**: Syncs a local folder with a specified GitHub repository, handling initialization, remote setting, and content merging.
   - **Usage**: Users provide the GitHub repository URL and commit message. The script initializes the local folder as a Git repository, sets the remote to the specified GitHub repository, and syncs the contents.
   - **Features**: Easy GitHub repository synchronization, customizable commit messages, and automatic handling of repository initialization and remote setting.

#### Getting Started:
- Clone the repository to get started with these scripts.
- Ensure PowerShell and Git are installed on your system.
- Update the necessary variables in the scripts to match your specific requirements.

#### Notes:
- These scripts are designed to work in PowerShell environments with Git installed and accessible.
- Users should have appropriate permissions for the directories and repositories they are working with.
- Always back up important data before running scripts that modify repositories or directory structures.