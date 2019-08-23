package firebase.messaging;

import js.html.ServiceWorkerRegistration;
import js.Promise;
import firebase.CompleteFn;
import firebase.ErrorFn;
import firebase.NextFn;
import firebase.Observer;

@:native('firebase.messaging.Messaging')
extern class Messaging {

	public function deleteToken(token:String):Promise<Bool>;
	public function getToken():Promise<String>;

	@:overload(function(nextOrObserver:Observer,?error:ErrorFn,?completed:CompleteFn):Void->Void{})
	public function onMessage(nextOrObserver:NextFn,?error:ErrorFn,?completed:CompleteFn):Void->Void;

	@:overload(function(nextOrObserver:Observer,?error:ErrorFn,?completed:CompleteFn):Void->Void{})
	public function onTokenRefresh(nextOrObserver:NextFn,?error:ErrorFn,?completed:CompleteFn):Void->Void;

	@:deprecated
	public function requestPermission():Promise<Void>;

	@:overload(function(callback:Void->Promise<Dynamic>):Void{})
	@:overload(function(callback:Void->Void):Void{})
	@:overload(function(callback:Promise<Dynamic>->Void):Void{})
	public function setBackgroundMessageHandler(callback:Promise<Dynamic>->Promise<Dynamic>):Void;

	public function usePublicVapidKey(b64PublicKey:String):Void;
	public function useServiceWorker(registration:ServiceWorkerRegistration):Void;

}
