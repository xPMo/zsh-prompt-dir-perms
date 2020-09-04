#!/usr/bin/env zsh
# {{{ Handle fpath/$0
# ref: zdharma.org/Zsh-100-Commits-Club/Zsh-Plugin-Standard.html#zero-handling
0="${${ZERO:-${0:#$ZSH_ARGZERO}}:-${(%):-%N}}"
0="${${(M)0:#/*}:-$PWD/$0}"
if [[ $zsh_loaded_plugins[-1] != */ && -z $fpath[(r)${0:h}/functions] ]]
then
    fpath+=( "${0:h}/functions" )
fi

# For $usergroups
zmodload zsh/parameter
# For zstat
zmodload -F zsh/stat b:zstat
# For zlistattr
zmodload zsh/attr

# }}}

autoload -Uz prompt_dir_perms::build
return 0

# =============================================================
# It's just one function to load, but you need to configure it:
# Example (add to your ~/.p10k.zsh | ~/.zshrc | etc.):
zstyle :prompt:dir-perms color user '%F{green}' group '%F{yellow}' other '%F{magenta}' default '%F{8}' attr '%F{white}'
zstyle :prompt:dir-perms format '[%u%g%o%a]:'
