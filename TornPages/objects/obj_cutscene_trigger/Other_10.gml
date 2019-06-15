//trigger cutscene

var mycutsceneinst = instance_create_depth(xstart,ystart,depth,obj_cutscene)
mycutsceneinst.cutscene=cutscene

ds_map_add(global.remembered_info,script_execute(scr_save_key),1)

instance_destroy()


