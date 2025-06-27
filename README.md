# el-ee
 Build Commands  

 ansible-builder build -f execution-environment.alma.yml -t ee-alma  
 ansible-builder build -f execution-environment.rhel.yml -t ee-rhel  

 ansible-builder build --tag my-custom-ee:latest  
  

  ansible-builder build --tag my-ee:latest && rm -rf context/ dependency/
bash script
  #!/bin/bash
set -e

TMPDIR=$(mktemp -d)
cp execution-environment.yml ansible.cfg requirements.* bindep.txt "$TMPDIR"
cd "$TMPDIR"

ansible-builder build --tag my-ee:latest --no-cache

cd -
rm -rf "$TMPDIR"
