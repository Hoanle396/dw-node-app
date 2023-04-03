const { cronJobUpsertUser } = require("./user-cronjob")


module.exports = {
    runCronJob : async () => {
        cronJobUpsertUser.start()
    }
}