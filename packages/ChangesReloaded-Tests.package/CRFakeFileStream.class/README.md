A CRFakeFileStream is a file stream that reads from a string instead of a real file.

Instance Variables
	size:			Mocks size of file but is actually the size of the string
	string:		A string that is used instead of a real file. The syntax normally expected from the file needs to be used in the string

Class Methods
	mockChangesFileStream:	Content of the mocked ChangesFile streamed by CRFakeFileStream