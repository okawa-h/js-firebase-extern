package firebase.storage;

import firebase.storage.Reference;

@:native('firebase.storage.ListResult')
extern class ListResult {

	public var items:Array<Reference>;
	public var nextPageToken:String;
	public var prefixes:Array<Reference>;

}
