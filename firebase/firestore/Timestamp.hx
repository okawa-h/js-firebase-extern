package firebase.firestore;

@:native('firebase.firestore.Timestamp')
extern class Timestamp {

	public function new(seconds:Int,nanoseconds:Int);

	public var nanoseconds:Int;
	public var seconds:Int;

	public function isEqual(other:Timestamp):Bool;
	public function toDate():Dynamic;
	public function toMillis():Int;

	public static function fromDate(date:Dyanmic):Timestamp;
	public static function fromMillis(milliseconds:Int):Timestamp;
	public static function now():Timestamp;

}
