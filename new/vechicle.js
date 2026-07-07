const vehicleSelect = document.getElementById("vehicle");
const brandField = document.getElementById("brandField");
const brandSelect = document.getElementById("brand");
const message = document.getElementById("message");

function showMessage(text, type) {
  message.textContent = text;
  message.className = "message " + type;
}

vehicleSelect.addEventListener("change", function () {
  if (vehicleSelect.value === "two") {
    // Show the bike brand dropdown for two wheelers
    brandField.style.display = "flex";
    showMessage("", "");
  } else if (vehicleSelect.value === "four") {
    // Hide the brand dropdown for four wheelers
    brandField.style.display = "none";
    brandSelect.value = "";
    showMessage("You selected a Four Wheeler.", "success");
  } else {
    brandField.style.display = "none";
    brandSelect.value = "";
    showMessage("", "");
  }
});

brandSelect.addEventListener("change", function () {
  if (brandSelect.value !== "") {
    const brandName = brandSelect.options[brandSelect.selectedIndex].text;
    showMessage("You selected " + brandName + ".", "success");
  }
});