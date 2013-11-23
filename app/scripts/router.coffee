Myapp.Router.map( ->
  
  @resource('users', ->
    @resource('user', path: '/:user_id', ->
      @route('edit')
    )
    @route('create')
  )
  
)
