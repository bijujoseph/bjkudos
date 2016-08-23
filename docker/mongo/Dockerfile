FROM mongo:3.2
RUN mkdir -p /conf/
COPY mongod.conf /conf/mongod.conf
RUN mkdir -p /myscripts && mkdir -p /work/sandpit
COPY load_food_recall.sh /myscripts/load_food_recall.sh
RUN chmod 777 /myscripts/load_food_recall.sh && chmod 777 /work/sandpit
RUN apt-get update
RUN apt-get install -y curl unzip wget
# install jq
RUN curl http://stedolan.github.io/jq/download/linux64/jq > /usr/bin/jq && chmod 755 /usr/bin/jq
