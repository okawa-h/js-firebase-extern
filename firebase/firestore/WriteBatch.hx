package firebase.firestore;

import js.lib.Promise;
import firebase.firestore.DocumentReference;
import firebase.firestore.FieldPath;
import firebase.firestore.Firestore.DocumentData;
import firebase.firestore.Firestore.UpdateData;
import firebase.firestore.SetOptions;

@:native('firebase.firestore.WriteBatch')
extern class WriteBatch {

	private function new();

	public function commit():Promise<Void>;
	public function delete(documentRef:DocumentReference):WriteBatch;
	public function set(documentRef:DocumentReference,data:DocumentData,?options:SetOptions):WriteBatch;

	@:overload(function(
		documentRef:DocumentReference,
		field:FieldPath,
		value:Dynamic,
		moreFieldsAndValues:Array<Dynamic>
	):WriteBatch{})
	@:overload(function(
		documentRef:DocumentReference,
		field:String,
		value:Dynamic,
		moreFieldsAndValues:Array<Dynamic>
	):WriteBatch{})
	public function update(documentRef:DocumentReference,data:UpdateData):WriteBatch;

}
