echo Deploying github pages...
rake generate
rm -rf _deploy/*
cp -rf public/ _deploy/
cd _deploy/
git add .
git commit -am 'update'
git push -f origin master
echo Backing up github pages...
cd ../
git add .
git commit -am 'update'
git push origin master
echo Deploying heroku pages...
git config branch.remote heroku
git push heroku master



