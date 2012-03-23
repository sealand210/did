git remote set-url origin git@github.com:sealand210/sealand210.github.com.git
git config branch.remote origin
rake generate
git add .
git commit -am'update'
rake deploy
git remote set-url origin git@github.com:sealand210/did.git
git push origin master
git config branch.remote heroku
git push heroku master



