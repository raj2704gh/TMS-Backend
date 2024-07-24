const axios = require('axios');
const { is_axist } = require("../UTILS/function")

const { s_query } = require("../UTILS/function");
const tender_Master = require('../MODEL/tender_Master');
const source = require("../MODEL/source");
const { getNextTenderId } = require("./add_tender")

exports.get_Live_Data = async (req, res) => {
  try {

    const result = await source.findAll();


    if (result.length === 0) {
      return res.status(400).send({ Message: "Please add data in source" });
    }

    const { login_Url, password, user_Name } = result[0];
   

    if (!login_Url || !password || !user_Name) {
      return res.status(400).send({ Message: "Please add data in source" });
    }
    const postData = {
      email: user_Name,
      Password: password,
      MACAddress: "",
      Hosturl: login_Url,
      DomainUrl: "tendertiger.co.in",
      KeepLoggedIn: 0
    };
    
    const loginConfig = {
      headers: {
        'Content-Type': 'application/json',
      },
    };

    const loginResponse = await axios.post('https://registration.tendertiger.co.in/api/Registration/Login', postData, loginConfig);
    
    const Token = 'Bearer ' + loginResponse.data.Token;

    const searchData = {
      "searchkeyword": null,
      "tabindex": 1,
      "maintabindex": 0,
      "page": 0,
      "total": 20,
      "limit": 0,
      "sortby": null,
      "search": null,
      "direction": null,
      "sub_no": 151052,
      "profilequery": "undefined",
      "index": null,
      "query": null,
      "term": null,
      "tenderrefno": null,
      "orgname": null,
      "subindustry": null,
      "minprice": 0,
      "maxprice": 0,
      "tenderdatetype": null,
      "startdate": null,
      "enddate": null,
      "location": null,
      "subscribetype": "all",
      "custid": 668360,
      "custsubno": 151052,
      "macaddress": "408D5CA5FFC4",
      "loc_type": null,
      "tender_typewise": "live",
      "worgname": null,
      "wtenderrefno": null,
      "wsubindustry": null,
      "wlocation": null,
      "wtenderhostdate": null,
      "wtenderclosedate": null,
      "hdn_status": 0,
      "wwordsearch": null,
      "rescount": 0,
      "globeltype": null,
      "orderbytype": null,
      "categoryflag": "1",
      "userdetailid": 1771346,
      "sortcolumnname": null,
      "sortingby": null,
      "domainname": "localhost:6001",
      "ForExcell": false,
      "seosearchlocation": "search",
      "last_categoryflag": null,
      "last_rescount": 20,
      "archive": null,
      "fromdata": 0
    };

    const searchConfig = {
      headers: {
        'Content-Type': 'application/json',
        'Authorization': Token
      },
    };

    const searchResponse = await axios.post('https://tendersearch.tendertiger.co.in/api/Tender/GetTendersList', searchData, searchConfig);

    const arr_Of_Live_Tende = searchResponse.data.TenderList
   

    
    let last_Tender_Id=req.lastTenderId;

    arr_Of_Live_Tende.forEach(async (obj) => {
      const { tenderrefno, tcno, companyname, tendersbrief, city, state, countryname, isfreetender, iscorrigendum, isboq, ispq } = obj;
      const result = await is_axist(obj.tenderrefno);
      
      if (result == 0) {

        try {
           
          const result = await tender_Master.create({
            tender_Ref_No: tenderrefno,
            tender_ID:++last_Tender_Id,
            org_Name: companyname,
            tender_Details: tendersbrief,
            city: city,
            state: state,
            country: countryname,
            isFreetender: isfreetender,
            isCorrigendum: iscorrigendum,
            isBoq: isboq,
            isPq: ispq,
            company_Id: companyname


          })
          
          //return res.status(200).send(result)
        } catch (error) {
          return res.status(400).send({ Message: "somthing went wrong", err: error })
         
        }
      }
    });


    const results = await tender_Master.findAll();
   
    return res.status(200).send(results)
  } catch (error) {
    console.error('Error:', error);
    // Handle errors
    res.status(500).json({ error: 'Internal Server Error' });
  }
}
  ;



exports.add_Live_Tender = async (req, res) => {
  try {
    const data = req.body;
   

   
    const [existingTender, created] = await tender_Master.findOrCreate({
      where: { tender_Ref_No: data.tenderrefno },
      defaults: {
        tender_Ref_No: data.tenderrefno,
        tender_ID: req.lastTenderId + 1,
        org_Name: data.companyname,
        tender_Details: data.tendersbrief,
        city: data.city,
        state: data.state,
        country: data.countryname,
        isFreetender: data.isfreetender,
        isCorrigendum: data.iscorrigendum,
        isBoq: data.isboq,
        isPq: data.ispq,
        company_Id: data.companyname,

      }
    })

    if (!created) {
      return res.status(400).send({ Message: "this tender is allready exist in Data base" })
    } else {
      return res.status(200).send({ Message: "this tender add successfully in Data base" })
    }
  } catch (error) {
    console.log(error)
    return res.status(400).send({ Message: "something went wrong", err: error })
  }
}
