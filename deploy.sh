@echo Deploying github pages...
git checkout master
rake generate
cd ~/blog_DID/public/
git remote add origin git@github.com:sealand210/sealand210.github.com.git
git add .
git commit -am 'update'
cd ~/blog_DID/
git remote set-url origin git@github.com:sealand210/did.git
git add .
git commit -am 'update'
git push origin master
git config branch.remote heroku
git push heroku master



