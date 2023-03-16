#!/bin/bash

# rizitis 03/2023 GR 
# this srcipt reads a build list and then find packages .infos files and create a slack-required folder.
# its useful if you want to use/support a binary repo or if you want a binary package manager to resolved deps from your repo.
# here is an example, build list is the full Gnome 41 build list from SlakcBuilds

dir=/tmp/slack-required
for i in `cat gnome-all.txt`; do
mkdir -p $dir || exit
find ./ -name $i.info -exec cp {} $dir \;
cat $dir/$i.info | grep REQUIRES= > $dir/$i.txt
sed -i 's/REQUIRES=//g' $dir/*.txt
sed -i 's/^"//' $dir/*.txt
sed -i 's/"$//' $dir/*.txt
tr -cs [:graph:] '\n' < $dir/$i.txt > $dir/$i.req
mkdir -p $dir/$i || exit
cp $dir/$i.req $dir/$i/
rm $dir/*.txt $dir/*.info $dir/*.req
done
