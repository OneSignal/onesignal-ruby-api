# Release Instructions
1. Generate new client version using OpenApi Generator
2. Make sure `ruby.yml` has the correct gem version
2. Create a new PR and merge
   * Carefully review the PR to ensure nothing is overwritten and you are including all desired changes
   * Ensure the correct version number is being sent in the header params `OS-Usage-Data` (`api_client.rb`)
3. Generate the gem: `gem build onesignal`
4. Publish to RubyGems
   * To publish version 0.1.0 of a new gem called 'squid-utils', run: `gem push squid-utils-0.1.0.gem`
   * To publish a beta version, simply add `.beta1`, `.beta2` etc... after the semantic version (e.g: `1.0.0.beta1`)

