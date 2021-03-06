class FavoriteMailer < ApplicationMailer
    default from: "nicholasapratt@gmail.com"
    
    def new_comment(user, post, comment)
       headers["Message-ID"] = "<comments/#{comment.id}@your-app-name.example>"
       headers["In-Reply-To"] = "<post/#{post.id}@your-app-name.example>"
       headers["References"] = "<post/#{post.id}@your-app-name.example>"
       
       @user = user
       @post = post
       @comment = comment
       mail(to: user.email, subject: "New comment on #{post.title}", cc: ["henry.nguyen@bloc.io", "napratt0826@yahoo.com"])
    end
end
