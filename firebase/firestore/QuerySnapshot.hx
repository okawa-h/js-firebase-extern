package firebase.firestore;

import firebase.firestore.DocumentChange;
import firebase.firestore.Query;
import firebase.firestore.QueryDocumentSnapshot;
import firebase.firestore.SnapshotMetadata;
import firebase.firestore.SnapshotListenOptions;

@:native('firebase.firestore.QuerySnapshot')
extern class QuerySnapshot {

	private function new();

	public var docs:Array<QueryDocumentSnapshot>;
	public var empty:Bool;
	public var id:String;
	public var metadata:SnapshotMetadata;
	public var query:Query;
	public var size:Int;

	public function docChanges(?options:SnapshotListenOptions):Array<DocumentChange>;
	public function forEach(callback:QueryDocumentSnapshot->Void,?thisArg:Dynamic):Void;
	public function isEqual(other:QuerySnapshot):Bool;

}
