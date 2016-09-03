require "special_latex"

describe SpecialLatex do 
	describe ".convert" do
		context "given an empty string" do
			it "returns nothing" do
				expect(SpecialLatex.convert("")).to eql("")
			end
		end
		context "given a with circumflex" do
			it "returns the ascii char" do
				expect(SpecialLatex.convert("\\^{a}")).to eql("â")
			end
		end
		context "given t with acute accent" do
			it "returns the char with connecting character" do
				expect(SpecialLatex.convert("\\'{t}")).to eql("t́")
			end
		end
		context "given ligatures" do
			it "returns the oe lowercase ligature" do
				expect(SpecialLatex.convert("\\oe")).to eql("œ")
			end
			it "returns the oe uppercase ligature" do
				expect(SpecialLatex.convert("\\OE")).to eql("Œ")
			end
			it "returns the ae lowercase ligature" do
				expect(SpecialLatex.convert("\\ae")).to eql("æ")
			end
			it "returns the ae uppercase ligature" do
				expect(SpecialLatex.convert("\\AE")).to eql("Æ")
			end
		end
		context "given special letters" do
			it "returns lowercase a ring" do
				expect(SpecialLatex.convert("\\aa")).to eql("å")
			end
			it "returns uppercase a ring" do
				expect(SpecialLatex.convert("\\AA")).to eql("Å")
			end
			it "returns lowercase o slash" do
				expect(SpecialLatex.convert("\\o")).to eql("ø")
			end
			it "returns uppercase o slash" do
				expect(SpecialLatex.convert("\\O")).to eql("Ø")
			end
			it "returns german double s" do
				expect(SpecialLatex.convert("\\ss")).to eql("ß")
			end
		end
		context "given a special symbol" do
			it "returns the euro symbol" do
				expect(SpecialLatex.convert("\\euro")).to eql("€")
			end
			it "returns the degree symbol" do
				expect(SpecialLatex.convert("\\textdegree")).to eql("°")
			end
			it "returns the percent symbol" do
				expect(SpecialLatex.convert("\\%")).to eql("%")
			end
			it "returns the dollar symbol" do
				expect(SpecialLatex.convert("\\$")).to eql("$")
			end
			it "returns the left bracket" do
				expect(SpecialLatex.convert("\\{")).to eql("{")
			end
			it "returns the right bracket" do
				expect(SpecialLatex.convert("\\}")).to eql("}")
			end
			it "returns the underscore" do
				expect(SpecialLatex.convert("\\_")).to eql("_")
			end
			it "returns the paragraph mark" do
				expect(SpecialLatex.convert("\\P")).to eql("¶")
			end
			it "returns the daggar symbol" do
				expect(SpecialLatex.convert("\\dag")).to eql("†")
			end
			it "returns the double daggar symbol" do
				expect(SpecialLatex.convert("\\ddag")).to eql("‡")
			end
			it "returns the pipe" do
				expect(SpecialLatex.convert("\\textbar")).to eql("|")
			end
			it "returns the greater than symbol" do
				expect(SpecialLatex.convert("\\textgreater")).to eql(">")
			end
			it "returns the less than symbol" do
				expect(SpecialLatex.convert("\\textless")).to eql("<")
			end
			it "returns an endash" do
				expect(SpecialLatex.convert("\\textendash")).to eql("–")
			end
			it "returns an emdash" do
				expect(SpecialLatex.convert("\\textemdash")).to eql("—")
			end
			it "returns a trademark" do
				expect(SpecialLatex.convert("\\texttrademark")).to eql("™")
			end
			it "returns a registered trademark" do
				expect(SpecialLatex.convert("\\textregistered")).to eql("®")
			end
			it "returns an endash" do
				expect(SpecialLatex.convert("\\textendash")).to eql("–")
			end
			it "returns an emdash" do
				expect(SpecialLatex.convert("\\textemdash")).to eql("—")
			end
			it "returns an upside down exclaimation" do
				expect(SpecialLatex.convert("\\textexclamdown")).to eql("¡")
			end
			it "returns an upside down question mark" do
				expect(SpecialLatex.convert("\\textquestiondown")).to eql("¿")
			end
			it "returns a pound symbol" do
				expect(SpecialLatex.convert("\\pounds")).to eql("£")
			end
			it "returns a hash" do
				expect(SpecialLatex.convert("\\#")).to eql("#")
			end
			it "returns an ampersand" do
				expect(SpecialLatex.convert("\\&")).to eql("&")
			end
			it "returns a section sign" do
				expect(SpecialLatex.convert("\\S")).to eql("§")
			end
			it "returns a copyright symbol" do
				expect(SpecialLatex.convert("\\copyright")).to eql("©")
			end
			it "returns greek letters" do
				expect(SpecialLatex.convert("\\alpha")).to eql("α")
			end
		end
	end
end