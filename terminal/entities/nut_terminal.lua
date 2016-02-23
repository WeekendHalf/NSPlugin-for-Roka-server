AddCSLuaFile()

ENT.Type = "anim"
ENT.PrintName = "HL2 RP Terminal"
ENT.Author = "Weekend"
ENT.Category = "HL2 RP"
ENT.Spawnable = true
ENT.AdminOnly = true
ENT.PhysgunDisable = true
ENT.PhysgunAllowAdmin = true

function ENT:Initialize()
	self:SetModel( "models/props_combine/breenconsole.mdl" )
	
	self:PhysicsInit(SOLID_VPHYSICS);
	self:SetMoveType(MOVETYPE_VPHYSICS);
	self:SetSolid(SOLID_VPHYSICS);
	self:SetUseType(SIMPLE_USE);

	local physicsObject = self:GetPhysicsObject();
	if (IsValid(physicsObject)) then
		physicsObject:Wake();
		physicsObject:EnableMotion(true);
	end;
end;

function ENT:Draw()
	self:DrawModel()
end


function ENT:Use( activator, caller )
 
	if ( activator:IsPlayer() ) then
	netstream.Start(activator, "ang")
	else
	nut.util.Notify("알수없는오류",activator)

 
	end
 
end