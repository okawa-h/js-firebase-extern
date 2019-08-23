package firebase.firestore;

@:native('firebase.firestore.FieldValue')
extern class FieldValue {

	private function new();

	public function isEqual(other:FieldValue):Bool;

	public static function arrayRemove(elements:Array<Dynamic>):FieldValue;
	public static function arrayUnion(elements:Array<Dynamic>):FieldValue;
	public static function delete():FieldValue;
	public static function increment(n:Int):FieldValue;
	public static function serverTimestamp():FieldValue;

}
