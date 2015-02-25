module ApplicationHelper
#here we'll have our master-list of answers, and the user's guess will be checked against that list.
	def check_answer(answer)
end

citylist = ["Atlanta", "Asheville", "Charlotte", "Raleigh"]
#additional master-lists could be placed here

correct = false

citylist.each do |c|

if answer == c

correct = true

end

end

#to loop through additional lists, we could create another method that takes two parameters (answer and array), but for now let's just leave it as is and make sure this works.

 return correct
 end

 #check to see if the answer, while although correct, may have already been guess and put into the database of answers.

def check_for_dup(answer,database)

is_dup = false

database.each do |d|

if answer == d.name

is_dup = true

end

end

return is_dup

end

 

end