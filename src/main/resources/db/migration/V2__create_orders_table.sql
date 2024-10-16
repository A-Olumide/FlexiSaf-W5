CREATE TABLE orders (
                        order_id INT NOT NULL PRIMARY KEY,
                        user_id INT NOT NULL,
                        order_date DATE NOT NULL,
                        total_amount DECIMAL(10, 2) NOT NULL,
                        FOREIGN KEY (user_id) REFERENCES users(user_id)
);
