// 모든 함수 호출
var a = 0;
function allFun() {
    a = id();
    a += pw();
    a +=pwCheck();
    a +=name();

    console.log(a);
    if(a == 4){
        let regiform = document.getElementById("regiform");
    	regiform.submit(); // subject는 제목을 정의하기 위한 구문으로 필수 아님
    }
}

// 회원기본정보
function id() {
    var id = document.getElementById("id");

    if (id.value.length < 4 || id.value.length > 12) {
        alert("4~12자로 입력해주세요");
        id.value = "";
        id.focus();
        return 0;
    }

    // 아스키코드 0-9 : 48-57 / A-Z : 65-90 / a-z : 97-122
    for (var i = 0; i < id.value.length; i++) {
        var idAscii = id.value.charCodeAt(i); // 비밀번호의 i번째자리 아스키코드를 뽑아내는 구문
        if (!(idAscii >= 48 && idAscii <= 57 ||
            idAscii >= 65 && idAscii <= 90 ||
            idAscii >= 97 && idAscii <= 122)) {
            alert("영문 대소문자와 숫자만 입력가능합니다.");
            return 0;
            break;
        }
    } return 1;
}

function pw() {
    var pw = document.getElementById("password");

    if (pw.value.length < 4 || pw.value.length > 12) {
        alert("4~12자로 입력해주세요");
        pw.value = "";
        pw.focus();
        return 0;
    }
    else if (pw.value == id.value) {
        alert("id와 동일한 값을 입력하셨습니다.");
        pw.value = "";
        pw.focus();
        return 0;
    }

    // 아스키코드 0-9 : 48-57 / A-Z : 65-90 / a-z : 97-122
    for (var i = 0; i < pw.value.length; i++) {
        var pwAscii = pw.value.charCodeAt(i); // 비밀번호의 i번째자리 아스키코드를 뽑아내는 구문
        if (!(pwAscii >= 48 && pwAscii <= 57 ||
            pwAscii >= 65 && pwAscii <= 90 ||
            pwAscii >= 97 && pwAscii <= 122)) {
            alert("영문 대소문자와 숫자만 입력가능합니다.");
            return 0;
            break;
        }
    } return 1;
}

function pwCheck() {
    var pw = document.getElementById("password");
    var pwCheck = document.getElementById("checkPassword");

    if (pw.value != pwCheck.value) {
        alert("입력한 비밀번호와 일치하지 않습니다.");
        pw.value = "";
        pw.focus();
        return 0;
    } return 1;
}

function name() {
    var name = document.getElementById("userName");

    if (name.value == "") {
        alert("빈칸 에러");
        name.value = "";
        name.focus();
        return 0;
    } return 1;
}