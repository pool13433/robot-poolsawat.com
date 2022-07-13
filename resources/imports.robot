*** Settings ***
Library    Collections
Library    String
Library    DateTime
Library    ../pythonlibs/date_util.py

Variables   ./commons.yaml
Variables    ../resources/configs/${ENV}/env.yaml

Resource    ../keywords/api_keywords.robot
