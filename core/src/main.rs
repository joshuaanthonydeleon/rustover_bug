mod prisma;

use std::sync::Arc;
use crate::prisma::{parent, PrismaClient};

// parent::include!(parent_with_child { child });

#[tokio::main]
async fn main() {
    let client = prisma::new_client().await?;
    let db = Arc::new(client);

    // db.parent().find_many(vec![]).include(parent_with_child).exec().await?;
    db.parent().find_many(vec![]).include(include!({ child })).exec().await?;
}
