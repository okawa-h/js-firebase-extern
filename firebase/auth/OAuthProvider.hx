package firebase.auth;

import firebase.auth.AuthProvider;
import firebase.auth.OAuthCredential;

@:native('firebase.auth.OAuthProvider')
extern class OAuthProvider extends AuthProvider {

	public function new(providerId:String);

	public static var PROVIDER_ID:String;
	public static var TWITTER_SIGN_IN_METHOD:String;

	public function addScope(scope:String):AuthProvider;
	public function setCustomParameters(customOAuthParameters:Dynamic):AuthProvider;
	public static function credential(?idToken:String, ?accessToken:String):OAuthCredential;

}
