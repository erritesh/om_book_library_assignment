
public class Test {
	public static void main (String args[]){
		Test t = new Test();
		t.genId();
	}
	public int bookId() {
		int book = 1000;
		int id = 1;
		int booknum =0 ;
		// in string 10001
		for(int i=1; i<10;i++){
			booknum = book+id;
			
		}
		System.out.println(booknum);
		return booknum ;
		
	}
	
	public void genId(){
		String ref= "M";
		int numRef = 1;
		for(int i =0;i<100;i++) {
			String m = ref+(numRef)+i;
			System.out.println(m);
		}
		
		
		
	}
	

}
