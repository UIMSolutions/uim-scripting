module uim.scripting.classes.engines.engine;

class DScriptEngine {
  this() { 
    initialze; 

    _extensions = DList!string();
    _mimeTypes = DList!string();
    _names = DList!string();
  }

  void initialize(Json configSettings = Json(null)) {
  }

  // Full name of the ScriptEngine.
  protected string _engineName;
  string engineName() {
    return _engineName;
  }
  
  // Version of the ScriptEngine
  protected string _engineVersion;
  string engineVersion() {
    return _engineVersion;
  }
  
  // Immutable list of filename extensions, which generally identify scripts written in the language supported by this ScriptEngine.
  protected List!string _extensions; 
  List!string extensions() {
    return _extensions;
  }
  
  // Name of the scripting language supported by this ScriptEngine.
  protected string _languageName;
  string languageName() {
    return _languageName;
  }
  
  // Version of the scripting language supported by this ScriptEngine.
  protected string _languageVersion;
  string languageVersion() {
    return _languageVersion;
  }
  
  // generates a string which can be used to invoke a method using the syntax of the supported scripting language.
  string methodCallSyntax(string obj, string m, string[] args...) {
    return null;
  }
  
  // Returns an immutable list of mimetypes, associated with scripts that can be executed by the engine.
  protected List!string _mimeTypes;
  DList!string mimeTypes() {
    return _mimeTypes;
  }
  
  // Immutable list of short names for the ScriptEngine, which may be used to identify the ScriptEngine by the ScriptEngineManager.
  protected DList!string _names;
  DList!string names() {
    return _names;
  }
  
  // Generates a string that can be used as a statement to display the specified string using the syntax of the supported scripting language.
  string outputStatement(string toDisplay) {
    return null;
  }
  
  // Returns the value of an attribute whose meaning may be implementation-specific.
  IValue parameter(string key) {
    return null;
  }
  
  // Generates a valid scripting language executable program with given statements.
  string program(string[] statements...) {
    return null;
  }
  
  // Returns an instance of the ScriptEngine associated with this ScriptEngineFactory.
  DScriptEngine scriptEngine() {
    return null;
  }
}