
class Entry native "*Entry" {

  DOMFileSystem get filesystem() native "return this.filesystem;";

  String get fullPath() native "return this.fullPath;";

  bool get isDirectory() native "return this.isDirectory;";

  bool get isFile() native "return this.isFile;";

  String get name() native "return this.name;";

  void copyTo(DirectoryEntry parent, [String name = null, EntryCallback successCallback = null, ErrorCallback errorCallback = null]) native;

  void getMetadata(MetadataCallback successCallback, [ErrorCallback errorCallback = null]) native;

  void getParent([EntryCallback successCallback = null, ErrorCallback errorCallback = null]) native;

  void moveTo(DirectoryEntry parent, [String name = null, EntryCallback successCallback = null, ErrorCallback errorCallback = null]) native;

  void remove(VoidCallback successCallback, [ErrorCallback errorCallback = null]) native;

  String toURL() native;

  var dartObjectLocalStorage;

  String get typeName() native;
}
