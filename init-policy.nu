const PROJECT_ROOT = (path self | path dirname)
const ORG_PREFIX = 'ORG'
const SDR_PREFIX = 'SDR'
const TRM_PREFIX = 'TRM'
const POLICY_EXAMPLE = "policy-example.typ";

# Initiallize a policy document. This must be run from the project root.
def main [doc_type: string, doc_title: string] {
  # if not (pwd | path join '.git' | path exists) {
  #   print "Not in project root. Exiting."
  #   return
  # }
  
  # we want the title with spaces
  let doc_title = ($doc_title | str replace --all "_" " ");

  # we want the file name with underscores
  let doc_name = ($doc_title | str replace --all " " "_");

  print $"Document name without spaces: ($doc_name)";

  print $"Project Root: ($PROJECT_ROOT)";

  let doc_code = $"($doc_type)-X";

  let doctype_dir = ($PROJECT_ROOT | path join $doc_type);

  print $"($doc_type) directory: ($doctype_dir)";
  
  let new_doc_data_dir = ($doctype_dir | path join $doc_name);
  if ($new_doc_data_dir | path exists) {
    print "Error: A document with the name: $doc_name already exists."
    return
  }
  print $"Creating: ($new_doc_data_dir)"
  mkdir $new_doc_data_dir

  let new_doc = ($doctype_dir | path join $"($doc_code)_($doc_name).typ");
  print $"Creating: ($new_doc)"

  open --raw ($PROJECT_ROOT | path join $POLICY_EXAMPLE) |
  str replace --all "\"<title>\"" $"\"($doc_title)\"" |
  save $new_doc

  # create initial hash
  let input_hash = open $new_doc | hash sha256;
  $input_hash | save -f $"($new_doc_data_dir)/sha256.txt";
}

# Initiallize an Organizational Standard
def "main org" [doc_name: string] {
  main $ORG_PREFIX $doc_name
}

# Initiallize a Standard
def "main sdr" [doc_name: string] {
  main $SDR_PREFIX $doc_name
}

# Initiallize a Training Manual
def "main trm" [doc_name: string] {
  main $TRM_PREFIX $doc_name
}
