const { writeUser } = require('../services/user');

const CronJob = require('cron').CronJob


module.exports = {
    cronJobUpsertUser: new CronJob('*/2 * * * *', async () => {
        console.log('🚀🚀🚀🚀🚀 Cron Job Upsert User Running 🚀🚀🚀🚀🚀');
        await writeUser();
    },
        null,
        false,
        'Asia/Bangkok'
    )
}