pub fn enc() -> Iter[Byte] {
  @encoder.utf8("Hello World!".iter())
}

pub fn dec() -> String {
  let a : Iter[Byte] = [
    b'\x48', b'\x65', b'\x6C', b'\x6C', b'\x6F', b'\x20', b'\x57', b'\x6F', b'\x72',
    b'\x6C', b'\x64', b'\x21',
  ].iter()
  let mut str = ""
  for c in @decoder.utf8(a) {
    str += c.to_string()
  }
  str
}
