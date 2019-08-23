package firebase.firestore;

@:native('firebase.firestore.FieldPath')
extern class FieldPath {

	public function new(fieldNames:Array<String>);

	public function isEqual(other:FieldPath):Bool;

	public static function documentId():FieldPath;

}
