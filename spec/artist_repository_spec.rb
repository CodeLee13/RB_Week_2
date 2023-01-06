def reset_artists_table
    seed_sql = File.read('spec/seeds_artists.sql')
    connection = PG.connect({ host: '127.0.0.1', dbname: 'artists' })
    connection.exec(seed_sql)
  end
  
  describe ArtistsRepository do
    before(:each) do 
      reset_artists_table
    end
  
    # (your tests will go here)
    
    repo = ArtistsRepository.new

artists = repo.all

artists.length # =>  2

artists[0].id # =>  1
artists[0].name # =>  'Drake'
artists[0].genre # =>  'Hip Hop'

artists[1].id # =>  2
artists[1].name # =>  'Adele'
artists[1].genre # =>  'Pop'


    .
  end