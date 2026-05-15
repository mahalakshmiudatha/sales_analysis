# Sales Analysis Project

## Sales Analysis System using SQL, Pandas & NumPy

This project demonstrates a simple sales analysis workflow utilizing MySQL for data storage and Python (Pandas, NumPy, Matplotlib) for data extraction, calculation, and visualization.

### Skills Demonstrated
* SQL
* Python
* Pandas
* NumPy
* Data Analysis
* Data Visualization

### Project Structure
```text
Sales_Analysis_Project
│
├── database_setup.sql   # SQL script to create and populate the database
├── sales_analysis.py    # Python script for analysis and visualization
├── screenshots/         # Folder for storing visualization screenshots
├── README.md            # Project overview and instructions
```

### Setup Instructions

#### 1. Setup Database
Open MySQL Workbench or your preferred MySQL client and run the queries in `database_setup.sql`. This will:
- Create the `sales_analysis` database.
- Create `customers`, `products`, and `sales` tables.
- Insert sample data into these tables.

#### 2. Install Dependencies
Ensure you have Python installed. Then, install the required libraries:
```bash
pip install pandas numpy mysql-connector-python matplotlib
```

#### 3. Configure Python Script
Open `sales_analysis.py` and update the database connection block with your MySQL root password:
```python
conn = mysql.connector.connect(
    host="localhost",
    user="root",
    password="YOUR_PASSWORD", # Replace with your password
    database="sales_analysis"
)
```

#### 4. Run the Analysis
Run the Python script to fetch the data, perform calculations, and generate the sales chart:
```bash
python sales_analysis.py
```
