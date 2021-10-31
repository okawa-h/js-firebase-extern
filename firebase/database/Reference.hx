package firebase.database;

import js.lib.Promise;
import firebase.auth.Error;
import firebase.database.DataSnapshot;
import firebase.database.OnDisconnect;
import firebase.database.Query;
import firebase.database.ThenableReference;

@:native('firebase.database.Reference')
extern class Reference extends Query {

	public var key:String;
	public var parent:Reference;
	public var root:Reference;

	public function child(path:String):Reference;
	public function onDisconnect():OnDisconnect;
	public function push(?value:Dynamic,?onComplete:Error->Dynamic):ThenableReference;
	public function remove(?onComplete:Error->Dynamic):Promise<Dynamic>;
	public function set(value:Dynamic,?onComplete:Error->Dynamic):Promise<Dynamic>;

	@:overload(function(priority:Int,?onComplete:Error->Dynamic):Promise<Dynamic>{})
	public function setPriority(priority:String,?onComplete:Error->Dynamic):Promise<Dynamic>;

	@:overload(function(newVal:Dynamic,newPriority:Int,?onComplete:Error->Dynamic):Promise<Dynamic>{})
	public function setWithPriority(newVal:Dynamic,newPriority:String,?onComplete:Error->Dynamic):Promise<Dynamic>;

	public function transaction(
		transactionUpdate:Dynamic->Dynamic,
		?onComplete:Error->Bool->DataSnapshot->Dynamic,
		?applyLocally:Bool
	):Promise<Dynamic>;
	public function update(values:Dynamic,?onComplete:Error->Dynamic):Promise<Dynamic>;

}
