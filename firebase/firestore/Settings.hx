package firebase.firestore;

@:native('firebase.firestore.Settings')
extern class Settings {

	public var cacheSizeBytes:Int;
	public var experimentalForceLongPolling:Bool;
	public var host:String;
	public var ssl:Bool;

	@:deprecated
	public var timestampsInSnapshots:Bool;

}
