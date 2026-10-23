# MySQL Practice & Study Repository

A personal study and practice workspace for learning relational database management and mastering SQL queries in MySQL.

---

## 📁 Repository Structure

```text
MySQL/
├── Handwritten Notes for MySQL/
│   └── CamScanner 10-15-2026 13.40.pdf     # Scanned handwritten revision notes
├── MySQL_pracitce_file/
│   ├── Aggregate_Functions.sql.pdf         # Exercises on aggregate functions and grouping
│   ├── Hospital_Database_Keys.sql.pdf      # Database design, keys, and constraints
│   └── Library_Database_Joins.sql.pdf      # Relational joins (INNER, LEFT, RIGHT, FULL)
├── MySQL_practice_file.sql                 # Comprehensive SQL practice script
├── Shop Database.sql                       # Store inventory and product management script
└── README.md                               # Repository documentation
```

---

## 📄 File Overview

### 1. SQL Practice Scripts
- **`MySQL_practice_file.sql`**: Comprehensive SQL script using a `student1` database (`students` and `courses` tables). Demonstrates:
  - Table creation and data insertion (DDL/DML)
  - Filtering (`WHERE`, `LIKE`, `IN`, `BETWEEN`)
  - Multi-table joins (`INNER JOIN`, `LEFT JOIN`, `RIGHT JOIN`, `UNION`)
  - Aggregations and grouping (`COUNT`, `SUM`, `AVG`, `MIN`, `MAX`, `GROUP BY`, `HAVING`)
- **`Shop Database.sql`**: Retail management script (`shop` database, `products` table). Covers:
  - Inventory management and conditional updates
  - Calculated fields (e.g., applying percentage discounts)
  - Filtering and stock tracking

### 2. Practice Worksheets (`MySQL_pracitce_file/`)
- **`Aggregate_Functions.sql.pdf`**: Targeted exercises on summary statistics and grouping.
- **`Hospital_Database_Keys.sql.pdf`**: Schema design exercises focusing on Primary Keys, Foreign Keys, and integrity constraints.
- **`Library_Database_Joins.sql.pdf`**: Relational join challenges using a library database scenario.

### 3. Study Notes (`Handwritten Notes for MySQL/`)
- **`CamScanner 10-15-2026 13.40.pdf`**: Scanned handwritten notes covering fundamental database theory, concepts, and query syntax.

---

## 🚀 How to Run the Scripts

You can execute the scripts using MySQL Workbench, phpMyAdmin, or the MySQL command line:

```bash
# Log in to MySQL and run a script
mysql -u root -p < "MySQL_practice_file.sql"
mysql -u root -p < "Shop Database.sql"
```

