const pulldown = document.querySelector("#pulldown");
const multilist = document.querySelectorAll('#multilist');

// event listener
pulldown.addEventListener('change', showValue);
multilist.addEventListener('change', showMulti);

function showValue() {
    alert(pulldown.value);
}

function showMulti() {
    selectedValue = 0;
    for (x of multilist) {
        if (x.selected) {
            selectedValue += x.value + ',';
        }
    }
}

