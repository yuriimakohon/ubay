let inputSignupLogin = $('#input-signup_login');
let inputSignupPass = $('#input-signup_pass');
let inputSignupPassConfirm = $('#input-signup_pass_confirm');

let inputSigninLogin = $('#input-signin_login');
let inputSigninPass = $('#input-signin_pass');

async function onCreateAccount() {
    let login = inputSignupLogin.val();
    let pass = inputSignupPass.val();
    let passConfirm = inputSignupPassConfirm.val();
    let role = $("input[name='role']:checked").val();

    if (!login || !pass || !passConfirm) {
        errMissingFields();
    } else if (!REGEX_LOGIN.test(login)) {
        errLoginFormat();
    } else if (!REGEX_PASS.test(pass)) {
        errPassFormat();
    } else if (pass.localeCompare(passConfirm) !== 0) {
        errPassConfirm();
    } else {
        if (!await sign_up(login, pass, role)) {
            errUserExist();
        } else {
            onForward("/catalog")
        }
    }
}

async function onLogIn() {
    let login = inputSigninLogin.val();
    let pass = inputSigninPass.val();

    if (!login || !pass) {
        errMissingFields();
    } else if (!REGEX_LOGIN.test(login)) {
        errLoginFormat();
    } else {
        if (!await sign_in(login, pass)) {
            errInvalidAuth();
        } else {
            onForward("/catalog")
        }
    }
}