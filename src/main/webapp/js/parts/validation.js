const REGEX_LOGIN = new RegExp('^[A-Za-z0-9]{3,21}$');
const REGEX_PASS = new RegExp('^[A-Za-z0-9]{3,30}$');
const REGEX_LOT_TEXT = new RegExp('^[A-Za-z0-9- ,!]*$');

function check_categories() {
    let categories = '';

    $("input:checkbox[name=category]:checked").each(function(){
        categories += '-' + $(this).val();
    });

    return categories;
}