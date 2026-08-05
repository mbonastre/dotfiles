#!/bin/echo This file must be run in the same process with "." (source)

cherry-pick() {
    local default_branch="7.2"
    local default_list="main 7.4"

    local num_commits="$1"
    if [ -z "${num_commits}" ] ; then
      echo "Usage: cherry-pick num_commits [ref_branch] [branch_list]"
      echo "  num_commits:  how many commits to cherry-pick"
      echo "  ref_branch:   branch from which to get the commits (default: ${default_branch})"
      echo "  branch_list:  list of branches where to apply the commits (default: ${default_list})"
      return
    fi    
    shift
    local ref_branch="$1"
    if [ -z "${ref_branch}" ] ; then ref_branch="${default_branch}" ; fi
    shift
    local branch_list="$*"
    if [ -z "${branch_list}" ] ; then branch_list="${default_list}" ; fi

    echo "cherry-pick ${num_commits} ${ref_branch} ${branch_list}"
    local branch
    for branch in ${branch_list} ; do
      figlet ${branch}
      git checkout ${branch} && git pull && git cherry-pick ${ref_branch}~${num_commits}..${ref_branch} || break
    done
    figlet -t "checkout   ${ref_branch}"
    git checkout ${ref_branch}
}
