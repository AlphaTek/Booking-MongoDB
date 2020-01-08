package ca.sheridancollege.dao;

import java.util.ArrayList;
import java.util.List;
import java.util.Random;


import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.mongodb.BasicDBObject;
import com.mongodb.DBCollection;
import com.mongodb.DBCursor;
import com.mongodb.DBObject;

import ca.sheridancollege.beans.Customer;
import ca.sheridancollege.config.MongoFactory;

@Service("customerDAO")
@Transactional

public class CustomerDAO {
	
	static String db_name = "mydb", db_collection = "mycollection";

	
	// Fetch all users from the mongo database.
		public List<Customer> getAll() {
			List<Customer> user_list = new ArrayList<Customer>();
			DBCollection coll = MongoFactory.getCollection(db_name, db_collection);

			// Fetching cursor object for iterating on the database records.
			DBCursor cursor = coll.find();	
			while(cursor.hasNext()) {			
				DBObject dbObject = cursor.next();

				Customer customer = new Customer();
				
				customer.setId(dbObject.get("id").toString());
				customer.setParentName(dbObject.get("parentName").toString());
				customer.setChildName(dbObject.get("childName").toString());
				customer.setChildAge(dbObject.get("childAge").toString());
				customer.setPhone(dbObject.get("phone").toString());
				customer.setEmail(dbObject.get("email").toString());
				customer.setDate(dbObject.get("date").toString());
				customer.setEmergencyContact(dbObject.get("emergencyContact").toString());
				customer.setEmergencyNumber(dbObject.get("emergencyNumber").toString());
				customer.setInfo(dbObject.get("info").toString());

				// Adding the user details to the list.
				user_list.add(customer);
			}
			
			return user_list;
		}
				
		
		
		// Add a new user to the mongo database.
		public Boolean add(Customer customer) {
			boolean output = false;
			Random ran = new Random();
			
			try {			
				DBCollection coll = MongoFactory.getCollection(db_name, db_collection);

				// Create a new object and add the new user details to this object.
				BasicDBObject doc = new BasicDBObject();
				doc.put("id", String.valueOf(ran.nextInt(100))); 
				doc.put("parentName", customer.getParentName());	
				doc.put("childName", customer.getChildName());	
				doc.put("childAge", customer.getChildAge());
				doc.put("phone", customer.getPhone());
				doc.put("email", customer.getEmail());
				doc.put("date", customer.getDate());
				doc.put("emergencyContact", customer.getEmergencyContact());
				doc.put("emergencyNumber", customer.getEmergencyNumber());
				doc.put("info", customer.getInfo());

				// Save a new user to the mongo collection.
				coll.insert(doc);
				output = true;
			} catch (Exception e) {
				output = false;
							
			}
			return output;
		}
			
		// Update the selected user in the mongo database.
		public Boolean edit(Customer customer) {
			boolean output = false;
			
			try {
				// Fetching the user details.
				BasicDBObject existing = (BasicDBObject) getDBObject(customer.getId());

				DBCollection coll = MongoFactory.getCollection(db_name, db_collection);

				// Create a new object and assign the updated details.
				BasicDBObject edited = new BasicDBObject();
				edited.put("id", customer.getId()); 
				edited.put("parentName", customer.getParentName());
				edited.put("childName", customer.getChildName());
				edited.put("childAge", customer.getChildAge());
				edited.put("phone", customer.getPhone());
				edited.put("email", customer.getEmail());
				edited.put("date", customer.getDate());
				edited.put("emergencyContact", customer.getEmergencyContact());
				edited.put("emergencyNumber", customer.getEmergencyNumber());
				edited.put("info", customer.getInfo());

				// Update the existing user to the mongo database.
				coll.update(existing, edited);
				output = true;
			} catch (Exception e) {
				output = false;
							
			}
			return output;
		}



	// Delete a user from the mongo database.
	public Boolean delete(String id) {
		boolean output = false;
	
		try {
			// Fetching the required user from the mongo database.
			BasicDBObject item = (BasicDBObject) getDBObject(id);

			DBCollection coll = MongoFactory.getCollection(db_name, db_collection);

			// Deleting the selected user from the mongo database.
			coll.remove(item);
			output = true;			
		} catch (Exception e) {
			output = false;
					
		}	
		return output;
	}

	// Fetching a particular record from the mongo database.
	private DBObject getDBObject(String id) {
		DBCollection coll = MongoFactory.getCollection(db_name, db_collection);

		// Fetching the record object from the mongo database.
		DBObject where_query = new BasicDBObject();

		// Put the selected user_id to search.
		where_query.put("id", id);
		return coll.findOne(where_query);
	}

	// Fetching a single user details from the mongo database.
	public Customer findUserId(String id) {
		Customer cust = new Customer();
		DBCollection coll = MongoFactory.getCollection(db_name, db_collection);

		// Fetching the record object from the mongo database.
		DBObject where_query = new BasicDBObject();
		where_query.put("id", id);

		DBObject dbo = coll.findOne(where_query);		
		cust.setId(dbo.get("id").toString());
		cust.setParentName(dbo.get("parentName").toString());
		cust.setChildName(dbo.get("childName").toString());
		
		cust.setChildAge(dbo.get("childAge").toString());
		cust.setPhone(dbo.get("phone").toString());
		cust.setEmail(dbo.get("email").toString());
		cust.setDate(dbo.get("date").toString());
		cust.setEmergencyContact(dbo.get("emergencyContact").toString());
		cust.setEmergencyNumber(dbo.get("emergencyNumber").toString());
		cust.setInfo(dbo.get("info").toString());

		// Return user object.
		return cust;
	}
	

}
