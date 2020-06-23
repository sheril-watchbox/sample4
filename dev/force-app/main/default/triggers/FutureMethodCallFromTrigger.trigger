trigger FutureMethodCallFromTrigger on Contact (before insert,before update) {
    for(Contact c : trigger.new){        
        // VerifyPhone.callFutureMethodFromTrigger(c.id);
        
        //-------------------Passing sObject to a future method
        String sObjectString = JSON.serialize(c);
        VerifyPhone.futureWithParamSobject(sObjectString);
    }
}