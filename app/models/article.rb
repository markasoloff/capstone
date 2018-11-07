class Article < ApplicationRecord

# belongs_to :user

  def swap_body
    substitution_hash = { "Trump" => "\"Mothertruckin\" Trump",
                "Mr. Trump" => "Donald \"Mothertruckin\" Trump",
               "president" => "hyperdimensional samurai",
               "President" => "Hyperdimensional samurai",
              "presidency" => "glorious and honorable title of hyperdimensional samurai" }

    matchers = substitution_hash
    body.gsub(/Trump|Mr. Trump|president|President|presidency/){ |match| matchers[match] }
    
  end

  def swap_headline
    substitution_hash = { "Trump" => "\"Mothertruckin\" Trump",
                "Mr. Trump" => "Donald \"Mothertruckin\" Trump",
               "president" => "hyperdimensional samurai",
               "President" => "Hyperdimensional samurai",
              "presidency" => "glorious and honorable title of hyperdimensional samurai" }

    matchers = substitution_hash
    headline.gsub(/Trump|Mr. Trump|president|President|presidency/){ |match| matchers[match] }
  end

  def add_headline
    addition_hash = { "million" => "million dollars worth of bees, glorious bees",
                      "Tax" => "Tax baby, tax",
                      "tax" => "tax, or as ya boy Donny Trump says it: 'terx'",
                      "taxes" => ", or as ya boy Donny Trump likes to call them: 'torxes'","elections" => "elections - more like ERECTIONS, am I right? Wait, sorry... elections." }

    matchers = addition_hash
    headline.gsub(/elections|million|Tax|tax|taxes/){ |match| matchers[match] }    
  end


  def add_body
    addition_hash = { "million" => "million dollars worth of bees, glorious bees",
                      "Tax" => "Tax baby, tax",
                      "tax" => "tax, or as ya boy Donny Trump says it: 'terx'",
                      "taxes" => "taxes, or as ya boy Donny Trump likes to call them: 'torxes'",
                      "elections" => "elections - more like ERECTIONS, am I right? Wait, sorry... elections." }
    matchers = addition_hash
    body.gsub(/elections|million|Tax|tax|taxes/){ |match| matchers[match] }
  end

  def redact_headline
    redact_hash = {"Republicans" => "**pub***ns","polls" => "po*es","elections" => "****ions", "terrific" => "****ing", "tremendous" => "****ty", "great" => "****ked", "speech" => "**** ****apping", "investigation" => "****k party"}

    matchers = redact_hash
    headline.gsub(/Republicans|polls|elections|terrific|tremendous|great|speech|investigation/) { |match| matchers[match] }
  end

  def redact_body
      redact_hash = {"Republicans" => "**pub***ns","polls" => "po*es", "terrific" => "****ing", "tremendous" => "****ty", "great" => "****ked", "speech" => "**** ****apping", "investigation" => "****k party"}
      
      matchers = redact_hash
      body.gsub(/Republicans|polls|terrific|tremendous|great|speech|investigation/) { |match| matchers[match] }
  end
end
