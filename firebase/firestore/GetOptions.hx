package firebase.firestore;

@:enum abstract GetOptionsSourceType(String) {
	var DEFAULT = 'default';
	var SERVER = 'server';
	var CACHE = 'cache';
}

@:native('firebase.firestore.GetOptions')
extern class GetOptions {

	public var source:GetOptionsSourceType;

}
