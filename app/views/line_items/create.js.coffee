cart = document.getElementById("cart")
#cart.innerHTML = '= escape_javascript render(@cart)'
location.reload()

notice = document.getElementById("notice")
if notice
  notice.style.display = "none"
