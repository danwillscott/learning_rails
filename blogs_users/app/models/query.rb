Message.create(post: Post.first, user: User.third, author: User.third.first_name, message: "if you don't git push you will die")

Post.find(11).update(user: User.find(5))

Post.find(where user: User.find(3))

Post.all.find(where(user: User.third))

Post.where(user: User.first)

Message.where(user: User.third)

Post.where(user: User.all)

Message.find_by_author(User.third.first_name)

Post.create(blog: Blog.second, user: User.first, title:'asdfasdfasdf', content:'Jasdfasdfasdf')

Message.create(post: Post.first, user: User.third, author: User.third.first_name, message: "if you don't git push you will die")

User.create(first_name:"Dan", last_name:'Scott', email:"dan@dan.com")

Blog.create(name:"this is a cool blog", description:'asefjasdfhadsfnsafdn')

Blog.descendants
User.find(1).blogs

User.joins(:blogs)
Blog.joins(:users).where(User.first)
Post.joins(:messages)
Message.joins(:posts)

User.joins(posts: :messages).uniq

blog1 = Blog.first

blog1.posts.messages
Message.create()
Post.create(title:'cool title', content:'asdfuhasldkfhaiusfdbu', blog: blog1, user: user1)