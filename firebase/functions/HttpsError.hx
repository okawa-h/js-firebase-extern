package firebase.functions;

import js.Error;
import firebase.functions.Functions.FunctionsErrorCode;

@:native('firebase.functions.HttpsError')
extern class HttpsError extends Error {

	public var Error:Dynamic;
	public var code:FunctionsErrorCode;
	public var details:Dynamic;
	public override var stack:String;

}
