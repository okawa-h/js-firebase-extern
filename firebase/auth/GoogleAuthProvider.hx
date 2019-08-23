package firebase.auth;

import firebase.auth.OAuthCredential;

@:native('firebase.auth.GoogleAuthProvider')
extern class GoogleAuthProvider extends AuthProvider {

	public function new();

	public static var GOOGLE_SIGN_IN_METHOD:String;
	public static var PROVIDER_ID:String;

	public function addScope(scope:String):AuthProvider;
	public function setCustomParameters(customOAuthParameters:Dynamic):AuthProvider;
	public static function credential(?idToken:String,?accessToken:String):OAuthCredential;

}
