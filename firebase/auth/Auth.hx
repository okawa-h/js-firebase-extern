package firebase.auth;

import js.lib.Promise;
import firebase.app.App;
import firebase.auth.ApplicationVerifier;
import firebase.auth.AuthSettings;
import firebase.auth.ActionCodeInfo;
import firebase.auth.AuthProvider;
import firebase.auth.ConfirmationResult;
import firebase.auth.Error;
import firebase.User;

typedef ActionCodeSettings = {
	?android:{
		?installApp:Bool,
		?minimumVersion:String,
		packageName:String
	},
	?dynamicLinkDomain:String,
	?handleCodeInApp:Bool,
	?iOS:{
		bundleId:String
	},
	url:String
}

typedef AdditionalUserInfo = {
	isNewUser:Bool,
	profile:Dynamic,
	providerId:String,
	?username:String
}

typedef UserCredential = {
	?additionalUserInfo:AdditionalUserInfo,
	credential:AuthCredential,
	?operationType:String,
	user:User
}

typedef Persistence = {
	Persistence:String
}

@:native('firebase.auth.Auth')
extern class Auth {

	public var app:App;
	public var currentUser:User;
	public var languageCode:String;
	public var settings:AuthSettings;

	public function applyActionCode(code:String):Promise<Void>;
	public function checkActionCode(code:String):Promise<ActionCodeInfo>;
	public function confirmPasswordReset(code:String,newPassword:String):Promise<Void>;
	public function createUserWithEmailAndPassword(email:String,password:String):Promise<UserCredential>;
	public function fetchSignInMethodsForEmail(email:String):Promise<Array<String>>;
	public function getRedirectResult():Promise<UserCredential>;
	public function isSignInWithEmailLink(emailLink:String):Bool;
	public function onAuthStateChanged(nextOrObserver:User->Void,?error:Error->Void,?completed:Void->Void):Void->Void;
	public function onIdTokenChanged(nextOrObserver:User->Void,?error:Error->Void,?completed:Void->Void):Void->Void;
	public function sendPasswordResetEmail(email:String,?actionCodeSettings:ActionCodeSettings):Promise<Void>;
	public function sendSignInLinkToEmail(email:String,?actionCodeSettings:ActionCodeSettings):Promise<Void>;
	public function setPersistence(persistence:Persistence):Promise<Void>;

	@:deprecated
	public function signInAndRetrieveDataWithCredential(credential:AuthCredential):Promise<UserCredential>;

	public function signInAnonymously():Promise<UserCredential>;
	public function signInWithCredential(credential:AuthCredential):Promise<UserCredential>;
	public function signInWithCustomToken(token:String):Promise<UserCredential>;
	public function signInWithEmailAndPassword(email:String,password:String):Promise<UserCredential>;
	public function signInWithEmailLink(email:String,?emailLink:String):Promise<UserCredential>;
	public function signInWithPhoneNumber(phoneNumber:String,applicationVerifier:ApplicationVerifier):Promise<ConfirmationResult>;
	public function signInWithPopup(provider:AuthProvider):Promise<UserCredential>;
	public function signInWithRedirect(provider:AuthProvider):Promise<Void>;
	public function signOut():Promise<Void>;
	public function updateCurrentUser(user:User):Promise<Void>;
	public function useDeviceLanguage():Void;
	public function verifyPasswordResetCode(code:String):Promise<String>;

}
