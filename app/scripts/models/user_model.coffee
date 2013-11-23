Myapp.User = DS.Model.extend(
  
    name: DS.attr('string'),
  
    age: DS.attr('number')
  
)

# probably should be mixed-in...
Myapp.User.reopen(
  # certainly I'm duplicating something that exists elsewhere...
  attributes: ( ->
    attrs = []
    Ember.$.each(Ember.keys(@get('data')), (idx, key) =>
      pair = key: key, value: @get(key)
      attrs.push(pair)
    )
    attrs
  ).property()
)

# delete below here if you do not want fixtures
Myapp.User.FIXTURES = [

  id: 0
  name: 'foo'
  age: 'foo'
,

  id: 1
  name: 'foo'
  age: 'foo'


]
