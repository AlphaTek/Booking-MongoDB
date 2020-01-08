package ca.sheridancollege.beans;




import java.io.Serializable;
import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;


@Data
@AllArgsConstructor
@NoArgsConstructor

public class Customer implements Serializable{
	private static final long serialVersionUID = 1L;

	private String id;	
	private String parentName;
	private String childName;
	private String childAge;
	private String phone;
	private String email;		
	private String date;
	private String emergencyContact;
	private String emergencyNumber;
	private String info;
	
	
	
	
	
//	@ElementCollection
//	private List<Children> childrenList = new ArrayList<Children>();
	
//	@ManyToMany
//	private Activity activity;
	
//	private Set<Booking> bookedActivity = new HashSet<>();
	





public Customer(String id, String parentName, String childAge, String phone, String email, String date,
		String emergencyContact, String emergencyNumber) {
	super();
	this.id = id;
	this.parentName = parentName;
	this.childAge = childAge;
	this.phone = phone;
	this.email = email;
	this.date = date;
	this.emergencyContact = emergencyContact;
	this.emergencyNumber = emergencyNumber;
}





public Customer(String id, String parentName, String childName, String phone, String email) {
	super();
	this.id = id;
	this.parentName = parentName;
	this.childName = childName;
	this.phone = phone;
	this.email = email;
}





public Customer(String parentName, String childName, String phone, String email) {
	super();
	this.parentName = parentName;
	this.childName = childName;
	this.phone = phone;
	this.email = email;
}



	
}
