cd docs
git init .
git remote add origin https://github.com/Grashjs/user-guide.git
git add .
git commit -am "Docs"
git checkout -b docs
git push origin docs --force
cd ..