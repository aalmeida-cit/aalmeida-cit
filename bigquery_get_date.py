import os
import google.auth
from google.cloud import bigquery

os.environ["GOOGLE_APPLICATION_CREDENTIALS"]="/home/alessandroalmeida/Downloads/gnomo-314717-01a2799f5e39.json"


client = bigquery.Client()
name_group_query = """ select exam from `gnomo-314717.gnomolab.tbl_covid` """
query_results = client.query(name_group_query)
data = query_results.result()
rows = list(data)
print(rows)

