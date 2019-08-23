package firebase.auth;

import firebase.auth.AuthProvider;
import firebase.auth.AuthCredential;

@:native('firebase.auth.EmailAuthProvider')
extern class EmailAuthProvider extends AuthProvider {

	public function new();

	public static var EMAIL_LINK_SIGN_IN_METHOD:String;
	public static var EMAIL_PASSWORD_SIGN_IN_METHOD:String;
	public static var PROVIDER_ID:String;

	public static function credential(email:String,password:String):AuthCredential;
	public static function credentialWithLink(email:String,emailLink:String):AuthCredential;

}
