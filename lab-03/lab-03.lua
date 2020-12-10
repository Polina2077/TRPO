#!/usr/bin/lua5.1
-- Krikunova-474

lgi = require'lgi'

gtk = lgi.Gtk
gtk.init()

builder = gtk.Builder()
builder:add_from_file('lab-03.glade')

ui = builder.objects

opt = {ui.opt_a, ui.opt_b, ui.opt_c, ui.opt_d}

function update()
 x = 0
 y = 0
 if ui.chk_x.active == true then x = 1 end
 if ui.chk_y.active == true then y = 1 end

 v = x + y * 2
 opt[v + 1].active = true

 ui.lab_val.label = v
end

function ui.chk_x:on_clicked(...)
 update()
end

function ui.chk_y:on_clicked(...)
 update()
end

ui.wnd.title = 'Krikunova 474 lab-03'
ui.wnd.on_destroy = gtk.main.quit
ui.wnd:show_all()

gtk.main()
