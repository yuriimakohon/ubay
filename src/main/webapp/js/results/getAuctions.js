document.addEventListener("DOMContentLoaded", async function loadAuctions() {
    await ref_token();

    let response = await fetch('http://localhost:8080/api/auction', {
        method: 'GET',
        credentials: "same-origin"
    });
    if (response.ok) {
        let json = await response.json();
        resultAuctionsGen(json);
    } else {
        console.log("what is wrong ?");
    }
});