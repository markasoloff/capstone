class Article < ApplicationRecord

  def substitution
    original_article_body = @article.body
    # original_article_headline = article.headline
  
    original_article_body.gsub("president", "hyperdimensional samurai")
    return original_article_body
  end


end
