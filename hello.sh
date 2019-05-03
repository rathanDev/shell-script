#!/bin/bash
echo Crack bash!

declare -i var=0
for i in `aws s3 ls s3://joy.trivyol.com --profile triv-s3`; do

    # echo $i
    if [[ $i == *"png"*  ]]; then
      echo "It's there !!!"
      var=$var+1
      echo $var
    fi

done;



# aws s3api put-object --bucket joy.trivyol.com --key $i --content-disposition attachment --content-type image/jpeg --profile triv-s3;

