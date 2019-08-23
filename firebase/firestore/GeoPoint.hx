package firebase.firestore;

@:native('firebase.firestore.GeoPoint')
extern class GeoPoint {

	public function new(latitude:Int,longitude:Int);

	public var latitude:Int;
	public var longitude:Int;

	public function isEqual(other:GeoPoint):Bool;

}
