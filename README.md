# OLX-SpringMvc

This project is a Spring MVC implementation of an OLX-like platform, allowing users to buy and sell products online.

## Features

- User authentication (signup and login)
- Product listing
- Adding products for sale
- Buying products
- Wallet functionality for transactions

## Technologies Used

- Java
- Spring MVC
- Hibernate
- JSP (JavaServer Pages)
- MySQL
- Maven

## Setup and Installation

1. Clone the repository:

2. Import the project into your preferred IDE (Eclipse, IntelliJ IDEA, etc.)

3. Set up a MySQL database and update the database configuration in `src/main/resources/META-INF/persistence.xml`

4. Run the project on a servlet container like Apache Tomcat

## Project Structure

- `src/main/java/mvc_olx/controller`: Contains the controller classes
- `src/main/java/mvc_olx/dao`: Data Access Object interfaces and implementations
- `src/main/java/mvc_olx/dto`: Data Transfer Objects (Customer, Product)
- `src/main/java/mvc_olx/helper`: Helper classes
- `src/main/webapp/jsp`: JSP views
- `src/main/webapp/WEB-INF`: Configuration files

## Usage

1. Start the application
2. Navigate to the home page
3. Sign up for a new account or log in with existing credentials
4. Browse products, add products for sale, or purchase items

## Contributing

Contributions are welcome! Please feel free to submit a Pull Request.

## License

This project is open source and available under the [MIT License](LICENSE).

