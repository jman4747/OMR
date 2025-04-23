const PROJECT_ROOT = (path self | path dirname)
const ORG_PREFIX = 'ORG'
const SDR_PREFIX = 'SDR'
const TRM_PREFIX = 'TRM'

# Build a policy document. This must be run from the project root.
def main [doc_type: string, doc_number: int] {
  # if not (pwd | path join '.git' | path exists) {
  #   print "Not in project root. Exiting."
  #   return
  # }
  #
  print $PROJECT_ROOT

  let release_dir = ($PROJECT_ROOT | path join 'released')

  print $release_dir

  let doc_code = $"($doc_type)-($doc_number)"

  let doctype_dir = ($PROJECT_ROOT | path join $doc_type);

  print $doctype_dir

  let input_path = (
    ls $doctype_dir |
    where name =~ $"^($doctype_dir)/($doc_code).*[.]typ$" |
    get 0.name |
    path parse
  )
  let input = $"($doctype_dir)/($input_path.stem).($input_path.extension)";

  let input_hash = open $input | hash sha256;
  $input_hash | save -f $"($doctype_dir)/($doc_code)/sha256.txt";

  let output = $"($release_dir)/($ORG_PREFIX)/($input_path.stem).pdf"
  typst compile  -f pdf --root $PROJECT_ROOT $input $output
}

# Build an Organizational Standard
def "main org" [doc_number: int] {
  main $ORG_PREFIX $doc_number
}

# Build a Standard
def "main sdr" [doc_number: int] {
  main $SDR_PREFIX $doc_number
}

# Build a Training Manual
def "main trm" [doc_number: int] {
  main $TRM_PREFIX $doc_number
}
