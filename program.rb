

def febonachi(number)
    a = [0, 1]
    i = 0;
    number.times do | i |
        b = a[i] + a[i + 1]
        a << b
        i = i + 1
    end
    return a.first(number)
end

puts "enter number"
num = gets.chomp.to_i

print febonachi(num)


10000 number (its a data)
some number -> x can it exits in this 
[10, 12, 13, 19].exist?(number)

1


student (id, roll name)
course (id, name)
registrtaion(id, email_prefernce, student_id, course_id)

student -> has_many :regisration, foriegn_key: student_id
course -> has_many :registrtaion, foriegn_key: course_id


registrtaion belongs_to :student
registrtaion belongs_to :course



Student.last.regisrations
regisration.find(id: 1).student


course_ids = Student.find(7).regisration.pluck(:course_id)
Course.where(id: course_ids).select(:course_name)
