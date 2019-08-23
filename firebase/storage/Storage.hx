package firebase.storage;

import js.Promise;
import firebase.app.App;
import firebase.storage.Reference;

@:enum abstract StringFormat(String) {}

@:enum abstract TaskEvent(String) {}

@:enum abstract TaskState(String) {}

@:native('firebase.storage.Storage')
extern class Storage {

	public var app:App;
	public var maxOperationRetryTime:Int;
	public var maxUploadRetryTime:Int;

	public function ref(?path:String):Reference;
	public function refFromURL(url:String):Reference;
	public function setMaxOperationRetryTime(time:Int):Dynamic;
	public function setMaxUploadRetryTime(time:Int):Dynamic;

}
