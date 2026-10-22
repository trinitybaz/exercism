import gleam/float
import gleam/int
import gleam/result
import gleam/string

pub fn pence_to_pounds(pence: Int) -> Float {
  result.unwrap(float.divide(int.to_float(pence), 100.0), 0.0)
}

pub fn pounds_to_string(pounds: Float) -> String {
  string.append("£", float.to_string(pounds))
}
