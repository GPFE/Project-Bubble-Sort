def swap(first_idx, second_idx, arr)
  first = arr[first_idx]
  second = arr[second_idx]
  arr[second_idx] = first
  arr[first_idx] = second
  arr
end

def bubble_sort(arr)
  arr.length.times do 
    arr.each_with_index do |number, idx|
      if idx > 0
        swap(idx - 1, idx, arr) if arr[idx - 1] > arr[idx]
      end
    end
  end
  arr
end

p bubble_sort([4,3,78,2,0,2])