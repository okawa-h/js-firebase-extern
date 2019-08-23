package firebase.auth;

import js.Promise;
import firebase.app.App;

@:native('firebase.auth.RecaptchaVerifier')
extern class RecaptchaVerifier {

	public var type:String;

	@:overload(function(container:String,?parameters:Dynamic,?app:App):RecaptchaVerifier{})
	public function new(container:Dynamic,?parameters:Dynamic,?app:App);

	public function clear():Void;
	public function render():Promise<Int>;
	public function verify():Promise<String>;

}
