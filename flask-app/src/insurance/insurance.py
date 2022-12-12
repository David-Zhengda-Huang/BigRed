from flask import Blueprint, current_app, request, jsonify, make_response, request_tearing_down
import json

from importlib_metadata import re
from src import db


insurance = Blueprint('insurance', __name__)

@insurance.route('/insurance', methods=['GET'])
def get_insurances():
    cursor = db.get_db().cursor()
 
    cursor.execute('Select * from Insurance')
    row_headers = [x[0] for x in cursor.description]
    json_data = []
    theData = cursor.fetchall()
    for row in theData:
        json_data.append(dict(zip(row_headers, row)))
    the_response = make_response(jsonify(json_data))
    the_response.status_code = 200
    the_response.mimetype = 'application/json'
    return the_response

# Get customer detail for customer with particular userID
@insurance.route('/insurance/<insurannce_id>', methods=['GET'])
def get_insurance(insurannce_id):
    cursor = db.get_db().cursor()
    cursor.execute('select * from Insurance where companyId = {0}'.format(insurannce_id))
    row_headers = [x[0] for x in cursor.description]
    json_data = []
    theData = cursor.fetchall()
    for row in theData:
        json_data.append(dict(zip(row_headers, row)))
    the_response = make_response(jsonify(json_data))
    the_response.status_code = 200
    the_response.mimetype = 'application/json'
    return the_response

# Get customer detail for customer with particular userID
@insurance.route('/claim/<claim_id>', methods=['GET'])
def get_claimç(claim_id):
    cursor = db.get_db().cursor()
    cursor.execute('select * from Claim where claim_id = {0}'.format(claim_id))
    row_headers = [x[0] for x in cursor.description]
    json_data = []
    theData = cursor.fetchall()
    for row in theData:
        json_data.append(dict(zip(row_headers, row)))
    the_response = make_response(jsonify(json_data))
    the_response.status_code = 200
    the_response.mimetype = 'application/json'
    return the_response