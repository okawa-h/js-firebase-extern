package firebase.auth;

import firebase.auth.AuthProvider;
import firebase.auth.OAuthCredential;

@:native('firebase.auth.TwitterAuthProvider')
extern class TwitterAuthProvider extends AuthProvider {

	public function new();

	public static var PROVIDER_ID:String;
	public static var TWITTER_SIGN_IN_METHOD:String;

	public function setCustomParameters(customOAuthParameters:Dynamic):AuthProvider;
	public static function credential(token:String):OAuthCredential;

}
