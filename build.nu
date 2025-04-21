const RELEASE_DIR = './released'
const ORG_PREFIX = 'ORG'
const SDR_PREFIX = 'SDR'
const TRM_PREFIX = 'TRM'

# Build a policy document.
def main [doc_type: string, doc_number: int] {
  let doc_code = $"($doc_type)-($doc_number)"
  let input_path = (
    ls $"./($doc_type)" |
    where name =~ $"^($ORG_PREFIX)/($doc_code).*[.]typ$" |
    get 0.name |
    path parse
  )
  let input = $"./($doc_type)/($input_path.stem).($input_path.extension)";

  let input_hash = open $input | hash sha256;
  $input_hash | save -f $"./($doc_type)/($doc_code)/sha256.txt";

  let output = $"($RELEASE_DIR)/($ORG_PREFIX)/($input_path.stem).pdf"
  typst compile  -f pdf --root . $input $output
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
