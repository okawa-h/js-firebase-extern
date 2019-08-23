package firebase.database;

import js.Promise;
import firebase.database.Reference;

@:native('firebase.database.ThenableReference')
extern class ThenableReference extends Reference {

	@:native('catch')
	public function catchError(?onrejected:Void->Void):Promise<Reference>;

}
