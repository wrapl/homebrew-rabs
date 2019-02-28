class Rabs < Formula
	desc "General purpose imperative build system"
	homepage "https://wrapl.github.io/tools/rabs.xhtml"
	url "https://github.com/wrapl/rabs.git", :tag => "v1.7.1"
	depends_on "bdw-gc" => :build

	def install
		system "make", "install", "PREFIX=#{prefix}"
	end

	test do
		system "#{bin}/rabs", "-v"
	end
end
