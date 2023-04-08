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
            delete match.Email
            const user = {
                id: first.id,
                email: first.email,
                createAt: first.createAt,
                updateAt: first.updateAt,
                fullname: first.fullname,
                password: first.password,
                role: first.role,
                image: match.image,
                customer_ID: match.customer_ID,
                Password: match.Password,
                Phone: match.Phone,
                Date_of_birth: match.Date_of_birth,
                Sex: match.Sex,
                Address: match.Address
            }
            newcompase.push({ ...user })
            console.log(user);
        }
        else {
            newcompase.push(first)
        }
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