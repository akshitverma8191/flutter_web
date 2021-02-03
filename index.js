const functions = require("firebase-functions");

const admin = require('firebase-functions');
admin.initializeApp(functions.config().firebase);

var msgData;

exports.offferTrigger = functions.firestore.document(
    'infigon_questions/{infigon_questionsID}'
    ).onCreate((snapshot,context) => {
        msgData = snapshot.data();
        admin.firestore().collection('tokens').get().then((snapshots)=>{
            var tokens_ = [];
            if(snapshots.empty){
                console.log('No Devices');
            }
            else{
                for(var token_ of snapshots.docs ){
                    tokens_.push(token_.data().token);
                }

                var payload = {
                    "notification":{
                        "title": "From java script code",
                        "body": "body of js code",
                        "sound":"default"
                    },
                    "data":{
                         "sendername":"developer",
                         "message": "developer_hello"
                    }
                }
                return admin.messaging().sendToDevice(tokens_,payload).then( (response)=>{
                    console.log("Pushed them alll");
                } ).catch((err)=>{
                    console.log(err);
                })
            }
        } )  

    })