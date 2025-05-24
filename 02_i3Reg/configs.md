# config tree

```
main    :   /etc/regolith/i3/config

# Include common partials
/usr/share/regolith/common/config.d/
    15_base_launchers  30_navigation  40_i3-swap-focus  40_workspace-config  50_resize-mode  82_rofication-ilia  84_ftue  88_network-manager

# Include any regolith i3 partials
include /usr/share/regolith/i3/config.d/*
    10_dbus-activation  20_ilia  35_gaps  40_default-style  55_session_keybindings  60_config_keybindings  70_bar  80_compositor  86_unclutter

# Include any partials common between i3 and sway sessions
include $HOME/.config/regolith3/common-wm/config.d/*
<default empty>

# Include any user i3 partials
include $HOME/.config/regolith3/i3/config.d/*
<default empty>
```

## changes

### regolith/i3/config.d/40_default-style

```
set_from_resource $wm.gaps.focus_follows_mouse wm.gaps.focus_follows_mouse yes
```


### /usr/share/regolith/common/config.d/30_navigation
```
## Navigate // Next Workspace // <><Alt> → ##
set_from_resource $wm.binding.ws_next2 wm.binding.ws_next2 Right
#bindsym $mod+$alt+$wm.binding.ws_next2 workspace next
bindsym Ctrl+$alt+Right workspace next


## Navigate // Previous Workspace // <><Alt> ← ##
set_from_resource $wm.binding.ws_prev2 wm.binding.ws_prev2 Left
#bindsym $mod+$alt+$wm.binding.ws_prev2 workspace prev
bindsym Ctrl+$alt+Left workspace prev


```

### default names

```
TBD
```



### ~/.config/regolith3/i3/config.d/myConfs

```
# open new wrksp with win+insert
bindsym $mod+Insert exec --no-startup-id i3-msg workspace $(i3-msg -t get_workspaces | jq 'map(.num) | max | .+1')

# jump betw windows in wrksp
bindsym $alt+Tab focus right


## add lock for win+l
# bindsym $mod+l exec "gsettings set org.gnome.desktop.input-sources current 0 ; xtrlock "

bindsym F1 workspace number $ws1
bindsym F2 workspace number $ws2
bindsym F3 workspace number $ws3
bindsym F4 workspace number $ws4
bindsym F5 workspace number $ws5
bindsym F6 workspace number $ws6
bindsym F7 workspace number $ws7
bindsym F8 workspace number $ws8
bindsym F9 workspace number $ws9
bindsym F10 workspace number $ws10


# mode to disable Fx moving between workspaces
mode "disable-Fx-modes" {
    # Bindings are disabled in this mode (no commands for F1-F5)
    # Return to default mode
    bindsym Ctrl+Escape mode "default" 
    #bindsym Escape mode "default" 
}
bindsym Ctrl+Escape mode "disable-Fx-modes"




```