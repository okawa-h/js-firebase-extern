package firebase;

import js.Error;

extern interface Observer {

	public function next(value:Dynamic):Void;
	public function error(error:Error):Void;
	public function complete():Void;

}
