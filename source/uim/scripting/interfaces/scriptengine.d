module uim.scripting.interfaces.scriptengine;

interface IScriptEngine {
    // Returns an uninitialized Bindings.
    Bindings createBindings();

    // Same as eval(String) except that the source of the script is provided as a Reader
    Object eval(Reader reader);

    // Same as eval(String, Bindings) except that the source of the script is provided as a Reader.
    Object eval(Reader reader, Bindings n);

    // Same as eval(String, ScriptContext) where the source of the script is read from a Reader.
    Object eval(Reader reader, ScriptContext context);

    // Executes the specified script.
    Object eval(String script);

    // Executes the script using the Bindings argument as the ENGINE_SCOPE Bindings of the ScriptEngine during the script execution.
    Object eval(String script, Bindings n);

    // Causes the immediate execution of the script whose source is the String passed as the first argument.
    Object eval(String script, ScriptContext context);

    // Retrieves a value set in the state of this engine.
    Object get(String key);

    // Returns a scope of named values.
    Bindings getBindings(int scope);

    // Returns the default ScriptContext of the ScriptEngine whose Bindings, Reader and Writers are used for script executions when no ScriptContext is specified.
    ScriptContext getContext();

    // Returns a ScriptEngineFactory for the class to which this ScriptEngine belongs.
    ScriptEngineFactory getFactory();

    // Sets a key/value pair in the state of the ScriptEngine that may either create a Java Language Binding to be used in the execution of scripts or be used in some other way, depending on whether the key is reserved.
    void put(String key, Object value);

    // Sets a scope of named values to be used by scripts.
    void setBindings(Bindings bindings, int scope);

    // Sets the default ScriptContext of the ScriptEngine whose Bindings, Reader and Writers are used for script executions when no ScriptContext is specified.
    void setContext(ScriptContext context);
}