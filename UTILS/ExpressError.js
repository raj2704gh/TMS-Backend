
class ExpressError extends Error{
    constructor(statusCode,message){
        console.log("ppppppppp")
        super();
        this.statusCode=statusCode;
        this.message=message;
    }
}

module.exports=ExpressError;  


//a