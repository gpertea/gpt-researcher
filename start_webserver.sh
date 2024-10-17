#!/bin/bash
cd /opt/gpt-researcher
source venv/bin/activate
## use --port=6666 to change port to 6666
uvicorn main:app --host=0.0.0.0 --reload &
## for the complex server-based web ui:
cd frontend/nextjs
npm run dev -- -H 0.0.0.0

