package firebase;

import firebase.app.App;
import firebase.auth.Auth;
import firebase.database.Database;
import firebase.firestore.Firestore;
import firebase.firestore.Firestore.LogLevel;
import firebase.functions.Functions;
import firebase.installations.Installations;
import firebase.messaging.Messaging;
import firebase.performance.Performance;
import firebase.storage.Storage;

@:native('firebase')
extern class Firebase {

	public static var SDK_VERSION:String;
	public static var apps(default,null):Array<App>;

	public static function initializeApp(options:Dynamic,?name:String):App;

	public static function app(?name:String):App;
	public static function auth(?app:App):Auth;
	public static function database(?app:App):Database;
	public static function firestore(?app:App):Firestore;
	public static function functions(?app:App):Functions;
	public static function installations():Installations;
	public static function messaging(?app:App):Messaging;
	public static function performance(?app:App):Performance;
	public static function storage(?app:App):Storage;

}

@:native('firebase.database')
extern class Database {

	@:overload(function(?logger:String->Void,?persistent:Bool):Dynamic{})
	public static function enableLogging(?logger:Bool,?persistent:Bool):Dynamic;

}

@:native('firebase.firestore')
extern class Firestore {

	public static var CACHE_SIZE_UNLIMITED:Int;

	public static function setLogLevel(logLevel:LogLevel):Void;

}

@:native('firebase.messaging')
extern class Messaging {

	public static function isSupported():Bool;

}
