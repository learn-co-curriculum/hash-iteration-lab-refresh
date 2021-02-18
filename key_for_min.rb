# prereqs: iterators, hashes, conditional logic
# Given a hash with numeric values, return the key for the smallest value

def min_value(name_hash)
    smallest_val = nil
    name_hash.each do | key, value |
        if !smallest_val || value < smallest_val
            smallest_val = value
        end
    end
    smallest_val
end

def key_for_found_value(name_hash, val_to_find)
    name_hash.each do | key, value |
        if value == val_to_find
            return key
        end
    end
end

def keys_for_found_value(name_hash, val_to_find)
    found_keys = []
    name_hash.each do | key, value |
        if value == val_to_find
            found_keys << key
        end
    end
    found_keys
end

def key_for_min_value(name_hash)
    smallest_val = nil
    smallest_key = nil
    name_hash.each do | key, value |
        if !smallest_val || value < smallest_val
            smallest_val = value
            smallest_key = key
        end
    end
    smallest_key
end

