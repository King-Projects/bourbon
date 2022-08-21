#!/system/bin/sh
# By pedro (pedrozzz0 @ GitHub)
# Thanks to bdashore3 @ GitHub
# Thanks to Draco (tytydraco @ GitHub)
yellow=$(tput setaf 3)
green=$(tput setaf 2)
boldgreen=${bold}${green}
boldred=${bold}${red}
red=$(tput setaf 1)
blue=$(tput setaf 4)
bold=$(tput bold)
blink=$(tput blink)
default=$(tput sgr0)
v="1.0.1"

vcd=$(grep versionCode= module.prop | sed "s/versionCode=//")

init=$(date +%s)

[ "$(grep build_date $(pwd)/module.prop)" ] && sed -i -e "/build_date=/s/=.*/=$(date)/" "$(pwd)/module.prop"

[ ! "$(grep build_date $(pwd)/module.prop)" ] && echo "build_date=$(date)" >>"$(pwd)/module.prop"

vcd=$(printf "%.3d" "$((vcd + 1))")
sed -i -e "/versionCode=/s/=.*/=$vcd/" "$(pwd)/module.prop"

sed -i -e "/version=/s/=.*/=$v/" "$(pwd)/module.prop"

echo ""
echo "Build starting at $(date)"
echo ""

echo "Zipping ${blink}bourbon-$v..."

zip -0 -r9 -ll "bourbon-$v.zip" . -x *.git* -x bourbon -x build.sh -x _config.yml
mv -f "bourbon-$v.zip" ../out

exit=$(date +%s)

exec_time=$((exit - init))

[ $? -ne "1" ] && {
	echo "${boldgreen}Build done in $((exec_time / 60)) minutes and $exec_time seconds!${blue} Check the folder to the finished build."
	exit 0
} || {
	echo "${boldred}Build failed in $((exec_time / 60)) minutes and $exec_time seconds!${yellow} Please fix the error(s) and try again."
	exit 1
}
