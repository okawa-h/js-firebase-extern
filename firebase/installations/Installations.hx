package firebase.installations;

import js.Promise;

@:native('firebase.installations.Installations')
extern class Installations {

	public function delete():Promise<Void>;
	public function getId():Promise<String>;
	public function getToken():Promise<String>;

}
