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

@insurance.route('/add/claim', ['POST'])
def add_claim():
    current_app.logger.info(request.form)
    cursor = db.get_db().cursor()
    policy_num = request.form['policy_number']
    repair_cost = request.form['repair_cost']
    claim_id = request.form['claim_id']
    damage = request.form['damage_estimate']
    customerId = request.form['custoemrId']
    atFault = request.form['atFault']
    mechanic_id = request.form['mechanic_id']
    query = f'INSERT INTO Claim(policy_number, repair_cost, claim_id, damage_estimate, custoemrId, atFault, mechanic_id) VALUES(\"{policy_num}\", \"{repair_cost}\", \"{claim_id}\", \"{damage}\", \"{customerId}\",\"{atFault}\" ,\"{mechanic_id}\")'
    cursor.execute(query)
    db.get_db().commit()
    return 'Successful'