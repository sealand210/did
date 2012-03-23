echo Deploying github pages...
rake generate
cd ~/blog_DID/public/
git init
git remote add origin git@github.com:sealand210/sealand210.github.com.git
git add .
git commit -am 'update'
git push -f origin master
echo Backing up github pages...
cd ~/blog_DID/
git remote set-url origin git@github.com:sealand210/did.git
git add .
git commit -am 'update'
git push origin master
echo Deploying heroku pages...
git config branch.remote heroku
git remote set-url origin git@heroku.com:d-i-d.git
git push heroku master



