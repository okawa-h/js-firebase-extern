package firebase.firestore;

import js.Promise;
import firebase.firestore.CollectionReference;
import firebase.firestore.DocumentSnapshot;
import firebase.firestore.FieldPath;
import firebase.firestore.Firestore;
import firebase.firestore.Firestore.DocumentData;
import firebase.firestore.Firestore.UpdateData;
import firebase.firestore.FirestoreError;
import firebase.firestore.GetOptions;
import firebase.firestore.Query;
import firebase.firestore.SetOptions;
import firebase.firestore.SnapshotListenOptions;

typedef DocumentReferenceObserver = {
	?complete:Void->Void,
	?error:FirestoreError->Void,
	?next:DocumentSnapshot->Void
}

@:native('firebase.firestore.DocumentReference')
extern class DocumentReference {

	private function new();

	public var firestore:Firestore;
	public var id:String;
	public var parent:CollectionReference;
	public var path:String;

	public function collection(collectionPath:String):CollectionReference;
	public function delete():Promise<Void>;
	public function get(?options:GetOptions):Promise<DocumentSnapshot>;
	public function isEqual(other:DocumentReference):Bool;

	@:overload(function(
		options:SnapshotListenOptions,
		onNext:DocumentSnapshot->Void,
		?onError:FirestoreError->Void,
		?onCompletion:Void->Void
	):Void{})
	@:overload(function(
		onNext:DocumentSnapshot->Void,
		?onError:FirestoreError->Void,
		?onCompletion:Void->Void
	):Void{})
	@:overload(function(
		options:SnapshotListenOptions,
		observer:DocumentReferenceObserver
	):Void{})
	public function onSnapshot(observer:DocumentReferenceObserver):Void;

	public function set(data:DocumentData,?options:SetOptions):Promise<Void>;

	@:overload(function(field:FieldPath,value:Dynamic,moreFieldsAndValues:Array<Dynamic>):Promise<Void>{})
	@:overload(function(field:String,value:Dynamic,moreFieldsAndValues:Array<Dynamic>):Promise<Void>{})
	public function update(data:UpdateData):Promise<Void>;

}
