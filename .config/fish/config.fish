if status is-interactive
    # Commands to run in interactive sessions can go here
end

set -gx EDITOR (which nvim)
set -gx VISUAL $EDITOR
set -gx SUDO_EDITOR $EDITOR

abbr vim nvim
abbr vi nvim
