// Strangers waiting, up and down the boulevard
// Go
boulevard := Street('boulevard')
strangers := make([]Person, 10)
for i := range strangers {
  stranger := Person{}
  boulevard.wait(stranger)
  strangers[i] = stranger
}