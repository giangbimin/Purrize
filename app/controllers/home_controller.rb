class HomeController < ApplicationController
  def index
  end

  def connect
  end

  def products
  end

  def rules
  end
  
  def about_services
  end

  def faq
    @faqs = [
      [1, "Can I cancel at anytime?", "Yes, you can cancel anytime no questions are asked while you cancel but we would highly appreciate if you will give us some feedback."],
      [2, "My team has credits. How do we use them?", "Once your team signs up for a subscription plan. This is where we sit down, grab a cup of coffee and dial in the details."],
      [3, "How does Preline's pricing work?", "Our subscriptions are tiered. Understanding the task at hand and ironing out the wrinkles is key."],
      [4, "How secure is Preline?", "Protecting the data you trust to Preline is our first priority. This part is really crucial in keeping the project in line to completion."],
      [5, "How do I get access to a theme I purchased?", "If you lose the link for a theme you purchased, don't panic! We've got you covered. You can login to your account, tap your avatar in the upper right corner, and tap Purchases. If you didn't create a login or can't remember the information, you can use our handy Redownload page, just remember to use the same email you originally made your purchases with."],
      [6, "Upgrade License Type", "There may be times when you need to upgrade your license from the original type you purchased and we have a solution that ensures you can apply your original purchase cost to the new license purchase."]
    ]
  end
end
