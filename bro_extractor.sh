for i in `ls -a | grep "log" | sort`; do echo "file:" $i; echo "Fields for" $i; head $i |grep ^#fields |sed 's/#fields\t//g' | sed 's/\t/","/g' | awk '{print $1"\""}' | sed 's/^ts",//g'; echo " "; echo "Regex for this" $i; head $i | grep ^#fields |sed 's/#fields\t//g' |sed 's/\./_/g' |sed 's/\t/>[^\\t]+)\\t(\?</g' |awk '{print $1">[^\\t]+)"}' | sed 's/^ts>\[^\\t\]+)\\t/^/g'; echo " "; done
