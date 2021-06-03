from google.cloud import bigquery
from Credenciais import awsdev
import os
import boto3
import pandas
import gcsfs
import fsspec

#autenticação GCP
os.environ["GOOGLE_APPLICATION_CREDENTIALS"]="/home/alessandroalmeida/Downloads/gnomo-314717-01a2799f5e39.json"

#Setup GCP bigquery 
client = bigquery.Client()
bucket_name = 'bck_awss3'
project = "gnomo-314717"
dataset_id = "gnomolab"
table_id = "tbl_covid"

#Setup Bucket GCP
destination_uri = "gs://{}/{}".format(bucket_name, "tbl_load.csv")
dataset_ref = bigquery.DatasetReference(project, dataset_id)
table_ref = dataset_ref.table(table_id)

#Extract table and Write file no bucket  
extract_job = client.extract_table(
    table_ref,
    destination_uri,
    # Location must match that of the source table.
    location="US",
)  # API request
extract_job.result()  # Waits for job to complete.

#Enviar file do backup GCP para aws s3

s3 = boto3.client('s3',
                  aws_access_key_id= awsdev.accesskey,
                  aws_secret_access_key= awsdev.keyid)

df = pandas.read_csv('gs://bck_awss3/tbl_load.csv')
with open(df, 'rb') as data:
    s3.upload_fileobj(data, 'gnomo', 'gcp_wss3')


