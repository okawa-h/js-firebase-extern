package firebase.firestore;

import firebase.firestore.Firestore.FirestoreErrorCode;

@:native('firebase.firestore.FirestoreError')
extern class FirestoreError {

	public var code:FirestoreErrorCode;
	public var message:String;
	public var name:String;
	public var stack:String;

}
