# Just a small-town girl, livin' in a lonely world
# She took the midnight train goin' anywhere
# Just a city boy, born and raised in South Detroit
# He took the midnight train goin' anywhere

girl = Person.new(sex: 'female', age: 18, from: 'a small town')
girl.currently_lives_in = 'a lonely world'

train = Transportation.new(type: 'train', departs_at: 'midnight', destination: 'anywhere')
girl.transport(train)

boy = Person.new(sex: 'male', age: 18, from: 'South Detroit')
boy.transport(train)