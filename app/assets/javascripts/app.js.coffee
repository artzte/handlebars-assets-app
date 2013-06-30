App = Em.Application.create()

# A small model with a calculated property
App.Page = Em.Object.extend
  title: ( ->
    "A page about #{@get('name')}"
  ).property('name')

# Fixtures for test app
App.pages = ["Trains", "Planes", "Automobiles"].map (conveyance, i) ->
  App.Page.create
    id: i+1
    name: conveyance
    color: ["red", "yellow", "blue"][i]

# Simple pages route with index, edit and show
App.Router.map ->
  @resource 'pages', ->
    @route 'show',
      path: ':page_id'
    @route 'edit',
      path: ':page_id/edit'

App.PagesIndexRoute = Em.Route.extend
  model: ->
    App.pages

App.PagesShowRoute = Em.Route.extend
  model: (params) ->
    App.pages.findProperty 'id', parseInt(params.page_id, 10)
 
App.PagesEditRoute = Em.Route.extend
  model: (params) ->
    App.pages.findProperty 'id', parseInt(params.page_id, 10)

App.PagesController = Em.ArrayController.extend()
App.PageController = Em.ObjectController.extend
  speak: ->
    console.log @get('model.name')

App.PagesShowController = App.PageController.extend()
App.PagesEditController = App.PageController.extend()

# Make the app available in the global namespace
window.App = App
