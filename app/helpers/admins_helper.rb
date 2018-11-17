module AdminsHelper

  def gravatar_for(admin)
    gravatar_id =
      Digest::MD5::hexdigest("mhartle@example.com")
    gravatar_url =
      "https://secure.gravatar.com/avatar#{gravatar_id}"
      image_tag(gravatar_url, alt:'Foto de avatar', class: "gravatar")
    end

 def admin_new_path
   redirect_to '/admin/new'
 end
end
