Lex-bot-project
     .github/
         workflows/
                dev-deployment.yml  # Provides input values
                deployment.yml       # Main deployment workflow
                security.yml         # Security checks
                actions/             # Custom actions if needed
                     setup-env.yml   # Reusable workflow for setting up environments
                     run-tests.yml   # Reusable workflow for running tests
bot/
   bot-definition.json
   intents/
        Greetingintent.json
        bookdoctorappointment.json
   slots/
        doctorcode.json
tests/
sonar-project.properties
.gitignore
Readme.md
package.json
requirements.txt
Dockerfile
jfrogconfig.yml 
