package firebase.auth;

@:native('firebase.auth.IdTokenResult')
extern class IdTokenResult {

	public var authTime:String;
	public var claims:Dynamic;
	public var expirationTime:String;
	public var issuedAtTime:String;
	public var signInProvider:String;
	public var token:String;

}
