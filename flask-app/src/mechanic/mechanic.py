from flask import Blueprint, current_app, request, jsonify, make_response
import json
from src import db


mechanic = Blueprint('mechanic', __name__)

@mechanic.route('/mechanic', methods=['GET'])
def get_repair_shops():
    cursor = db.get_db().cursor()
 
    cursor.execute('Select * from ReapirShop')
    row_headers = [x[0] for x in cursor.description]
    json_data = []
    theData = cursor.fetchall()
    for row in theData:
        json_data.append(dict(zip(row_headers, row)))
    the_response = make_response(jsonify(json_data))
    the_response.status_code = 200
    the_response.mimetype = 'application/json'
    return the_response

@mechanic.route('/mechanic/<store_id>', methods=['GET'])
def get_repair_shop(store_id):
    cursor = db.get_db().cursor()
    cursor.execute('select * from ReapirShop where store_id = {0}'.format(store_id))
    row_headers = [x[0] for x in cursor.description]
    json_data = []
    theData = cursor.fetchall()
    for row in theData:
        json_data.append(dict(zip(row_headers, row)))
    the_response = make_response(jsonify(json_data))
    the_response.status_code = 200
    the_response.mimetype = 'application/json'
    return the_response

@mechanic.route('/parts', methods=['GET'])
def get_parts():
    cursor = db.get_db().cursor()
    cursor.execute('select * from Parts')
    row_headers = [x[0] for x in cursor.description]
    json_data = []
    theData = cursor.fetchall()
    for row in theData:
        json_data.append(dict(zip(row_headers, row)))
    the_response = make_response(jsonify(json_data))
    the_response.status_code = 200
    the_response.mimetype = 'application/json'
    return the_response

@mechanic.route('/employee', methods=['GET'])
def get_mechEmploy():
    cursor = db.get_db().cursor()
    cursor.execute('select * from mechanic_employee')
    row_headers = [x[0] for x in cursor.description]
    json_data = []
    theData = cursor.fetchall()
    for row in theData:
        json_data.append(dict(zip(row_headers, row)))
    the_response = make_response(jsonify(json_data))
    the_response.status_code = 200
    the_response.mimetype = 'application/json'
    return the_response

@mechanic.route('/repairorder', methods=['GET'])
def get_repairshop():
    cursor = db.get_db().cursor()
    cursor.execute('select * from Repair_Order')
    row_headers = [x[0] for x in cursor.description]
    json_data = []
    theData = cursor.fetchall()
    for row in theData:
        json_data.append(dict(zip(row_headers, row)))
    the_response = make_response(jsonify(json_data))
    the_response.status_code = 200
    the_response.mimetype = 'application/json'
    return the_response

@mechanic.route('/add/repair_order', methods = ['POST'])
def add_repair_order():
    current_app.logger.info(request.form)
    cursor = db.get_db().cursor()
    claim_id = request.form['claim_id']
    part_cost = request.form['part_cost']
    labor_cost = request.form['labor_cost']
    vehicleId = request.form['vehicleId']
    status_id = request.form['status_id']
    query = f'INSERT INTO Repair_Order(claim_id, part_cost, labor_cost, vehicleId, status_id) VALUES(\"{claim_id}\", \"{part_cost}\", \"{labor_cost}\", \"{vehicleId}\",\"{status_id}\")'
    cursor.execute(query)
    db.get_db().commit()
    return 'Successful'

@mechanic.route('/status', methods=['GET'])
def get_status():
    cursor = db.get_db().cursor()
    cursor.execute('select * from Status')
    row_headers = [x[0] for x in cursor.description]
    json_data = []
    theData = cursor.fetchall()
    for row in theData:
        json_data.append(dict(zip(row_headers, row)))
    the_response = make_response(jsonify(json_data))
    the_response.status_code = 200
    the_response.mimetype = 'application/json'
    return the_response