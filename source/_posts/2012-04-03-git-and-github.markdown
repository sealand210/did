---
layout: post
title: "Git &amp; Github"
date: 2012-04-03 22:32
comments: true
sidebar: false
categories: 
---
{% img /images/githuboctacat.jpg %}

## GIT	
I've been using git and github to modifying and updating my code recently,  and I found it’s fantastic, I should learn to use them earlier.   A great thing about Git is,  you can use it to create multiple versions of your code and Git will keep tracking your modifications. In Git, create a copy is called branching. To create a branch you just need to type in a line of very simple command under your working directory: 
	$ git branch your_branch_name
<!-- more -->
A new copy (branch) named your_branch_name is created, to enter that branch, simply type:
	$ git checkout your_branch_name
The default branch is master branch, so if you didn’t create any branches then you are in master branch. Good thing about using branch is, editing any branch within the same directory will not change other branches. So you can do any experimentation you want using branch without worrying about damage the main code. If you found your experimentation with that branch has gone to a dead end,  you can simply delete the branch: 
	$ git branch -D your_branch_name
There are two options of deleting a branch:
	-d Delete a branch. The branch must be fully merged in its upstream branch,
	   or in HEAD if no upstream was set with --track or --set-upstream.
	-D Delete a branch irrespective of its merged status.
After deleting the branch, you can go back to your master branch:	
      $ git checkout master
Everything is back to original.

Another thing about branch is, you can merge branches using merge command:
	$ git merge branch_name
This command will merge the branch_name to your active branch, git will tries to auto-merge changes. Unfortunately, this is not always possible and results in conflicts. You are responsible to merge those conflicts manually by editing the files shown by git.

Another great thing about Git is, any modification of your code is temporary, this stage is called `Index`. To start tracking your code, use add command:
	$ git add your_file_name
To track all your file you can use following command:
	$ git add .  #tstages new and modified, without deleted
	$ git add -u #stages modified and deleted, without new
	$ git add -A #stages All	
 Then you can edit your code, compile it and run it. But after that if you don’t like your modifications, you can undo it with checkout command:
	
	$ git checkout your_file_name
If you like your modifications, just use commit command:
	$ git commit -m “update message”
Now the file is committed to the HEAD, which points to the last commit you've made.

You can always use status command to checkout which branch you are in and what modifications you have done:
	$ git status
To view all your histories in GUI, just type:
	$ gitk

## GITHUB	
Github is web service that put your local repository online, so people can share their code and work together.
To clone a remote repository just type:
	$ git clone /path/to/repository
To push your local repository to remote just type:
	$ git push origin your_branch_name
If you have not cloned an existing repository and want to connect your repository to a remote server, you need to add it with
   $ git remote add origin <server>
 Now you are able to push your changes to the selected remote serverIf you have cloned an existing repository but you want to change url, you can change it with:
	$ git remote set-url origin <server> 
Some time if your local history is lost, git will not upload your code to prevent losing data and history, you can use -f to force upload your code, but that is not always a good idea.
      
That’s so far that I have learned,  and I am just scratching the surface right now, when I have fully understand git, I will come back and update this post.
	
		
## References:	
<http://rogerdudler.github.com/git-guide/index.html>
<http://linux.die.net/man/1/git-branch>
<http://stackoverflow.com/questions/572549/difference-of-git-add-a-and-git-add>
<http://hi.baidu.com/royzhu/blog/item/c3499159f506522f2834f0f1.html>