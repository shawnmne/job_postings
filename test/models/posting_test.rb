require 'test_helper'

class PostingTest < ActiveSupport::TestCase
  test "posting is valid" do
  	p = Posting.new(job_title:"Developer", company_name:"IBM", description:"fun", location:"here", how_to_apply:"telepathically")
    assert(p.valid?, "Should be valid with all attributes present")
  end
end
