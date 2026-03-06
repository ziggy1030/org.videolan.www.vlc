#!/bin/bash
set -x

set_data_envs() {
	appInstDir="/opt/apps/${LINGLONG_APPID}/files"

	platformArch=$(arch)
	case "${platformArch}" in
		x86_64)
			QT_PLUGIN_PATH="${appInstDir}/lib/x86_64-linux-gnu/qt5/plugins/"
			;;
		aarch64)
			QT_PLUGIN_PATH="${appInstDir}/lib/aarch64-linux-gnu/qt5/plugins/"
			;;
		*)
			echo "Unsupported architecture: ${platformArch}"
			exit 1
			;;
	esac
}

main () {
	set_data_envs
	export QT_PLUGIN_PATH
	vlc "$@"
}

main "$@"