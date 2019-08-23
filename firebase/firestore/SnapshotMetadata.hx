package firebase.firestore;

@:native('firebase.firestore.SnapshotMetadata')
extern class SnapshotMetadata {

	public var fromCache:Bool;
	public var hasPendingWrites:Bool;

	public function isEqual(other:SnapshotMetadata):Bool;

}
