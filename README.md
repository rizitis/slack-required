# slack-required
This script serch your local SlackBuild repo and create a dep list for every package you have in you list.

## examples
I builded Gnome from SlackBuilds.org and I want to have a binary repo.
But I want to know every binary package what deps have.
This script reading gnome-all.txt build list and then find every package`s .info file read "REQUIRES=" line and 
create a package.req file in /tmp/slack-required/

You must have a local copy of a SlackBuilds and run script in the top level dir. Edit gnome-all.txt list with your packages list.  
