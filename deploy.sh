git config branch.master.remote origin
rake generate
git add .
git commit -am'update'
rake deploy
git add .
git commit -am 'update'
git push origin master
git config branch.master.remote heroku
git add .
git commit -am 'update'
git push heroku master
git config branch.master.remote origin


