function PostNotFoundError(message) {
  this.message = message
  Error.captureStackTrace(this, this.constructor)
}
PostNotFoundError.prototype = Object.create(Error.prototype)
PostNotFoundError.prototype.constructor = PostNotFoundError

function CommentsLock(message) {
  this.message = message
  Error.captureStackTrace(this, this.constructor)
}
CommentsLock.prototype = Object.create(Error.prototype)
CommentsLock.prototype.constructor = CommentsLock

function Author(name) {
  this.name = name
  this.posts = []
}

Author.prototype.createPost = function(post) {
  post.setAuthor(this)
  this.posts.push(post)
}

Author.prototype.getPost = function() {
  return this.posts
}

Author.prototype.findPostByTitle = function(title) {
  var found = this.posts.find(function(post) {
    return post.title === title
  })

  if(!found) {
    throw new Error('Post Not Found')
  }

  return found
}

function Post(attrs) {
  this.title = attrs.title
  this.content = attrs.content
  this.author = attrs.author
  this.comment = []
  this.locked = false
}

Post.prototype.setAuthor = function(author) {
  return this.author = author
}

Post.prototype.addComment = function(comment) {
  if (this.lockComment(true)) {
    throw new Error('Locked Comments')
  }
  return this.comments.push(comment)
}

Post.prototype.getComment = function(comment) {
  return this.comments
}

Post.prototype.lockComment = function(bool) {
  return this.locked = bool
}

function Comments(comment) {
  this.comment = comment
}

let p1 = new Post({
  title: "Hola mundo",
  content: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
})

let p2 = new Post({
  title: "Hola mundo 2",
  content: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
})

let autor = new Author('mateo@prueba.com')

autor.createPost(p1)
autor.createPost(p2)

let comment1 = new Comment('dsldksadkñlsad')
let comment2 = new Comment('dsldksasdfdsfdsfdsfdkñlsad')
let comment3 = new Comment('hola mundo comentarios')

p1.addComment(comment1)
p2.addComment(comment2)

p1.lockComment(true)

try {
  p1.addComment(comment3)
} catch(error) {
  if(error instaceof CommentsLock) {
    console.log('MESSAGE: ', error.message)
    console.log('STACK: ', error.stack)
  } else {
    throw error
  }
}

try {
  autor.findPostByTitle("hola")
} catch(error) {
  if(error instaceof CommentsLock) {
    console.log('MESSAGE: ', error.message)
    console.log('STACK: ', error.stack)
  } else {
    throw error
  }
}
