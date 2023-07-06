module source.uim.scripting.interfaces.bindings;

interface IBindings {
    // Returns true if this map contains a mapping for the specified key.
    boolean containsKey(Object key);

    // Returns the value to which this map maps the specified key.
    Object get(Object key);

    // Set a named value.
    Object put(String name, Object value);

    // Adds all the mappings in a given Map to this Bindings.
    void putAll(Map<? extends String,? extends Object> toMerge);

    // Removes the mapping for this key from this map if it is present (optional operation).
    Object remove(Object key);
}