# js-firebase-extern

This is a firebased extern for Haxe.

Please feel free to send a pull request if there are bugs or mistakes.

## Enviroment

Haxe < 3.4.7

JavaScript Firebase SDK < 6.4.0

## How to use

```haxe

import firebase.Firebase;

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