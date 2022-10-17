let up = document.getElementById("up");
let down = document.getElementById("down");
let total = document.getElementById("total")

up.onclick = () => {
    total.value = +total.value + 1;
};
down.onclick = () => {
    total.value = (total.value) > 0 ? +total.value - 1 : 0;
}

let buyButton = document.getElementById('buy');
buyButton.addEventListener('click', buy);
function buy() {
    new Noty({
        text: "В корзину добавлено  " + total.value + " товаров",
        timeout: 1500,
        type: 'info',
        modal: true,
    }).show()}