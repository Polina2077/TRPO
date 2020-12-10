#!/usr/bin/lua5.1
-- Krikunova-474

lgi = require'lgi'

gtk = lgi.Gtk
gtk.init()

builder = gtk.Builder()
builder:add_from_file('lab-02.glade')

ui = builder.objects

a = 0
b = 0

function checkNums()
a = tonumber(ui.text_a.text)
b = tonumber(ui.text_b.text)
if(a == nil or b == nil) then
ui.lbl_res.label = "input error"
return false
else
return true
end
end

function ui.btn_add:on_clicked(...)
if(checkNums()) then
ui.lbl_res.label = a + b
end
end

function ui.btn_sub:on_clicked(...)
if(checkNums())then
ui.lbl_res.label = a - b
end
end

function ui.btn_mul:on_clicked(...)
if(checkNums())then
ui.lbl_res.label = a * b
end
end

function ui.btn_div:on_clicked(...)
if(checkNums())then
ui.lbl_res.label = a / b
end
end

ui.wnd.title = 'Krikunova 474 lab-02'
ui.wnd.on_destroy = gtk.main.quit
ui.wnd:show_all()

gtk.main()
