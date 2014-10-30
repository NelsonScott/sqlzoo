# == Schema Information
#
# Table name: actor 
#
#  id          :integer      not null, primary key
#  name        :string
#
# Table name: movie 
#
#  id          :integer      not null, primary key
#  title       :string
#  yr          :integer
#  score       :float
#  votes       :integer
#  director    :integer
#
# Table name: casting 
#
#  movieid     :integer      not null, primary key
#  actorid     :integer      not null, primary key
#  ord         :integer

require_relative './sqlzoo.rb'

def example_join
  SqlZooDatabase.instance.execute(<<-SQL)
    SELECT
      *
    FROM
      movie
    JOIN
      casting ON movie.id = casting.movieid
    JOIN
      actor ON casting.actorid = actor.id
    WHERE
      actor.name = 'Sean Connery'
  SQL
end

def ford_films
  # List the films in which 'Harrison Ford' has appeared.
  SqlZooDatabase.instance.execute(<<-SQL)
  SQL
end

def ford_supporting_films
  # List the films where 'Harrison Ford' has appeared - but not in the star
  # role. [Note: the ord field of casting gives the position of the actor. If
  # ord=1 then this actor is in the starring role]
  SqlZooDatabase.instance.execute(<<-SQL)
  SQL
end

def films_and_stars_from_sixty_two 
  # List the title and leading star of every 1962 film.
  SqlZooDatabase.instance.execute(<<-SQL)
  SQL
end

def travoltas_busiest_years
  # Which were the busiest years for 'John Travolta'? Show the year and the
  # number of movies he made for any year in which he made at least 2 movies.
  SqlZooDatabase.instance.execute(<<-SQL)
  SQL
end

def andrews_films_and_leads
  # List the film title and the leading actor for all of the films 'Julie
  # Andrews' played in.
  SqlZooDatabase.instance.execute(<<-SQL)
  SQL
end

def prolific_actors
  # Obtain a list in alphabetical order of actors who've had at least 15 
  # starring roles.
  SqlZooDatabase.instance.execute(<<-SQL)
  SQL
end

def films_by_cast_size
  # List the films released in the year 1978 ordered by the number of actors
  # in the cast.
  SqlZooDatabase.instance.execute(<<-SQL)
  SQL
end

def colleagues_of_garfunkel
  # List all the people who have worked with 'Art Garfunkel'.
  SqlZooDatabase.instance.execute(<<-SQL)
  SQL
end
