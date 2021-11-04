package firebase.firestore;

import haxe.extern.Rest;

@:native('firebase.firestore.FieldValue')
extern class FieldValue {

	private function new();

	public function isEqual(other:FieldValue):Bool;

	public static function arrayRemove(elements:Rest<Dynamic>):FieldValue;
	public static function arrayUnion(elements:Rest<Dynamic>):FieldValue;
	public static function delete():FieldValue;
	public static function increment(n:Int):FieldValue;
	public static function serverTimestamp():FieldValue;

}
