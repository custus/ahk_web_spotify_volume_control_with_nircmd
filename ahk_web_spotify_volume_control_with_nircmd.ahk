;script uses http://www.nirsoft.net/utils/nircmd.html

#MaxHotkeysPerInterval 100 ; Allow more Key pressed per Interval

volume:=0.0

Volume_Up:: ; UP Volume
{ 
	if(volume<1.0)
	{
		volume:=volume+0.05
 		run, E:\need\apps\nircmd\nircmd.exe setappvolume chrome.exe %volume%
	}
	return
} 

Volume_Down:: ; DOWN Vulome
{ 
	
	if(volume>0.0)
	{
		volume:=volume-0.05
		run, E:\need\apps\nircmd\nircmd.exe setappvolume chrome.exe %volume%
	}
	return 
} 
