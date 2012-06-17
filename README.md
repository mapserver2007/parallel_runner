#parallel_runner
"parallel_runner" is simple parallel processing support library.

###Installation
    gem install parallel_runner  

###Usage
For list:  

    require 'parallel_runner'  
    ['a', 'b', 'c'].each_parallel do |value|  
      # your processing  
    end

    require 'parallel_runner'  
    ['a', 'b', 'c'].each_parallel do |value, index|  
      # your processing  
    end  

For map:  

    require 'parallel_runner'  
    {:name => 'alice', age => 17}.each_parallel do |key, value|  
      # your processing  
    end  

##Author
Ryuichi TANAKA <mapserver2007@gmail.com>

##License
Licensed under the MIT
http://www.opensource.org/licenses/mit-license.php