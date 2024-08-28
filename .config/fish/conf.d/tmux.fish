set -q fish_tmux_alter_path || set fish_tmux_alter_path true

if test fish_tmux_alter_path = true
    switch (uname)
        case "Linux"
            if test -d /home/linuxbrew
                set -gx PATH "/home/linuxbrew/bin" "/home/linuxbrew/sbin" $PATH
            end
        case "Darwin"
            if test -d /opt/homebrew
                set -gx PATH "/opt/homebrew/bin" "/opt/homebrew/sbin" $PATH
            end
            # Not sure if this is needed though because on Linux /usr/local is in the PATH by default
            if test -d /usr/local
                set -gx PATH "/usr/local/bin" "/usr/local/sbin" $PATH
            end
    end
end

if not type -q tmux
     echo "fish tmux plugin: tmux not found. Please install tmux before using this plugin." >&2
     exit 1
end

set -q fish_tmux_autostart || set fish_tmux_autostart true
set -q fish_tmux_autostart_once || set fish_tmux_autostart_once true
set -q fish_tmux_autoconnect || set fish_tmux_autoconnect true
set -q fish_tmux_autoquit || set fish_tmux_autoquit $fish_tmux_autostart
set -q fish_tmux_fixterm || set fish_tmux_fixterm true
set -q fish_tmux_iterm2 || set fish_tmux_iterm2 false
set -q fish_tmux_fixterm_without_256color || set fish_tmux_fixterm_without_256color "screen"
set -q fish_tmux_fixterm_with_256color || set fish_tmux_fixterm_with_256color "screen-256color"
set -q fish_tmux_config || set -x fish_tmux_config "$HOME/.config/tmux/tmux.conf"
set -q fish_tmux_unicode || set fish_tmux_unicode false

if test (tput colors) = "256"
    set -x fish_tmux_term $fish_tmux_fixterm_with_256color
else
    set -x fish_tmux_term $fish_tmux_fixterm_without_256color
end

set -l script_dir (realpath (dirname (status -f)))
if test ! $fish_tmux_iterm2 = true && test -e $fish_tmux_config
    set -x _fish_tmux_fixed_config "$script_dir/tmux.extra.conf"
else
    set -x _fish_tmux_fixed_config "$script_dir/tmux.only.conf"
end

function _fish_tmux_plugin_run
    if test (count $argv) -gt 0
        command tmux $argv
        return $status
    end

    set -l tmux_cmd tmux
    test $fish_tmux_iterm2 = true && set -a tmux_cmd -CC
    test $fish_tmux_unicode = true && set -a tmux_cmd -u

    if test $fish_tmux_autoconnect = true && tmux has-session
        exec $tmux_cmd attach
    else
        if test $fish_tmux_fixterm = true
            set -a tmux_cmd -f $_fish_tmux_fixed_config
        else if test -e $fish_tmux_config
            set -a tmux_cmd -f $fish_tmux_config
        end

        if set -q fish_tmux_default_session_name
            exec $tmux_cmd new-session -s $fish_tmux_default_session_name
        else
            exec $tmux_cmd new-session
        end
    end
end

alias tmux=_fish_tmux_plugin_run

set -q fish_tmux_autostarted || set fish_tmux_autostarted false
if status is-interactive && ! fish_is_root_user
    if test -z $TMUX && \
        test $fish_tmux_autostart = true && \
        test -z $INSIDE_EMACS && \
        test -z $EMACS && \
        test -z $VIM && \
        test -z $VSCODE_RESOLVING_ENVIRONMENT && \
        test "$TERM" != 'linux' && \
        test "$TERM_PROGRAM" != 'vscode' && \
        test "$TERMINAL_EMULATOR" != 'JetBrains-JediTerm'
        if test $fish_tmux_autostart_once = false || test ! $fish_tmux_autostarted = true
            set -x fish_tmux_autostarted true
            _fish_tmux_plugin_run
        end
    end
end
