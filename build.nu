const PROJECT_ROOT = (path self | path dirname)
const ORG_PREFIX = 'ORG'
const SDR_PREFIX = 'SDR'
const TRM_PREFIX = 'TRM'

# Build a policy document. This must be run from the project root.
def main [doc_type: string, doc_name: string] {
  # if not (pwd | path join '.git' | path exists) {
  #   print "Not in project root. Exiting."
  #   return
  # }
  let doc_name = ($doc_name | str replace " " "_")
  
  print $"Project root: ($PROJECT_ROOT)"

  let release_dir = ($PROJECT_ROOT | path join 'released')

  # print $release_dir

  # TODO: get this from the DB
  # let doc_code = $"($doc_type)-X"

  let doctype_dir = ($PROJECT_ROOT | path join $doc_type);

  print $"Document type directory: ($doctype_dir)"

  # let type_list = ls $doctype_dir;
  # print $type_list
  # let file_list = $type_list | where type == file;
  # print $file_list
  # let doc_list = $file_list | where name =~ $"^($doctype_dir)/($doc_type)-([0-9]|[a-zA-Z])+_($doc_name)[.]typ$"
  # print $doc_list
  # let doc_file_name = $doc_list | get 0.name
  # print $doc_file_name
  # let parsed_path = $doc_file_name | path parse
  # print $parsed_path

  let input_path = (
    ls $doctype_dir |
    where type == file |
    where name =~ $"^($doctype_dir)/($doc_type)-\([0-9]|[a-zA-Z]\)+_($doc_name)[.]typ$" |
    get 0.name |
    path parse
  )
  let input = $"($doctype_dir)/($input_path.stem).($input_path.extension)";
  print $"Input file: ($input)"

  let input_hash = open $input | hash sha256;
  $input_hash | save -f $"($doctype_dir)/($doc_name)/sha256.txt";

  let output = $"($release_dir)/($ORG_PREFIX)/($input_path.stem).pdf"
  print $"Output file: ($output)"
  typst compile  -f pdf --root $PROJECT_ROOT $input $output
}

# Build an Organizational Standard
def "main org" [doc_name: string] {
  main $ORG_PREFIX $doc_name
}

# Build a Standard
def "main sdr" [doc_name: string] {
  main $SDR_PREFIX $doc_name
}

# Build a Training Manual
def "main trm" [doc_name: string] {
  main $TRM_PREFIX $doc_name
}
