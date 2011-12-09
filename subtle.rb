# Window move/resize steps in pixel per keypress
set :step, 2

# Window screen border snapping
set :snap, 10

# Default starting gravity for windows. Comment out to use gravity of
# currently active client
set :gravity, :center66

# Make transient windows urgent
set :urgent, false

# Honor resize size hints globally
set :resize, false

# Enable gravity tiling
set :tiling, false

# Font string either take from e.g. xfontsel or use xft
#set :font, "-*-*-medium-*-*-*-14-*-*-*-*-*-*-*"
set :font, "xft:Pragmata TT:pixelsize=9"

# Separator between sublets
set :separator, "|"

# Set the WM_NAME of subtle (Java quirk)
# set :wmname, "LG3D"

#
# == Screen
#-------------------------------------------------------------------------------------------------------------------------------------------------

screen 1 do
  top    [:center, :views, :center]
  bottom [:mpd, :center, :separator, :battery, :separator, :cpu, :separator, :wifi, :center,:spacer, :clock, :tray]
end


#
# == Colors
#-------------------------------------------------------------------------------------------------------------------------------------------------
# Styles {{{
# Colors of focus window title

style :all do
  padding 2, 6, 2, 6
  background "#EBEBEB"
  font "xft:HeldustryFTVBasic Demi:pixelsize=9"
end

style :title do
  foreground "#FFFFFF"
end

style :views do
  style :focus do
    padding 2, 8, 0, 8
    border_left "#b0b0b0", 1
    border_right "#b0b0b0", 1
    foreground "#b22020"
    background "#c2c2c2"
  end

  style :occupied do
    padding 2, 8, 0, 8
    border_right "#d1d1d1", 1
    foreground "#95B2C1"
    background "#dbdbdb"
  end

  style :unoccupied do
    padding 2, 8, 0, 8
    foreground "#7c7c72"
  end

  style :urgent do
    icon "#c0bd5c"
    padding 2, 8, 0, 8
    foreground "#ffffff"
    background "#519f50"
  end

  style :visible do
    padding_top 0
    border_top "#dbdbdb", 2
  end
end

style :sublets do
  padding 2, 8, 0, 8
  icon "#7c7c72"
  foreground "#b0b0b0"
  background "#EBEBEB"
end

style :separator do
  background "#EBEBEB"
  foreground "#505050"
end

style :clients do
  active "#EBEBEB", 1
  inactive "#A8A8A8", 1
  margin 2
end

style :subtle do
  panel "#EBEBEB"
  stipple "#757575"
end # }}}

# }}}
#-------------------------------------------------------------------------------------------------------------------------------------------------
#
# == Gravities

# Top left
gravity :top_left, [ 0, 0, 50, 50 ]
gravity :top_left66, [ 0, 0, 50, 66 ]
gravity :top_left33, [ 0, 0, 50, 34 ]

# Top
gravity :top, [ 0, 0, 100, 50 ]
gravity :top66, [ 0, 0, 100, 66 ]
gravity :top33, [ 0, 0, 100, 34 ]

# Top right
gravity :top_right, [ 50, 0, 50, 50 ]
gravity :top_right66, [ 50, 0, 50, 66 ]
gravity :top_right33, [ 50, 0, 50, 33 ]

# Left
gravity :left, [ 0, 0, 50, 100 ]
gravity :left66, [ 0, 0, 66, 100 ]
gravity :left33, [ 0, 0, 33, 100 ]

# Center
gravity :center, [ 0, 0, 100, 100 ]
gravity :center66, [ 17, 17, 66, 66 ]
gravity :center33, [ 33, 33, 33, 33 ]

# Right
gravity :right, [ 50, 0, 50, 100 ]
gravity :right66, [ 34, 0, 66, 100 ]
gravity :right33, [ 67, 50, 33, 100 ]

# Bottom left
gravity :bottom_left, [ 0, 50, 50, 50 ]
gravity :bottom_left66, [ 0, 34, 50, 66 ]
gravity :bottom_left33, [ 0, 67, 50, 33 ]

# Bottom
gravity :bottom, [ 0, 50, 100, 50 ]
gravity :bottom66, [ 0, 34, 100, 66 ]
gravity :bottom33, [ 0, 67, 100, 33 ]

# Bottom right
gravity :bottom_right, [ 50, 50, 50, 50 ]
gravity :bottom_right66, [ 50, 34, 50, 66 ]
gravity :bottom_right33, [ 50, 67, 50, 33 ]

