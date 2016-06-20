class Image
  attr_accessor :data

  def initialize(data)
    @data = data
  end 

  def blur

    new_array = Marshal.load(Marshal.dump(@data))
   
     @data.each_with_index do |a, row_index|

      a.each_with_index  do |val, col_index|
      


      if val == 1 
      new_array[row_index][col_index-1] = 1 unless row_index == 0
      new_array[row_index][col_index+1] = 1 unless row_index > 3
      new_array[row_index-1][col_index] = 1 unless col_index == 0
      new_array[row_index+1][col_index] = 1 unless col_index > 3
      end
    

      end

 



end

  
   return Image.new(new_array)

  end

end
