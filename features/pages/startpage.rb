module APIDemos
  module Startpage
    class << self

       def signup
        wait {id('id/landing_button_register').click}
        self
      end

      def checklocation
        wait {id('id/landingPageFragmentText')}
        self
      end

    end
  end
end

module Kernel
  def startpage
    APIDemos::Startpage
  end
end