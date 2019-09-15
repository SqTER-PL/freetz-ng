#!/bin/sh

VALS="$(echo ar7cfg.voip_forwardrules | ar7cfgctl -s | sed 's/, /\n/g' | sed -rn 's/^\"([ut][dc]p) 0.0.0.0:([^ ]*) .*/\2_\1/p' | sort -n)"
[ "$(echo "$VALS" | grep -E '5060_tcp|5060_udp|7078\+32_udp' | wc -l)" != "3" ] && AVM_RULES_SIP='no' || AVM_RULES_SIP='yes'
[ "$AVM_RULES_SIP" == "yes" ] && VALS="$(echo "$VALS" | grep -vE '5060_tcp|5060_udp|7078\+32_udp')"
AVM_RULES_TCP="$(for x in $(echo "$VALS" | sed -rn 's/_tcp$//p'); do echo -n "$x "; done | sed 's/ $//')"
AVM_RULES_UDP="$(for x in $(echo "$VALS" | sed -rn 's/_udp$//p'); do echo -n "$x "; done | sed 's/ $//')"
echo -e "export AVM_RULES_SIP='$AVM_RULES_SIP'\nexport AVM_RULES_TCP='$AVM_RULES_TCP'\nexport AVM_RULES_UDP='$AVM_RULES_UDP'" > /mod/etc/conf/avm-rules.cfg

. /usr/lib/libmodcgi.sh


sec_begin '$(lang de:"Einstellungen" en:"Settings")'

cgi_print_checkbox_p "sip" "$AVM_RULES_SIP" "$(lang de:"VoIP-Ports" en:"VoIP ports"): tcp+udp 5060 + udp 7078-7109"

cat << EOF
$(lang de:"Freizugebende Ports, mehrere durch Leerzeichen getrennt" en:"Ports to open, multiple seperated by spaces").
EOF

cgi_print_textline_p "tcp" "$AVM_RULES_TCP" 55/255 "TCP$(lang de:"-Ports" en:" ports"): "

cgi_print_textline_p "udp" "$AVM_RULES_UDP" 55/255 "UDP$(lang de:"-Ports" en:" ports"): "

cat << EOF
<ul>
<li>$(lang de:"Portbl&ouml;cke so angeben: PORT+ANZAHL, zB 55500+3 f&uuml;r 55500-55502" en:"For blocks of ports: PORT+COUNT, eg 55500+3 for 55500-55502").</li>
<li>$(lang de:"Es muss insgesamt mindestens 1 Port freigegeben werden" en:"You have to open at least 1 port at all").</li>
<li>$(lang de:"Die Eintr&auml;ge k&ouml;nnen im AVM-Webif unter Diagnose > Sicherheit &uuml;berpr&uuml;ft werden" en:"You could check the settings by AVM webif with Diagnose > Sicherheit").</li>
<li>$(lang de:"Bei Syntaxfehlern wird die komplette ar7.cfg von AVM zur&uuml;ckgesetzt" en:"On syntax errors, the whole ar7.cfg will be reset by AVM").</li>
</ul>
EOF

sec_end

