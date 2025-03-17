document.addEventListener("DOMContentLoaded", function () {
    const form = document.querySelector("form");

    form.addEventListener("submit", function (event) {
        const name = document.querySelector('input[name="name"]').value.trim();
        const email = document.querySelector('input[name="email"]').value.trim();

        if (name === "" || email === "") {
            alert("Please fill out all fields.");
            event.preventDefault();
        } else if (!/\S+@\S+\.\S+/.test(email)) {
            alert("Please enter a valid email address.");
            event.preventDefault();
        }
    });
});
