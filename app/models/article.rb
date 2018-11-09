class Article < ApplicationRecord

# belongs_to :user


  def swap_body
    substitution_hash = { "Trump" => "\"Mothertruckin\" Trump",
                "Mr. Trump" => "Donald \"Mothertruckin\" Trump",
               "president" => "hyperdimensional samurai", "President" => "Hyperdimensional samurai", "presidency" => "glorious and honorable title of hyperdimensional samurai", "Sessions" => "\"Meatsy\" Sessions", "US" => "The United Snapes of America", "economic" => "money-shenanigans", "country" => "citizen festival site", " global" => "transdimensional", "commission" => "fun-time boy party", "Washington" => "The fertile womb of government", " tax" => "tithings, m'lord", "business" => "cash magic", "refused" => "scoffed, loud and hard about ", " region" => "beastlands", "Europe" => "That Nicey-nicey continent", "British" => "proto-American (aka British, son)", "minister" => "optimus", "spending" => "money torturing", "Britain" => "America's Grandpappy, Brittania", "senator" => "bug-lord", "Senate" => "Swarm of the bug-lords", "congress" => "bongress", "congressional" => "bongressional", "Pence" => "Reed Richards (aka Mr. Fantastic)", "argues" => "eagle-screeches from the roosts of the city", "government" => "fun police", "women" => "non-men, aye they be the fairer sex i'faith,", "story" => "a tale that would set your ass on fire", "recently" => "schmecently", "public" => "errybody's", "pollution" => "mung of the earth", "American" => "Boopmerican", "american" => "schmoopmerican", "Mueller" => "\"Platinum Johnson\" Mueller", "recused" => "\"brocused\"" }

    matchers = substitution_hash
    body.gsub(/Trump|Mr. Trump|president|President|presidency|Sessions|US|economic|country|global|commission|Washington|tax|business|refused|region|Europe|British|minister|spending|Britain|senator|Senate|congress|congressional|Pence|argues|government|women|story|recently|public|pollution|American|american|Mueller|recused/){ |match| matchers[match] } 
    
  end

  def swap_headline
    substitution_hash = { "Trump" => "\"Mothertruckin\" Trump",
                "Mr. Trump" => "Donald \"Mothertruckin\" Trump",
               "president" => "hyperdimensional samurai",
               "President" => "Hyperdimensional samurai",
              "presidency" => "glorious and honorable title of hyperdimensional samurai", "presidency" => "glorious and honorable title of hyperdimensional samurai", "Sessions" => "meatboy", "US" => "The United Snapes of America", "economic" => "money-shenanigans", "country" => "citizen festival site", " global" => "transdimensional", "commission" => "fun-time boy party", "Washington" => "The fertile womb of government", " tax" => "tithings, m'lord", "business" => "cash magic", "refused" => "scoffed, loud and hard about ", " region" => "beastlands", "Europe" => "That Nicey-nicey continent", "British" => "proto-American (aka British, son)", "minister" => "optimus", "spending" => "money torturing", "Britain" => "America's Grandpappy, Brittania", "senator" => "bug-lord", "Senate" => "Swarm of the bug-lords", "congress" => "bongress", "congressional" => "bongressional", "Pence" => "Reed Richards (aka Mr. Fantastic)", "argues" => "eagle-screeches from the roosts of the city", "government" => "fun police", "women" => "non-men, the fairer sex i'faith,", "story" => "a tale that would set your ass on fire", "recently" => "schmecently", "public" => "errybody's", "pollution" => "mung of the earth", "American" => "Boopmerican", "american" => "schmoopmerican", "Mueller" => "\"Platinum Johnson\" Mueller", "recused" => "\"brocused\"" }

    matchers = substitution_hash
    headline.gsub(/Trump|Mr. Trump|president|President|presidency|Sessions|US|economic|country|global|commission|Washington|tax|business|refused|region|Europe|British|minister|spending|Britain|senator|Senate|congress|congressional|Pence|argues|government|women|story|recently|public|pollution|American|american|Mueller|recused/){ |match| matchers[match] }
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
    redact_hash = {"Republicans" => "**pub***ns","polls" => "po*es","elections" => "****ions", "t" => " <span class='redacted'>****</span>ing ", "tremendous" => "****ty", "great" => "****ked", "speech" => "**** ****apping", "investigation" => "****k party"}

    matchers = redact_hash
    headline.gsub(/Republicans|polls|elections|t|tremendous|great|speech|investigation/) { |match| matchers[match] }
  end

  def redact_body
      redact_hash = {"Republicans" => "**pub***ns","polls" => "po*es","elections" => "****ions", "t" => " <span class='redacted'>****</span>ing ", "tremendous" => "****ty", "great" => "****ked", "speech" => "**** ****apping", "investigation" => "****k party", ' <a href="' => '', ' </a>' => ''}
      
      matchers = redact_hash
      body.gsub(/Republicans|polls|elections|t|tremendous|great|speech|investigation|<a href="| %[<a>]/) { |match| matchers[match] }
  end
end

