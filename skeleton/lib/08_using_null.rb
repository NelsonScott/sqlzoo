# == Schema Information
#
# Table name: teacher 
#
#  id          :integer      not null, primary key
#  dept        :integer
#  name        :string
#  phone       :integer
#  mobile      :string
#
# Table name: dept 
#
#  id          :integer      not null, primary key
#  name        :string       not null

require_relative './sqlzoo.rb'

def null_dept
  # List the teachers who have NULL for their department.
  SqlZooDatabase.instance.execute(<<-SQL)
  SQL
end

def all_teachers_join 
  # Use a different JOIN so that all teachers are listed.
  SqlZooDatabase.instance.execute(<<-SQL)
  SQL
end

def all_depts_join
  # Use a different JOIN so that all departments are listed.
  # NB: you can avoid RIGHT OUTER JOIN (and just use LEFT) by swapping
  # the FROM and JOIN tables.
  SqlZooDatabase.instance.execute(<<-SQL)
  SQL
end

def teachers_and_mobiles
  # Use COALESCE to print the mobile number. Use the number '07986
  # #444 2266' there is no number given. Show teacher name and mobile
  # #number or '07986 444 2266'
  SqlZooDatabase.instance.execute(<<-SQL) 
  SQL
end

def teachers_and_depts
  # Use the COALESCE function and a LEFT JOIN to print the teacher name and
  # department name. Use the string 'None' where there is no
  # department.
  SqlZooDatabase.instance.execute(<<-SQL)
  SQL
end

def num_teachers_and_mobiles
  # Use COUNT to show the number of teachers and the number of
  # mobile phones.
  # NB: COUNT only counts non-NULL values.
  SqlZooDatabase.instance.execute(<<-SQL)
  SQL
end

def dept_staff_counts
  # Use COUNT and GROUP BY dept.name to show each department and
  # the number of staff. Structure your JOIN to ensure that the
  # Engineering department is listed.
  SqlZooDatabase.instance.execute(<<-SQL)
  SQL
end

def teachers_and_divisions
  # Use CASE to show the name of each teacher followed by 'Sci' if
  # the the teacher is in dept 1 or 2 and 'Art' otherwise.
  SqlZooDatabase.instance.execute(<<-SQL)
  SQL
end

def teachers_and_divisions_two
  # Use CASE to show the name of each teacher followed by 'Sci' if
  # the the teacher is in dept 1 or 2, 'Art' if the dept is 3, and
  # 'None' otherwise.
  SqlZooDatabase.instance.execute(<<-SQL)
  SQL
end
