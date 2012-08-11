---
layout: page
date: 2012-03-16 14:03
footer: false
sidebar: false
---



转到你的工作目录

	roy@ubuntu:~/$ cd workspace

创建、下载项目文件夹（不知道是不是该叫它“包”）

	roy@ubuntu:~/workspace$ git clone git://github.com/royzhu/test.git

等待一段时间后，项目就下好了

	roy@ubuntu:~/workspace$ ls -la
	
	drwxr-xr-x 3 roy roy 4096 2008-04-29 17:10 test

	roy@ubuntu:~/workspace$ cd test

查看主枝和分支。登录GitHub.com，加入项目后，在项目里的Network有图形化的分支图

	roy@ubuntu:~/workspace/test$ git show-branch
	[master] a new branch
	
master是默认的住分支名

建立项目远程地址

	roy@ubuntu:~/workspace/test$ git remote add origin 	git@github.com:royzhu/test.git

建立自己的分支

	roy@ubuntu:~/workspace/test$ git branch your_branch_name

再看看有哪些分支

	roy@ubuntu:~/workspace/test$ git show-branch
	! [your_branch_name] a new branch
	--
	*+ [master] a new branch

查看现在使用的分支

	roy@ubuntu:~/workspace/test$ git branch
	* master
	your_branch_name
	
加*号表示当前使用的分支

进入自己的分支

	roy@ubuntu:~/workspace/test$ git checkout your_branch_name

再看看

	roy@ubuntu:~/workspace/test$ git branch
	master
	* your_branch_name

添加、修改些东西吧

	roy@ubuntu:~/workspace/test$ vim something

把文件加入跟踪（每次提交前必须写这步）

	roy@ubuntu:~/workspace/test$ git add something

提交修改（提交到本地，没有传到服务器）

	roy@ubuntu:~/workspace/test$ git commit -m '说明'

提交分支到服务器

	roy@ubuntu:~/workspace/test$ git push origin 	your_branch_name
	“origin”是固定的

获得最新的项目文件（从服务器下载）
  
	roy@ubuntu:~/workspace/test$ git pull git://github.com/	royzhu/test.git

发布脚本

{% include_code deploy.sh %}

