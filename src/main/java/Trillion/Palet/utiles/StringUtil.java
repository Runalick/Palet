package Trillion.Palet.utiles;

import java.io.BufferedReader;
import java.io.IOException;
import java.sql.Clob;
import java.sql.SQLException;

public class StringUtil {
	public static String clobToString(Clob clob) throws SQLException,
	   IOException {

	  if (clob == null) {
	   return "";
	  }

	  StringBuffer strOut = new StringBuffer();

	  String str = "";

	  BufferedReader br = new BufferedReader(clob.getCharacterStream());

	  while ((str = br.readLine()) != null) {
	   strOut.append(str);
	  }
	  return strOut.toString();
	}
	
}
