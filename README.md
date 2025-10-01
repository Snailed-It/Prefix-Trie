#  Prefix Trie

This is an adaptation of https://github.com/tyiu/swift-trie.

It has been modified to support Codable, so the resulting trie can be serialised and shipped with an app.
It also adds a "limit" parameter to the `find(key:)` method to improve performance in the specific use case where we only need a subset of results.
