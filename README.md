# Firebase JavaScript SDK externs for Haxe

This is extern for Haxe.
A tool for controlling firebase with Javascript for everyone.

## Enviroment

Tested with:

Haxe < 4.0

JavaScript Firebase SDK < 8.10

## Example

This is extern.
Load Firebase JavaScript SDK in HTML.

```haxe
import firebase.Firebase;
import firebase.app.App;

class Main {

  public static function main():Void {

    var config = {
      apiKey: "xxxxxxxxxx",
      authDomain: "xxxxxxxxxx.firebaseapp.com",
      databaseURL: "https://xxxxxxxxxx.firebaseio.com",
      projectId: "xxxxxxxxxx",
      storageBucket: "xxxxxxxxxx.appspot.com",
      messagingSenderId: "xxxxxxxxxx",
      appId: "xxxxxxxxxx"
    };

    var app:App = Firebase.initializeApp(config);

  }

}
```

Generate JavaScript code:

```javascript
// Generated by Haxe 3.4.7
(function () { "use strict";
var Main = function() { };
Main.main = function() {
  var config = { apiKey : "xxxxxxxxxx", authDomain : "xxxxxxxxxx.firebaseapp.com", databaseURL : "https://xxxxxxxxxx.firebaseio.com", projectId : "xxxxxxxxxx", storageBucket : "xxxxxxxxxx.appspot.com", messagingSenderId : "xxxxxxxxxx", appId : "xxxxxxxxxx"};
  var app = firebase.initializeApp(config);
};
Main.main();
})();
```

## References

Original API document:
https://firebase.google.com/docs/reference/js
