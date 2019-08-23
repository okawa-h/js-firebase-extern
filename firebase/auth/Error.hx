package firebase.auth;

@:enum abstract AuthErrorCode(String) {
	var APP_DELETED = 'auth/app-deleted';
	var APP_NOT_AUTHORIZED = 'auth/app-not-authorized';
	var ARGUMENT_ERROR = 'auth/argument-error';
	var INVALID_API_KEY = 'auth/invalid-api-key';
	var INVALID_USER_TOKEN = 'auth/invalid-user-token';
	var NETWORK_REQUEST_FAILED = 'auth/network-request-failed';
	var OPERATION_NOT_ALLOWED = 'auth/operation-not-allowed';
	var REQUIRES_RECENT_LOGIN = 'auth/requires-recent-login';
	var TOO_MANY_REQUESTS = 'auth/too-many-requests';
	var UNAUTHORIZED_DOMAIN = 'auth/unauthorized-domain';
	var USER_DISABLED = 'auth/user-disabled';
	var USER_TOKEN_EXPIRED ='auth/user-token-expired';
	var WEB_STORAGE_UNSUPPORTED = 'auth/web-storage-unsupported';
}

@:native('firebase.auth.Error')
extern class Error {

	public var code:String;
	public var message:String;

}
