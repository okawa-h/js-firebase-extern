package firebase.database;

import firebase.database.Database.EventType;
import firebase.database.DataSnapshot;

@:native('firebase.database.Query')
extern class Query {

	public var ref:Reference;

	@:overload(function(value:Bool,?key:String):Query{})
	@:overload(function(value:String,?key:String):Query{})
	public function endAt(value:Int,?key:String):Query;

	@:overload(function(value:Bool,?key:String):Query{})
	@:overload(function(value:String,?key:String):Query{})
	public function equalTo(value:Int,?key:String):Query;

	public function isEqual(other:Query):Bool;
	public function limitToFirst(limit:Int):Query;
	public function limitToLast(limit:Int):Query;
	public function off(
		?eventType:EventType,
		?callback:DataSnapshot->String->Dynamic,
		?context:Dynamic
	):Void;
	public function on(
		eventType:EventType,
		callback:DataSnapshot->String->Dynamic,
		?cancelCallbackOrContext:Dynamic,
		?context:Dynamic
	):DataSnapshot->String->Dynamic;

	@:overload(function(
		eventType:EventType,
		?successCallback:DataSnapshot->String->Dynamic,
		?failureCallbackOrContext:DataSnapshot->String->Dynamic,
		?context:Dynamic
	):DataSnapshot->String->Dynamic{})
	public function once(
		eventType:EventType,
		?successCallback:DataSnapshot->String->Dynamic,
		?failureCallbackOrContext:Dynamic,
		?context:Dynamic
	):DataSnapshot->String->Dynamic;

	public function orderByChild(path:String):Query;
	public function orderByKey():Query;
	public function orderByPriority():Query;
	public function orderByValue():Query;

	@:overload(function(value:Bool,?key:String):Query{})
	@:overload(function(value:String,?key:String):Query{})
	public function startAt(value:Int,?key:String):Query;

	public function toJSON():Dynamic;
	public function toString():String;

}
