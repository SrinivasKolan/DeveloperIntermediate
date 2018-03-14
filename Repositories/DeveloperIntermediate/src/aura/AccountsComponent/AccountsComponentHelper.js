({
	getAccountsData : function(cmp) {
		var action = cmp.get("c.getAccounts");
        action.setCallback(this, function(response){
			var state = response.getState();
            if(state === "SUCCESS"){
                var data = response.getReturnValue();
                cmp.set("v.data", data);
            }
            else if(state === "ERROR"){
                var error = response.getError();
                console.error(error);
                console.log(error);
			}
        });
        $A.enqueueAction(action);
	}
})