import os
import google.auth
from google.cloud import bigquery

os.environ["GOOGLE_APPLICATION_CREDENTIALS"]="/home/alessandroalmeida/Downloads/gnomo-314717-01a2799f5e39.json"


client = bigquery.Client()
# name_group_query = """ select id_exam, exam from `gnomo-314717.gnomolab.tbl_covid` """
query = """ call gnomolab.sp_gnomo_read() """
query_results = client.query(query)
data = query_results.result()
# rows = list(data)
for row in data:
    print(row.id_exam , ',' ,row.exam,sep="", file=open('/home/alessandroalmeida/alessandro/tbl_covd.txt','a'))


