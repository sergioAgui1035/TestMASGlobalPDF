package com.masglobal.testmasglobal.controllers;

import java.io.IOException;
import java.text.ParseException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.masglobal.testmasglobal.models.Employee;
import com.masglobal.testmasglobal.repository.EmployeeRepository;
import com.masglobal.testmasglobal.utilis.WebServiceConsumption;

@RestController
public class EmployeesController {

	private static String ContractTypeHourly = "HourlySalaryEmployee";
	private static String ContractTypeMonthly = "MonthlySalaryEmployee";
	
	@Autowired
	private EmployeeRepository employeeRepository;


	@GetMapping(value = "employees")
    public ModelAndView Employees() {

        return new ModelAndView("employees");
    }

	@RequestMapping(value = "getEmployees", method = RequestMethod.GET)
	public @ResponseBody List<Employee> getEmployees() throws ParseException, IOException {

		List<Employee> Employees = employeeRepository.findAll();
		for(int i = 0; i < Employees.size(); i++) {
			if(Employees.get(i).getContractTypeName().equalsIgnoreCase(ContractTypeHourly)) {
				
				Employees.get(i).setAnualSalary(CalculateAnnualSalaryByHour(Employees.get(i).getHourlySalary()));
				
			}else if(Employees.get(i).getContractTypeName().equalsIgnoreCase(ContractTypeMonthly)){
				
				Employees.get(i).setAnualSalary(CalculateAnnualSalaryByHour(Employees.get(i).getHourlySalary()));
				
			}
		}
		return Employees;
	}

	@RequestMapping(value = "getEmployeeById", method = RequestMethod.GET)
	public @ResponseBody Employee getEmployeeById(String id) throws ParseException, IOException {

		Employee Employee = employeeRepository.findById(Integer.parseInt(id));
		if(Employee.getContractTypeName().equalsIgnoreCase(ContractTypeHourly)) {
			
			Employee.setAnualSalary(CalculateAnnualSalaryByHour(Employee.getHourlySalary()));
			
		}else if(Employee.getContractTypeName().equalsIgnoreCase(ContractTypeMonthly)){
			
			Employee.setAnualSalary(CalculateAnnualSalaryByHour(Employee.getHourlySalary()));
			
		}
		return Employee;
	}

	@RequestMapping(value = "/EmployeesSynchronization", method = RequestMethod.GET)
	public Boolean EmployeesSynchronization() throws ParseException, IOException {

		List<Employee> EmployeesForInsert = WebServiceConsumption.WebServiceConsumptionForEmployeesSynchronization();
		for (int i = 0; i < EmployeesForInsert.size(); i++) {

			employeeRepository.save(EmployeesForInsert.get(i));
		}
		if(EmployeesForInsert == null) {
			return false;
		}else {
			return true;
		}

	}
	
	public int CalculateAnnualSalaryByHour(int HourSalary) {
		return 120*HourSalary*12;
	}
	
	public int CalculateAnnualSalaryByMounth(int MonthSalary) {
		return MonthSalary*12;
	}

}
