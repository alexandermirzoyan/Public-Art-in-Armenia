module PostsHelper
    def post_image(post)
        if post.image.attached?
            post.image
        else
            image_url("avatar.png")
        end
      end
end
