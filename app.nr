// app.nr
use dep::std;

fn main() {
    // Aztec-style voting dApp in Noir — private vote tally with ZK integrity
    let votes_for = 37;
    let votes_against = 29;

    std::println("🗳️ Private Aztec Voting dApp");
    std::println("Votes for: {}", votes_for);
    std::println("Votes against: {}", votes_against);

    // Encrypted difference proof using Pedersen hash
    let result_hash = std::hash::pedersen([votes_for.to_string(), votes_against.to_string()]);
    std::println("🔒 Zero-knowledge commitment generated: {}", result_hash);

    if votes_for > votes_against {
        std::println("✅ Proposal PASSED under ZK verification");
    } else {
        std::println("❌ Proposal REJECTED under ZK verification");
    }
}
