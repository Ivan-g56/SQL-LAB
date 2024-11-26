CREATE TABLE [employee] (
	[employee_id] int NOT NULL,
	[user_name] nvarchar(30) NOT NULL,
	[first_name] nvarchar(30) NOT NULL,
	[last_name] nvarchar(30) NOT NULL,
	[position] nvarchar(15) NOT NULL,
	[employment_date] date NOT NULL,
	[departament_id] int,
	[manager_id] int,
	[rate] float(53) NOT NULL,
	[bonus] float(53),
	PRIMARY KEY ([employee_id])
);

CREATE TABLE [departament] (
	[departament_id] int NOT NULL,
	[departament_name] nvarchar(30) NOT NULL,
	[city] nvarchar(30) NOT NULL,
	[street] nvarchar(40) NOT NULL,
	[building_no] int NOT NULL,
	PRIMARY KEY ([departament_id])
);

CREATE TABLE [1732611308] (

);

CREATE TABLE [Product] (
	[product_id] int NOT NULL,
	[product_name] nvarchar(40) NOT NULL,
	[product_description] nvarchar(150) NOT NULL,
	[category] nvarchar(15) NOT NULL,
	[manufacture] nvarchar(30) NOT NULL,
	[product_type] nvarchar(15) NOT NULL,
	[amount_integer] int NOT NULL,
	[price] float(53) NOT NULL,
	PRIMARY KEY ([product_id])
);

CREATE TABLE [Customer] (
	[Customer_id] int IDENTITY(1,1) NOT NULL,
	[first_name] nvarchar(30) NOT NULL,
	[last_name] nvarchar(30) NOT NULL,
	[genger] nvarchar(1) NOT NULL,
	[birth_date] date NOT NULL,
	[phone_number] int NOT NULL,
	[email] nvarchar(50) NOT NULL,
	[discount] int NOT NULL,
	PRIMARY KEY ([Customer_id])
);

CREATE TABLE [Orders] (
	[orders_id] int IDENTITY(1,1) NOT NULL,
	[employee_id] int NOT NULL,
	[product_id] int NOT NULL,
	[customer_id] int NOT NULL,
	[transaction_type] int NOT NULL,
	[transaction_moment] datetime NOT NULL,
	[amout] int NOT NULL,
	PRIMARY KEY ([orders_id])
);

ALTER TABLE [employee] ADD CONSTRAINT [employee_fk6] FOREIGN KEY ([departament_id]) REFERENCES [departament]([departament_id]);

ALTER TABLE [employee] ADD CONSTRAINT [employee_fk7] FOREIGN KEY ([manager_id]) REFERENCES [employee]([employee_id]);




ALTER TABLE [Orders] ADD CONSTRAINT [Orders_fk1] FOREIGN KEY ([employee_id]) REFERENCES [employee]([employee_id]);

ALTER TABLE [Orders] ADD CONSTRAINT [Orders_fk2] FOREIGN KEY ([product_id]) REFERENCES [Product]([product_id]);

ALTER TABLE [Orders] ADD CONSTRAINT [Orders_fk3] FOREIGN KEY ([customer_id]) REFERENCES [Customer]([Customer_id]);