package firebase.firestore;

import js.Promise;
import firebase.firestore.DocumentReference;
import firebase.firestore.Firestore.DocumentData;
import firebase.firestore.Query;

@:native('firebase.firestore.CollectionReference')
extern class CollectionReference extends Query {

	public var id:String;
	public var parent:DocumentReference;
	public var path:String;

	public function add(data:DocumentData):Promise<DocumentReference>;
	public function doc(?documentPath:String):DocumentReference;

}
