const form = document.getElementById("calcForm");
const budgetInput = document.getElementById("budget");
const priceInput = document.getElementById("price");
const mileageInput = document.getElementById("mileage");
const message = document.getElementById("message");
const result = document.getElementById("result");
const resultValue = document.getElementById("resultValue");
const resultDetail = document.getElementById("resultDetail");

function showError(text) {
  message.textContent = text;
  message.className = "message error";
  result.hidden = true;
}

form.addEventListener("submit", function (event) {
  event.preventDefault();

  const budget = parseFloat(budgetInput.value);
  const price = parseFloat(priceInput.value);
  const mileage = parseFloat(mileageInput.value);

  // Validate: all fields must be valid positive numbers
  if (isNaN(budget) || isNaN(price) || isNaN(mileage)) {
    showError("Please fill in all fields with valid numbers.");
    return;
  }

  if (budget <= 0 || price <= 0 || mileage <= 0) {
    showError("All values must be greater than zero.");
    return;
  }

  // litres you can buy with the budget, then distance it covers
  const litres = budget / price;
  const distance = litres * mileage;

  message.textContent = "";
  message.className = "message";

  resultValue.textContent = distance.toFixed(2) + " km";
  resultDetail.textContent =
    "With Rs " + budget.toFixed(2) + " you can buy " +
    litres.toFixed(2) + " litres of petrol at Rs " +
    price.toFixed(2) + " per litre.";

  result.hidden = false;
});