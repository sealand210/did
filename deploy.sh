git config branch.master.remote heroku
rake generate
rake deploy
git add -A
git commit -m 'update'
git push heroku master
git config branch.master.remote origin
git add -A
git commit -m 'update'
git push origin master
git config branch.master.remote heroku


