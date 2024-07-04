// 모든 함수 호출
var a = 0;
function allFun() {
    a = id();
    a += pw();
    a += pwCheck();
    a += name();
    a += idn();
    a += rank();
    a += position();
    a += dept();
    a += phone();
    a += birthYear();
    a += birthMonth();
    a += birthDay();
    a += enrollYear();

    console.log(a);
    if (a == 13) {
        let regiform = document.getElementById("regiform");
        regiform.submit();
    }
}

// 회원기본정보
function id() {
    var id = document.getElementById("id");

    if (id.value.length < 4 || id.value.length > 12) {
        Swal.fire({
            icon: 'error',
            title: '오류',
            text: '아이디를 4~12자로 입력해주세요'
        });
        id.value = "";
        id.focus();
        return 0;
    }

    for (var i = 0; i < id.value.length; i++) {
        var idAscii = id.value.charCodeAt(i);
        if (!(idAscii >= 48 && idAscii <= 57 ||
            idAscii >= 65 && idAscii <= 90 ||
            idAscii >= 97 && idAscii <= 122)) {
            Swal.fire({
                icon: 'error',
                title: '오류',
                text: '영문 대소문자와 숫자만 입력가능합니다.'
            });
            return 0;
        }
    } return 1;
}

function pw() {
    var pw = document.getElementById("password");

    if (pw.value.length < 4 || pw.value.length > 12) {
        Swal.fire({
            icon: 'error',
            title: '오류',
            text: '비밀번호를 4~12자로 입력해주세요'
        });
        pw.value = "";
        pw.focus();
        return 0;
    }
    else if (pw.value == id.value) {
        Swal.fire({
            icon: 'error',
            title: '오류',
            text: 'id와 동일한 값을 입력하셨습니다.'
        });
        pw.value = "";
        pw.focus();
        return 0;
    }

    for (var i = 0; i < pw.value.length; i++) {
        var pwAscii = pw.value.charCodeAt(i);
        if (!(pwAscii >= 48 && pwAscii <= 57 ||
            pwAscii >= 65 && pwAscii <= 90 ||
            pwAscii >= 97 && pwAscii <= 122)) {
            Swal.fire({
                icon: 'error',
                title: '오류',
                text: '영문 대소문자와 숫자만 입력가능합니다.'
            });
            return 0;
        }
    } return 1;
}

function pwCheck() {
    var pw = document.getElementById("password");
    var pwCheck = document.getElementById("checkPassword");

    if (pw.value != pwCheck.value) {
        Swal.fire({
            icon: 'error',
            title: '오류',
            text: '입력한 비밀번호와 일치하지 않습니다.'
        });
        pw.value = "";
        pw.focus();
        return 0;
    } return 1;
}

function name() {
    var name = document.getElementById("userName");

    if (name.value == "") {
        Swal.fire({
            icon: 'error',
            title: '오류',
            text: '이름을 입력해주세요.'
        });
        name.value = "";
        name.focus();
        return 0;
    } return 1;
}

function idn() {
    var idn = document.getElementById("userIdn");

    if (idn.value == "") {
        Swal.fire({
            icon: 'error',
            title: '오류',
            text: '사번을 입력해주세요.'
        });
        idn.value = "";
        idn.focus();
        return 0;
    } return 1;
}

function rank() {
    var rank = document.getElementById("userRank");
    if (rank.value == "") {
        Swal.fire({
            icon: 'error',
            title: '오류',
            text: '직급을 입력해주세요.'
        });
        rank.value = "";
        rank.focus();
        return 0;
    } return 1;
}

function position() {
    var position = document.getElementById("userPosition");

    if (position.value == "") {
        Swal.fire({
            icon: 'error',
            title: '오류',
            text: '직위를 입력해주세요.'
        });
        position.value = "";
        position.focus();
        return 0;
    } return 1;
}

function dept() {
    var dept = document.getElementById("userDept");

    if (dept.value == "") {
        Swal.fire({
            icon: 'error',
            title: '오류',
            text: '부서를 입력해주세요.'
        });
        dept.value = "";
        dept.focus();
        return 0;
    } return 1;
}

function phone() {
    var phone = document.getElementById("ph");

    if (phone.value == "") {
        Swal.fire({
            icon: 'error',
            title: '오류',
            text: '핸드폰번호를 입력해주세요.'
        });
        phone.value = "";
        phone.focus();
        return 0;
    } return 1;
}

function birthYear() {
    var birthYear = document.getElementById("birthYear");

    if (birthYear.value == "") {
        Swal.fire({
            icon: 'error',
            title: '오류',
            text: '생년을 입력해주세요.'
        });
        birthYear.value = "";
        birthYear.focus();
        return 0;
    } return 1;
}

function birthMonth() {
    var birthMonth = document.getElementById("birthMonth");

    if (birthMonth.value == "") {
        Swal.fire({
            icon: 'error',
            title: '오류',
            text: '생월을 입력해주세요.'
        });
        birthMonth.value = "";
        birthMonth.focus();
        return 0;
    } return 1;
}

function birthDay() {
    var birthDay = document.getElementById("birthDay");

    if (birthDay.value == "") {
        Swal.fire({
            icon: 'error',
            title: '오류',
            text: '생일을 입력해주세요.'
        });
        birthDay.value = "";
        birthDay.focus();
        return 0;
    } return 1;
}

function enrollYear() {
    var enrollYear = document.getElementById("enrollYear");

    if (enrollYear.value == "") {
        Swal.fire({
            icon: 'error',
            title: '오류',
            text: '입행년도를 입력해주세요.'
        });
        enrollYear.value = "";
        enrollYear.focus();
        return 0;
    } return 1;
}