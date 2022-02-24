# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailAddressParser
    attr_reader :email_addresses

    def initialize(email_addresses)
        @email_addresses = email_addresses
    end

    def parse
        emails = @email_addresses.split(/, | |,/).uniq
    end
end
email_addresses = "john@doe.com,person@somewhere.org john@doe.com"
parser = EmailAddressParser.new(email_addresses)

p parser.parse
