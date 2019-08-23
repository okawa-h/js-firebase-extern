package firebase.firestore;

import firebase.firestore.DocumentReference;
import firebase.firestore.FieldPath;
import firebase.firestore.Firestore.DocumentData;
import firebase.firestore.SnapshotOptions;
import firebase.firestore.SnapshotMetadata;

@:native('firebase.firestore.DocumentSnapshot')
extern class DocumentSnapshot {

	private function new();

	public var exists:Bool;
	public var id:String;
	public var metadata:SnapshotMetadata;
	public var ref:DocumentReference;

	public function data(?options:SnapshotOptions):DocumentData;

	@:overload(function(fieldPath:FieldPath,?options:SnapshotOptions):Dynamic{})
	public function get(fieldPath:String,?options:SnapshotOptions):Dynamic;

	public function isEqual(other:DocumentSnapshot):Bool;

}
