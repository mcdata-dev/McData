-- CreateTable
CREATE TABLE `badge` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `userId` VARCHAR(191) NOT NULL,
    `badge` VARCHAR(255) NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `profile` (
    `userId` VARCHAR(20) NOT NULL,
    `uuid` VARCHAR(100) NULL,
    `desc` VARCHAR(255) NULL,
    `linkedSince` INTEGER NULL,

    PRIMARY KEY (`userId`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- AddForeignKey
ALTER TABLE `badge` ADD CONSTRAINT `badge_userId_fkey` FOREIGN KEY (`userId`) REFERENCES `profile`(`userId`) ON DELETE RESTRICT ON UPDATE CASCADE;

