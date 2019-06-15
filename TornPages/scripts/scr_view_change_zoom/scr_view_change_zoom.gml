if currently_visible_zoom_amount=zoom_amount {
	zooming=false
	exit
}

zooming=true

//add or subtract the zoom spd
var plusorminus = (zoom_amount-currently_visible_zoom_amount)/abs(zoom_amount-currently_visible_zoom_amount)
currently_visible_zoom_amount+=plusorminus*zoom_spd

if abs(currently_visible_zoom_amount-zoom_amount)<zoom_spd {
	currently_visible_zoom_amount=zoom_amount
}