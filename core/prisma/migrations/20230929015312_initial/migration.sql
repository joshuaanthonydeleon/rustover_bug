-- CreateTable
CREATE TABLE "parent" (
    "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "name" TEXT NOT NULL
);

-- CreateTable
CREATE TABLE "child" (
    "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "name" TEXT NOT NULL,
    "parentId" INTEGER NOT NULL,
    CONSTRAINT "child_parentId_fkey" FOREIGN KEY ("parentId") REFERENCES "parent" ("id") ON DELETE RESTRICT ON UPDATE CASCADE
);
