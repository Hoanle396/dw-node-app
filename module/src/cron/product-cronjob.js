const { compaseProduct } = require('../services/order');

const CronJob = require('cron').CronJob


module.exports = {
    cronJobUpsertProduct: new CronJob('*/2 * * * *', async () => {
        console.log('🚀🚀🚀🚀🚀 Cron Job Upsert Product Running 🚀🚀🚀🚀🚀');
        await compaseProduct();
    },
        null,
        false,
        'Asia/Bangkok'
    )
}