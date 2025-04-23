const PROJECT_ROOT = (path self | path dirname);
const TEMPLATE_FILE_NAME = "template.typ";
const HASH_FILE_NAME = "template.sha256.txt";
const ORG_PREFIX = 'ORG'
const SDR_PREFIX = 'SDR'
const TRM_PREFIX = 'TRM'

# Update hashes for Policy document templates if they changed.
def main [] {
	save_template_hash $ORG_PREFIX;
	save_template_hash $SDR_PREFIX;
	save_template_hash $TRM_PREFIX;
}

def save_template_hash [doc_type: string] {
	let doctype_path = ($PROJECT_ROOT | path join $doc_type);
	print $doctype_path
	let template_path = ($doctype_path | path join $TEMPLATE_FILE_NAME);
	print $template_path
	let hash_path = ($doctype_path | path join $HASH_FILE_NAME);
	print $hash_path
	if ($hash_path | path exists) {
		let old_hash = open $hash_path;
		print $"OLD: ($old_hash)"
		let new_hash = (open $template_path | hash sha256);
		print $"NEW: ($new_hash)"
		if ($old_hash != $new_hash) {
				print $"Updating ($hash_path)"
				$new_hash | save -f $hash_path
		}
	} else {
		let new_hash = (open $template_path | hash sha256);
		print $"NEW: ($new_hash)"
		print $"Updating ($hash_path)"
		$new_hash | save -f $hash_path
	}
}
