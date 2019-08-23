package firebase.performance;

import firebase.performance.Trace;

@:native('firebase.performance.Performance')
extern class Performance {

	public var dataCollectionEnabled:Bool;
	public var instrumentationEnabled:Bool;

	public function trace(traceName:String):Trace;

}
