class Rabs < Formula
	desc "General purpose imperative build system"
	homepage "https://wrapl.github.io/tools/rabs.xhtml"
	url "https://github.com/wrapl/rabs.git", :tag => "v2.8.4"
	depends_on "bdw-gc"

	def install
		system "make", "install", "PREFIX=#{prefix}"
	end

	test do
		system "#{bin}/rabs", "-V"
	end
end
