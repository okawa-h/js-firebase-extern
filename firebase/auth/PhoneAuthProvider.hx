package firebase.auth;

import js.lib.Promise;
import firebase.auth.ApplicationVerifier;
import firebase.auth.Auth;
import firebase.auth.AuthCredential;
import firebase.auth.AuthProvider;

@:native('firebase.auth.PhoneAuthProvider')
extern class PhoneAuthProvider extends AuthProvider {

	public function new(?auth:Auth);

	public static var PHONE_SIGN_IN_METHOD:String;
	public static var PROVIDER_ID:String;

	public function verifyPhoneNumber(phoneNumber:String,applicationVerifier:ApplicationVerifier):Promise<String>;
	public static function credential(verificationId:String,verificationCode:String):AuthCredential;

}
