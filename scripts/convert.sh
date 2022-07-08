#!/bin/bash

if [ -n "$1" ] && [ -e $1 ]; then
	file=$1
else
	echo " ** Input File : $1 does not exist"
	echo " ** Please specify the correct dependencies file"
	echo " ** Usage : bash <path-to-script> <path-to-dependencies-file> [<path-to-local-manifest>]"
	exit 1
fi

if [ -n "$2" ]; then
	manifest_path="$2"
elif [ -e .repo ]; then
	mkdir -p .repo/local_manifests
	manifest_path=".repo/local_manifests/roomservice.xml"
else
	echo " ** Manifest file to create not specified."
	echo " ** And .repo folder does not exist in $PWD"
	echo " ** Either run the script from root of your source or specify a custom path+filename"
	echo " ** Usage : bash <path-to-script> <path-to-dependencies-file> [<path-to-local-manifest>]"
	exit 1
fi


if [ -e $manifest_path ]; then
	sed -i 's@</manifest>@@g' $manifest_path
else
	echo "<?xml version=\"1.0\" encoding=\"UTF-8\"?>" > $manifest_path
	echo "<manifest>" >> $manifest_path
fi

vars=( "remote" "repository" "target_path" "branch" "revision")

for i in ${!vars[@]} ; do
	value=$(grep "${vars[$i]}" "$file" | cut -d '"' -f4)
	if [ "$value" != "" ]; then
		declare -a ${vars[$i]}"_val"="( $value )"
	fi
done

for i in {0..5}; do
	if [ "${repository_val[$i]}" != "" ] && [ "${target_path_val[$i]}" != "" ]; then
		target_path="path=\"${target_path_val[$i]}\""
		repository=" name=\"${repository_val[$i]}\""
		if [ "${remote_val[$i]}" != "" ]; then
			remote_for_repo=" remote=\"${remote_val[$i]}\""
		fi
		if [ "${branch_val[$i]}" != "" ]; then
			revision=" revision=\"${branch_val[$i]}\""
		elif [ "${revision_val[$i]}" != "" ]; then
			revision=" revision=\"${revision_val[$i]}\""
		fi
		echo "  <project $target_path$repository$remote_for_repo$revision />" >> $manifest_path
	fi
done

echo "</manifest>" >> $manifest_path
