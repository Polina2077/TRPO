#!/usr/bin/lua5.1
-- Krikunova-474

lgi = require 'lgi'

gtk = lgi.Gtk
gtk.init()

build = gtk.Builder()
build:add_from_file('lab-01.glade')

ui = build.objects

ui.wnd.title = 'Krikunova 474 lab-01'
ui.wnd.on_destroy = gtk.main_quit
ui.wnd:show_all()

gtk.main()
