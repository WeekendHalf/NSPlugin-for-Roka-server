PLUGIN.name = "aaa"
PLUGIN.author = "Roka"
PLUGIN.desc = "blblblblbl"

netstream.Hook("ang", function()
	local dbpanel = vgui.Create("DFrame")
	dbpanel:SetPos(ScrW()/2, ScrH()/2)
	dbpanel:SetSize(300, 500)
	dbpanel:SetTitle("DB Test panel")
	dbpanel:MakePopup()
	
	local HTMLTest = vgui.Create( "HTML" )
	HTMLTest:SetPos( 50, 50 )
	HTMLTest:SetSize( ScrW() - 100, ScrH() - 100 )
	HTMLTest:OpenURL( "wiki.garrysmod.com" )
end