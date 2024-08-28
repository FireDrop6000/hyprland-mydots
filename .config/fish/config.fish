if status is-interactive
    fzf --fish | source

    zoxide init --cmd cd fish | source

    thefuck --alias | source

    oh-my-posh init fish --config ~/.config/ohmyposh/zen.toml | source
end
