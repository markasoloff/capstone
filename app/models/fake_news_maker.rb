class Words

  @growing_hash = ""
  @previous_hash = ""

  def j(keyword,substitution_word)
    growing_hash = keyword.str + "=>" + substitution_word.str + ","
    print growing_hash
  end

end


    # substitution_hash = { "Trump" => "\"Mothertruckin\" Trump",
    #             "Mr. Trump" => "Donald \"Mothertruckin\" Trump",
    #            "president" => "hyperdimensional samurai", "President" => "Hyperdimensional samurai", "presidency" => "glorious and honorable title of hyperdimensional samurai", "Sessions" => "\"Meatsy\" Sessions", "US" => "The United Snapes of America", "economic" => "money-shenanigans", "country" => "citizen festival site", " global" => "transdimensional", "commission" => "fun-time boy party", "Washington" => "The fertile womb of government", " tax" => "tithings, m'lord", "business" => "cash magic", "refused" => "scoffed, loud and hard about ", " region" => "beastlands", "Europe" => "That Nicey-nicey continent", "British" => "proto-American (aka British, son)", "minister" => "optimus", "spending" => "money torturing", "Britain" => "America's Grandpappy, Brittania", "senator" => "bug-lord", "Senate" => "Swarm of the bug-lords", "congress" => "bongress", "congressional" => "bongressional", "Pence" => "Reed Richards (aka Mr. Fantastic)", "argues" => "eagle-screeches from the roosts of the city", "government" => "fun police", "women" => "non-men, aye they be the fairer sex i'faith,", "story" => "a tale that would set your ass on fire", "recently" => "schmecently", "public" => "errybody's", "pollution" => "mung of the earth", "American" => "Boopmerican", "american" => "schmoopmerican", "Mueller" => "\"Platinum Johnson\" Mueller", "recused" => "\"brocused\"" }