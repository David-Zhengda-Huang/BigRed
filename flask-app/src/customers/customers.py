from flask import Blueprint, current_app, request, jsonify, make_response, request_tearing_down
import json

from importlib_metadata import re
from src import db


customers = Blueprint('customers', __name__)

# Get all customers from the DB
@customers.route('/customers', methods=['GET'])
def get_customers():
    cursor = db.get_db().cursor()
 
    cursor.execute('Select * from Customer')
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
@customers.route('/customers/<userID>', methods=['GET'])
def get_customer(userID):
    cursor = db.get_db().cursor()
    cursor.execute('select * from Customer where customerId = {0}'.format(userID))
    row_headers = [x[0] for x in cursor.description]
    json_data = []
    theData = cursor.fetchall()
    for row in theData:
        json_data.append(dict(zip(row_headers, row)))
    the_response = make_response(jsonify(json_data))
    the_response.status_code = 200
    the_response.mimetype = 'application/json'
    return the_response

@customers.route('/vehicle', methods=['get'])
def get_vehicles():
    cursor = db.get_db().cursor()
    cursor.execute('select * from Vehicle')
    row_headers = [x[0] for x in cursor.description]
    json_data = []
    theData = cursor.fetchall()
    for row in theData:
        json_data.append(dict(zip(row_headers, row)))
    the_response = make_response(jsonify(json_data))
    the_response.status_code = 200
    the_response.mimetype = 'application/json'
    return the_response

@customers.route('vehicle/<ownerID>', methods=['get'])
def get_vehicle(ownerID):
    cursor = db.get_db().cursor()
    cursor.execute('select * from Vehicle where ownerID = {0}'.format(ownerID))
    row_headers = [x[0] for x in cursor.description]
    json_data = []
    theData = cursor.fetchall()
    for row in theData:
        json_data.append(dict(zip(row_headers, row)))
    the_response = make_response(jsonify(json_data))
    the_response.status_code = 200
    the_response.mimetype = 'application/json'
    return the_response

@customers.route('/add/customer', methods = ['POST'])
def add_claim():
    current_app.logger.info(request.form)
    cursor = db.get_db().cursor()
    email = request.form['email']
    firsName = request.form['firsName']
    lastName = request.form['lastName']
    driver_license = request.form['driver_license']
    street = request.form['street']
    city = request.form['city']
    zip = request.form['zip']
    query = f'INSERT INTO Customer(email, firsName, lastName, driver_license, street, city, zip) VALUES(\"{email}\", \"{firsName}\", \"{lastName}\", \"{driver_license}\",\"{street}\" ,\"{city}\", \"{zip}\")'
    cursor.execute(query)
    db.get_db().commit()
    return 'Successful'