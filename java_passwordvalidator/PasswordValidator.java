import java.util.Scanner;

public class PasswordValidator {

    public static boolean isValid(String password) {
        if (password.length() < 8) {
            System.out.println("Password too short (min 8 characters)");
            return false;
        }

        boolean hasUpper = false;
        boolean hasDigit = false;

        for (int i = 0; i < password.length(); i++) {
            char ch = password.charAt(i);

            if (Character.isUpperCase(ch)) {
                hasUpper = true;
            }
            if (Character.isDigit(ch)) {
                hasDigit = true;
            }
        }

        if (!hasUpper) {
            System.out.println("Missing uppercase letter");
            return false;
        }

        if (!hasDigit) {
            System.out.println("Missing digit");
            return false;
        }

        return true;
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