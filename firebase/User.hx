package firebase;

import js.Promise;
import firebase.auth.ApplicationVerifier;
import firebase.auth.Auth.ActionCodeSettings;
import firebase.auth.Auth.UserCredential;
import firebase.auth.AuthCredential;
import firebase.auth.AuthProvider;
import firebase.auth.ConfirmationResult;
import firebase.auth.IdTokenResult;
import firebase.auth.UserMetadata;
import firebase.UserInfo;

@:native('firebase.User')
extern class User extends UserInfo {

	public var emailVerified:Bool;
	public var isAnonymous:Bool;
	public var metadata:UserMetadata;
	public var providerData:Array<UserInfo>;
	public var refreshToken:String;

	public function delete():Promise<Void>;
	public function getIdToken(?forceRefresh:Bool):Promise<Void>;
	public function getIdTokenResult(?forceRefresh:Bool):Promise<IdTokenResult>;
	public function linkWithCredential(credential:AuthCredential):Promise<IdTokenResult>;
	public function linkWithPhoneNumber(phoneNumber:String,applicationVerifier:ApplicationVerifier):Promise<ConfirmationResult>;
	public function linkWithPopup(provider:AuthProvider):Promise<UserCredential>;
	public function linkWithRedirect(provider:AuthProvider):Promise<Void>;
	public function reauthenticateWithCredential(credential:AuthCredential):Promise<UserCredential>;
	public function reauthenticateWithPhoneNumber(phoneNumber:String,applicationVerifier:ApplicationVerifier):Promise<ConfirmationResult>;
	public function reauthenticateWithPopup(provider:AuthProvider):Promise<UserCredential>;
	public function reauthenticateWithRedirect(provider:AuthProvider):Promise<Void>;
	public function reload():Promise<Void>;
	public function sendEmailVerification(?actionCodeSettings:ActionCodeSettings):Promise<Void>;
	public function toJSON():Dynamic;
	public function unlink(providerId:String):Promise<User>;
	public function updateEmail(newEmail:String):Promise<Void>;
	public function updatePassword(newPassword:String):Promise<Void>;
	public function updatePhoneNumber(phoneCredential:AuthCredential):Promise<Void>;
	public function updateProfile(profile:{ ?displayName:String,?photoURL:String }):Promise<Void>;

}
