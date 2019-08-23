package firebase.firestore;

@:enum abstract SnapshotOptionsServerTimestampsType(String) {
	var ESTIMATE = 'estimate';
	var PREVIOUS = 'previous';
	var NONE = 'none';
}

@:native('firebase.firestore.SnapshotOptions')
extern class SnapshotOptions {

	public var serverTimestamps:SnapshotOptionsServerTimestampsType;

}
