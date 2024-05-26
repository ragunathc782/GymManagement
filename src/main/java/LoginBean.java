public class LoginBean {
    String email;
    private String pwd;

    public String getEmail() {
        return email;
    }

    public String getPwd() {
        return pwd;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public void setPwd(String pwd) {
        this.pwd = pwd;
    }

    public boolean validate() {
        // Assuming you want to validate against hardcoded email and password
        if (email.equals("ragu@gmail.com") && pwd.equals("12345")) {
            return true;
        } else {
            return false;
        }
    }
}
