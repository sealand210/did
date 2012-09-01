---
layout: post
title: "Browser Compatibility Issue"
date: 2012-08-21 18:20
comments: true
sidebar: false
categories:  Octopress
---

{%img /images/ss.png %}

Unfortunately, Octopress does not compatible with some old browser such as IE6 and IE7。 Webpage looks horrible under those browsers. Although most of the click on this blog is from myself, I still don't want anybody to have the chance to see these horrible pages.

It's impossible for me to modify the code of octopress to make it compatible with old browsers. So my idea is to add some browser detection code, if it found these old IE browsers then redirect user to a page telling them they should upgrade or change browser. 

<!--more-->

After googling a little bit, I found it's actually very easy to detect browser, just a few lines of java script:

{% codeblock browser detecting code lang:js %}
<script type="text/javascript">
        var Sys = {};
        var ua = navigator.userAgent.toLowerCase();
        if (window.ActiveXObject)
            Sys.ie = ua.match(/msie ([\d.]+)/)[1]
        else if (document.getBoxObjectFor)
            Sys.firefox = ua.match(/firefox\/([\d.]+)/)[1]
        else if (window.MessageEvent && !document.getBoxObjectFor)
            Sys.chrome = ua.match(/chrome\/([\d.]+)/)[1]
        else if (window.opera)
            Sys.opera = ua.match(/opera.([\d.]+)/)[1]
        else if (window.openDatabase)
            Sys.safari = ua.match(/version\/([\d.]+)/)[1];
        
        if(Sys.ie) document.write('IE: '+Sys.ie);
        if(Sys.firefox) document.write('Firefox: '+Sys.firefox);
        if(Sys.chrome) document.write('Chrome: '+Sys.chrome);
        if(Sys.opera) document.write('Opera: '+Sys.opera);
        if(Sys.safari) document.write('Safari: '+Sys.safari);
    </script>
{% endcodeblock %}

Basically it's using regular expression to select a specific userAgent token,  ua.match(); function will return a positive number when selected user token is being found. The user agent token of IE browser is msie x.0, the x representing the version. To jump to certain page when user is using IE6 or 7 simply add :

	if (Sys.ie == '7.0' || Sys.ie == '6.0' ) window.location="test.html";;

After testing the page using IEtester, I found these code working prefectly well, page loading is very fast, it doesn't have any lag at all. what a simple and elegant solution.


## Reference:
<http://www.cnblogs.com/leadzen/archive/2008/09/06/1285764.html>