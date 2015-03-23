
package angular.service;

typedef CacheOptions = {
	capacity : Int
}

@:injectionName("$cacheFactory")
extern class CacheFactory {
	@:selfCall public function apply(cacheName : String, ?options : CacheOptions) : Cache;

 	public function get<T>(cacheId : String) : Null<Cache>;
 	public function info() : Dynamic<CacheInfo>;
}

typedef CacheInfo = {
	id : String,
	size : Int
}

extern class Cache {
	public function put(key : String, value : String) : Void;
	public function info() : CacheInfo;
	public function remove(key : String) : Void;
	public function removeAll() : Void;
	public function destroy() : Void;
}
