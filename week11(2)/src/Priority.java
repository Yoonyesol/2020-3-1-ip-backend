class PriorityThread extends Thread{
	public long cnt;

	PriorityThread(int p){
		setPriority(p); // assign priority
		start(); // thread run
	}

	public void run() {
		try {
			while(true){
				cnt++;
				Thread.sleep(2000); 
			}
		} catch (InterruptedException e) {
			e.printStackTrace();
		}
	}
}

public class Priority {
	public static void main(String[] args) {
		
		PriorityThread t01 = new PriorityThread(Thread.MIN_PRIORITY);
		PriorityThread t02 = new PriorityThread(1);
		PriorityThread t03 = new PriorityThread(Thread.MIN_PRIORITY);
		PriorityThread t04 = new PriorityThread(10);

		t01.interrupt();
		t02.interrupt();
		t03.interrupt();
		t04.interrupt();

		System.out.println("스레드 1번 카운팅 값 : " + t01.cnt);
		System.out.println("스레드 2번 카운팅 값 : " + t02.cnt);
		System.out.println("스레드 3번 카운팅 값 : " + t03.cnt);
		System.out.println("스레드 4번 카운팅 값 : " + t04.cnt);
	}
}