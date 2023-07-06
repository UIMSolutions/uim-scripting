module uim.scripting.interfaces.context;

interface IScriptContext {
    // Retrieves the value of the attribute with the given name in the scope occurring earliest in the search order.
    Object getAttribute(String name);

    // Gets the value of an attribute in a given scope.
    Object getAttribute(String name, int scope);

    // Get the lowest scope in which an attribute is defined.
    int getAttributesScope(String name);

    // Gets the Bindings associated with the given scope in this ScriptContext.
    DBindings getBindings(int scope);

    // Returns the Writer used to display error output.
    DWriter getErrorWriter();

    // Returns a Reader to be used by the script to read input.
    DReader getReader();

    // Returns immutable List of all the valid values for scope in the ScriptContext.
    DList!DInteger getScopes();

    // Returns the Writer for scripts to use when displaying output.
    Writer getWriter();

    // Remove an attribute in a given scope.
    Object removeAttribute(String name, int scope);

    // Sets the value of an attribute in a given scope.
    void setAttribute(String name, Object value, int scope);

    // Associates a Bindings instance with a particular scope in this ScriptContext.
    void setBindings(Bindings bindings, int scope);

    // Sets the Writer used to display error output.
    void setErrorWriter(Writer writer);

    // Sets the Reader for scripts to read input .
    void setReader(Reader reader);

    // Sets the Writer for scripts to use when displaying output.
    void setWriter(Writer writer);
}