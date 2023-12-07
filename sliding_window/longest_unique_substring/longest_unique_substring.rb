=begin
  https://leetcode.com/problems/longest-substring-without-repeating-characters/description/

  Given a string s, find the length of the longest substring without repeating characters.

  Example 1:
    Input: s = "abcabcbb"
    Output: 3
    Explanation: The answer is "abc", with the length of 3.
  
  Example 2:
    Input: s = "bbbbb"
    Output: 1
    Explanation: The answer is "b", with the length of 1.

  Example 3:
    Input: s = "pwwkew"
    Output: 3
    Explanation: The answer is "wke", with the length of 3.

    Notice that the answer must be a substring, "pwke" is a subsequence and not a substring.
=end



def length_of_longest_substring(s)
  return s.length if s.length <= 1
  
  left_index = 0
  right_index = 0

  max_length = 0
  current_length = 0
  
  letter_dictionary = Hash.new

  while right_index < s.length
    letter = s[right_index]

    # If the letter appears in the dictionary...
    if letter_dictionary[letter] && letter_dictionary[letter] >= left_index
      left_index = letter_dictionary[letter] + 1
      letter_dictionary[letter] = right_index
      current_length = 1 + right_index - left_index
    else
      letter_dictionary[letter] = right_index
      current_length += 1
    end

    if max_length < current_length
      max_length = current_length
    end

    right_index += 1
  end

  max_length
end