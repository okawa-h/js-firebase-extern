package firebase.auth;

import js.Promise;
import firebase.auth.Auth.UserCredential;
import firebase.auth.AuthCredential;

@:native('firebase.auth.OAuthCredential')
extern class OAuthCredential extends AuthCredential {

	private function new();

	public var accessToken:String;
	public var idToken:String;
	public var secret:String;

}
