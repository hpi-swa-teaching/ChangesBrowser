annotation
packageNoteForClass: aClass selector: aSelector 
"return the category name that represents the package name for aClass>>aSelector.
when selector is nil or in a normal catagory return "
| package |
package := (self annotationForPackageforSelector: aSelector
			ofClass: aClass) ifNil: ['<class was deleted???>'] .

^ self noteString: package






