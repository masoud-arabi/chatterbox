class User < ApplicationRecord
    validates_uniqueness_of :username

    def self.generate
        addjectives = ['Ancien','Creative','Dangrous','Effective','Flying','Gilded','']
        noun= ['Highway','Intern','Lion','Jackammer','Master']
        number = rand.to_s[2..4]
        username = "#{addjectives.sample}-#{noun.sample}-#{number}"
        create(username: username)
    end
end
