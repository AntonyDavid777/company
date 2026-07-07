const models = {

    Honda: [
        "Shine 125",
        "SP 125",
        "Unicorn",
        "Hornet 2.0",
        "CB200X",
        "Livo",
        "CD 110 Dream",
        "CB350RS",
        "Hness CB350"
    ],

    Hero: [
        "Splendor Plus",
        "HF Deluxe",
        "Passion Plus",
        "Passion XTEC",
        "Glamour",
        "Super Splendor",
        "Xtreme 160R",
        "Xpulse 200 4V"
    ],

    TVS: [
        "Raider 125",
        "Apache RTR 160",
        "Apache RTR 200 4V",
        "Sport",
        "Star City Plus",
        "Ronin",
        "Jupiter",
        "NTORQ 125"
    ]

};
const brand = document.getElementById("brand");
const model = document.getElementById("model");

brand.addEventListener("change", function () {

    model.innerHTML = '<option value="">Select Model</option>';

    const selectedBrand = brand.value;

    if(models[selectedBrand]){

        models[selectedBrand].forEach(function(item){

            const option = document.createElement("option");

            option.value = item;
            option.textContent = item;

            model.appendChild(option);

        });

    }

});

const form=document.getElementById("vehicleForm");

form.addEventListener("submit",function(e){
e.preventDefault();
const vehicle = document.getElementById("vehicleType").value;
const brand = document.getElementById("brand").value;
const model = document.getElementById("model").value;
console.log(vehicle);
console.log(brand);
console.log(model);

fetch("/search",{

method:"POST",

headers:{
"Content-Type":"application/json"
},

body:JSON.stringify({

vehicle:vehicle,
brand:brand,
model:model

})

})
.then(response=>response.json())
.then(data => {

    const result = document.getElementById("result");
    result.style.display = "block";

    if (data.error) {

        result.innerHTML = `<h2>${data.error}</h2>`;

    } else {

        result.innerHTML = `
            <h2>${data.brand} ${data.model}</h2>

            <p>Engine CC : ${data.engine_cc}</p>

            <p>Fuel Type : ${data.fule_type}</p>

            <p>Recommended Oil : ${data.recommended_oil}</p>

            <p>Oil Quantity : ${data.oil_quantity}</p>

            <p>Oil Change Interval : ${data.oil_change_interval} km</p>

            <p>Mileage : ${data.mileage_kmpl} km/l</p>
        `;
    }

});

});

const fuelButton = document.getElementById("fuelbtn");

fuelButton.addEventListener("click", function () {
    window.location.href = "/fuel";
});

