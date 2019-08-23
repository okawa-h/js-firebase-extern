package firebase.firestore;

import haxe.extern.EitherType;
import firebase.firestore.FieldPath;

@:native('firebase.firestore.SetOptions')
extern class SetOptions {

	public var merge:Bool;
	public var mergeFields:EitherType<String,FieldPath>;

}
