---
layout: post
title: "Google Search Command"
date: 2012-09-10 19:57
comments: true
sidebar: false
categories: Google
---

{% img /images/google_earth.png google search command%}

##cache:
Show the cached snapshot of a page
Sample search: 
	cache:www.google.com

The cache is the search engine's copy of a page in its index. Google typically caches the first 101K of a page and not the images. The links to the caches are shown in Google's search results and Page Info button on the Google toolbar can be used to access any cache available for the page.

<!--more-->

##link:
List pages which link to a page
Sample search: 
	link:www.google.com

The term "backlinks" is used to describe those links from external sites which point to the page in question. These links are also known as "Inbound Links" or "IBLs". "Outbound Links" or "OBLs" are links from your site to other sites. The search engine optimisation world places great emphasis on increasing the number of backlinks a site enjoys because Google's conceptual model uses backlinks as votes. In general terms, a site with more backlinks is more of an authority than a site with fewer backlinks. Not all backlinks are of equal importance. In Google the phrase "B.O." is used for "Backlink Obsession" as a humorous reference for webmasters and optimisers who fixate on gaining links. Google's use of the link command omits the "http" protocol.

##related:
List pages which Google consider to be related to another 
Sample search: 
	related:www.google.com

Related (or similar pages) are worked out by Google's algorithm. This search command allows you to find pages which discuss a similar topic to a page you have already found. For example, a review of Product X is likely to have related pages which also discuss Product X but may simply just be various reviews.


##info:
Find one specific URL in the search database 
Sample search: 
	info:www.google.com

Presents limited information about a particular page in Google's index. Typically the command shows the page snippet and title as well as links to the cache or related pages. Typing a fully qualified URL into Google's search produces the same page.

##define:
Show Google's glossary definations for a term
Sample search: 
	define:goofy

Google lists definitions of the keyword harvested from authoritative glossary-esq sites. The definitions are presented in a bullet point format with a link to the authoritative URL in green below. This results page differs from the links to Answers.com in the top right of many standard search result pages.

##site:
Restrict a search to a single site
Sample search: 
	site:www.evanhung.com

The site: command can be used in two ways; to restrict a search to one site or to list all the pages Google has indexed from one site. For example, site:www.searchcommands.com google searches Search Commands* for the word google and site:www.searchcommands.com searches the site for any page and therefore lists them all. The site: command can either include or omit the 'www' in a domain, omitting the www will return all the sub-domains from the domain which Google has found.


##allintitle:
Restrict a search so that all the keywords must appear in the title
Sample search: 
	allintittle:google

This advanced search command restricts results to those pages which have all the keywords in their title tag. The title tag is the mark up to put contents into the bar at the top of the browser (typically blue in Windows XP). The title tag for this page is Google search commands :: Search Commands*.

##intitle:
Restrict a search so that some of the keywords must appear in the title
Sample search: Search for pages which contain google in the title and search or commands in the title or body tag

Returns pages which have some of the keywords in the title tag. This advanced search command differs from allintitle: in that only the keyword adjacent to intitle: 
	intitle:google

##allintext:
Restrict a search so that all of the keywords must appear in the body text
Sample search: 
	allintext:google

Returns pages which have all of the keywords contained within the body tag. This advanced search ignores the title tag which normally has a non trivial significance in Google's algorithm.

##allinurl:
Restrict a search so that all of the keywords must appear in the page address
Sample search: 
	allinurl:google

A page's URL is its address. 

##inurl:
Restrict a search so that some keywords must appear in the page address
Sample search: 	
	inurl:google

Lists pages which have one or more of the keywords in their URL. The inurl: command can sometimes be used to restrict searches to specific sites and directories. For example: inurl:searchcommands.com/google/ inurl will return pages with 'searchcommands.com/google/' in their URL and inurl elsewhere on the page.

##OR
List pages which have at least some of the keywords
Sample search:
	dog OR bear

By default Google searches for almost all the keywords entered (some words like a, the, of, etc are omitted). The OR command is placed between two or more keywords and instructs Google to return pages which contain one or another of the keywords.


##+
Insist that the search engine includes a given keyword in the search results
Sample search: 
	Dreaming + in + digital

Google purposely omits some words from normal searches but the use of the + command instructs the search engine to include them. For example, Google would treat a search for search the commands as a search for search commands as the is ignored but the phrase search +the commands would ensure the word the was included.


##-
Insist that the search engine omits pages which match a given keyword in the search results
Sample search: 
	ebook -food

The - command creates a negative keyword which must not be present on any page Google matches with the rest of the query. For example, football -american is likely to return pages about Soccer.


##~
Enhance a search to include synonyms for a given keyword
Sample search: 
	~solution
The synonym search is more like an associated word search. With the ~ symbol present before a keyword Google will return pages which contain the keyword or pages which contain words commonly associated with the keyword. Google simply looks as frequencies across the internet to determine which words are associated with which. Words associated with commands are: reference and syntax.


##*
Include a wildcard match in your search results
Sample search: 	
I * you

The order of keywords in a Google search is significant. Adding the asterisk * as a wildcard to the keyphrase instructs Google that one or more other words should appear in that location.


##[#]...[#]
Search a range of numbers as a keyword
Sample search: 
	champions 1976...2005

The [#] values are replaced with numbers to form a range. For example, 1976...2005. Google will search for pages which contain numbers matching the first, the last or any number in the middle of the sequence.


##daterange:
Restrict a search to any daterange
Sample search: 
	daterange:2453638-2453615 search

The daterange command restricts Google's search to pages published between two dates. The date format used in the Julian calendar rather than the traditional Gregorian calendar. You can use Search Commands* Julian date calculator to formulate the correct syntax.


##""
Restrict a search so that the keywords must appear consecutively in a phrase
Sample search: 
	"search commands"
	
The order of keywords in a Google search is significant but not sacrosanct. Searching for search commands returns pages which simply mention search and commands. The search for "search commands" returns different results as only pages which mention search commands as a complete phrase are listed.



##safesearch:
Restrict a search to exclude adult-content Sample search: 
	Safesearch:girls

The safesearch command mimics the effects of enabling SafeSearch on the Google preferences panel and excludes adult related content. Unlike other Google commands it is necessary to leave a space between safesearch: and the keyword as placing the keyword directly adjacent to the colon results in odd (often adult) results. For example, safesearch:girls (safesearch is off in this example).


##filetype:
Restrict a search to a given type of file
Sample search: 
	steve jobs filetype:pdf

Google indexes more than just HTML pages. A wide range of different file types, including PDF and .doc files, are found in the search engine. The filetype command restricts searches to documents which match the filetype extension.


##Reference:
<http://www.searchcommands.com/google/>