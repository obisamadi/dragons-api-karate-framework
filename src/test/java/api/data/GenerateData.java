package api.data;

public class GenerateData {

	public static String getEmail() {
		String email = "autogen";
		String provider = "@tekschool.us";
		int randomNumber = (int) (Math.random() * 1000);
		String autoEmail = email + randomNumber + provider;
		return autoEmail;
	}

	public static String getLicensePlate() {
		String alphabet = "KBL";
		int randomNumber = (int) (Math.random() * 10000);
		String sign = "-";
		String licensePlate = alphabet + sign + randomNumber;
		return licensePlate;
	}

	public static String getPhoneNumber() {

		String phoneNumber = "9";

		for (int i = 0; i < 9; i++) {

			phoneNumber += (int) (Math.random() * 10);

		}

		return phoneNumber;

	}

}
