class Array
    def my_each(&blk) #DONE
        self.length.times {|i| blk.call(self[i])}
        self
    end

    def my_select(&blk) #DONE
        new_arr = []
        self.my_each do |ele|
            new_arr << ele if blk.call(ele)
        end
        new_arr
    end

    def my_reject(&blk) #DONE
        self.reject {|ele| blk.call(ele)}
    end

    def my_any?(&blk) #DONE
        self.any? {|ele| blk.call(ele)}
    end

    def my_all?(&blk) #DONE
        self.all? {|ele| blk.call(ele)}
    end

    #ARRAY
    def my_flatten #DONE
        result = []
        self.each do |element|
            if element.kind_of?(Array)
                result.concat(element.my_flatten)
            else
                result << element
            end
        end
        result
    end

    def my_zip(*args) #DONE
        new_arr = []
        self.length.times do |i|
            subarr = [self[i]]

            args.each do |array|
                subarr << array[i]
            end
            new_arr << subarr
        end
        new_arr
    end

    def my_rotate(n=1) #DONE
        self.rotate(n)
    end

    def my_join(separator = "") #DONE
        self.join(separator)
    end
 
    def my_reverse #DONE
        self.reverse
    end

end