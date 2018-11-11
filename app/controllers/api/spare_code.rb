# # API KEY ATTEMPTS


#   # def index
#   #   response = HTTP.get("https://newsapi.org/v2/top-headlines?country=us&apiKey=#{ ENV['NEWS_API_KEY'] }")
#   #   render json: response.parse
#   # end

#   # response = HTTP.headers("X-AYLIEN-TextAPI-Application-Key" => "c5ed8135a916dc84d9b459e8dbd20841", "X-AYLIEN-TextAPI-Application-ID" => "db116eaf").get("https://api.aylien.com/api/v1/concepts?url=#{params[:url]}")
# #     render json: response.parse


# # pattern = " is"

# # p "this is the way...".gsub(/(?<= pattern)/, " not")



# # , "Sessions" => "meatboy", "US" => "The United Snapes of America", "economic" => "money-shenanigans", "country" => "citizen festival site", " global" => "transdimensional", "commission" => "fun-time boy party", "Washington" => "The fertile womb of government", " tax" => "tithings, m'lord", "business" => "cash magic", "refused" => "scoffed, loud and hard about ", " region" => "beastlands", "Europe" => "That Nicey-nicey continent", "British" => "proto-American (aka British, son)", "minister" => "optimus", "spending" => "money torturing", "Britain" => "America's Grandpappy, Brittania", "senator" => "bug-lord", "Senate" => "Swarm of the bug-lords", "congress" => "bongress", "congressional" => "bongressional", "Pence" => "Reed Richards (aka Mr. Fantastic)", "argues" => "eagle-screeches from the roosts of the city", "government" => "fun police"

# # "women" => "non-men, the fairer sex i'faith,", "story" => "a tale that would set your ass on fire", "recently" => "schmecently", "public" => "errybody's", "pollution" => "mung of the earth", "American" => "Boopmerican", "american", "schmoopmerican"     


# # body.gsub(/Trump|Mr. Trump|president|President|presidency|Sessions|US|economic|country|global|commission|Washington|tax|business|refused|region|Europe|British|minister|spending|Britain|senator|Senate|congress|congressional|Pence|argues|government|


# #   |women|story|recently|public|pollution|American|american





# #   /)






# # { |match| matchers[match] }



# def add_body
#   addition_hash = { "million" => "million dollars worth of bees, glorious bees",
#                     "Tax" => "Tax baby, tax",
#                     "tax" => "tax, or as ya boy Donny Trump says it: 'terx'",
#                     "taxes" => "taxes, or as ya boy Donny Trump likes to call them: 'torxes'",
#                     "elections" => "elections - more like ERECTIONS, am I right? Wait, sorry... elections." }
#   matchers = addition_hash
#   body.gsub(/elections|million|Tax|tax|taxes|    liberal|Liberal|democrat|Democrat|imposed|very|tariffs|China|conversation|argument|houses|democracy|quote/){ |match| matchers[match] }
# end


# , "liberal" => "liberal application of topical ointment to the hindquarters", "Liberal" => "Liberal, by which we mean a fowl of the eastern seaboard,", "democrat" => "democrat, the other white meat", "Democrat" => "Democrat, which is latin for 'a free version of the software' and 'crat',", "imposed" => "imposed with great vengeance and furious anger these ", "very" => "very minimal", "tariffs" => "tariffs, like from that one movie Star Wars: the Phantom Tarrifs", "China" => "China, land of sun and oats", "conversation" => "stimulating conversation over martinis", "argument" => "argument of electric swords as they clash and vie for the supremacy of their mighty weilders", "houses" => "haunted houses", "democracy" => "democracy, more like demoCRAZY, am I right friend? No? Ah, I guess you had to be there...    CONTINUED:", "quote" => "quothe" 
