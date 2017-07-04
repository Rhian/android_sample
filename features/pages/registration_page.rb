module APIDemos
  module Registration
    class << self

      def registerbutton
        wait.until {id('id/signup_button_click').click}
        self
      end


      def regemail(option)
        wait.until {id('id/signup_form_emailaddress').type option}
        self
      end

      def regpassword(option)
        wait.until { id('id/signup_form_password').type option}
        sleep 2
        self
      end

      def regfirstname(option)
        id('id/signup_form_firstname').type option
        sleep 2
        self
      end

      def reglastname(option)
        id('id/signup_form_lastname').type option
        sleep 2
        self
      end


      def registration_spinner
        wait{id('id/message')}
      end

      def signup_random
        ran = RandomToken.gen('%5n')
        regemail("mrgklw+#{ran}@gmail.com")
        regpassword('12345678a')
        regfirstname('Gary')
        reglastname('Wong')
        registerbutton
        registration_spinner
        self
      end
    end

  end
end

module Kernel
  def registration
    APIDemos::Registration
  end
end