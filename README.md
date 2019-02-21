![](https://i.imgur.com/76XLeVJ.png)

**easynotebook** is an ultra-minimalistic generator for static websites, ideal
for blogs. It takes a bunch of Markdown-files and generates HTML-files out of
it, all listed on an index-page.

#### Requirements
A less-than-20-years-old version of `bash` as well as `pandoc`.

For Debian / Ubuntu:  
`sudo apt-get install pandoc`  
For RHEL / Fedora / CentOS:  
`sudo dnf install pandoc`  
For OSX the best option is [Homebrew](https://brew.sh):  
`brew install pandoc`  
For more information please refer to the corresponding
[documentation](https://pandoc.org/installing.html#macos). Please be aware that
there are some issues on OSX - the site will generate just fine, but you'll get
command line warnings. Since I don't own an OSX-device I was only able to test
it briefly!

#### Usage
You need to populate two files/folders:

* `index.md` - this is your frontpage, that's what every visitor sees first
* `posts/*.md` - each Markdown-file in `posts` is treated as single post.

Each of those posts has the following structure:
```
date: 2019-02-10
title: Here is the place for your title

~CONTENTSTART
~CONTENTEND
```

* `date` is the date of the post, formatted as `date -I`
* `title` is the title of your post
* `~CONTENTSTART` and `~CONTENTEND` are limiters, add the content of your post between those too

`posts/example.md` holds an example. After you wrote some things, just run the script:  

`bash generate.sh`  

The results can be found in the folder `site`.

#### FAQ
* What technologies does this us? Javascript? CSS?
No Javascript-developers have been harmed in the generation of HTML-files. It's
really simple - Markdown as input for `pandoc`, together with a CSS-file (based
off of [getskeleton.com](https://getskeleton.com)), output is self-contained
HTML. Et voila!
* Can I use my own CSS?
Yes, just replace the content of `style.css` with whatever you like.
* This is .. super-crude?!
I'm aware of that. I wrote that in an hour for myself .. if the crudeness
bothers you, look at it as a proof-of-concept. Even with the most basic
tech-skills you can create nice things.
* Will it eventually be less-crude?
Yes, once I'm bothered enough by my own ugly 'code'.
