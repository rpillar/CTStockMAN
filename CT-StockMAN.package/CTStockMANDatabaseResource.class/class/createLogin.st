as yet unclassified
createLogin

	"^ Login new
 		database: PostgreSQLPlatform new;
      username: 'sven';
      password: '';
      connectString: 'localhost:5432_sven';
      encodingStrategy: #utf8;
      yourself"