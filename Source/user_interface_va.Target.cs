using UnrealBuildTool;

public class user_interface_vaTarget : TargetRules
{
	public user_interface_vaTarget(TargetInfo Target) : base(Target)
	{
		DefaultBuildSettings = BuildSettingsVersion.V2;
		Type = TargetType.Game;
		ExtraModuleNames.Add("user_interface_va");
	}
}
