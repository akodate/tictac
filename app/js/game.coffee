$ ->
  isX = true

  clearBoard = ->
    $('.board-cell').text('')
    isX = true

  $('#start-game').on 'click', (e) ->
    clearBoard()
    $(@).hide()
    $('#gameboard').fadeIn(500)

  $('.board-cell').on 'click', (e) ->
    mark = if isX then 'x' else 'o'
    if $(@).text() == ''
      $(@).text mark
      $(@).addClass mark
      isX != isX

