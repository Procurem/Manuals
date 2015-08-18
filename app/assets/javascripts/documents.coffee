# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

options =
  editor: document.querySelector('[data-toggle="pen"]')
  debug: true
  list: [
    'insertimage'
    'blockquote'
    'h2'
    'h3'
    'p'
    'code'
    'insertorderedlist'
    'insertunorderedlist'
    'inserthorizontalrule'
    'indent'
    'outdent'
    'bold'
    'italic'
    'underline'
    'createlink'
  ]

# create editor
pen = window.pen = new Pen(options)
pen.focus()

# toggle editor mode
document.querySelector('#mode').addEventListener 'click', ->
  text = @textContent
  if @classList.contains('disabled')
    @classList.remove 'disabled'
    pen.rebuild()
  else
    @classList.add 'disabled'
    pen.destroy()
  return

# export content as markdown
document.querySelector('#tomd').addEventListener 'click', ->
  text = pen.toMd()
  document.body.innerHTML = '<a href="javascript:location.reload()">&larr;back to editor</a><br><br><pre>' + text + '</pre>'
  return

# toggle editor mode
document.querySelector('#hinted').addEventListener 'click', ->
  `var pen`
  pen = document.querySelector('.pen')
  if pen.classList.contains('hinted')
    pen.classList.remove 'hinted'
    @classList.add 'disabled'
  else
    pen.classList.add 'hinted'
    @classList.remove 'disabled'
  return