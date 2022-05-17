#!/usr/bin/env swiftshell

import SwiftShell
import FileSmith

do {
    var output_file = try WritableFile(create: "swiftshellscript.html", ifExists: .replace)

    // Iterate through all files to compile them into a single file
    try Directory(open: "chapters").files()
        .map { filepath in
            try "# " + filepath.nameWithoutExtension + "\n\n" + filepath.open().read()
        }.joined(separator: "\n\n")
        .run("./npm")
        .stdout.write(to: &output_file)

    print("Markdown conversion complete. Output located in", output_file.path)

} catch {
    exit(error)
}
