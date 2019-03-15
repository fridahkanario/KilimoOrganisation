package kilimosystem;

import java.sql.*;

public class Main {

    public static void main(String[] args)  {

        try {
            Class.forName("com.mysql.jdbc.Driver");
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }


        try {
            Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/Kilimo", "root", "");
            Statement statement = connection.createStatement();

            //Join the two tables and query data
            String query = "SELECT * FROM Employee JOIN Department ON Department.EmpId=Employee.EmpId";

            ResultSet resultSet = statement.executeQuery(query);
            while (resultSet.next()) {

                String firstName = resultSet.getString("EmpFirstName");
                String secondName = resultSet.getString("EmpSecondName");
                String thirdName = resultSet.getString("EmpThirdName");
                String date = resultSet.getString("EmployDate");
                String dptName = resultSet.getString("DptName");
                String dptHead = resultSet.getString("DptHead");


                // print the results
                System.out.println("\n");
                System.out.printf("\tEmployee Full Name is: %s %s %s\n" + "\tEmployee Employment date is: %s\n\tEmployee Department is: %s\n\tEmployee Department Head is: %s\n ", firstName, secondName, thirdName, date, dptName, dptHead);
                System.out.println("\n");
            }

        } catch (SQLException sqle) {
            sqle.printStackTrace();

        }


    }
}


