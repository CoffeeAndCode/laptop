#!/bin/sh

optional() {
	name="$1"
	cmd="$2"
	url="$3"

	if [ -d "$cmd" ] || [ -f "$cmd" ]; then
		echo "✓ $name, $url" >&2
	elif ! [ -x "$(command -v "$cmd")" ]; then
  		echo "* $name is an optional install. You can learn more about it at $url" >&2
	else
		echo "✓ $name, $url" >&2
	fi
}

required() {
	name="$1"
	cmd="$2"
	url="$3"

	if [ -d "$cmd" ] || [ -f "$cmd" ]; then
		echo "✓ $name, $url" >&2
	elif ! [ -x "$(command -v "$cmd")" ]; then
  		echo "✖ $name is not installed. You can learn more about it at $url" >&2
		  # shellcheck disable=SC2034
		return_code=1
	else
		echo "✓ $name, $url" >&2
	fi
}
