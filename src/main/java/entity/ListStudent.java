package entity;

public class ListStudent {
	private int ID;
	private String StudentFirstName;
	private String StudentLastName;
	private String StudentEmail;

	public ListStudent() {
		super();
		// TODO Auto-generated constructor stub
	}

	public ListStudent(int iD, String studentFirstName, String studentLastName, String studentEmail) {
		super();
		ID = iD;
		StudentFirstName = studentFirstName;
		StudentLastName = studentLastName;
		StudentEmail = studentEmail;
	}

	public int getID() {
		return ID;
	}

	public void setID(int iD) {
		ID = iD;
	}

	public String getStudentFirstName() {
		return StudentFirstName;
	}

	public void setStudentFirstName(String studentFirstName) {
		StudentFirstName = studentFirstName;
	}

	public String getStudentLastName() {
		return StudentLastName;
	}

	public void setStudentLastName(String studentLastName) {
		StudentLastName = studentLastName;
	}

	public String getStudentEmail() {
		return StudentEmail;
	}

	public void setStudentEmail(String studentEmail) {
		StudentEmail = studentEmail;
	}

	@Override
	public String toString() {
		return "ListStudent [ID=" + ID + ", StudentFirstName=" + StudentFirstName + ", StudentLastName="
				+ StudentLastName + ", StudentEmail=" + StudentEmail + "]";
	}

}