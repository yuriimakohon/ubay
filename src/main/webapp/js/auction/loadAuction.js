document.addEventListener("DOMContentLoaded", async function () {
    await ref_token();
    let lot = await get_auction();
    if (lot != null) {
        let rd = $('#range-duration');
        $('#input-title').val(lot.title);
        $('#textarea-description').val(lot.description);
        // $('#input-photos').val(lot.photo);
        $('#input-start_price').val(lot.price);
        $('#input-max_price').val(lot.maxPrice);
        // $('#input-start_time').val(lot.startTime);
        rd.val((+lot.duration - +lot.startTime) / 24 / 3600);
        $('#p-duration').text(rd.val());
    }
})