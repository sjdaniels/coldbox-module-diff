component {

	// Module Properties
	this.title 				= "diff";
	this.author 			= "Sean Daniels";
	this.description 		= "Text Diffing Plugin using diff_match_patch java lib";
	this.version			= "1.0.0";
	// If true, looks for views in the parent first, if not found, then in the module. Else vice-versa
	this.viewParentLookup 	= true;
	// If true, looks for layouts in the parent first, if not found, then in module. Else vice-versa
	this.layoutParentLookup = true;
	// Model Namespace
	this.modelNamespace		= "diff";
	// CF Mapping
	this.cfmapping			= "diff";

	function configure(){
	}

}