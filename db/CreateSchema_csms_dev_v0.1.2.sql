-- ===============================
-- COFFEE SHOP MANAGEMENT DATABASE
-- (SIMPLIFIED ADDRESS DESIGN)
-- ===============================
CREATE DATABASE IF NOT EXISTS coffeeshopmanagement CHARACTER
SET
    utf8mb4 COLLATE utf8mb4_0900_ai_ci;

USE coffeeshopmanagement;

SET
    FOREIGN_KEY_CHECKS = 0;

-- ===============================
-- ROLE
-- ===============================
CREATE TABLE
    role (
        id INT AUTO_INCREMENT PRIMARY KEY,
        role_name VARCHAR(50) NOT NULL
    );

-- ===============================
-- USERS
-- ===============================
CREATE TABLE
    users (
        id INT AUTO_INCREMENT PRIMARY KEY,
        phone VARCHAR(100) NOT NULL UNIQUE,
        username VARCHAR(50) NOT NULL UNIQUE,
        password VARCHAR(255) NOT NULL,
        email VARCHAR(100) NOT NULL UNIQUE,
        first_name VARCHAR(30) NOT NULL,
        last_name VARCHAR(30) NOT NULL,
        gender TINYINT (1),
        dob DATE NOT NULL,
        role_id INT NOT NULL,
        isActive TINYINT (1) DEFAULT 1,
        created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
        updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
        CONSTRAINT fk_user_role FOREIGN KEY (role_id) REFERENCES role (id)
    );

-- ====================================
-- ADDRESS
-- ====================================
CREATE TABLE
    addresses (
        id INT AUTO_INCREMENT PRIMARY KEY,
        user_id INT NOT NULL,
        receiver_name VARCHAR(100),
        receiver_phone VARCHAR(20),
        address VARCHAR(255) NOT NULL,
        is_default TINYINT (1) DEFAULT 0,
        address_type ENUM ('home', 'work', 'other') DEFAULT 'home',
        is_deleted TINYINT (1) DEFAULT 0,
        created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
        updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
        CONSTRAINT fk_address_user FOREIGN KEY (user_id) REFERENCES users (id) ON DELETE CASCADE
    );

-- ===============================
-- AREA & TABLES
-- ===============================
CREATE TABLE
    area (
        id INT AUTO_INCREMENT PRIMARY KEY,
        name VARCHAR(50)
    );

CREATE TABLE
    tables (
        id INT AUTO_INCREMENT PRIMARY KEY,
        table_number VARCHAR(10),
        area_id INT NOT NULL,
        status VARCHAR(20),
        is_deleted TINYINT (1) DEFAULT 0,
        FOREIGN KEY (area_id) REFERENCES area (id)
    );

-- ===============================
-- CATEGORY & PRODUCTS
-- ===============================
CREATE TABLE
    category (
        id INT AUTO_INCREMENT PRIMARY KEY,
        name VARCHAR(100) NOT NULL,
        is_deleted TINYINT (1) DEFAULT 0
    );

CREATE TABLE
    products (
        id INT AUTO_INCREMENT PRIMARY KEY,
        name VARCHAR(100) NOT NULL,
        category_id INT NOT NULL,
        status varchar(20) NOT NULL,
        description varchar(255),
        FOREIGN KEY (category_id) REFERENCES category (id)
    );

CREATE TABLE
    product_images (
        id INT AUTO_INCREMENT PRIMARY KEY,
        product_id INT,
        isThumbnail TINYINT (1) DEFAULT 0,
        image_url VARCHAR(255),
        is_deleted TINYINT (1) DEFAULT 0,
        created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
        updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
        FOREIGN KEY (product_id) REFERENCES products (id)
    );

-- ===============================
-- PRODUCT SIZE & RECIPE
-- ===============================
CREATE TABLE
    product_sizes (
        id INT AUTO_INCREMENT PRIMARY KEY,
        product_id INT NOT NULL,
        size ENUM ('S', 'M', 'L') NOT NULL,
        price DECIMAL(10, 2) NOT NULL,
        is_deleted TINYINT (1) DEFAULT 0,
        UNIQUE (product_id, size),
        FOREIGN KEY (product_id) REFERENCES products (id) ON DELETE CASCADE
    );