# Gimp
gravity :gimp_image, [ 10, 0, 80, 100 ]
gravity :gimp_toolbox, [ 0, 0, 10, 100 ]
gravity :gimp_dock, [ 90, 0, 10, 100 ]

#term
gravity :term1, [ 17, 2, 66, 45 ]
gravity :term2, [ 17, 48, 66, 26 ]
gravity :term3, [ 17, 75, 66, 23 ]

#gravidade :tag [ 0, cima, baixos, cima(diminuir)
# == Grabs
#-------------------------------------------------------------------------------------------------------------------------------------------------
# Escape grab
# grab "C-y", :SubtleEscape

# Jump to view1, view2, ...
grab "W-S-1", :ViewJump1
grab "W-S-2", :ViewJump2
grab "W-S-3", :ViewJump3
grab "W-S-4", :ViewJump4

# Switch current view
grab "W-1", :ViewSwitch1
grab "W-2", :ViewSwitch2
grab "W-3", :ViewSwitch3
grab "W-4", :ViewSwitch4

# Select next and prev view */
grab "KP_Add",      :ViewNext
grab "KP_Subtract", :ViewPrev

# Move mouse to screen1, screen2, ...
grab "W-A-1", :ScreenJump1
grab "W-A-2", :ScreenJump2
grab "W-A-3", :ScreenJump3
grab "W-A-4", :ScreenJump4

# Force reload of config and sublets
grab "W-C-r", :SubtleReload

# Force restart of subtle
grab "W-C-S-r", :SubtleRestart

# Quit subtle
grab "W-C-q", :SubtleQuit

# Move current window
grab "W-B1", :WindowMove

# Resize current window
grab "W-B3", :WindowResize

# Toggle floating mode of window
grab "W-f", :WindowFloat

# Toggle fullscreen mode of window
grab "W-f11", :WindowFull

# Toggle sticky mode of window (will be visible on all views)
grab "W-m", :WindowStick

# Toggle zaphod mode of window (will span across all screens)
grab "W-equal", :WindowZaphod

# Raise window
grab "W-x", :WindowRaise

# Lower window
grab "W-z", :WindowLower

# Select next windows
#grab "W-Left",  :WindowLeft
#grab "W-Down",  :WindowDown
#grab "W-Up",    :WindowUp
#grab "W-Right", :WindowRight

# Kill current window
#grab "W-S-k", :WindowKill
grab "W-F1", :WindowKill

grab "W-F1", :WindowKill

# Cycle between given gravities
#grab "W-KP_7", [ :top_left,     :top_left66,     :top_left33     ]
#grab "W-KP_8", [ :top,          :top66,          :top33          ]
#grab "W-KP_9", [ :top_right,    :top_right66,    :top_right33    ]
#grab "W-KP_4", [ :left,         :left66,         :left33         ]
#grab "W-KP_5", [ :center,       :center66,       :center33       ]
#grab "W-KP_6", [ :right,        :right66,        :right33        ]
#grab "W-KP_1", [ :bottom_left,  :bottom_left66,  :bottom_left33  ]
#grab "W-KP_2", [ :bottom,       :bottom66,       :bottom33       ]
#grab "W-KP_3", [ :bottom_right, :bottom_right66, :bottom_right33 ]

# In case no numpad is available e.g. on notebooks
grab "W-q", [ :top_left,     :top_left66,     :top_left33     ]
grab "W-Up", [ :top,          :top66,          :top33          ]
grab "W-e", [ :top_right,    :top_right66,    :top_right33    ]
grab "W-Left", [ :left,         :left66,         :left33         ]
grab "W-Down", [ :center,       :center66,       :center33       ]
grab "W-Right", [ :right,        :right66,        :right33        ]
#
# QUERTZ
#grab "W-y", [ :bottom_left,  :bottom_left66,  :bottom_left33  ]
#
# QWERTY
#grab "W-z", [ :bottom_left,  :bottom_left66,  :bottom_left33  ]
#
#grab "W-x", [ :bottom,       :bottom66,       :bottom33       ]
#grab "W-c", [ :bottom_right, :bottom_right66, :bottom_right33 ]

# Exec programs
grab "W-Return", "sakura"
grab "A-F2", "dmenu_run"
grab "C-space", "dmenu_run"
# Run Ruby lambdas
grab "S-F2" do |c|
  puts c.name
end

grab "S-F3" do
  puts Subtlext::VERSION
end

