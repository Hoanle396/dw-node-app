const { User } = require("../databases/models/warehouse")

const java = require('../databases/models/java')
const doan = require('../databases/models/doan')

async function writeUser() {
    try {
        const firstUser = await java.Users.findAll()
        const seconUser = await doan.Customer.findAll()
        const data = compaseUser(firstUser, seconUser)
        const users = await Promise.all([...data.map(async (x) => {
            let user = new User()
            user.id = x.id
            user.email = x.email
            user.createAt = x.createAt
            user.updateAt = x.updateAt
            user.fullname = x.fullname
            user.password = x.password
            user.image = x.image
            user.role = x.role
            user.customer_ID = x.customer_ID
            user.Password = x.Password
            user.Phone = x.Phone
            user.Date_of_birth = x.Date_of_birth
            user.Sex = x.Sex
            user.Address = x.Address
            return await User.findOneAndUpdate({ email: x.email }, { $setOnInsert: user }, { upsert: true })
        })])

        return users
    } catch (err) {
        return err
    } 
}
function compaseUser(firstUser, seconUser) {

    const matchUser = []
    const newcompase = [];
    firstUser.map((first) => {
        const match = seconUser.find((secon) => secon.Email === first.email)
        if (!!match) {
            matchUser.push(match)
            delete seconUser.Email
            newcompase.push({ ...first, ...secon })
        }
        newcompase.push(first)
    })
    const noMatch = seconUser.filter((x) => matchUser.includes(x) !== true).map((x) => {
        x.email = x.Email
        x.fullname = x.Name
        delete x.Email
        delete x.Name
        return x
    })
    newcompase.push(...noMatch)
    return newcompase;
}

module.exports = {
    writeUser: writeUser,
    compaseUser: compaseUser
}