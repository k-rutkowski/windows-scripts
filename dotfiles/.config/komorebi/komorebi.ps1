if (!(Get-Process whkd -ErrorAction SilentlyContinue))
{
    Start-Process whkd -WindowStyle hidden
}

. $PSScriptRoot\komorebi.generated.ps1

# Send the ALT key whenever changing focus to force focus changes
komorebic alt-focus-hack enable
# Default to cloaking windows when switching workspaces
komorebic window-hiding-behaviour cloak
# Set cross-monitor move behaviour to insert instead of swap
komorebic cross-monitor-move-behaviour insert
# Enable hot reloading of changes to this file
komorebic watch-configuration enable

# Create named workspaces I-V on monitor 0
komorebic ensure-named-workspaces 0 I II III IV V VI VII VIII IX X
# You can do the same thing for secondary monitors too
komorebic ensure-named-workspaces 1 A B C D E F G H i J

# Assign layouts to workspaces, possible values: bsp, columns, rows, vertical-stack, horizontal-stack, ultrawide-vertical-stack
komorebic named-workspace-layout I bsp
komorebic named-workspace-layout II bsp
komorebic named-workspace-custom-layout III $PSScriptRoot/layouts/iii.json
komorebic named-workspace-layout IV bsp
komorebic named-workspace-layout V bsp
komorebic named-workspace-layout A bsp
komorebic named-workspace-layout B bsp
komorebic named-workspace-layout C bsp
komorebic named-workspace-layout D bsp
komorebic named-workspace-layout E bsp

# Set the gaps around the edge of the screen for a workspace
komorebic named-workspace-padding I 0
komorebic named-workspace-padding II 0
komorebic named-workspace-padding III 0
komorebic named-workspace-padding IV 0
komorebic named-workspace-padding V 0
komorebic named-workspace-padding VI 0
komorebic named-workspace-padding VII 0
komorebic named-workspace-padding VIII 0
komorebic named-workspace-padding IX 0
komorebic named-workspace-padding X 0
komorebic named-workspace-padding A 0
komorebic named-workspace-padding B 0
komorebic named-workspace-padding C 0
komorebic named-workspace-padding D 0
komorebic named-workspace-padding E 0
komorebic named-workspace-padding F 0
komorebic named-workspace-padding G 0
komorebic named-workspace-padding H 0
komorebic named-workspace-padding i 0
komorebic named-workspace-padding J 0
# Set the gaps between the containers for a workspace
komorebic named-workspace-container-padding I 1
komorebic named-workspace-container-padding II 1
komorebic named-workspace-container-padding III 0
komorebic named-workspace-container-padding IV 0
komorebic named-workspace-container-padding V 0
komorebic named-workspace-container-padding VI 1
komorebic named-workspace-container-padding VII 1
komorebic named-workspace-container-padding VIII 1
komorebic named-workspace-container-padding IX 1
komorebic named-workspace-container-padding X 1
komorebic named-workspace-container-padding A 1
komorebic named-workspace-container-padding B 1
komorebic named-workspace-container-padding C 1
komorebic named-workspace-container-padding D 1
komorebic named-workspace-container-padding E 1
komorebic named-workspace-container-padding F 1
komorebic named-workspace-container-padding G 1
komorebic named-workspace-container-padding H 1
komorebic named-workspace-container-padding i 1
komorebic named-workspace-container-padding J 1

# You can assign specific apps to named workspaces
komorebic named-workspace-rule exe firefox.exe III
komorebic named-workspace-rule exe slack.exe III
komorebic named-workspace-rule exe devenv.exe IV
komorebic named-workspace-rule exe r2g_hellcard_Dev_d_steam.exe V
komorebic named-workspace-rule exe r2g_hellcard_Dev_steam.exe V
komorebic named-workspace-rule title Spotify.exe IX
komorebic named-workspace-rule exe scalc.exe X
komorebic named-workspace-rule exe betterbird.exe X

# Configure the invisible border dimensions
#komorebic invisible-borders 1 0 1 0

# Uncomment the next lines if you want a visual border around the active window
#komorebic active-window-border-colour 66 165 245 --window-kind single
#komorebic active-window-border-colour 256 165 66 --window-kind stack
#komorebic active-window-border-colour 255 51 153 --window-kind monocle
#komorebic active-window-border enable

komorebic complete-configuration
