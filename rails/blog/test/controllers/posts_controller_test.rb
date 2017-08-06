require 'test_helper'

class PostsControllerTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end
  test "a customer can't create a post if it's not authenticated" do
    user = users(:simon)
    post user_posts_path(user), {
      params: { content: "Creando", title: "Valid Post" }
    }
    assert_redirected_to new_user_session_path
  end

  test "a customer can create a post if it is authenticated" do
    user = users(:simon)
    user.password = "123456"
    sign_in user
    post user_posts_path(user), {
      params: {
        post: {
          content: "Creando", title: "Valid Post"
        }
      }
    }
    assert_redirected_to user_post_path(user, Post.last)
    follow_redirect!
    assert_select "#post-content .row h1", "Valid Post"
  end

  test "a user can view all posts" do
    post = posts(:hola_mundo)
  end

  test "a customer can edit another user post" do
    user = users(:simon)
    user.password = "123456"
    sign_in user
    post user_posts_path(user), params: {
      post: {
        content: "post to edit",
        title: "Editing post"
      }
    }
    user_post = Post.last
    put user_post_path(user, user_post), {
      params: {
        post: {
          title: "New Title"
        }
      },
      xhr: true
    }
    assert_equal "text/javascript", @response.content_type
    assert body.include?("New Title")
  end

  test "a user cannot update other user's post" do
    user1 = users(:simon)
    user2 = users(:mateo)
    sign_in user1
    user2_post = user2.posts.first
    patch user_post_path(user1, user2_post), {
      params: {
        post: {
          title: "Nuevo titulo"
        }
      },
      xhr: true
    }
    assert body.include?("Nuevo titulo")
  end
end
