function are_we_gd {
	($env:GIT_DIR).StartsWith("${env:HOME}/.gd")
}
function gd_enter {
	$env:GIT_DIR = "${env:HOME}/.gd"
	$env:GIT_WORK_DIR = "${env:HOME}"
}
function gd {
	env GIT_DIR="${env:HOME}/.gd" GIT_WORK_DIR="${env:HOME}" git @Args
}
function ls { get-childitem @args }
function lsa { get-childitem -attributes hidden,!hidden @args }