// Get all elements
const currency1 = document.querySelector("#currency1");
const currency2 = document.querySelector("#currency2");
const selectors = document.querySelectorAll("select");
const search = document.querySelector("#search");
const API_URL = "https://freecurrencyapi.net/api/v2/latest?apikey=26782550-4670-11ec-bb98-29b576624a18&base_currency=USD";
let html = '';

async function currency() {
    const res = await fetch(API_URL);
    const data = await res.json();

    const rates = data.data;
    rates['USD'] = 1;

    console.log(rates);
    const currency_name = Object.keys(data.data);

    //rates.push({USD:1});
    /* currency_name.push('USD'); */
    currency_name.sort();
    currency_name.map(item => {
        return html += `<option value=${item}>${item}</option>`;
    });
    for (let i = 0; i < selectors.length; i++) {
        selectors[i].innerHTML = html;
    }

    currency1.addEventListener('keyup', () => {
        currency2.value = currency1.value * rates[selectors[1].value] / rates[selectors[0].value];
    })

    currency2.addEventListener('keyup', () => {
        currency1.value = currency2.value * rates[selectors[0].value] / rates[selectors[1].value];
    });
}




currency();
