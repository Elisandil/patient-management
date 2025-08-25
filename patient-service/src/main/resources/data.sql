-- Ensure the 'patient' table exists
CREATE TABLE IF NOT EXISTS patient (
    id UUID PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    surname VARCHAR(255),
    dni VARCHAR(9) UNIQUE NOT NULL,
    email VARCHAR(255) UNIQUE NOT NULL,
    phone_number VARCHAR(255) NOT NULL,
    address VARCHAR(255) NOT NULL,
    birth_date DATE NOT NULL,
    register_date DATE NOT NULL
    );

-- Insert patient 1
INSERT INTO patient (id, name, surname, dni, email, phone_number, address, birth_date, register_date)
SELECT '123e4567-e89b-12d3-a456-426614174001', 'John', 'Smith', '12345678A', 'john.smith@email.com',
       '+1 (555) 123-4567', '123 Main St, New York, NY 10001', '1985-03-15', '2024-01-15'
    WHERE NOT EXISTS (
    SELECT 1
    FROM patient
    WHERE id = '123e4567-e89b-12d3-a456-426614174001'
       OR email = 'john.smith@email.com'
);

-- Insert patient 2
INSERT INTO patient (id, name, surname, dni, email, phone_number, address, birth_date, register_date)
SELECT '123e4567-e89b-12d3-a456-426614174002', 'Maria', 'Garcia', '12345678B', 'maria.garcia@email.com',
       '+1 (555) 234-5678', '456 Oak Ave, Los Angeles, CA 90210', '1992-07-22', '2024-01-20'
    WHERE NOT EXISTS (
    SELECT 1
    FROM patient
    WHERE id = '123e4567-e89b-12d3-a456-426614174002'
       OR email = 'maria.garcia@email.com'
);

-- Insert patient 3
INSERT INTO patient (id, name, surname, dni, email, phone_number, address, birth_date, register_date)
SELECT '123e4567-e89b-12d3-a456-426614174003', 'David', 'Johnson', '12345678C', 'david.johnson@email.com',
       '+1 (555) 345-6789', '789 Pine Rd, Chicago, IL 60601', '1978-11-08', '2024-02-01'
    WHERE NOT EXISTS (
    SELECT 1
    FROM patient
    WHERE id = '123e4567-e89b-12d3-a456-426614174003'
       OR email = 'david.johnson@email.com'
);

-- Insert patient 4
INSERT INTO patient (id, name, surname, dni, email, phone_number, address, birth_date, register_date)
SELECT '123e4567-e89b-12d3-a456-426614174004', 'Sarah', 'Williams', '12345678D', 'sarah.williams@email.com',
       '+1 (555) 456-7890', '321 Elm St, Houston, TX 77001', '1988-05-30', '2024-02-10'
    WHERE NOT EXISTS (
    SELECT 1
    FROM patient
    WHERE id = '123e4567-e89b-12d3-a456-426614174004'
       OR email = 'sarah.williams@email.com'
);

-- Insert patient 5
INSERT INTO patient (id, name, surname, dni, email, phone_number, address, birth_date, register_date)
SELECT '123e4567-e89b-12d3-a456-426614174005', 'Michael', 'Brown', '12345678E', 'michael.brown@email.com',
       '+1 (555) 567-8901', '654 Maple Dr, Phoenix, AZ 85001', '1975-12-12', '2024-02-15'
    WHERE NOT EXISTS (
    SELECT 1
    FROM patient
    WHERE id = '123e4567-e89b-12d3-a456-426614174005'
       OR email = 'michael.brown@email.com'
);

-- Insert patient 6
INSERT INTO patient (id, name, surname, dni, email, phone_number, address, birth_date, register_date)
SELECT '123e4567-e89b-12d3-a456-426614174006', 'Jennifer', 'Davis', '12345678F', 'jennifer.davis@email.com',
       '+1 (555) 678-9012', '987 Cedar Ln, Philadelphia, PA 19101', '1990-09-18', '2024-03-01'
    WHERE NOT EXISTS (
    SELECT 1
    FROM patient
    WHERE id = '123e4567-e89b-12d3-a456-426614174006'
       OR email = 'jennifer.davis@email.com'
);

-- Insert patient 7
INSERT INTO patient (id, name, surname, dni, email, phone_number, address, birth_date, register_date)
SELECT '123e4567-e89b-12d3-a456-426614174007', 'Robert', 'Miller', '12345678G', 'robert.miller@email.com',
       '+1 (555) 789-0123', '147 Birch St, San Antonio, TX 78201', '1982-04-25', '2024-03-05'
    WHERE NOT EXISTS (
    SELECT 1
    FROM patient
    WHERE id = '123e4567-e89b-12d3-a456-426614174007'
       OR email = 'robert.miller@email.com'
);

-- Insert patient 8
INSERT INTO patient (id, name, surname, dni, email, phone_number, address, birth_date, register_date)
SELECT '123e4567-e89b-12d3-a456-426614174008', 'Lisa', 'Wilson', '12345678H', 'lisa.wilson@email.com',
       '+1 (555) 890-1234', '258 Spruce Ave, San Diego, CA 92101', '1995-01-14', '2024-03-10'
    WHERE NOT EXISTS (
    SELECT 1
    FROM patient
    WHERE id = '123e4567-e89b-12d3-a456-426614174008'
       OR email = 'lisa.wilson@email.com'
);

-- Insert patient 9
INSERT INTO patient (id, name, surname, dni, email, phone_number, address, birth_date, register_date)
SELECT '123e4567-e89b-12d3-a456-426614174009', 'Christopher', 'Moore', '12345678I', 'christopher.moore@email.com',
       '+1 (555) 901-2345', '369 Walnut Blvd, Dallas, TX 75201', '1987-08-03', '2024-03-15'
    WHERE NOT EXISTS (
    SELECT 1
    FROM patient
    WHERE id = '123e4567-e89b-12d3-a456-426614174009'
       OR email = 'christopher.moore@email.com'
);

-- Insert patient 10
INSERT INTO patient (id, name, surname, dni, email, phone_number, address, birth_date, register_date)
SELECT '123e4567-e89b-12d3-a456-426614174010', 'Amanda', 'Taylor', '12345678J', 'amanda.taylor@email.com',
       '+1 (555) 012-3456', '741 Hickory Ct, San Jose, CA 95101', '1993-06-28', '2024-03-20'
    WHERE NOT EXISTS (
    SELECT 1
    FROM patient
    WHERE id = '123e4567-e89b-12d3-a456-426614174010'
       OR email = 'amanda.taylor@email.com'
);