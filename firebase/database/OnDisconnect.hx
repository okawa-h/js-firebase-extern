package firebase.database;

import js.Promise;
import firebase.auth.Error;

@:native('firebase.database.OnDisconnect')
extern class OnDisconnect {

	public function cancel(?onComplete:Error->Dynamic):Promise<Dynamic>;
	public function remove(?onComplete:Error->Dynamic):Promise<Dynamic>;
	public function set(value:Dynamic,?onComplete:Error->Dynamic):Promise<Dynamic>;

	@:overload(function(value:Dynamic,priority:String,?onComplete:Error->Dynamic):Promise<Dynamic>{})
	public function setWithPriority(value:Dynamic,priority:Int,?onComplete:Error->Dynamic):Promise<Dynamic>;

	public function update(value:Dynamic,?onComplete:Error->Dynamic):Promise<Dynamic>;

}
