package Trillion.Palet.DTO;

import java.sql.Timestamp;

public class PayDTO {
	private String imp_uid;
	private String pg;
	private String method;
	private String g_name;
	private int price;
	private String apply_num;
	private Timestamp pay_time;
	
	public PayDTO() {
		super();
	}

	public PayDTO(String imp_uid, String pg, String method, String g_name, int price, String apply_num,
			Timestamp pay_time) {
		super();
		this.imp_uid = imp_uid;
		this.pg = pg;
		this.method = method;
		this.g_name = g_name;
		this.price = price;
		this.apply_num = apply_num;
		this.pay_time = pay_time;
	}

	public String getImp_uid() {
		return imp_uid;
	}

	public void setImp_uid(String imp_uid) {
		this.imp_uid = imp_uid;
	}

	public String getPg() {
		return pg;
	}

	public void setPg(String pg) {
		this.pg = pg;
	}

	public String getMethod() {
		return method;
	}

	public void setMethod(String method) {
		this.method = method;
	}

	public String getG_name() {
		return g_name;
	}

	public void setG_name(String g_name) {
		this.g_name = g_name;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public String getApply_num() {
		return apply_num;
	}

	public void setApply_num(String apply_num) {
		this.apply_num = apply_num;
	}

	public Timestamp getPay_time() {
		return pay_time;
	}

	public void setPay_time(Timestamp pay_time) {
		this.pay_time = pay_time;
	}

	
	
	
}
