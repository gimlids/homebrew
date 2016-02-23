class AnsiBlock < Formula

  depends_on "gist"

  resource "ansi2html" do
    url "https://pypi.python.org/packages/source/a/ansi2html/ansi2html-1.1.0.tar.gz"
    sha256 "537fc4ececf872f83d5cbd218fb64bb49304d258487e283736bb9e5e64319ad3"
  end

  def install
    resource("ansi2html").stage { system "python", *Language::Python.setup_install_args(libexec/"vendor") }
  end
end