CREATE TABLE
    ingredient (
        id INT AUTO_INCREMENT PRIMARY KEY,
        name VARCHAR(100),
        unit_type VARCHAR(10),
        unit VARCHAR(20),
        is_deleted TINYINT (1) DEFAULT 0,
        created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
        updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
    );

CREATE TABLE
    recipes_by_size (
        id INT AUTO_INCREMENT PRIMARY KEY,
        product_size_id INT NOT NULL,
        ingredient_id INT NOT NULL,
        quantity DECIMAL(10, 2) NOT NULL,
        UNIQUE (product_size_id, ingredient_id),
        FOREIGN KEY (product_size_id) REFERENCES product_sizes (id) ON DELETE CASCADE,
        FOREIGN KEY (ingredient_id) REFERENCES ingredient (id)
    );

-- ===============================
-- TOPPING & CUSTOMIZATION
-- ===============================
CREATE TABLE
    toppings (
        id INT AUTO_INCREMENT PRIMARY KEY,
        name VARCHAR(50),
        price DECIMAL(10, 2),
        is_deleted TINYINT (1) DEFAULT 0,
        created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
        updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
    );

-- ===============================
-- ORDERS
-- ===============================
CREATE TABLE
    discount (
        id INT AUTO_INCREMENT PRIMARY KEY,
        code VARCHAR(50) NOT NULL UNIQUE,
        description VARCHAR(255),
        -- % giảm giá (ví dụ 10 = 10%)
        percentage DECIMAL(5, 2) NOT NULL,
        -- Điều kiện áp dụng
        min_order_amount DECIMAL(10, 2) DEFAULT 0, -- đơn tối thiểu
        max_discount_amount DECIMAL(10, 2), -- số tiền giảm tối đa
        -- Giới hạn sử dụng
        usage_limit INT, -- tổng số lần được dùng
        used_count INT DEFAULT 0, -- đã dùng bao nhiêu lần
        -- Thời gian hiệu lực
        valid_from DATETIME DEFAULT CURRENT_TIMESTAMP,
        valid_until DATETIME,
        -- Trạng thái
        is_active TINYINT (1) DEFAULT 1,
        created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
        updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
    );

CREATE TABLE
    orders (
        id INT AUTO_INCREMENT PRIMARY KEY,
        -- Khách hàng (có thể là guest / walk-in)
        user_id INT NOT NULL,
        -- Nhân viên tạo đơn (cashier / waiter / admin)
        created_by INT NOT NULL,
        order_type ENUM ('dine-in', 'takeaway', 'delivery') NOT NULL,
        -- Chỉ dùng cho dine-in
        table_id INT NULL,
        -- Chỉ dùng cho delivery (tích chọn 1 địa chỉ trong nhiều địa chỉ)
        delivery_address_id INT NULL,
        discount_id INT NULL,
        status ENUM (
            'pending',
            'preparing',
            'served',
            'delivering',
            'completed',
            'cancelled'
        ) DEFAULT 'pending',
        -- Thời gian
        created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
        paid_at DATETIME NULL,
        is_paid TINYINT (1) DEFAULT 0,
        total_amount DECIMAL(15, 2),
        -- ===== FOREIGN KEYS =====
        CONSTRAINT fk_order_user FOREIGN KEY (user_id) REFERENCES users (id),
        CONSTRAINT fk_order_created_by FOREIGN KEY (created_by) REFERENCES users (id),
        CONSTRAINT fk_order_table FOREIGN KEY (table_id) REFERENCES tables (id),
        CONSTRAINT fk_order_delivery_address FOREIGN KEY (delivery_address_id) REFERENCES addresses (id),
        CONSTRAINT fk_order_discount FOREIGN KEY (discount_id) REFERENCES discount (id)
    );

CREATE TABLE
    order_details (
        id INT AUTO_INCREMENT PRIMARY KEY,
        order_id INT NOT NULL,
        product_size_id INT NOT NULL,
        quantity INT NOT NULL,
        price DECIMAL(10, 2) NOT NULL,
        note VARCHAR(100),
        FOREIGN KEY (order_id) REFERENCES orders (id) ON DELETE CASCADE,
        FOREIGN KEY (product_size_id) REFERENCES product_sizes (id)
    );

