(Write code wish you had)
Make Parser.new in Invitations
Make spec for Parser
Define Parser class
(Tiny steps, tests must be fast and run from editor)
Delegate recipients method to new Parser class
(Extracting private is a little trickier cause no tests for public)
Copy test for deliver into Parser spec
Change test around to test recipients method
expect(result) to eq([
  { 'name' => 'User One', 'email' => 'one@example.com' },
  { 'name' => 'User Two', 'email' => 'two@example.com' }
  ])
pass in csv
Go run test in SENDER and make it give same failure by passing in csv
(Using higher-level class to help drive)
Copy recipients method over but comment whole thing out
Uncomment method, then definition
Actually assign @csv
Run Invitations spec
Remove @csv from Invitations

(left tests intact so we know Invitations still works exactly the same
way, but now we want to isolate Invitations from its collaborator)
Convert csv to recipients array of hashes
create parser double
Stub Parser.new
(Now Invitations is isolated)

(Review steps for extract class:
write class you wish you had
create empty class
move tests over
move methods, commented, then uncomment)

(Now, we should look at the classes we've extracted and see if there is more to extract. 

Classes aren't big, but check out the dependencies.)

===

(Invitations' specs care a lot about Parser and are passing in data that are only needed by its collaborator.

Notice we don't use csv after setup

Time to invert control!

Why? Because managing dependencies is a responsibility.

What does it mean to invert control?)

Show how dependencies are top-down now: controller -> InvitationSender -> Parser

Inverting control means all deps get wired at top.

We'll use dependency injection to invert control.)

In spec:
don't pass csv, pass parser directly
In code:
change to be @parser = parser
Go to controller tests and notice it's passing
Change controller specs to pass in parser

(Include discusison from WI ep)

Todo:

Make InvitationsController
Make stub_mailer method



Sketch:
15m live-coding
  Show mixed responsibilities
  Talk about natural ways to get there
  Use git to jump to extracted class version
  Show how to invert control
  Discuss pros and cons
10m soft topic
  Codecation?
5m blowing faces off
