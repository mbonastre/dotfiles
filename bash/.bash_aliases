alias ls='ls --color=auto'
alias dude='wine "C:/Program Files (x86)/Dude/dude.exe" > /dev/null 2>&1'
alias winbox='wine /usr/local/bin/winbox.exe $@ > /dev/null 2>&1'
alias winscp='wine "C:/Program Files (x86)/WinSCP/WinSCP.exe" > /dev/null 2>&1'
PDFXedit() { wine PDFXedit.exe $@ > /dev/null 2>&1 ; }
alias l_openvpn='sudo openvpn --client --config /etc/openvpn/client/client.conf'
alias l_openvpn_lan='sudo openvpn --client --config /etc/openvpn/client/client-lan.conf'

