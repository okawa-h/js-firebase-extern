package firebase.storage;

import js.lib.Error;
import js.lib.Promise;
import firebase.storage.Storage.TaskEvent;
import firebase.storage.UploadTaskSnapshot;

@:native('firebase.storage.UploadTask')
extern class UploadTask {

	public var snapshot:UploadTaskSnapshot;

	public function cancel():Bool;

	@:native('catch')
	public function catchError(onRejected:Error->Dynamic):Promise<Dynamic>;

	public function on(
		event:TaskEvent,
		?nextOrObserver:Dynamic->Void,
		?error:Void->Void,
		?complete:Void->Void
	):Void->Void;
	public function pause():Bool;
	public function resume():Bool;
	public function then(?onFulfilled:Void->Void,?onRejected:Void->Void):Promise<Dynamic>;

}
