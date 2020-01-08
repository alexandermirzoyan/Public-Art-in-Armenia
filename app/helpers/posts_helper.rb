module PostsHelper
    def post_image(post)
        if post.post_image.attached?
            post.post_image
        else
            image_url("avatar.png")
        end
      end
end
