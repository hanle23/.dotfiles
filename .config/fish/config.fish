source /usr/share/cachyos-fish-config/cachyos-config.fish

# overwrite greeting
# potentially disabling fastfetch
#function fish_greeting
#    # smth smth
#end

# pnpm
set -gx PNPM_HOME '/home/hanle/.local/share/pnpm'
if test "$PATH[1]" != "$PNPM_HOME/bin"
  set -gx PATH "$PNPM_HOME/bin" $PATH
end
# pnpm end
