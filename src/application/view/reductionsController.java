package application.view;

import java.net.URL;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ResourceBundle;

import application.model.Utilisateur;
import javafx.fxml.FXML;
import javafx.fxml.Initializable;
import javafx.scene.control.ComboBox;
import javafx.scene.control.TextField;
import javafx.scene.input.MouseEvent;

public class reductionsController implements Initializable{
	@FXML
	private ComboBox classes;
	@FXML
	private TextField pourcent;
	
	private String [] classe = new String[] {"CI", "CP","CE1","CE2","CM1","CM2","6e","5e","4e","3e","CRECHES","TPS","PS","MS","GS","CAP_B"};

	// Event Listener on Button.onMouseClicked
	private boolean isInteger(String input) {
	    // Vérifier si l'entrée est un nombre entier positif
	    return input.matches("\\d+");
	}
	public int getTotal(String classe) {
		String sql="SELECT total FROM sections WHERE nom_classe='"+classe+"' ";
		
		try {
			Connection connection=DataBaseConnection.getConnection();
			Statement statement=connection.createStatement();
			ResultSet resultSet = statement.executeQuery(sql);
			int total=0;
			while(resultSet.first()) { 
            	total=resultSet.getInt("total");
              
            }
			return total;
		}catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			return 1000;
		}
		
	}
	@FXML
	public void reduction(MouseEvent event) {
		// TODO Autogenerated
		String sql="UPDATE sections SET total= ? WHERE nom_classe= ?";
		
		try {
			if(this.pourcent.getText()!="" && this.classes.getValue()!=null) {
				Connection connection = DataBaseConnection.getConnection();
	            PreparedStatement statement = connection.prepareStatement(sql);
	            
	            statement.setInt(1, getTotal((String) classes.getValue()));
            	statement.setString(2, String.valueOf(classes.getValue()));
	            
			}else {
				
			}
		}catch (Exception e) {
			// TODO: handle exception
		}
	}

	@Override
	public void initialize(URL arg0, ResourceBundle arg1) {
		// TODO Auto-generated method stub
		this.classes.getItems().addAll(this.classe);
		
	}
}
