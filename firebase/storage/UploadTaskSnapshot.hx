package firebase.storage;

import firebase.storage.FullMetadata;
import firebase.storage.Reference;
import firebase.storage.Storage.TaskState;
import firebase.storage.UploadTask;

@:native('firebase.storage.UploadTaskSnapshot')
extern class UploadTaskSnapshot {

	public var bytesTransferred:Int;

	@:deprecated
	public var downloadURL:String;

	public var metadata:FullMetadata;
	public var ref:Reference;
	public var state:TaskState;
	public var task:UploadTask;
	public var totalBytes:Int;

}
