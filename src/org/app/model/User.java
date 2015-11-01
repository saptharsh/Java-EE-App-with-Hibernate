package org.app.model;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="USER_TABLE")
public class User implements Serializable {

/**
	 * 
	 */
	private static final long serialVersionUID = 387599223992430146L;
@Id @GeneratedValue
private long id;
private String firstName;
private String middleName;
private String lastName;
private String email;
private String userId;
private String password;

public User(){
	
}

public User(String fName, String mName, String lName, String email2, String userId2, String password2) {

	setFirstName(fName);
	setMiddleName(mName);
	setLastName(lName);
	setEmail(email2);
	setUserId(userId2);
	setPassword(password2);
	
}
public long getId() {
	return id;
}
public void setId(long id) {
	this.id = id;
}
public String getFirstName() {
	return firstName;
}
public void setFirstName(String firstName) {
	this.firstName = firstName;
}
public String getMiddleName() {
	return middleName;
}
public void setMiddleName(String middleName) {
	this.middleName = middleName;
}
public String getLastName() {
	return lastName;
}
public void setLastName(String lastName) {
	this.lastName = lastName;
}
public String getEmail() {
	return email;
}
public void setEmail(String email) {
	this.email = email;
}
public String getUserId() {
	return userId;
}
public void setUserId(String userId) {
	this.userId = userId;
}
public String getPassword() {
	return password;
}
public void setPassword(String password) {
	this.password = password;
}


}