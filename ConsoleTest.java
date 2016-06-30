import java.io.Console;

public class ConsoleTest {
    public static void main(String[] args){ 
		Console cons;
	
		if ((cons = System.console()) == null) {
			System.exit(1);
		}
		cons.printf("test\n");
	}
}
