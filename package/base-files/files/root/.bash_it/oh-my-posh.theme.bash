# shellcheck shell=bash

if _command_exists oh-my-posh; then
	export POSH_THEME=${POSH_THEME:-/root/.bash_it/custom/night-owl.omp.json}
	eval "$(oh-my-posh --init --shell bash --config "${POSH_THEME}")"
else
	_log_warning "The oh-my-posh binary was not found on your PATH. Falling back to your existing PS1, please see the docs for more info."
fi
