
import java.util.Scanner;

public class PasswordValidator {

    public static boolean isValid(String password) {
        boolean hasUpper = false;
        boolean hasDigit = false;
        boolean hasSpecial = false;

        if (password.length() < 8) {
            System.out.println("Password too short (min 8 characters)");
        }

        for (int i = 0; i < password.length(); i++) {
            char ch = password.charAt(i);

            if (Character.isUpperCase(ch)) {
                hasUpper = true;
            }
            if (Character.isDigit(ch)) {
                hasDigit = true;
            }
            if (!Character.isLetterOrDigit(ch)) {
                hasSpecial = true;
            }
        }

        if (!hasUpper) {
            System.out.println("Missing uppercase letter");
        }
        if (!hasDigit) {
            System.out.println("Missing digit");
        }
        if (!hasSpecial) {
            System.out.println("Missing special character");
        }

        return password.length() >= 8 && hasUpper && hasDigit && hasSpecial;
    }

    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        while (true) {
            System.out.print("Enter password: ");
            String password = sc.nextLine();

            if (isValid(password)) {
                System.out.println("Password is valid!");
                break;
            } else {
                System.out.println("Try again.\n");
            }
        }

        sc.close();
    }
}
