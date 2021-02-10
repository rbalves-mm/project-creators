#!/bin/bash
git clone git@github.com:rbalves-mm/project-starter-next.git
echo Qual o nome do projeto?
read nome_projeto
mv project-starter-next $nome_projeto
mv $nome_projeto ../
cd ..
cd $nome_projeto
rm -rf .git
git init
git add .
git commit -m "started project"
git branch -M main
yarn
code .
yarn dev