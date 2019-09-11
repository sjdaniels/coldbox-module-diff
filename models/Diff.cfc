component output="false" singleton {

	public function init(){
		var libs = getDirectoryFromPath(getCurrentTemplatePath())
		libs = listDeleteAt(libs,listlen(libs,"/"),"/")
		libs &= "/lib"
		diffLib = "#libs#/diff_match_patch-current.jar";
	
        variables.diffMatchPatch = createObject("java","name.fraser.neil.plaintext.diff_match_patch",[diffLib])
        return this;
    }

    public any function diff(required string a, required string b) {
    	local.diffs = diffMatchPatch.diff_main(arguments.a, arguments.b)
    	return local.diffs;
    }

    public void function getDiffHTML(required string a, required string b) output="true" {
    	var output = "";
    	var diffs = diff(argumentCollection=arguments)
    	
    	for (var aDiff in diffs) {
    		switch (aDiff.operation.toString()) {
    			case "EQUAL":
    				output &= htmleditformat(aDiff.text)
    				break;
    			case "INSERT":
    				output &= '<ins>' & htmleditformat(aDiff.text) & '</ins>'
    				break;
    			case "DELETE":
    				output &= '<del>' & htmleditformat(aDiff.text) & '</del>'
    				break;
    		}
    	}

    	echo( '<span>' & output & '</span>')
    }
}