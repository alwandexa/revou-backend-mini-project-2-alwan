# revou-backend-mini-project-2-alwan

This project is a simplified e-commerce system that demonstrates the understanding of SQL transaction management and handling race conditions in a database environment.

## Project Description

The e-commerce system allows users to purchase products and create new products. It handles race conditions when updating product quantities to prevent overselling.

## Requirements

1. **Database Schema**: The project includes a database schema designed to store information about products, users, and orders, reflecting the relationships between these entities.

2. **Transaction Management**: SQL queries have been implemented to handle product purchases within transactions, ensuring that the quantity of products is updated atomically when processing orders.

3. **Race Condition Handling**: Potential race conditions are addressed when multiple users attempt to purchase the same product simultaneously. Mechanisms have been implemented to prevent overselling by checking product availability and updating quantities atomically.

## Getting Started

To run this project locally, follow these steps:

1. Clone the repository: `git clone https://github.com/alwandexa/revou-backend-mini-project-2-alwan.git`
2. Set up the database and run the schema creation script.
3. Execute the SQL scripts.

## Usage

1. Create new products using the provided SQL scripts.
2. Register new users or use existing user accounts.
3. Place orders for products, and observe how the system handles race conditions and updates product quantities atomically.

## Acknowledgments

- Albert Mario from RevoU
