#!/bin/bash
counter=0
for file in ./unit-checks/*; do
    if [ -f "$file" ]; then
        counter=$((counter+1))
        k=$(basename $file)
        echo "run" $counter "file" $k
        out=$(clingo --warn none ./CBCTT-UP-Enc.lp ./CBCTT-UP-Facts.lp ./unit-checks/$k)
        flag=true
        str="$(grep "Output " $file)" # after 'Output ' every term separated by ') ' saved in array
        str=${str/\%Output /}
        str=${str// /\<-\>}
        str=${str//)\<-\>/) }
        array=($str)
        for i in ${array[@]}; do 
            substr=${i//\<->/ }
            #echo "check for $substr"
            if [[ "$out" == *"$substr"* ]]; then # check if each element of expected output is found in $out
                echo "successfull" 
            else 
                echo "failed"
            fi
        done
    fi
done
