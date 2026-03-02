#!/bin/bash
set -x

set_data_envs() {
	appInstDir="/opt/apps/${LINGLONG_APPID}/files"
	QT_PLUGIN_PATH="${appInstDir}/lib/x86_64-linux-gnu/qt5/plugins/"
}

main () {
	set_data_envs
	export QT_PLUGIN_PATH
	vlc "$@"
}

main "$@"