package electron;

/**
**/
@:require(js, electron) typedef ShortcutDetails = {
	/**
		The target to launch from this shortcut.
	**/
	var target : String;
	/**
		(optional) - The working directory. Default is empty.
	**/
	@:optional
	var cwd : String;
	/**
		(optional) - The arguments to be applied to when launching from this shortcut. Default is empty.
	**/
	@:optional
	var args : String;
	/**
		(optional) - The description of the shortcut. Default is empty.
	**/
	@:optional
	var description : String;
	/**
		(optional) - The path to the icon, can be a DLL or EXE. and have to be set together. Default is empty, which uses the target's icon.
	**/
	@:optional
	var icon : String;
	/**
		(optional) - The resource ID of icon when is a DLL or EXE. Default is 0.
	**/
	@:optional
	var iconIndex : Float;
	/**
		(optional) - The Application User Model ID. Default is empty.
	**/
	@:optional
	var appUserModelId : String;
}