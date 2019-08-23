package firebase.auth;

import js.Promise;
import firebase.auth.Auth.UserCredential;

@:native('firebase.auth.ConfirmationResult')
extern class ConfirmationResult {

	public var verificationId:String;

	public function confirm(verificationCode:String):Promise<UserCredential>;

}
