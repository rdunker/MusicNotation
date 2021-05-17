# Entry Points

Interesting first steps are marked as issues in the Github repository with the label [proposal](https://github.com/hpi-swa-teaching/MusicNotation/labels/proposal).

To familiarize yourself with the code, the following sections are useful (preferably in this order):
- Internal repesentation of music: 
  - Core package -> MNMusicObject with all subclasses
- Working with music: 
  - Core package -> MNMusicVisitor with all subclasses, MNTansposer with all subclasses
- Graphical representation of music: 
  - Graphics package -> MNMorph with all subclasses, MNFont with all subclasses, MNGlyph and MNPathDrawer with all subclasses
- Editor window:
  - Editor package -> MNEditor, MNPluggableCustomSpec in conjunction with ToolBuilder
- Scripting: 
  - complete Scripting package 
  - Editor package -> MNEditorEnvironment
- Music playback: 
  - Core package -> MNMusicVisitor with all subclasses 
  - complete Player package
- MusicXML support: 
  - Core package -> MNMusicVisitor with all subclasses 
  - complete XML package