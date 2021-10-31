package firebase.firestore;

import js.lib.Uint8Array;

@:native('firebase.firestore.Blob')
extern class Blob {

	private function new();

	public function isEqual(other:Blob):Bool;
	public function toBase64():String;
	public function toUint8Array():Uint8Array;

	public static function fromBase64String(base64:String):Blob;
	public static function fromUint8Array(array:Uint8Array):Blob;

}
