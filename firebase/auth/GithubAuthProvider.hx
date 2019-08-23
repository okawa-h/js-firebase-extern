package firebase.auth;

import firebase.auth.AuthProvider;
import firebase.auth.OAuthCredential;

@:native('firebase.auth.GithubAuthProvider')
extern class GithubAuthProvider extends AuthProvider {

	public function new();

	public static var GITHUB_SIGN_IN_METHOD:String;
	public static var PROVIDER_ID:String;

	public function addScope(scope:String):AuthProvider;
	public function setCustomParameters(customOAuthParameters:Dynamic):AuthProvider;
	public static function credential(token:String):OAuthCredential;

}
