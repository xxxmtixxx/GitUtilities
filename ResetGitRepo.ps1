git checkout --orphan temp-branch
git add -A
git commit -m "Initial commit"
git branch -D main  # Replace 'main' with your default branch name if it's different
git branch -m main
git push -f origin main