Myapp.UsersRoute = Ember.Route.extend(
  model: ->
    @get('store').find('user')
)

