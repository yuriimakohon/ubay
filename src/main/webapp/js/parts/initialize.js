document.addEventListener("DOMContentLoaded", async function () {
    let response = await fetch('http://localhost:8080/user/get', {
        method: 'GET',
        credentials: "same-origin",
    });
    if (response.ok) {
        let respJson = await response.json();
        if (respJson.role === 0) {
            console.log("guest");
            $('#item-sign_up').removeClass('hidden');
        } else {
            $('#item-account').removeClass('hidden');
            $('#item-balance').removeClass('hidden');
            if (respJson.role === 1) { // auctioneer
                $('#item-auction').removeClass('hidden')
            } else { // bidder
                $('#item-bids').removeClass('hidden')
            }
        }
    } else {
        console.log("what is wrong ?");
    }
});
