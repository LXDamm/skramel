let usage_msg = "append <file1> [<file2>] ... -o <output>"
let input_files = ref []
let output_file = ref ""
let anon_fun filename = input_files := filename :: !input_files

let speclist = [
  ("-o", Arg.Set_string output_file, "Set output file name");
]

let () = Arg.parse speclist anon_fun usage_msg