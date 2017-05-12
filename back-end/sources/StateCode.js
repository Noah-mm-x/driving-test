const StateCode = {
    OK : 1000,                      //成功
    FAIL : 10001,                   //失败
    USERNAME_IS_NULL : 11,          //用户名为空
    PASSWORD_IS_NULL : 12,          //密码为空
    USER_IS_EXIST : 13,             //用户已存在
    PASSWORD_WRONG : 14,            //密码错误
    NO_SUCH_USER : 15,              //没有此用户
};
module.exports = StateCode;