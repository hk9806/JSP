package mvc.model;

public class memberDTO {
	
		
		private String id;
		private String password;
		private String name;
		private String gender;
		private String birth;
		private String mail;
		private String phone;
		private String address;
		private String regist_day;
		
		

		//get/set
		public String getId() {
			return id;
		}

		public String getPassword() {
			return password;
		}

		public String getName() {
			return name;
		}

		public String getGender() {
			return gender;
		}

		public String getBirth() {
			return birth;
		}

		public String getMail() {
			return mail;
		}

		public String getPhone() {
			return phone;
		}

		public String getAddress() {
			return address;
		}

		public String getRegist_day() {
			return regist_day;
		}

		public void setId(String id) {
			this.id = id;
		}

		public void setPassword(String password) {
			this.password = password;
		}

		public void setName(String name) {
			this.name = name;
		}

		public void setGender(String gender) {
			this.gender = gender;
		}

		public void setBirth(String birth) {
			this.birth = birth;
		}

		public void setMail(String mail) {
			this.mail = mail;
		}

		public void setPhone(String phone) {
			this.phone = phone;
		}

		public void setAddress(String address) {
			this.address = address;
		}

		public void setRegist_day(String regist_day) {
			this.regist_day = regist_day;
		}
		
		@Override
		public String toString() {
			return "BoardDTO [id=" + id + ", password=" + password + ", name=" + name + ", gender=" + gender
					+ ", birth=" + birth + ", mail=" + mail + ", phone=" + phone + ", address=" + address
					+ ", regist_day=" + regist_day + "]";
		}
	}
	
	

