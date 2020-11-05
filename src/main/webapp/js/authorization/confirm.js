const regexLogin = new RegExp('^[A-Za-z0-9]{3,21}$');
const regexPass = new RegExp('^[A-Za-z0-9]{3,30}$');

let inputSignupLogin = $('#input-signup_login');
let inputSignupPass = $('#input-signup_pass');
let inputSignupPassConfirm = $('#input-signup_pass_confirm');

let inputSigninLogin = $('#input-signin_login');
let inputSigninPass = $('#input-signin_pass');

function onCreateAccount() {
    let login = inputSignupLogin.val();
    let pass = inputSignupPass.val();
    let passConfirm = inputSignupPassConfirm.val();
    let role = $("input[name='role']:checked").val();

    if (!login || !pass || !passConfirm) {
        errMissingFields();
    } else if (!regexLogin.test(login)) {
        errLoginFormat();
    } else if (!regexPass.test(pass)) {
        errPassFormat();
    } else if (pass.localeCompare(passConfirm) !== 0) {
        errPassConfirm();
    } else {
        console.log('login: ' + login +
            '\npassword: ' + pass +
            '\nrole: ' + role
        );
    }
}

function onLogIn() {
    let login = inputSigninLogin.val();
    let pass = inputSigninPass.val();

    if (!login || !pass) {
        errMissingFields();
    } else if (!regexLogin.test(login)) {
        errLoginFormat();
    } else {
        console.log('login: ' + login +
            '\npassword: ' + pass
        );
    }
}