({
	doInit : function(component, event, helper) {
        var types = [{class: "optionClass", label: "New Candidate", value: "New Candidate"},{class: "optionClass", label: "Existing Candidate", value: "Existing Candidate"}];	
    	component.find("Type").set("v.options", types);
    }
})