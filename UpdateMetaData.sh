#!/bin/bash
echo Crack bash!

declare -i var=0
for i in `aws s3 ls s3://trivyol-media --profile triv-s3`; do

    # echo $i
    if [[ $i == *"jpg"*  ]]; then

      echo $i;
      # aws s3api put-object --bucket joy.trivyol.com --key $i --content-disposition attachment --content-type image/jpeg --profile triv-s3;

      var=$var+1;
      echo $var;

    fi

done;



# aws s3api put-object --bucket joy.trivyol.com --key $i --content-disposition attachment --content-type image/jpeg --profile triv-s3;

