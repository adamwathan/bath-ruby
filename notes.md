(Write code wish you had)
Make Parser.new in Invitations
Make spec for Parser
Define Parser class
(Tiny steps)
Delegate to new Parser class
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
Stub Parser.new
(Now Invitations is isolated)

(Review steps for extract class:
write class you wish you had
create empty class
move tests over
move methods, commented, then uncomment
)

(Now, we should look at the classes we've extracted and see if there is more to extract. 

Classes aren't big, but check out the dependencies.

Invitations' specs care a lot about Parser and are passing in data that are only needed by its collaborator.

Time to invert control!)



