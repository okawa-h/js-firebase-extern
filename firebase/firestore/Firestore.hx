package firebase.firestore;

import js.lib.Promise;
import firebase.app.App;
import firebase.firestore.CollectionReference;
import firebase.firestore.DocumentReference;
import firebase.firestore.PersistenceSettings;
import firebase.firestore.Query;
import firebase.firestore.Settings;
import firebase.firestore.Transaction;
import firebase.firestore.WriteBatch;

@:enum abstract DocumentChangeType(String) {
	var ADDED = 'added';
	var REMOVED = 'removed';
	var MODIFIED = 'modified';
}

@:enum abstract DocumentData(Dynamic) {}

@:enum abstract FirestoreErrorCode(String) {
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
	var DATALOSS = 'data-loss';
	var UNAUTHENTICATED = 'unauthenticated';
}

@:enum abstract LogLevel(String) {
	var DEBUG = 'debug';
	var ERROR = 'error';
	var SILENT = 'silent';
}

@:enum abstract OrderByDirection(String) {
	var DESC = 'desc';
	var ASC = 'asc';
}

@:enum abstract UpdateData(Dynamic) {}

@:enum abstract WhereFilterOp(String) {
	var LESS_THAN = '<';
	var LESS_THAN_OR_EQUAL_TO = '<=';
	var EQUAL = '==';
	var GREATER_THAN_OR_EQUAL_TO = '>=';
	var GREATER_THAN = '>';
	var ARRAY_CONTAINS = 'array-contains';
}

@:native('firebase.firestore.Firestore')
extern class Firestore {

	private function new();

	public var app:App;

	public function batch():WriteBatch;
	public function clearPersistence():Promise<Void>;
	public function collection(collectionPath:String):CollectionReference;
	public function collectionGroup(collectionId:String):Query;
	public function disableNetwork():Promise<Void>;
	public function doc(documentPath:String):DocumentReference;
	public function enableNetwork():Promise<Void>;
	public function enablePersistence(?settings:PersistenceSettings):Promise<Void>;
	public function runTransaction(updateFunction:Transaction->Promise<Dynamic>):Promise<Dynamic>;
	public function settings(settings:Settings):Void;

}
