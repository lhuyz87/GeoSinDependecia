package rimac.geo.util;

import java.util.ArrayList;
import java.util.List;
import java.util.Random;
import java.util.concurrent.ThreadLocalRandom;

import rimac.geo.inout.LeerDataDriven;
import rimac.geo.util.ExcelUtil;

public class ExcelUtilPropio extends ExcelUtil {

	// singleton
	private static ExcelUtilPropio obj = null;

	private ExcelUtilPropio() {
	}

	public static ExcelUtilPropio getInstancia() {
		instanciar();
		return obj;
	}

	private synchronized static void instanciar() {
		if (obj == null) {
			obj = new ExcelUtilPropio();
		}
	}

	@Override
	public Object clone() throws CloneNotSupportedException {
		throw new CloneNotSupportedException();
	}
	// singleton

	public List<List<String>> excelToList(String excel, String hoja, String vez) {
		List<List<String>> data = new ArrayList<List<String>>();
//		System.out.println("excel: " + excel + "-hoja: " + hoja + " VEZ: " + vez  );
		try {
			String[] excelSplit = excel.split("\\|");
			// int v = Integer.parseInt(vez);

//			System.out.println(" valor 1: " + excelSplit[0] + " valor 2: " + excelSplit[1] + " LONGITUD: " + excelSplit.length  );

			switch (excelSplit[0]) {
			case "DataPrueba":
				
				data = LeerDataDriven.getInstancia().leerDD(hoja);
				
				break;
			default:
				break;
			}
		} catch (Exception ex) {
			System.out.println(ex.getMessage());
			ex.printStackTrace();
		}

		return data;
	}
	
	
	public String generarPlaca() {
		String placa="";
		
		int leftLimit = 97; // letter 'a'
		int rightLimit = 122; // letter 'z'
		int targetStringLength = 3;
		Random random = new Random();

		String PlacaString = random.ints(leftLimit, rightLimit + 1).limit(targetStringLength).collect(StringBuilder::new, StringBuilder::appendCodePoint, StringBuilder::append).toString().toUpperCase();
		int PlacaNumerica = ThreadLocalRandom.current().nextInt(100, 999 + 1);
		placa=PlacaString.concat(""+PlacaNumerica);

		return placa;
	}
	
	
	
	
	
}
