package Trillion.Palet.utiles;

import java.io.BufferedInputStream;
import java.sql.Blob;

import org.springframework.util.Base64Utils;

public class FileUtils {
	 public static byte[] blobToBytes(Blob blob) {
	        BufferedInputStream is = null;
	        byte[] bytes = null;
	        try {
	            is = new BufferedInputStream(blob.getBinaryStream());
	            bytes = new byte[(int) blob.length()];
	            int len = bytes.length;
	            int offset = 0;
	            int read = 0;

	            while (offset < len
	                    && (read = is.read(bytes, offset, len - offset)) >= 0) {
	                offset += read;
	            }

	        } catch (Exception e) {
	            e.printStackTrace();
	        }
	        return bytes;
	    }

	    // [byte를 base64로 인코딩 해주는 메소드]
	    private static String byteToBase64(byte[] arr) {
	        String result = "";
	        try {
	            result = Base64Utils.encodeToString(arr);
	        } catch (Exception e) {
	            e.printStackTrace();
	        }
	        return result;
	    }
}
