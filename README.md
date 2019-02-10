<div align="center">![](https://i.imgur.com/76XLeVJ.png)</div>

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
For more information please refer to the corresponding [documentation](https://pandoc.org/installing.html#macos)

#### Usage


#### FAQ
* What technologies does this us? Javascript? CSS?
No Javascript-developers have been harmed in the generation of HTML-files. It's
really simple - Markdown as input for `pandoc`, together with a CSS-file (based
off of [getskeleton.com](https://getskeleton.com)), output is self-contained
HTML. Et voila!
* This is .. super-crude?!
I'm aware of that. I wrote that in an hour for myself .. if the crudeness
bothers you, look at it as a proof-of-concept. Even with the most basic
tech-skills you can create nice things.
* Will it eventually be less-crude?
Yes, once I'm bothered enough by my own ugly 'code'.
