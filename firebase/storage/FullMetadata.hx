package firebase.storage;

import firebase.storage.SettableMetadata;

@:native('firebase.storage.FullMetadata')
extern class FullMetadata extends SettableMetadata {

	public var bucket:String;

	@:deprecated
	public var downloadURLs:Array<String>;

	public var fullPath:String;
	public var generation:String;
	public var metageneration:String;
	public var name:String;
	public var size:Int;
	public var timeCreated:String;
	public var updated:String;

}
