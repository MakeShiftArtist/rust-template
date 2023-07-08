use env_logger::{Builder, Env};

// Executable goes here
fn main() {
    get_logger();
    log::info!("Improved logging is working!");
}

// This just sets up your logger. It should only be done once for the lifetime of the program
fn get_logger() {
    load_env();
    Builder::from_env(Env::default().default_filter_or("warn")).init();
}

fn load_env() {
    dotenv::dotenv().ok();
}
