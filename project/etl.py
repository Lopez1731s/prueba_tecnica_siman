import os
import pandas as pd
from sqlalchemy import create_engine


oracle_conn_str = 'oracle+cx_oracle://user:password@host:port/dbname'
engine = create_engine(oracle_conn_str)

# Lectura de archivos CSV
absolute_path = os.path.abspath(os.path.join(os.path.dirname(__file__))) + '\\'
source_path = absolute_path + 'sources\\'

customers_df = pd.read_csv(f'{source_path}olist_customers_dataset.csv')
orders_df = pd.read_csv(f'{source_path}olist_orders_dataset.csv')
order_items_df = pd.read_csv(f'{source_path}olist_order_items_dataset.csv')

# Transformación de datos
customers_transformed = customers_df[['customer_id', 'customer_unique_id', 'customer_zip_code_prefix']]
orders_transformed = orders_df[['order_id', 'customer_id', 'order_status', 'order_purchase_timestamp']]
order_items_transformed = order_items_df[['order_item_id', 'order_id', 'product_id', 'seller_id', 'price', 'freight_value']]

# Carga de datos
customers_transformed.to_sql('Customers', engine, if_exists='replace', index=False)
orders_transformed.to_sql('Orders', engine, if_exists='replace', index=False)
order_items_transformed.to_sql('Order_Items', engine, if_exists='replace', index=False)