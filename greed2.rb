require File.expand_path(File.dirname(__FILE__) + '/about_dice_project')

puts "Welcome to greed dice game. Please Enter The Number of Player You Want To Play:"
number=gets.chomp
people_scores=[];
class Contains
def self.contains_all? a,other
    other = other.dup
    a.each{|e| if i = other.index(e) then other.delete_at(i) end}
    other.empty?
end
end
kingr=[1,2,3,5]
puts Contains.contains_all?(kingr,[1,2])
while not number.to_i.to_s==number
    puts "Please enter an integer:"
    number=gets.chomp
end
number=number.to_i
    for m in 0..number 
    people_scores[m]=0

k=0
dice2=DiceSet.new
dice2.roll(5)
puts dice2.values.inspect
puts Contains.contains_all?(dice2.values,[1,1,1])
while k <=2
   puts "feef"
    number.times do
        dice=DiceSet.new
        dice.roll(5)
        old_score=people_scores[m]
  dice.values=[1,1,1,4,5]
        puts dice.values.inspect
       puts Contains.contains_all?(dice.values,[1,1,1])
        case dice.values
           when Contains.contains_all?(dice.values,[1,1,1])
                people_scores[m]=people_scores[m]+1000
                puts true
                puts people_scores[m]
                dice.values=dice.values-[1,1,1]
                
           when Contains.contains_all?(dice.values,[6,6,6])
                 puts true
                people_scores[m]=people_scores[m]+600
                dice.values=dice.values-[6,6,6] 
    puts dice.values
           when Contains.contains_all?(dice.values,[5,5,5])
    puts true
                people_scores[m]=people_scores[m]+500
                dice.values=dice.values-[5,5,5] 
    puts dice.values
           when Contains.contains_all?(dice.values,[4,4,4])
    puts true
                people_scores[m]=people_scores[m]+400
    dice.values=dice.values-[4,4,4]
    puts dice.values
           when Contains.contains_all?(dice.values,[3,3,3])
    puts true
                people_scores[m]=people_scores[m]+300
    dice.values=dice.values-[3,3,3]
    puts dice.values
           when Contains.contains_all?(dice.values,[2,2,2])
    puts true
                people_scores[m]=people_scores[m]+200
    dice.values=dice.values-[2,2,2]
           when Contains.contains_all?(dice.values,[1])
    puts true
                people_scores[m]=people_scores[m]+100
    dice.values=dice.values-[1]
    puts dice.values
           when Contains.contains_all?(dice.values,[5])
    puts true
                people_scores[m]=people_scores[m]+50
    dice.values=dice.values-[5]
    puts dice.values
        end
          puts people_scores[m].inspect        
    end
k+=1       
end
end







