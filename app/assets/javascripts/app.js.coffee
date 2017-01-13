@App =
  name: 'Strings'

  init: () ->
    $(document).on 'turbolinks:load', ()->
      App.scroll_details()

  scroll_details: ()->
    element = document.getElementById('details')
    element.scrollTop = element.scrollHeight

App.init()
