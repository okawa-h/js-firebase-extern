package firebase.firestore;

import js.Promise;
import firebase.firestore.DocumentSnapshot;
import firebase.firestore.Firestore.WhereFilterOp;
import firebase.firestore.Firestore.OrderByDirection;
import firebase.firestore.GetOptions;
import firebase.firestore.QuerySnapshot;
import firebase.firestore.SnapshotListenOptions;

typedef QueryObserver = {
	?complete:Void->Void,
	?error:FirestoreError->Void,
	?next:QuerySnapshot->Void
}

@:native('firebase.firestore.Query')
extern class Query {

	public function new();

	public var firestore:Firestore;

	@:overload(function(fieldValues:Array<Dynamic>):Query{})
	public function endAt(other:DocumentSnapshot):Query;

	@:overload(function(fieldValues:Array<Dynamic>):Query{})
	public function endBefore(other:DocumentSnapshot):Query;

	public function get(?options:GetOptions):Promise<QuerySnapshot>;
	public function isEqual(other:Query):Bool;
	public function limit(limit:Int):Query;

	@:overload(function(
		options:SnapshotListenOptions,
		onNext:QuerySnapshot->Void,
		?onError:FirestoreError->Void,
		?onCompletion:Void->(Void->Void)
	):Void->Void{})
	@:overload(function(
		onNext:QuerySnapshot->Void,
		?onError:FirestoreError->Void,
		?onCompletion:Void->(Void->Void)
	):Void->Void{})
	@:overload(function(
		options:SnapshotListenOptions,
		observer:QueryObserver
	):Void->Void{})
	public function onSnapshot(observer:QueryObserver):Void->Void;

	@:overload(function(fieldPath:FieldPath,?directionStr:OrderByDirection):Query{})
	public function orderBy(fieldPath:String,?directionStr:OrderByDirection):Query;

	@:overload(function(fieldValues:Array<Dynamic>):Query{})
	public function startAfter(snapshot:DocumentSnapshot):Query;

	@:overload(function(fieldValues:Array<Dynamic>):Query{})
	public function startAt(snapshot:DocumentSnapshot):Query;

	@:overload(function(fieldPath:FieldPath,opStr:WhereFilterOp,value:Dynamic):Query{})
	public function where(fieldPath:String,opStr:WhereFilterOp,value:Dynamic):Query;

}
