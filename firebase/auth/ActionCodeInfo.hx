package firebase.auth;

@:native('firebase.auth.ActionCodeInfo')
extern class ActionCodeInfo {

	public var data:{ ?email:String,?fromEmail:String };
	public var operation:String;

}
