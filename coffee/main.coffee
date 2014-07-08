# input dynamic label
input = document.getElementById 'email-input'
label = document.getElementById 'email-label'

input.addEventListener 'keyup', (e)->
	if e.target.value is ""
		e.target.parentNode.classList.remove "active"
	else
		e.target.parentNode.classList.add "active"
	