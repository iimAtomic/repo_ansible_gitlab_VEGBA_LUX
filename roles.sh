#!/bin/bash

while [ rolename != 'ok' ]
do
read -p 'Quel role tu va créer ?' rolename
echo $rolename

for i in $rolename
do
mkdir -p roles/$rolename/tasks
mkdir -p roles/$rolename/handlers
mkdir -p roles/$rolename/templates
mkdir -p roles/$rolename/files
mkdir -p roles/$rolename/vars
mkdir -p roles/$rolename/defaults
mkdir -p roles/$rolename/meta
done
done