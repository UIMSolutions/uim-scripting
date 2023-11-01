module uim.scripting.mixins.reader;

string readerThis((string callName, string className = null) {
  auto clName = (className.length > 0 ? className : "D"~callName);

    return "
      this() {
        super();
      }
    "; 
}

template ReaderThis((string callName, string className = null) {
  const char[] ReaderThis =  readerThis(callName, className);  
}

string readerCalls(string callName, string className = null) {
  auto clName = (className.length > 0 ? className : "D"~callName);
  
    return "
  auto "~callName~"() { return new "~clName~"(); }
    "; 
}

template ReaderThis(string callName, string className = null) {
  const char[] ReaderThis =  readerThis(callName, className);  
}