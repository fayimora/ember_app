Myapp.UserEditRoute = Ember.Route.extend(
  model: (model) ->
    @get('store').find('user', model.user_id)
)

