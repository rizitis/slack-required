#!/bin/bash

# rizitis 03/2023 GR 

dir=/tmp/slack-required
for i in `cat gnome-all.txt`; do
mkdir -p $dir
find ./ -name $i.info -exec cp {} $dir \;
cat $dir/$i.info | grep REQUIRES= > $dir/$i.txt
sed -i 's/REQUIRES=//g' $dir/*.txt
sed -i 's/^"//' $dir/*.txt
sed -i 's/"$//' $dir/*.txt
tr -cs [:graph:] '\n' < $dir/$i.txt > $dir/$i.req
rm $dir/*.txt $dir/*.info
done
