//package ca.sheridancollege.beans;
//
//import java.util.Date;
//import java.util.List;
//
//import javax.persistence.ElementCollection;
//import javax.persistence.Entity;
//import javax.persistence.GeneratedValue;
//import javax.persistence.Id;
//import javax.persistence.ManyToOne;
//import javax.persistence.OrderColumn;
//
//import lombok.AllArgsConstructor;
//import lombok.Data;
//import lombok.NoArgsConstructor;
//
//@Data
//@AllArgsConstructor
//@NoArgsConstructor
//@Entity
//public class Booking {
//	
//	@Id
//	@GeneratedValue
//	private long id;
//	
//	private String description;
//	private Date date;
//	
//	@ManyToOne
//	private Customer customer;
//	
//	
//	
//	public Booking(String description, Date date, Customer customer, List<Activity> activity) {
//		super();
//		this.description = description;
//		this.date = date;
//		this.customer = customer;
//		this.activity = activity;
//	}
//	
//	
//	public Booking(String description, Date date, List<Activity> activity) {
//		super();
//		this.description = description;
//		this.date = date;
//		this.activity = activity;
//	}
//	
//	
//
//
//	public Booking(String description, Date date) {
//		super();
//		this.description = description;
//		this.date = date;
//	}
//
//
//
//
//
//	@ElementCollection
//	@OrderColumn(name = "activityNo")
//	private List<Activity> activity;
//}
