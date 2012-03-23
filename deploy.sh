git config branch.master.remote origin
git add -A
rake generate
git commit -m'update'
rake deploy
git add .
git commit -am 'update'
git push origin master
git config branch.master.remote heroku
git add .
git commit -am 'update'
git push heroku master
git config branch.master.remote origin


