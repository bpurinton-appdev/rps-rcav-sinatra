describe "root URL" do
  it "has a functional Route Controller Action View", points: 2 do
    visit "/"

    expect(page.status_code).to be(200)
  end
end

describe "/rock" do
  it "has a random computer move", points: 4, hint: h("randomness") do
    computer_played_rock = 0
    computer_played_paper = 0
    computer_played_scissors = 0

    15.times do
      visit "/rock"

      if (page.has_content?(/They played rock/i) &&
        page.has_no_content?(/They played paper/i) &&
        page.has_no_content?(/They played scissors/i))

        computer_played_rock = computer_played_rock + 1
      end

      if (page.has_content?(/They played paper/i) &&
        page.has_no_content?(/They played rock/i) &&
        page.has_no_content?(/They played scissors/i))

        computer_played_paper = computer_played_paper + 1
      end

      if (page.has_content?(/They played scissors/i) &&
        page.has_no_content?(/They played rock/i) &&
        page.has_no_content?(/They played paper/i))

        computer_played_scissors = computer_played_scissors + 1
      end
    end

    expect(computer_played_rock).to_not eq(0),
      "Expected to see 'They played rock' on the page at least once out of 15 tries but didn't."
    expect(computer_played_paper).to_not eq(0),
      "Expected to see 'They played paper' on the page at least once out of 15 tries but didn't."
    expect(computer_played_scissors).to_not eq(0),
      "Expected to see 'They played scissors' on the page at least once out of 15 tries but didn't."
  end
end



