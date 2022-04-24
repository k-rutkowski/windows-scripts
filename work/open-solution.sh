#!/bin/bash
#set -x

vs_path='/mnt/c/Program Files/Microsoft Visual Studio/2022/Community/Common7/IDE/devenv.exe'
project_rel_path='code/build_scripts/msvc2019'
project_rel_path2='build_scripts/msvc2019'

if [[ -z "$1" ]]; then
	project_root='.'
	project_root_win='.'
else
	project_root="/mnt/b/work/git/$1"
	project_root_win="B:/work/git/$1"
fi

if [[ -d "$project_root/$project_rel_path" ]]; then
	solution_dir="$project_root/$project_rel_path"
else
	solution_dir="$project_root/$project_rel_path2"
fi

if ! [[ -d "$solution_dir" ]]; then
	echo "Invalid project root directory: $project_root" >&2
	exit 1
fi

solution_filename=$(find "$solution_dir" -iname *.sln -printf "%f\\n")
solution_path="$solution_dir/$solution_filename"
if ! [[ -f "$solution_path" ]]; then
	echo "Solution file not found in $solution_dir" >&2
	exit 1
fi

echo "Opening $solution_path"

solution_path_win="$project_root_win/$project_rel_path/$solution_filename"
nohup "$vs_path" "$solution_path_win" >/dev/null 2>&1 &

