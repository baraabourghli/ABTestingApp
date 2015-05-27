ab_test "Signup" do
  alternatives "with_onboarding", "without_onboarding"
  description "New feature only available to some projects"
  metrics :signups
end
