package firebase.database;

import firebase.app.App;
import firebase.database.Reference;

@:enum abstract EventType(String) {
	var VALUE = 'value';
	var CHILD_ADDED = 'child_added';
	var CHILD_CHANGED = 'child_changed';
	var CHILD_REMOVED = 'child_removed';
	var CHILD_MOVED = 'child_moved';
}

@:native('firebase.database.Database')
extern class Database {

	public var app:App;

	public function goOffline():Dynamic;
	public function goOnline():Dynamic;
	public function ref(?path:String):Reference;
	public function refFromURL(url:String):Reference;

}
