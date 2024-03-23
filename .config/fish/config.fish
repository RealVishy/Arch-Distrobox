if status is-interactive
    # Commands to run in interactive sessions can go here
    alias ls="eza --color=auto --icons=always"
    alias cat="bat"
    zoxide init fish | source
end
