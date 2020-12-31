# Put system-wide fish configuration entries here
# or in .fish files in conf.d/
# Files in conf.d can be overridden by the user
# by files with the same name in $XDG_CONFIG_HOME/fish/conf.d

# This file is run by all fish instances.
# To include configuration only for login shells, use
# if status --is-login
#    ...
# end
# To include configuration only for interactive shells, use
# if status --is-interactive
#   ...
# end

alias cp='cp -g'
alias mv='mv -g'

export GTK_IM_MODULE=fcitx
export QT_IM_MODULE=fcitx
export XMODIFIERS="@im=fcitx"

# 初始化 coredump 文件生成
echo "core_dump_%e_%p_%t" > /proc/sys/kernel/core_pattern

iptables -A OUTPUT -p tcp --sport 2375 -j ACCEPT
iptables -A INPUT -p tcp --dport 2375 -j ACCEPT
