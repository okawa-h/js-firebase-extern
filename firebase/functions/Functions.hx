package firebase.functions;

import js.lib.Promise;
import firebase.functions.HttpsCallable;
import firebase.functions.HttpsCallableOptions;

@:enum abstract FunctionsErrorCode(String) {
	var OK = 'ok';
	var CANCELLED = 'cancelled';
	var UNKNOWN = 'unknown';
	var INVALID_ARGUMENT = 'invalid-argument';
	var DEADLINE_EXCEEDED = 'deadline-exceeded';
	var NOT_FOUND = 'not-found';
	var ALREADY_EXISTS = 'already-exists';
	var PERMISSION_DENIED = 'permission-denied';
	var RESOURCE_EXHAUSTED = 'resource-exhausted';
	var FAILED_PRECONDITION = 'failed-precondition';
	var ABORTED = 'aborted';
	var OUT_OF_RANGE = 'out-of-range';
	var UNIMPLEMENTED = 'unimplemented';
	var INTERNAL = 'internal';
	var UNAVAILABLE = 'unavailable';
	var DATA_LOSS = 'data-loss';
	var UNAUTHENTICATED = 'unauthenticated';
}

@:native('firebase.functions.Functions')
extern class Functions {

	private function new();

	public function httpsCallable(name:String,?options:HttpsCallableOptions):HttpsCallable;
	public function useFunctionsEmulator(url:String):Void;

}