#
# == Tags
#-------------------------------------------------------------------------------------------------------------------------------------------------
# Simple tags
#tag "terms",   "xterm|[u]?rxvt"
tag "browser", "uzbl|opera|chromium|navigator"
tag "files", "thunar|nautilus|xarchiver"
tag "editores", "scite"
tag "players", "banshee|smplayer"
tag "msn", "pidgin"

# Placement
#tag "term2" do
 # match "terminator|tmux|sakura"
  #gravity :center
#end
tag "firefox" do
  match "firefox"  
  gravity :center
end

#tag "nitrogen" do
  #match "nitrogen"  
  #gravity :term1
#end

#tag "terminal" do
  #match "terminal"  
  #gravity :term2
#end

#tag "sakura" do
  #match "sakura"  
  #gravity :term3
#end
tag "geany" do
	match "geany"
	gravity :center
end

tag "terms" do
  match "urxvt"  
  gravity :term1
end

tag "urxvt3" do
	match "urxvt3"
	gravity :term2
end

tag "mpd" do
	match "mpd"
	gravity :term3
end

tag "ncmpcpp" do
	match "ncmpcpp"
	gravity :top_left
end
#tag "editor" do
#  match  "[g]?vim|scite"
#  stick false
#end

tag "fixed" do
  geometry [ 10, 10, 100, 100 ]
  stick    true
end

tag "gravity" do
  gravity :center
end

# Modes
tag "stick" do
  match "mplayer"
  float true
  stick true
end

tag "float" do
  match "display"
  float true
end

# Gimp
tag "gimp_image" do
  match   :role => "gimp-image-window"
  gravity :gimp_image
end

tag "gimp_toolbox" do
  match   :role => "gimp-toolbox$"
  gravity :gimp_toolbox
end

tag "gimp_dock" do
  match   :role => "gimp-dock"
  gravity :gimp_dock
end


#
# == Views
#-------------------------------------------------------------------------------------------------------------------------------------------------
icons = true
iconpath = "#{ENV["HOME"]}/icons"


view "terms" do
match "terms|urxvt3|mpd"
#icon "~/icons/terminal.xbm"
        icon Subtlext::Icon.new("#{iconpath}/terminal.xbm")
   icon_only icons
end

view "home" do
match "files"
#icon "~/icons/house.xbm"
        icon Subtlext::Icon.new("#{iconpath}/house.xbm")
   icon_only icons
end

view "www" do
match "browser|firefox"
#icon "~/icons/fox.xbm"
        icon Subtlext::Icon.new("#{iconpath}/world.xbm")
   icon_only icons
end

view "mail" do
match "msn"
# icon "~/icons/tv.xbm"
        icon Subtlext::Icon.new("#{iconpath}/bail.xbm")
   icon_only icons
end

view "play" do
match "players"
# icon "~/icons/tv.xbm"
        icon Subtlext::Icon.new("#{iconpath}/note2.xbm")
   icon_only icons
end

view "misc" do
match "default|nitrogen|terminal|sakura"
# icon "~/icons/screen.xbm"
        icon Subtlext::Icon.new("#{iconpath}/arch2.xbm")
   icon_only icons
end

view "code" do
match "editores|geany"
# icon "~/icons/file2.xbm"
        icon Subtlext::Icon.new("#{iconpath}/file2.xbm")
   icon_only icons
end

view "edit" do
match "graphics|gimp_image|gimp_toolbox|gimp_dock|pinta"
# icon "~/icons/wand.xbm"
        icon Subtlext::Icon.new("#{iconpath}/pencil.xbm")
   icon_only icons
end


#-------------------------------------------------------------------------------------------------------------------------------------------------

# == Sublets
#-------------------------------------------------------------------------------------------------------------------------------------------------

#
# == Hooks
#
# And finally hooks are a way to bind Ruby scripts to a certain event.
#
# Following hooks exist so far:
#
# [*:client_create*] Called whenever a window is created
# [*:client_configure*] Called whenever a window is configured
# [*:client_focus*] Called whenever a window gets focus
# [*:client_kill*] Called whenever a window is killed
#
# [*:tag_create*] Called whenever a tag is created
# [*:tag_kill*] Called whenever a tag is killed
#
# [*:view_create*] Called whenever a view is created
# [*:view_configure*] Called whenever a view is configured
# [*:view_jump*] Called whenever the view is switched
# [*:view_kill*] Called whenever a view is killed
#
# [*:tile*] Called on whenever tiling would be needed
# [*:reload*] Called on reload
# [*:start*] Called on start
# [*:exit*] Called on exit
#
# === Example
#
# This hook will print the name of the window that gets the focus:
#
# on :client_focus do |c|
# puts c.name
# end
#
# === Link
#
# http://subforge.org/wiki/subtle/Hooks
#

