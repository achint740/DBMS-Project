package SQL_Support;

import org.json.JSONObject;

public class Pika {
	
	public String[][] str;
	int i = -1;
	JSONObject pika_ki_nyi_chaal;
	
	Pika(int len){
		pika_ki_nyi_chaal = new JSONObject();
		str = new String[len][2];
	}
	
	public JSONObject get() {
		return pika_ki_nyi_chaal;
	}
	
	public void put_value(String a,String b) {
		pika_ki_nyi_chaal.put(a, b);
		this.i++;
		str[i][0] = a;
		str[i][1] = b;
	}
	
	@Override
	public String toString() {
		String result = "{";
		for (int j=0;j<=this.i;j++) {
			result+=str[j][0] + "=" + str[j][1];
			if(j!=this.i) {
				result+=",";
			}
		}
		result+="}";
		// TODO Auto-generated method stub
		return result;
	}
	
	public void pika_printing_press() {
		for(int j=0;j<=this.i;j++) {
			System.out.println(str[j][1]);
		}
	}
	
}
