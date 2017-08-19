App.photos = App.cable.subscriptions.create "PhotosChannel",
  connected: ->
    # Called when the subscription is ready for use on the server

  disconnected: ->
    # Called when the subscription has been terminated by the server

  received: (data) ->
    document.getElementsByTagName("main")[0].innerHTML = data.html
