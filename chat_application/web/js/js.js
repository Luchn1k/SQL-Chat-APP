function signIn() {
    var mobile = document.getElementById("m").value;
    var name = document.getElementById("nam").value;
    var country = document.getElementById("cou").value;
    var request = new XMLHttpRequest();

    request.onreadystatechange = function () {
        if (request.readyState === 4) {
            if (request.status === 200) {
                var text = request.responseText;
               
                window.location = "Home.jsp";
            }
        }
    };



    request.open("POST", "SignIn", true);
    request.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
    request.send("n=" + name + "&m=" + mobile + "&c=" + country);


}
function  sendMsg() {
    var mobile = document.getElementById("num").value;
    var msg = document.getElementById("msg").value;



    var request = new XMLHttpRequest();


    request.onreadystatechange = function () {
        if (request.readyState === 4) {
            if (request.status === 200) {
               
            }
        }
    };
    request.open("GET", "SendSms?m=" + mobile + "&msg=" + msg);
    request.send();
}
function loadMsg() {
    var request = new XMLHttpRequest();
    request.onreadystatechange = function () {
        if (request.readyState === 4) {
            if (request.status === 200) {
                var text = request.responseText;
               
                document.getElementById("div1").innerHTML = text;
                
            }
        }
    };
    request.open("GET", "sendMsg.jsp", true);
    request.send();
}
function inv() {
    var request = new XMLHttpRequest();
    request.onreadystatechange = function () {
        if (request.readyState === 4) {
            if (request.status === 200) {
                window.location = "index.jsp";
               
                
                
            }
        }
    };
    request.open("GET", "invalidate", true);
    request.send();
}
function openmsg(){
    window.location = "View.jsp";
}
function opensend(){
    window.location = "Home.jsp";
}