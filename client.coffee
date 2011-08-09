

window.onload = ->
  new Moon()
  new Lua()

  $ = (id) -> document.getElementById id

  shroud = $ "shroud"

  show_modal = ->
    shroud.style.display = "block"

  hide_modal = ->
    shroud.style.display = "none"

  shroud.onclick = hide_modal

  nodes = document.querySelectorAll ".see-lua"
  for node in nodes
    node.onclick = ->
      code_id = this.getAttribute("code_id")

      $("left").innerHTML = $("moon-#{code_id}").innerHTML
      $("right").innerHTML = $("lua-#{code_id}").innerHTML

      show_modal()
