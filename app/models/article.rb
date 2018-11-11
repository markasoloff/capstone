class Article < ApplicationRecord

# belongs_to :user


  def swap_body
    substitution_hash = { "Trump" => "<span class='swap'>\"Mothertruckin\" Trump</span>",
                "Mr. Trump" => "<span class='swap'>Mr. Trump</span>",
               "president" => "<span class='swap'>hyperdimensional samurai</span>",
               "President" => "<span class='swap'>Hyperdimensional samurai</span>",
              "presidency" => "<span class='swap'>jellybean days</span>", "Sessions" => "<span class='swap'>meatboy</span>",
               "US" => "<span class='swap'>The United Snapes of America</span>",
                "economic" => "<span class='swap'>money-shenanigans</swap>",
                 "country" => "<span class='swap'>citizen festival site</span>",
                  " global" => "<span class='swap'>transdimensional</span>",
                   "commission" => "<span class='swap'>big boy party</span>",
                    "Washington" => "<span class='swap'>Washing-fun-in-the-sun</span>",
                      " tax" => "<span class='swap'>tithings, m'lord</span>",
                       "business" => "<span class='swap'>cash magic</span>",
                        "refused" => "<span class='swap'>scoffed, loud, hard, and deep into the night about</span> ",
                         " region" => "<span class='swap'>beastlands</span>",
                          "Europe" => "<span class='swap'>That Nicey-nicey continent</span>",
                           "British" => "<span class='swap'>Proto-American (aka British)</span>",
                            "minister" => "<span class='swap'>optimus</span>",
                             "spending" => "<span class='swap'>money torturing</span>",
                              "Britain" => "<span class='swap'>America's Grandpappy</span>, Brittania",
                               "senator" => "bug-lord", "Senate" => "<span class='swap'>Swarm of the bug-lords</span>",
                                "congress" => "<span class='swap'>bongress</span>",
                                 "congressional" => "<span class='swap'>bongressional</span>",
                                  "Pence" => "<span class='swap'>Reed Richards (aka Mr. Fantastic)</span>",
                                   "argues" => "<span class='swap'>eagle-screeches from the roosts of the city</span>", 
                                   "government" => "<span class='swap'>fun police</span>",
                                    "women" => "<span class='swap'>reverse-men, anti-boys, some brave adventurers know them as lady-folk,</span>",
                                     "story" => "<span class='swap'>a tale that would rend your ass on asunder</span>",
                                      "recently" => "<span class='swap'>schmecently</span>",
                                       "public" => "<span class='swap'>errybody's</span>",
                                        "pollution" => "<span class='swap'>mung of the earth</span>",
                                         "American" => "<span class='swap'>Boopmerican</span>",
                                          "american" => "<span class='swap'>schmoopmerican</span>",
                                           "Mueller" => "<span class='swap'>\"Platinum Johnson\" Mueller</span>", "recused" => "<span class='swap'>\"brocused\"</span>" }

    matchers = substitution_hash
    body.gsub(/Trump|Mr. Trump|president|President|presidency|Sessions|US|economic|country|global|commission|Washington|tax|business|refused|region|Europe|British|minister|spending|Britain|senator|Senate|congress|congressional|Pence|argues|government|women|story|recently|public|pollution|American|american|Mueller|recused/){ |match| matchers[match] } 
    
  end

  def swap_headline
    substitution_hash = { "Trump" => "<span class='swap'>\"Mothertruckin\" Trump</span>",
                "Mr. Trump" => "<span class='swap'>Mr. Trump</span>",
               "president" => "<span class='swap'>hyperdimensional samurai</span>",
               "President" => "<span class='swap'>Hyperdimensional samurai</span>",
              "presidency" => "<span class='swap'>jellybean days</span>", "Sessions" => "<span class='swap'>meatboy</span>",
               "US" => "<span class='swap'>The United Snapes of America</span>",
                "economic" => "<span class='swap'>money-shenanigans</swap>",
                 "country" => "<span class='swap'>citizen festival site</span>",
                  " global" => "<span class='swap'>transdimensional</span>",
                   "commission" => "<span class='swap'>big boy party</span>",
                    "Washington" => "<span class='swap'>Washing-fun-in-the-sun</span>",
                      " tax" => "<span class='swap'>tithings, m'lord</span>",
                       "business" => "<span class='swap'>cash magic</span>",
                        "refused" => "<span class='swap'>scoffed, loud, hard, and deep into the night about</span> ",
                         " region" => "<span class='swap'>beastlands</span>",
                          "Europe" => "<span class='swap'>That Nicey-nicey continent</span>",
                           "British" => "<span class='swap'>Proto-American (aka British)</span>",
                            "minister" => "<span class='swap'>optimus</span>",
                             "spending" => "<span class='swap'>money torturing</span>",
                              "Britain" => "<span class='swap'>America's Grandpappy</span>, Brittania",
                               "senator" => "bug-lord", "Senate" => "<span class='swap'>Swarm of the bug-lords</span>",
                                "congress" => "<span class='swap'>bongress</span>",
                                 "congressional" => "<span class='swap'>bongressional</span>",
                                  "Pence" => "<span class='swap'>Reed Richards (aka Mr. Fantastic)</span>",
                                   "argues" => "<span class='swap'>eagle-screeches from the roosts of the city</span>", 
                                   "government" => "<span class='swap'>fun police</span>",
                                    "women" => "<span class='swap'>the fairer sex, yon laydies i'faith,</span>",
                                     "story" => "<span class='swap'>a tale that would rend your ass on asunder</span>",
                                      "recently" => "<span class='swap'>schmecently</span>",
                                       "public" => "<span class='swap'>errybody's</span>",
                                        "pollution" => "<span class='swap'>mung of the earth</span>",
                                         "American" => "<span class='swap'>Boopmerican</span>",
                                          "american" => "<span class='swap'>schmoopmerican</span>",
                                           "Mueller" => "<span class='swap'>\"Platinum Johnson\" Mueller</span>", "recused" => "<span class='swap'>\"brocused\"</span>",
                                            'Democrats' => '<div class="animated pulse">Demogorgons</div>'}

    matchers = substitution_hash
    headline.gsub(/Trump|Mr. Trump|president|President|presidency|Sessions|US|economic|country|global|commission|Washington|tax|business|refused|region|Europe|British|minister|spending|Britain|senator|Senate|congress|congressional|Pence|argues|government|women|story|recently|public|pollution|American|american|Mueller|recused|Democrats/){ |match| matchers[match] }
  end

  def add_headline
    addition_hash = { "Press" => "<span class='add'>Prestidigitators, my dear boy!</span>","press" => "<span class='add'>prestidigitators</span>", "Trump" => "<span class='add'>Trumpet (imagine the saxophone lick from 'Careless Whisper' right now, you won't regret it)</span>", "million" => "<span class='add'>million dollars worth of bees, glorious bees</span>",
                      "Tax" => "<span class='add'>Tax baby, tax</span>",
                      "tax" => "<span class='add'>tax, or as ya boy Donny Trump says it: 'terx'</span>",
                      "taxes" => "<span class='add'>, or as ya boy Donny Trump likes to call them: 'torxes'</span>",
                      "elections" => "<span class='add'>elections - more like ERECTIONS, am I right? Wait, sorry... elections.</span>",
                       "liberal" => "<span class='add'>liberal application of topical ointment to the hindquarters</span>",
                        "Liberal" => "<span class='add'>Liberal, by which we mean a fowl of the eastern seaboard,</span>",
                         "democrat" => "<span class='add'>democrat, the other white meat</span>",
                          "Democrat" => "<span class='add'>Democrat, which is latin for 'a free version of the software' plus 'crat'</span>",
                           "imposed" => "<span class='add'>imposed with great vengeance and furious anger these </span>",
                            "very" => "<span class='add'>very minimal</span>",
                            "tariffs" => "<span class='add'>tariffs, like from that one movie Star Wars: the Phantom Tarrifs</span>",
                             "China" => "<span class='add'>China, land of wind and oats</span>",
                              "conversation" => "<span class='add'>stimulating conversation over martinis</span>",
                               "argument" => "<span class='add'>argument of electro-sabers as they clash and vie for the supremacy of their mighty weilders</span>",
                                "houses" => "<span class='add'>haunted houses</span>",
                                 "democracy" => "<span class='add'>democracy, more like demoCRAZY, am I right friend? No? Ah, I guess you had to be there...    CONTINUING:</span>",
                                 "quote" => "<span class='add'>quothe</span>" 
                    }

    matchers = addition_hash
    headline.gsub(/Press|press|Trump|elections|million|Tax|tax|taxes|liberal|Liberal|democrat|Democrat|imposed|very|tariffs|China|conversation|argument|houses|democracy|quote/){ |match| matchers[match] }    
  end


  def add_body
    addition_hash = { "Press" => "<span class='add'>Prestidigitators, my dear boy!</span>","press" => "<span class='add'>prestidigitators</span>", "Trump" => "<span class='add'>Trumpet (imagine the big brass chorus of 'Oh when the Saints go marching in')</span>", "million" => "<span class='add'>million dollars worth of bees, glorious bees</span>",
                      "Tax" => "<span class='add'>Tax baby, tax</span>",
                      "tax" => "<span class='add'>tax, or as ya boy Donny Trump says it: 'terx'</span>",
                      "taxes" => "<span class='add'>, or as ya boy Donny Trump likes to call them: 'torxes'</span>",
                      "elections" => "<span class='add'>elections - more like ERECTIONS, am I right? Wait, sorry... elections.</span>",
                       "liberal" => "<span class='add'>liberal application of topical ointment to the hindquarters</span>",
                        "Liberal" => "<span class='add'>Liberal, by which we mean a fowl of the eastern seaboard,</span>",
                         "democrat" => "<span class='add'>democrat, the other white meat</span>",
                          "Democrat" => "<span class='add'>Democrowboy, on a steel horse I ride,</span>",
                           "imposed" => "<span class='add'>imposed with great vengeance and furious anger these </span>",
                            "very" => "<span class='add'>very minimal</span>",
                            "tariffs" => "<span class='add'>tariffs, like from that one movie Star Wars: the Phantom Tarrifs</span>",
                             "China" => "<span class='add'>China, land of wind and oats</span>",
                              "conversation" => "<span class='add'>stimulating conversation over martinis</span>",
                               "argument" => "<span class='add'>argument of electro-sabers as they clash and vie for the supremacy of their mighty weilders</span>",
                                "houses" => "<span class='add'>haunted houses</span>",
                                 "democracy" => "<span class='add'>democracy, more like demoCRAZY, am I right friend? No? Ah, I guess you had to be there...    CONTINUING:</span>",
                                 "quote" => "<span class='add'>quothe</span>" 
                    }
    matchers = addition_hash
    body.gsub(/Press|press|Trump|elections|million|Tax|tax|taxes|liberal|Liberal|democrat|Democrat|imposed|very|tariffs|China|conversation|argument|houses|democracy|quote/){ |match| matchers[match] }    
  end

  def redact_headline
    redact_hash = {"Republicans" => "**pub***ns","polls" => "po*es","elections" => "****ions", "t" => " <span class='redacted'>****</span>ing ", "tremendous" => "****ty", "great" => "****ked", "speech" => "**** ****apping", "investigation" => "****k party"}

    matchers = redact_hash
    headline.gsub(/Republicans|polls|elections|the|tremendous|great|speech|investigation/) { |match| matchers[match] }
  end

  def redact_body
      redact_hash = {"Republicans" => "**pub***ns","polls" => "po*es","elections" => "****ions", "the" => " <span class='redacted'>****</span>ing ", "tremendous" => "****ty", "great" => "****ked", "speech" => "**** ****apping", "investigation" => "<span class='redacted'>****</span>k party", "sh" => "sh<span class='redacted'>**</span>", "pick" => "<span class='redacted'>**</span>ck", "Fox" => "F<span class='redacted'>***</span>"}
      
      matchers = redact_hash
      body.gsub(/Republicans|polls|elections|the|tremendous|great|speech|investigation|sh|pick|Fox/) { |match| matchers[match] }
  end
end

# %[<a>]

