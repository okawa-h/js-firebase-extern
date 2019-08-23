package firebase.auth;

import js.Promise;
import firebase.auth.RecaptchaVerifier;

@:native('firebase.auth.ApplicationVerifier')
extern class ApplicationVerifier extends RecaptchaVerifier {

	public override function verify():Promise<String>;

}
