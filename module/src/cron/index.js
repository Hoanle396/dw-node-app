const { cronJobUpsertProduct } = require("./product-cronjob")
const { cronJobUpsertUser } = require("./user-cronjob")


module.exports = {
    runCronJob : async () => {
        cronJobUpsertUser.start()
        cronJobUpsertProduct.start()
    }
}