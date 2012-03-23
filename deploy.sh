git config branch.master.remote heroku
rake generate
rake deploy
git add .
git commit -am 'update'
git push heroku master
git config branch.master.remote origin
git add .
git commit -am 'update'
git push origin master
git config branch.master.remote heroku


