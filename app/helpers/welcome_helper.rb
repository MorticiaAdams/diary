module WelcomeHelper

    def buildWelcomeText()
       firstPart = [ "Welcome to my micro blog.",
                     "Greetings stranger.",
                     "Howdie web surfer." ]

       secondPart = ["Thank you for dropping by.",
                     "Thank you for visting my micro blog.",
                     "Thank you paying me a visit." ]

       thirdPart = [ "My blog is a collection of ideas I like to share.",
                     "Read my blog and share your to 2 cents with me.",
                     "Tell all of your friends about my micro blog." ]

       "#{firstPart[rand(3)]} #{secondPart[rand(3)]} #{thirdPart[rand(3)]} "
    end
end
