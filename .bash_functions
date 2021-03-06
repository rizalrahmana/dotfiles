# Run PHP built-in webserver
phps() {
    if [ $# -eq 1 ]; then
        php -S 0.0.0.0:8080 -t "$1"
    else
        php -S 0.0.0.0:8080
    fi
}

# Automatically create directory if not exist when ceating new file
# using touch command
mktouch() {
	if [ $# -lt 1 ]; then
		echo "Missing argumnet";
		return 1;
	fi

	for f in "$@"; do
		mkdir -p -- "$(dirname -- "$f")"
		touch -- "$f"
	done
}

# Color and Formatting to used for PS1
#
# Color
blue() {
    echo "\[\033[01;34m\]"
}
cyan() {
    echo "\[\033[01;36m\]"
}
gray() {
    echo "\[\033[01;30m\]"
}
green() {
    echo "\[\033[01;32m\]"
}
reset() {
    echo "\[\033[00m\]"
}

# Formatting
bold() {
    echo "\e[1m"
}
dim() {
    echo "\e[2m"
}

# Replace $HOME into '~' character
__pwd_prompt() {
    echo ${PWD} | sed -e "s#${HOME}#~#g"
}
