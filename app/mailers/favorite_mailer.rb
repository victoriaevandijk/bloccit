class FavoriteMailer < ApplicationMailer
  default from: "victoriaevandijk@gmail.com"
  
   def new_comment(user, post, comment)
 
     headers["Message-ID"] = "<comments/#{comment.id}@bloccit.com>"
     headers["In-Reply-To"] = "<post/#{post.id}@bloccit.com>"
     headers["References"] = "<post/#{post.id}@bloccit.com>"
 
     @user = user
     @post = post
     @comment = comment

     mail(to: user.email, subject: "New comment on #{post.title}")
   end
   
   def new_post(post)
 
     headers["Message-ID"] = "<posts/#{post.id}@http://localhost:3000/>"
     headers["In-Reply-To"] = "<post/#{post.id}@http://localhost:3000/>"
     headers["References"] = "<post/#{post.id}@http://localhost:3000/>"
 
     @post = post
 
     mail(to: post.user.email, subject: "New favorite on #{post.title}.")
   end
end
