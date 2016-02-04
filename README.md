Works Windows 10 SDL2 shows colors and a rotating picture
It uses Mingw to compile with Eclipse, make is broken
So... YMMV
On linux it compiles with gcc and the Makefile using "make"
Things we have learned by trying to create a Windows and Linux Window+SDL2+OpenGL template
README.md extension means "MarkDown"
fork to contribute or copy (github only)
send a pull request
sync your fork

git status
* git diff
* markdown language
* git remote -v
* git remote add origin 'url'
* git add [. || filename || * ]
* git commit -m "What this commit does"
* git log
* sync a fork, fetch, merge , push
* git remote add upstream "url"
* git fetch upstream <pass>
* git merge upstream/master 
* git push origin master <pass>
* http://gitref.org/
* git stash
* git reset HEAD --file
* git branch newbranch
* rejected when pushing and rejected pull requests



:+1: :shipit: Some silly emoticons that can be used. _*(NEW) Simon & Garfink song*_ "We all come to look for emoticons"

1. List
2. 2

| table |
| ----- |
| *item*  |

There is an unusual compile problem ( on Linux) that involves adding -lz or zlib to link to make this work 
and that seems like a kludge as well as implying that the system is non-deterministic
and could change behavior by just changing some unrelated code or in a different machine environment
The crash happens on SDL_Quit or SDL_Image so it means there is some library interface problem I assume.

##github went nuts with emojis## 

I thought they should have an emoji that indicated this repo was a steming pile of shit and lo and behold :poop:
