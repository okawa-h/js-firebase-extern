package firebase.performance;

@:native('firebase.performance.Trace')
extern class Trace {

	public function getAttribute(attr:String):String;
	public function getAttributes():Dynamic;
	public function getMetric(metricName:String):Int;
	public function incrementMetric(metricName:String,?num:Int):Void;
	public function putAttribute(attr:String,value:String):Void;
	public function putMetric(metricName:String,num:Int):Void;
	public function record(startTime:Int,duration:Int,?options:{ ?attributes:Dynamic,?metrics:Dynamic }):Void;
	public function removeAttribute(attr:String):Void;
	public function start():Void;
	public function stop():Void;

}
