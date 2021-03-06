download:
	wget https://s3-eu-west-1.amazonaws.com/targetvalidation-dumps/17.04_association_data.json.gz -O data/17.04_association_data.json.gz
	wget ftp://ftp.ebi.ac.uk/pub/databases/genenames/new/json/hgnc_complete_set.json data/hgnc_complete_set.json

unzip:
	gunzip -k data/17.04_association_data.json.gz

env_update:
	conda env update -f environment.yml
	jupyter contrib nbextension install --sys-prefix

env_create:
	conda env create -f environment.yml
	jupyter contrib nbextension install --sys-prefix
