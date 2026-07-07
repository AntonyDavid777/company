const form = document.getElementById("loginForm");
const usernameInput = document.getElementById("username");
const passwordInput = document.getElementById("password");
const message = document.getElementById("message");
const registerBtn = document.getElementById("registerBtn");

function showMessage(text, type) {
  message.textContent = text;
  message.className = "message " + type;
}

form.addEventListener("submit", function (event) {
  event.preventDefault();

  const username = usernameInput.value.trim();
  const password = passwordInput.value.trim();

  if (username === "" || password === "") {
    showMessage("Please fill in all fields.", "error");
    return;
  }

  if (password.length < 6) {
    showMessage("Password must be at least 6 characters.", "error");
    return;
  }

  showMessage("Login successful! Welcome, " + username + ".", "success");
  // Redirect to your dashboard here, e.g.:
  // window.location.href = "dashboard.html";
});

registerBtn.addEventListener("click", function () {
  showMessage("Redirecting to registration...", "success");
  // Point this to your registration page when ready:
  // window.location.href = "register.html";
});
function nextPage() {
    window.location.href = "/home";
}