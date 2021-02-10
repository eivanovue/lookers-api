# Lookers API 

Lookers API is responsible for handling requests to and from the database. 

https://lookers-api.herokuapp.com/

## Installation

clone the project by entering the following command

```bash
git clone https://github.com/eivanovue/lookers-api.git
```

## Usage

make sure to update the application.properties file with the right database parameters

```properties
spring.jpa.hibernate.ddl-auto = update
spring.datasource.url = jdbc:mysql://eivanovue.com/lookers
spring.datasource.username = root
spring.datasource.password = ChonkyFluffers
server.error.include-message = always
spring.application.name = lookers-api
```

## Contributing
Pull requests are welcome. Make sure you develop on a separate branch we can then merge into the master. 

Please make sure to update tests as appropriate.

## License
[MIT](https://choosealicense.com/licenses/mit/)
