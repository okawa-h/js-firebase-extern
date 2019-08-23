package firebase.database;

import firebase.database.Reference;

@:native('firebase.database.DataSnapshot')
extern class DataSnapshot {

	public var key:String;
	public var ref:Reference;

	public function child(path:String):DataSnapshot;
	public function exists():Bool;
	public function exportVal():Dynamic;

	@:overload(function(action:DataSnapshot->Void):Bool{})
	public function forEach(action:DataSnapshot->Bool):Bool;

	@:overload(function():Int{})
	public function getPriority():String;

	public function hasChild(path:String):Bool;
	public function hasChildren():Bool;
	public function numChildren():Int;
	public function toJSON():Dynamic;
	public function val():Dynamic;

}
