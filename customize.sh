#!/system/bin/sh
# KTSR™ by pedro (pedrozzz0 @ GitHub, pedro3z0 @ Telegram)
# If you wanna use it as part of your project, please maintain the credits to it respective's author(s).
# chown k1n6 pr0j3ct5 p3dr0zzz && chmod 1337 p3dr0zzz
DEBUG=true
moddir="/data/adb/modules/"
mkdir -p "$MODPATH/system/bin"
rm -rf "/data/media/0/KTSR"
mkdir -p "/data/media/0/ktsr"
awk '{print}' "$MODPATH/common/bourbon_banner"
ui_print "Version: $(grep_prop version "$MODPATH/module.prop")"
ui_print ""
ui_print "Bourbon is a userspace task optimizer"
ui_print ""
ui_print "It should improve user-experience by changing tasks affinity and priority according to their needs, also improving performance and battery life"
ui_print ""
ui_print "This project is directly inspired by kernel developers and also may contain adaptations of their commits"
ui_print ""
ui_print "If you like it, please consider sharing it to your friends, it means a lot. ❤️"
ui_print ""
ui_print "Credits:"
ui_print ""
ui_print "qti-mem-opt by Matt Yang (yc9559 @ CoolApk)"
ui_print ""
ui_print "And a special thanks to everyone that supports my project since it's born and all the others projects also."
ui_print "With love, Pedro, #KeepTheKing. ♡"
ui_print ""
sleep 5

ui_print "[*] Fetching the latest script(s) from GitHub..."
wget -O "$MODPATH/system/bin/bourbon" "https://raw.githubusercontent.com/pedrozzz0/bourbon/master/bourbon"

set_permissions() {
	set_perm_recursive "$MODPATH/system/bin" 0 0 0777 0755
}

SKIPUNZIP=0
unzip -qjo "$ZIPFILE" 'common/functions.sh' -d "$TMPDIR" >&2
. "$TMPDIR/functions.sh"

ui_print ""
ui_print "[*] Bourbon log(s) are stored in internal storage/ktsr"
ui_print ""
ui_print "[*] Consider saving the installation logs only in case of anything going wrong"
ui_print ""
ui_print "[!] Reboot to the changes be applied."
ui_print ""
magiskhide disable >/dev/null 2>&1
magiskhide enable >/dev/null 2>&1
magisk --denylist enable >/dev/null 2>&1
magiskhide add com.tencent.ig >/dev/null 2>&1
magiskhide add com.epicgames.fortnite >/dev/null 2>&1
magiskhide add com.vng.pubgmobile >/dev/null 2>&1
magiskhide add com.pubg.krmobile >/dev/null 2>&1
magiskhide add com.activision.callofduty.shooter >/dev/null 2>&1
magiskhide add com.garena.game.codm >/dev/null 2>&1
magiskhide add com.pubg.newstate >/dev/null 2>&1
magiskhide add com.plato.android >/dev/null 2>&1
magiskhide add com.dts.freefireth >/dev/null 2>&1
magiskhide add com.dts.freefiremax >/dev/null 2>&1
magiskhide add com.kitkagames.fallbuddies >/dev/null 2>&1
magisk --denylist add com.pubg.newstate >/dev/null 2>&1
magisk --denylist add com.garena.game.codm >/dev/null 2>&1
magisk --denylist add com.activision.callofduty.shooter >/dev/null 2>&1
magisk --denylist add com.pubg.krmobile >/dev/null 2>&1
magisk --denylist add com.epicgames.fortnite >/dev/null 2>&1
magisk --denylist add com.tencent.ig >/dev/null 2>&1
magisk --denylist add com.plato.android >/dev/null 2>&1
magisk --denylist add com.dts.freefireth >/dev/null 2>&1
magisk --denylist add com.dts.freefiremax >/dev/null 2>&1
magisk --denylist add com.kitkagames.fallbuddies >/dev/null 2>&1
