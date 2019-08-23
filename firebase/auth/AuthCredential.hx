package firebase.auth;

@:native('firebase.auth.AuthCredential')
extern class AuthCredential {

	public var providerId:String;
	public var signInMethod:String;

	public function toJSON():Dynamic;

	@:overload(function(json:Dynamic):AuthCredential{})
	public static function fromJSON(json:String):AuthCredential;

}
