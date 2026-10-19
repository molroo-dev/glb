rm -rf .git
git init
git add --all
git commit -m "first commit"
git branch -M main
git remote add origin https://github.com/molroo-dev/glb.git
git push -u --force origin main
