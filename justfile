default:
  @just --list --unsorted

create libName:
  mkdir -p libraries/{{libName}}/{src,resources,steps}

watch:
  git checkout -B demo-branch
  watchexec --exts groovy just commit 

pull:
  git pull https://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@github.com/williamwylok/jte-configuration.git
  
push:
  git push https://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@github.com/williamwylok/jte-configuration.git

commit: 
  git add * 
  git commit -am "update"

cleanup: 
  docker rm -f demo-jenkins
  rm -rf libraries/**
  git checkout main 
  git branch -D demo-branch
