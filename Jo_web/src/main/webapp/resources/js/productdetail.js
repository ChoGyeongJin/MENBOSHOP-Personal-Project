function printName()  {
  const name = document.getElementById("name").value;
  document.getElementById("result").innerText = name;
}

window.onload = function () {
    up_btn.addEventListener("click", quantity_up);
    down_btn.addEventListener("click", quantity_down);
};

function quantity_up(){
    let quantity = parseInt(document.getElementById("name").value);

    quantity += 1;
    document.getElementById("name").value = quantity;
}
function quantity_down(){
    let quantity = parseInt(document.getElementById("name").value);

    quantity -= 1;
    document.getElementById("name").value = quantity;
}
