class Article < ApplicationRecord

belongs_to :user

  def swap_body
    matchers = { "Mr. Trump" => "Donald \"mothertruckin\" Trump",
               "president" => "hyperdimensional samurai",
              "presidency" => "glorious and honorable title of hyperdimensional samurai"
             }
    body.gsub(/Mr. Trump|president|presidency/){ |match| matchers[match] }
  end

  def swap_headline
    matchers = { "Mr. Trump" => "Donald \"mothertruckin\" Trump",
               "president" => "hyperdimensional samurai",
              "presidency" => "glorious and honorable title of hyperdimensional samurai"
             }
    headline.gsub(/Mr. Trump|president|presidency/){ |match| matchers[match] }
  end
end
