# slack-required
This script searching your local SlackBuild repo and create a dep list for every package you have in you list.

[![](https://github.com/rizitis/slack-required/blob/main/Screenshot%20from%202023-03-16%2011-21-30.png)]()

## examples
I builded Gnome from SlackBuilds.org and I want to have a binary repo.
But I want to know every binary package what deps have.
This script reading gnome-all.txt build list and then find every package`s .info file read "REQUIRES=" line and 
create a package-folder/package.req file in /tmp/slack-required/

You must have a local copy of a SlackBuilds and run script in the top level dir. Edit gnome-all.txt list with your packages list.  
