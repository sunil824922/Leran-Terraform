# We have list variable type , Meaning single variable can hold multiple values

variable "sample_list" {
  default = [
    100,
    "hello",
    true,
    123
  ]
}


variable "sample_dict" {
defaul = {
   number1 = 100
   string = "hello"
   number2 = 123
   boolean = true
 }
}

