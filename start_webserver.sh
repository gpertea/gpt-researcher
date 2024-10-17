#!/bin/bash
cd /opt/gpt-researcher
## just use docker-compose for the new UI, even though that only works locally
docker-compose up --build
exit
## --------------------------
## --- ignore the method below only works for the simple static UI
source venv/bin/activate
## use --port=6666 to change port to 6666
uvicorn main:app --host=0.0.0.0 --reload &
## for the server-based web ui (does not really work):
#cd frontend/nextjs
#npm run dev -- -H 0.0.0.0
##

