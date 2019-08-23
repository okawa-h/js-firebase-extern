package firebase;

@:native('firebase.FirebaseError')
extern class FirebaseError {

	static var code:String;
	static var message:String;
	static var name:String;
	static var stack:String;

}
