package firebase.firestore;

import firebase.firestore.Firestore.DocumentChangeType;
import firebase.firestore.QueryDocumentSnapshot;

@:native('firebase.firestore.DocumentChange')
extern class DocumentChange {

	public var doc:QueryDocumentSnapshot;
	public var newIndex:Int;
	public var oldIndex:Int;
	public var type:DocumentChangeType;

}
