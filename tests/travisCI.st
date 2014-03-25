| gitPath gitCache |
Transcript cr; show: 'travis---->travisCI.st'.

gitCache := 'git_cache'.
gitPath := (Smalltalk at: #'FileDirectory' ifAbsent: [  ])
  ifNil: [ ((Smalltalk at: #'FileSystem') workingDirectory / gitCache) pathString ]
  ifNotNil: [:fileDirectoryClass | (fileDirectoryClass default directoryNamed: gitCache ) fullName].

Metacello new
  baseline: 'SwtDemo';
  repository: 'filetree://', gitPath, '/SwtDemo/packages';
  get.

Metacello new
  baseline: 'SwtDemo';
  repository: 'filetree://', gitPath, '/SwtDemo/packages';
  load: 'TravisCI'.

"Run the tests"
TravisCIHarness
  value: #( 'BaselineOfSwtDemo' )
  value: 'TravisCISuccess.txt' 
  value: 'TravisCIFailure.txt'.
