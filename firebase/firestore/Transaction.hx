package firebase.firestore;

import js.Promise;
import firebase.firestore.DocumentReference;
import firebase.firestore.DocumentSnapshot;
import firebase.firestore.FieldPath;
import firebase.firestore.Firestore.DocumentData;
import firebase.firestore.Firestore.UpdateData;
import firebase.firestore.SetOptions;

@:native('firebase.firestore.Transaction')
extern class Transaction {

	public function new();

	public function delete(documentRef:DocumentReference):Transaction;
	public function get(documentRef:DocumentReference):Promise<DocumentSnapshot>;
	public function set(documentRef:DocumentReference,data:DocumentData,?options:SetOptions):Transaction;

	@:overload(function(
		documentRef:DocumentReference,
		field:FieldPath,
		value:Dynamic,
		moreFieldsAndValues:Array<Dynamic>
	):Transaction{})
	@:overload(function(
		documentRef:DocumentReference,
		field:String,
		value:Dynamic,
		moreFieldsAndValues:Array<Dynamic>
	):Transaction{})
	public function update(documentRef:DocumentReference,data:UpdateData):Transaction;

}
