class LRUCache
   def initialize(size)
     @size = size
     @cache = []
   end

   def count
     @cache.count
   end

   def add(el)
     # cache can only include on copy of each object. regargless of position
     # the original item is deleted and the new item is added to the
     # "front of the queue"
     if @cache.include?(el)
       @cache.delete(el)
       @cache << el
     elsif count >= @size
       #cache deletes the LRU object if full. new object added as
       # most recently used object.
       @cache.shift
       @cache << el
     else
       #otherwise, cache simply adds the object to the "end of the queue"
       @cache << el
     end
   end

   def show
     p @cache
   end

   private


 end
