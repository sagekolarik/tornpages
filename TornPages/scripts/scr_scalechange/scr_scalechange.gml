if scalechanging=true {
	image_xscale+=scalechange_amount/scalechange_time
	image_yscale+=scalechange_amount/scalechange_time
	if image_xscale<0 {image_xscale=0}
	if image_yscale<0 {image_yscale=0}
}
