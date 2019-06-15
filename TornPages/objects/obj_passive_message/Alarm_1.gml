//next page
if text_page<array_length_1d(text)-1
	{
		text_page++
		text_count = 0
		text_visible = ""
	}
//or destroy if done
else
	{
	instance_destroy()
	}
