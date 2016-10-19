package electron;
@:jsRequire("electron", "webFrame") @:require("electron") extern class WebFrame {
	/**
		Changes the zoom factor to the specified factor. Zoom factor is zoom percent divided by 100, so 300% = 3.0.
	**/
	static function setZoomFactor(factor:Float):Void;
	static function getZoomFactor():Float;
	/**
		Changes the zoom level to the specified level. The original size is 0 and each increment above or below represents zooming 20% larger or smaller to default limits of 300% and 50% of original size, respectively.
	**/
	static function setZoomLevel(level:Float):Void;
	static function getZoomLevel():Float;
	/**
		Sets the maximum and minimum zoom level.
	**/
	static function setZoomLevelLimits(minimumLevel:Float, maximumLevel:Float):Void;
	/**
		Sets a provider for spell checking in input fields and text areas. The provider must be an object that has a spellCheck method that returns whether the word passed is correctly spelled. An example of using node-spellchecker as provider:
	**/
	static function setSpellCheckProvider(language:String, autoCorrectWord:Bool, provider:Dynamic):Void;
	/**
		Registers the scheme as secure scheme. Secure schemes do not trigger mixed content warnings. For example, https and data are secure schemes because they cannot be corrupted by active network attackers.
	**/
	static function registerURLSchemeAsSecure(scheme:String):Void;
	/**
		Resources will be loaded from this scheme regardless of the current page's Content Security Policy.
	**/
	static function registerURLSchemeAsBypassingCSP(scheme:String):Void;
	/**
		Registers the scheme as secure, bypasses content security policy for resources, allows registering ServiceWorker and supports fetch API.
	**/
	static function registerURLSchemeAsPrivileged(scheme:String):Void;
	/**
		Inserts text to the focused element.
	**/
	static function insertText(text:String):Void;
	/**
		Evaluates code in page. In the browser window some HTML APIs like requestFullScreen can only be invoked by a gesture from the user. Setting userGesture to true will remove this limitation.
	**/
	static function executeJavaScript(code:String, userGesture:Bool):Void;
	/**
		Returns an object describing usage information of Blink's internal memory caches. This will generate:
	**/
	static function getResourceUsage():Dynamic;
	/**
		Attempts to free memory that is no longer being used (like images from a previous navigation). Note that blindly calling this method probably makes Electron slower since it will have to refill these emptied caches, you should only call it if an event in your app has occurred that makes you think your page is actually using less memory (i.e. you have navigated from a super heavy page to a mostly empty one, and intend to stay there).
	**/
	static function clearCache():Void;
}