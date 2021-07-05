baseline
createSAR

|sarname packages folders preambleContent zip mczStream workingCopy version|

"Insert your info here"
sarname := 'MusicNotation'.
packages := {'BaselineOfMusicNotation'. 'MusicNotation-Core'. 'MusicNotation-Tests'.  'MusicNotation-Editor'.  'MusicNotation-Player'.  'MusicNotation-Scripting'.  'MusicNotation-XML'.  'MusicNotation-Graphics'}.
folders := {}.

"init"
preambleContent := ''.
zip := ZipArchive new.

"add packages"
packages do: [:package |
    mczStream := RWBinaryOrTextStream on: (String new: 10000).
    workingCopy := MCWorkingCopy forPackage: (MCPackage new name: package).
    version := workingCopy newVersion fileOutOn: mczStream.
    (zip addString: mczStream contents as: package, '.mcz') desiredCompressionLevel: 0.
    preambleContent := preambleContent, 'self fileInMonticelloZipVersionNamed: ''' , package, '.mcz''.', String cr].

"add folders"
folders do: [:folder |
    zip addTree: Smalltalk imagePath match: [:e | e fullName startsWith: Smalltalk imagePath , FileDirectory slash , folder].
    preambleContent := preambleContent,
        '(self membersMatching: ''' , folder , FileDirectory slash , '*.*'') do: [ :f | self extractMember: f].', String cr].

"only add one preamble!"
zip addString: preambleContent as: 'install/preamble'.

"write sar"
zip writeToFileNamed: sarname , '.sar'.