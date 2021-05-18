import com.masglobal.testmasglobal.controllers.EmployeesController;

import junit.framework.TestCase;

public class UnitTestEmployee extends TestCase{

	private EmployeesController employeesController;
	
	public void workspace () {
		employeesController = new EmployeesController();
	}
	
	public void testEmployees() {
		workspace();
		assertTrue(employeesController.CalculateAnnualSalaryByHour(10000)==120*10000*12);
	}
}
