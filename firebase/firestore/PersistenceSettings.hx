package firebase.firestore;

@:native('firebase.firestore.PersistenceSettings')
extern class PersistenceSettings {

	@:deprecated
	public var experimentalTabSynchronization:Bool;

	public var synchronizeTabs:Bool;

}
