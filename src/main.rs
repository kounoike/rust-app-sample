use clap::Parser;

#[derive(Parser, Debug)]
#[command(author, version, about, long_about = None)]
struct Cli {}

fn main() {
    let cli = Cli::parse();
    println!(env!("CARGO_PKG_VERSION"));
}
