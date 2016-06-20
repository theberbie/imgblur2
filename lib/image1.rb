class Image



  def initialize(array)
    @array = array

  end


  def blur

    new_array = Marshal.load(Marshal.dump(@array))
   
     @array.each_with_index do |a, row_index|

      a.each_with_index  do |val, col_index|
      


      if val == 1 
      new_array[row_index][col_index-1] = 1 
      #new_array[row_index][col_index+1] = 1
      #new_array[row_index-1][col_index] = 1
      #new_array[row_index+1][col_index] = 1
      end
    
#check for neg of left side
#check for nil
      end
    # puts new_array.join
  end
end


end




image = Image.new([
  [0, 0, 0, 0],
  [0, 1, 0, 0],
  [0, 0, 0, 1],
  [0, 0, 0, 0]
])
image.output_image