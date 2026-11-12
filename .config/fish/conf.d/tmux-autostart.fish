if status is-interactive
    and not set -q TMUX
    and command -q tmux
    exec tmux new-session -A -s main
end
