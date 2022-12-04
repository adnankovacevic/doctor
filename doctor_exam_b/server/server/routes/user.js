const express = require('express')
const User = require('../models/user.model')
const router = express.Router()


router.post('/login', (res,req) => {

       User.findOne({email: req.body.email, password: req.body.password}, (error,user) => {
              if (error) {
                     console.log(error)
                     res.json(error)
              } else {
                     res.json(user)
              }
       });
});

export async function logout(loginKey) {
       await dbConnect();
       const logoutData = await logins.findOneAndRemove({ cookie: loginKey }).exec();
       return (logoutData) ? true : false;
     }

module.exports = router