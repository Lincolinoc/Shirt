let up = document.getElementById("up");
let down = document.getElementById("down");
up.onclick = () => {
    total.value = +total.value + 1;
};
down.onclick = () => {
    total.value = (total.value) > 0 ? +total.value - 1 : 0;
}

    document.querySelector("#buy").addEventListener('click', function(e) {
        var count_product = document.getElementById('total').value;
        alert("В корзину добавлено " + count_product + " товаров");
    });