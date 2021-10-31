package firebase.app;

import js.lib.Promise;
import firebase.Firebase;
import firebase.auth.Auth;
import firebase.database.Database;
import firebase.firestore.Firestore;
import firebase.functions.Functions;
import firebase.installations.Installations;
import firebase.messaging.Messaging;
import firebase.performance.Performance;
import firebase.storage.Storage;

@:native('firebase.app.App')
extern class App {

	public var name(default,null):String;
	public var options(default,null):Dynamic;

	public function auth():Auth;
	public function database(?url:String):Database;
	public function delete():Promise<Dynamic>;
	public function firestore():Firestore;
	public function functions(?region:String):Functions;
	public function installations():Installations;
	public function messaging():Messaging;
	public function performance():Performance;
	public function storage(?url:String):Storage;

}
