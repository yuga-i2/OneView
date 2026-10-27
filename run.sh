#!/bin/sh
cd backend
[ -d .venv ] || python3 -m venv .venv
. .venv/bin/activate
pip install -q -r requirements.txt
uvicorn main:app --reload