CREATE TABLE
    customizations (
        id INT AUTO_INCREMENT PRIMARY KEY,
        order_detail_id INT NOT NULL,
        topping_id INT NOT NULL,
        FOREIGN KEY (order_detail_id) REFERENCES order_details (id) ON DELETE CASCADE,
        FOREIGN KEY (topping_id) REFERENCES toppings (id)
    );

-- ===============================
-- DELIVERY INFO (ADDRESS TEXT)
-- ===============================
CREATE TABLE
    order_delivery_info (
        id INT AUTO_INCREMENT PRIMARY KEY,
        order_id INT NOT NULL UNIQUE,
        receiver_name VARCHAR(100),
        receiver_phone VARCHAR(20),
        address VARCHAR(255),
        note VARCHAR(200),
        FOREIGN KEY (order_id) REFERENCES orders (id) ON DELETE CASCADE
    );

CREATE TABLE
    order_payments (
        id INT AUTO_INCREMENT PRIMARY KEY,
        order_id INT NOT NULL UNIQUE,
        payment_method ENUM ('cash', 'card', 'momo', 'banking') NOT NULL,
        payment_status ENUM ('pending', 'paid', 'refunded') DEFAULT 'pending',
        amount DECIMAL(15, 2) NOT NULL,
        transaction_id VARCHAR(100), -- mã giao dịch từ payment gateway
        paid_at DATETIME NULL,
        created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
        updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
        CONSTRAINT fk_payment_order FOREIGN KEY (order_id) REFERENCES orders (id) ON DELETE CASCADE
    );

-- ===============================
-- SHIFT & ATTENDANCE
-- ===============================
CREATE TABLE
    shift_templates (
        id INT AUTO_INCREMENT PRIMARY KEY,
        name VARCHAR(50),
        start_time TIME,
        end_time TIME
    );

CREATE TABLE
    shifts (
        id INT AUTO_INCREMENT PRIMARY KEY,
        template_id INT,
        shift_date DATE,
        FOREIGN KEY (template_id) REFERENCES shift_templates (id)
    );

CREATE TABLE
    shift_registrations (
        id INT AUTO_INCREMENT PRIMARY KEY,
        user_id INT NOT NULL,
        shift_id INT,
        status VARCHAR(20),
        FOREIGN KEY (user_id) REFERENCES users (id),
        FOREIGN KEY (shift_id) REFERENCES shifts (id)
    );

CREATE TABLE
    attendances (
        id INT AUTO_INCREMENT PRIMARY KEY,
        registration_id INT NOT NULL,
        startTime DATETIME,
        endTime DATETIME,
        status VARCHAR(50),
        FOREIGN KEY (registration_id) REFERENCES shift_registrations (id)
    );

-- ===============================
-- HR FEATURES
-- ===============================
CREATE TABLE
    leave_requests (
        id INT AUTO_INCREMENT PRIMARY KEY,
        user_id INT NOT NULL,
        start_date DATE,
        end_date DATE,
        reason TEXT,
        description VARCHAR(255),
        status VARCHAR(20),
        FOREIGN KEY (user_id) REFERENCES users (id)
    );

CREATE TABLE
    overtime_requests (
        id INT AUTO_INCREMENT PRIMARY KEY,
        user_id INT NOT NULL,
        overtimeDate DATETIME,
        hours DECIMAL(4, 2),
        status VARCHAR(20),
        FOREIGN KEY (user_id) REFERENCES users (id)
    );

CREATE TABLE
    work_log (
        id INT AUTO_INCREMENT PRIMARY KEY,
        user_id INT NOT NULL,
        checkIn DATETIME,
        checkOut DATETIME,
        log_time DATETIME,
        description TEXT,
        FOREIGN KEY (user_id) REFERENCES users (id)
    );

CREATE TABLE
    user_oauth_providers (
        id INT AUTO_INCREMENT PRIMARY KEY,
        user_id INT NOT NULL,
        provider VARCHAR(50) NOT NULL,
        provider_id VARCHAR(255) NOT NULL,
        access_token VARCHAR(500),
        refresh_token VARCHAR(500),
        linked_at DATETIME DEFAULT CURRENT_TIMESTAMP,
        CONSTRAINT fk_oauth_user FOREIGN KEY (user_id) REFERENCES users (id),
        CONSTRAINT uq_provider_user UNIQUE (provider, provider_id)
    );

SET
    FOREIGN_KEY_CHECKS = 1;