package firebase.functions;

import js.Promise;
import firebase.functions.HttpsCallableResult;

@:native('firebase.functions.HttpsCallable')
extern class HttpsCallable {

	public function __call(?data:Dynamic):Promise<HttpsCallableResult>;

}
