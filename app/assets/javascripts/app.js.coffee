@App =
  name: 'Strings'

  init: () ->
    $(document).on 'turbolinks:load', ()->
      element = document.getElementById('details')
      element.scrollTop = element.scrollHeight

App.init()