# vim:ts=2:bs=2:sw=2:et:fdm=marker

# hooks
#on :start do
# Subtlext::Subtle.spawn "nitrogen --restore"
#end
#begin
 #  require "#{ENV["HOME"]}/.local/share/subtle/subtle-contrib/ruby/launcher.rb"
 #rescue LoadError => error
   #puts error
 #end
#-------------------------------------------------------------------------------------------------------------------------------------------------
 grab "W-Return" do
   Subtle::Contrib::Launcher.run
 end
# wifi
sublet :wifi do
  interval 1
  foreground "#cc7833"
  background "#ebebeb"
end
# weather
  sublet :weather do
    interval 10
    locale "en"
    location "60657"
  end
# clock
  sublet :clock do
    interval 30
    foreground "#dca3a3"
# background "#000000"
    format_string "%I:%M %p [%m/%d]"
  end
  # mpd

  # weather_mod
  sublet :weather_mod do
location Chicago
  end

#-------------------------------------------------------------------------------------------------------------------------------------------------

#urxvt -name tmux -e tmux

#on :start do
  #Subtlext::Subtle.spawn "xterm -fg Black -bg White -rv"
  #Subtlext::Subtle.spawn "xterm -fg Black -bg White -rv -name xterm3"
  #Subtlext::Subtle.spawn "xterm -fg Black -bg White -rv -name xterm2"
  #Subtlext::Subtle.spawn "xterm -fg Black -bg White -rv -name ncmpcpp -e ncmpcpp"
#end

#-------------------------------------------------------------------------------------------------------------------------------------------------
on :start do
	Subtlext::Subtle.spawn "urxvt"
	Subtlext::Subtle.spawn "urxvt -rv -name urxvt3"
	Subtlext::Subtle.spawn "urxvt -rv -name mpd -e ncmpcpp"
end
#on :start do
   #Subtlext::Subtle.spawn "urxvt -rv"
   #Subtlext::Subtle.spawn "urxvt -rv -name xterm3"
   #Subtlext::Subtle.spawn "urxvt -rv -name xterm2"
   #Subtlext::Subtle.spawn "urxvt -rv -name ncmpcpp -e ncmpcpp"
#end



on :start do
   Subtlext::Subtle.spawn "gnome-sound-applet"
end

on :start do
   Subtlext::Subtle.spawn "nitrogen --restore"
end

on :start do
   Subtlext::Subtle.spawn "xcompmgr -CcfF -I-.015 -O-.03 -D3 -t-5 -l-5 -r4.2 -o.55"
end

on :start do
   Subtlext::Subtle.spawn "xfce4-clipman"
end

on :start do
   Subtlext::Subtle.spawn "dropboxd"
end

on :start do
   Subtlext::Subtle.spawn "pidgin"
end

##-------------------------------------------------------------------------------------------------------------------------------------------------
# == Hooks
#
# And finally hooks are a way to bind Ruby scripts to a certain event.
#
# Following hooks exist so far:
#
# [*:client_create*]    Called whenever a window is created
# [*:client_configure*] Called whenever a window is configured
# [*:client_focus*]     Called whenever a window gets focus
# [*:client_kill*]      Called whenever a window is killed
#
# [*:tag_create*]       Called whenever a tag is created
# [*:tag_kill*]         Called whenever a tag is killed
#
# [*:view_create*]      Called whenever a view is created
# [*:view_configure*]   Called whenever a view is configured
# [*:view_jump*]        Called whenever the view is switched
# [*:view_kill*]        Called whenever a view is killed
#
# [*:tile*]             Called on whenever tiling would be needed
# [*:reload*]           Called on reload
# [*:start*]            Called on start
# [*:exit*]             Called on exit
#
# === Example
#
# This hook will print the name of the window that gets the focus:
#
#   on :client_focus do |c|
#     puts c.name
#   end
#
# === Link
#
# http://subforge.org/projects/subtle/wiki/Hooks
#


#screen 1 do
 #top [ :spacer, :views, :spacer ]
 #bottom [ :jdownloader, :spacer, :tasks, :spacer, :wifi, :battery, :tray, :clock ]
#end

# vim:ts=2:bs=2:sw=2:et:fdm=marker
