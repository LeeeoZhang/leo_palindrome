require "leo_palindrome/version"

module LeoPalindrome
    def palindrome?
        processed_content == processed_content.reverse
    end

    private

        def processed_content
            self.to_s.scan(/[a-z0-9]/i).join.downcase
        end    
end

class String 
    include LeoPalindrome
end

class Integer
    include LeoPalindrome
end
