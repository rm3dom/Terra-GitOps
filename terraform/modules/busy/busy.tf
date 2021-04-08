
resource "helm_release" "busy" {
  name       = "busy"
  chart      = "${var.chart_dir}/busy"
  set {
    name  = "sayHello"
    value = var.say_hello
  }
}