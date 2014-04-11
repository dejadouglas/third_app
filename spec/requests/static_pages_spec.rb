require 'spec_helper'

describe "StaticPages" do

subject { page}

  describe "Home page" do
before{visit root_path}

    it { should have_selector("h1", text: => 'Third App') }
    it { should have_selector("title", :text => 'Home Page') }
  end
 describe "Help page" do
 before {visit help_path}

    it { should have_selector("h1", text:'Third App')} 
    it { should have_selector("title", text:'Help App')}  
end
   describe "About Us page" do
   before {vist about_path}

    it { should have_selector("h1", text:'Third App')}
    it { should have_selector("title", text:'About Page')}  
     end
     describe "Contact page" do
     before {visit contact_path}

      it { should have_selector("h1", text:'Third App')} 
      it { should have_selector("title", text:'Contact Page')} 
  end

end
