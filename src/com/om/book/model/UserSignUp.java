package com.om.book.model;

public class UserSignUp {
	
	private int uId;
	private String firstName;
	private String lastName;
	private String username;
	private String email;
	private String password;
	private String dob;
	private String address;
	private String membershipType;
	private String flag;
	
	/**
	 * @return the uId
	 */
	public int getuId() {
		return uId;
	}
	/**
	 * @param uId the uId to set
	 */
	public void setuId(int uId) {
		this.uId = uId;
	}
	/**
	 * @return the firstName
	 */
	public String getFirstName() {
		return firstName;
	}
	/**
	 * @param firstName the firstName to set
	 */
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	/**
	 * @return the lastName
	 */
	public String getLastName() {
		return lastName;
	}
	/**
	 * @param lastName the lastName to set
	 */
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	/**
	 * @return the username
	 */
	public String getUsername() {
		return username;
	}
	/**
	 * @param username the username to set
	 */
	public void setUsername(String username) {
		this.username = username;
	}
	public void removePassword() {
        password = null;
   }
	 public void removeUserName() {
	        username = null;
	         }
	    public void removeLastName() {
	        lastName = null;
	         }
	    public void removeFirstName() {
	        firstName = null;
	         }
	            
	   /* public boolean isValid() {
	       return valid;
	   }
*/
   
	/**
	 * @return the email
	 */
	public String getEmail() {
		return email;
	}
	/**
	 * @param email the email to set
	 */
	public void setEmail(String email) {
		this.email = email;
	}
	/**
	 * @return the password
	 */
	public String getPassword() {
		return password;
	}
	/**
	 * @param password the password to set
	 */
	public void setPassword(String password) {
		this.password = password;
	}
	/**
	 * @return the dob
	 */
	public String getDob() {
		return dob;
	}
	/**
	 * @param dob the dob to set
	 */
	public void setDob(String dob) {
		this.dob = dob;
	}
	/**
	 * @return the address
	 */
	public String getAddress() {
		return address;
	}
	/**
	 * @param address the address to set
	 */
	public void setAddress(String address) {
		this.address = address;
	}
	/**
	 * @return the membershipType
	 */
	public String getMembershipType() {
		return membershipType;
	}
	/**
	 * @param membershipType the membershipType to set
	 */
	public void setMembershipType(String membershipType) {
		this.membershipType = membershipType;
	}
	/**
	 * @return the flag
	 */
	public String getFlag() {
		return flag;
	}
	/**
	 * @param flag the flag to set
	 */
	public void setFlag(String flag) {
		this.flag = flag;
	}
	/* (non-Javadoc)
	 * @see java.lang.Object#toString()
	 */
	@Override
	public String toString() {
		return "UserSignUp [uId=" + uId + ", firstName=" + firstName + ", lastName=" + lastName + ", username="
				+ username + ", email=" + email + ", password=" + password + ", dob=" + dob + ", address=" + address
				+ ", membershipType=" + membershipType + ", flag=" + flag + "]";
	}
	
	

}
