#!/bin/sh
# Set some good defaults for GNOME applications without
# resorting to gnome-settings-daemon and other deps.

# stop opening each dir in its own window
gconftool-2 --type boolean --set /apps/nautilus/preferences/always_use_browser true

# details view
gconftool-2 --type string --set /apps/nautilus/preferences/default_folder_viewer list_view

# desktop points to ~
gconftool-2 --type boolean --set /apps/nautilus/preferences/desktop_is_home_dir true

# allow bypassing of trash bin
gconftool-2 --type boolean --set /apps/nautilus/preferences/enable_delete true

# disable the nautilus desktop
gconftool-2 --type boolean --set /apps/nautilus/preferences/show_desktop false

# open URLs in app defined by x-www-browser and not GNOME Preferred Applications
gconftool-2 --type string --set /desktop/gnome/url-handlers/http/command "x-www-browser %s"

