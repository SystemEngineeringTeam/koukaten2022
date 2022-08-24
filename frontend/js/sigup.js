let accunt1;
let myname;
let text;

let output = "";

function disp(){
    location.href = "signup_conf.html";
    
    accunt1 = document.getElementById("account").value;
    myname = document.getElementById("name").value;
    text = document.getElementById("sampleForm").value;

    // -----ここからHash化のコード-----
    function async_digestMessage(message) {
        return new Promise(function(resolve){
        var msgUint8 = new TextEncoder("utf-8").encode(message);
        crypto.subtle.digest('SHA-256', msgUint8).then(
            function(hashBuffer){
                var hashArray = Array.from(new Uint8Array(hashBuffer));
                var hashHex = hashArray.map(function(b){return b.toString(16).padStart(2, '0')}).join('');
                return resolve(hashHex);
            });
        })
    }
    function getHashText(text) {
        // ハッシュ化後の文字列を表示
        console.log(text);
    }
    if(window.Promise && window.crypto){
        async_digestMessage(text).then(
            function(shatxt){
                getHashText(shatxt);
            }
        ).catch(function(e){
            console.log('エラー：', e.message);
        })
    }else{
        console.log('Promiseかcryptoに非対応');
    }
    // -----ここまでHash化のコード-----
}


// ここから文字数制限のコード
var input = document.getElementById("sampleForm");
var span = document.getElementById("inputCounter");
input.addEventListener("keyup", function() {
    span.textContent = 20 - input.value.length;
    if(input.value.length > 20){
        let list_element = document.getElementById("parent-div");
        let remove_element = list_element.removeChild(list_element.firstElementChild);
        console.log(remove_element.textContent); // テキスト1


        // 追加する要素を作成します
        // ----------------------------
        var newElement = document.createElement("p"); // p要素作成
        var newContent = document.createTextNode("パスワードは20文字以内で入力してください"); // テキストノードを作成
        newElement.appendChild(newContent); // p要素にテキストノードを追加
        newElement.setAttribute("id","child-p1"); // p要素にidを設定
        // ----------------------------
        // 親要素の最初の子要素を追加します
        // ----------------------------
        // 親要素（div）への参照を取得
        var parentDiv = document.getElementById("parent-div");
        // 追加
        parentDiv.insertBefore(newElement, parentDiv.firstChild);
    }
});
// ここまで文字数制限のコード