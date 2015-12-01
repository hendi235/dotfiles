# base-files version 4.1-1

# ~/.bashrc: executed by bash(1) for interactive shells.


# If not running interactively, don't do anything
[[ "$-" != *i* ]] && return

# History Options
#
# Don't put duplicate lines in the history.
export HISTCONTROL=$HISTCONTROL${HISTCONTROL+,}ignoredups

# Aliases
#
# Some people use a different file for aliases
# if [ -f "${HOME}/.bash_aliases" ]; then
#   source "${HOME}/.bash_aliases"
# fi
#
# alias whence='type -a'                        # where, of a sort
alias grep='grep -E --color'                     # show differences in colour
# alias fgrep='fgrep --color=auto'              # show differences in colour
#
# Some shortcuts for different directory listings
# alias ls='ls -hF --color=tty'                 # classify files in colour
# alias dir='ls --color=auto --format=vertical'
# alias vdir='ls --color=auto --format=long'
alias lsa='ls -altr'
alias cdd='cd /cygdrive/d'
alias cdm='cd /cygdrive/d/22_SELECT_PROJECT/14_MAXIS'
alias cdtt='cd /cygdrive/d/CODE/MXS15/hm_mxs15/advcust_cpocsprojects/MXS/business/base/FLT'
alias cdt='cd /cygdrive/d/CODE/hm_mxs_15/advcust_cpocsprojects/MXS/business/base/FLT'
alias cdcase='cd /cygdrive/d/CASE_ANALYSIS/MAXIS/S15'
alias cdmxs='cd /cygdrive/d/CODE/hm_mxs_15'

export MXS15=/cygdrive/d/CODE/hm_mxs_15/advcust_cpocsprojects/MXS/business
export MXS15PROD=/cygdrive/d/CODE/hm_mxs_15/select17_blueprint/business
export MXS_CASE=/cygdrive/d/CASE_ANALYSIS/MAXIS

# Functions
#
# Some people use a different file for functions
# if [ -f "${HOME}/.bash_functions" ]; then
#   source "${HOME}/.bash_functions"
# fi
