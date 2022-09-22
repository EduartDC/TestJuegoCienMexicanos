
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 09/21/2022 16:30:00
-- Generated from EDMX file: C:\Users\Eduar\source\repos\JuegoCienMexicanos\ProductModel.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [CienMexicanos];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[FK_AnswerQuestion_Answer]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Answers] DROP CONSTRAINT [FK_AnswerQuestion_Answer];
GO
IF OBJECT_ID(N'[dbo].[FK_Match_ScoreMatch]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Match_Score] DROP CONSTRAINT [FK_Match_ScoreMatch];
GO
IF OBJECT_ID(N'[dbo].[FK_Match_ScorePlayer_Match_Score]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Match_ScorePlayer] DROP CONSTRAINT [FK_Match_ScorePlayer_Match_Score];
GO
IF OBJECT_ID(N'[dbo].[FK_Match_ScorePlayer_Player]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Match_ScorePlayer] DROP CONSTRAINT [FK_Match_ScorePlayer_Player];
GO
IF OBJECT_ID(N'[dbo].[FK_PlayerFriends]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Friends] DROP CONSTRAINT [FK_PlayerFriends];
GO
IF OBJECT_ID(N'[dbo].[FK_Question_AnswerMatch]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Question_Answer] DROP CONSTRAINT [FK_Question_AnswerMatch];
GO
IF OBJECT_ID(N'[dbo].[FK_QuestionQuestion_Answer]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Questions] DROP CONSTRAINT [FK_QuestionQuestion_Answer];
GO
IF OBJECT_ID(N'[dbo].[FK_UserPlayer]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Users] DROP CONSTRAINT [FK_UserPlayer];
GO

-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[Answers]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Answers];
GO
IF OBJECT_ID(N'[dbo].[Friends]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Friends];
GO
IF OBJECT_ID(N'[dbo].[Match_Score]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Match_Score];
GO
IF OBJECT_ID(N'[dbo].[Match_ScorePlayer]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Match_ScorePlayer];
GO
IF OBJECT_ID(N'[dbo].[Matches]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Matches];
GO
IF OBJECT_ID(N'[dbo].[Players]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Players];
GO
IF OBJECT_ID(N'[dbo].[Question_Answer]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Question_Answer];
GO
IF OBJECT_ID(N'[dbo].[Questions]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Questions];
GO
IF OBJECT_ID(N'[dbo].[sysdiagrams]', 'U') IS NOT NULL
    DROP TABLE [dbo].[sysdiagrams];
GO
IF OBJECT_ID(N'[dbo].[Users]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Users];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'Users'
CREATE TABLE [dbo].[Users] (
    [idUser] int IDENTITY(1,1) NOT NULL,
    [userName] nvarchar(max)  NOT NULL,
    [password] nvarchar(max)  NOT NULL,
    [status] bit  NOT NULL,
    [Players_idPlayer] int  NOT NULL
);
GO

-- Creating table 'Players'
CREATE TABLE [dbo].[Players] (
    [idPlayer] int IDENTITY(1,1) NOT NULL,
    [firstName] nvarchar(max)  NOT NULL,
    [lastName] nvarchar(max)  NOT NULL,
    [email] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'Match_Score'
CREATE TABLE [dbo].[Match_Score] (
    [idMatch_Score] int IDENTITY(1,1) NOT NULL,
    [scorePlayerOne] int  NOT NULL,
    [scorePlayerTwo] int  NOT NULL,
    [idPlayerOne] int  NOT NULL,
    [idPlayerTwo] int  NOT NULL,
    [playerWinner] int  NOT NULL,
    [Matches_idMatch] int  NOT NULL
);
GO

-- Creating table 'Questions'
CREATE TABLE [dbo].[Questions] (
    [idQuestion] int IDENTITY(1,1) NOT NULL,
    [question] nvarchar(max)  NOT NULL,
    [class] nvarchar(max)  NOT NULL,
    [Question_Answer_idQuestion_Answer] int  NOT NULL
);
GO

-- Creating table 'Question_Answer'
CREATE TABLE [dbo].[Question_Answer] (
    [idQuestion_Answer] int IDENTITY(1,1) NOT NULL,
    [Matches_idMatch] int  NOT NULL
);
GO

-- Creating table 'Answers'
CREATE TABLE [dbo].[Answers] (
    [idAnswer] int IDENTITY(1,1) NOT NULL,
    [answer] nvarchar(max)  NOT NULL,
    [score] int  NOT NULL,
    [place] int  NOT NULL,
    [Question_Answer_idQuestion_Answer] int  NOT NULL
);
GO

-- Creating table 'Friends'
CREATE TABLE [dbo].[Friends] (
    [idFriend] int IDENTITY(1,1) NOT NULL,
    [idPlayerOne] int  NOT NULL,
    [Player_idPlayer] int  NOT NULL
);
GO

-- Creating table 'Matches'
CREATE TABLE [dbo].[Matches] (
    [idMatch] int IDENTITY(1,1) NOT NULL
);
GO

-- Creating table 'sysdiagrams'
CREATE TABLE [dbo].[sysdiagrams] (
    [name] nvarchar(128)  NOT NULL,
    [principal_id] int  NOT NULL,
    [diagram_id] int IDENTITY(1,1) NOT NULL,
    [version] int  NULL,
    [definition] varbinary(max)  NULL
);
GO

-- Creating table 'Match_ScorePlayer'
CREATE TABLE [dbo].[Match_ScorePlayer] (
    [Match_Score_idMatch_Score] int  NOT NULL,
    [Players_idPlayer] int  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [idUser] in table 'Users'
ALTER TABLE [dbo].[Users]
ADD CONSTRAINT [PK_Users]
    PRIMARY KEY CLUSTERED ([idUser] ASC);
GO

-- Creating primary key on [idPlayer] in table 'Players'
ALTER TABLE [dbo].[Players]
ADD CONSTRAINT [PK_Players]
    PRIMARY KEY CLUSTERED ([idPlayer] ASC);
GO

-- Creating primary key on [idMatch_Score] in table 'Match_Score'
ALTER TABLE [dbo].[Match_Score]
ADD CONSTRAINT [PK_Match_Score]
    PRIMARY KEY CLUSTERED ([idMatch_Score] ASC);
GO

-- Creating primary key on [idQuestion] in table 'Questions'
ALTER TABLE [dbo].[Questions]
ADD CONSTRAINT [PK_Questions]
    PRIMARY KEY CLUSTERED ([idQuestion] ASC);
GO

-- Creating primary key on [idQuestion_Answer] in table 'Question_Answer'
ALTER TABLE [dbo].[Question_Answer]
ADD CONSTRAINT [PK_Question_Answer]
    PRIMARY KEY CLUSTERED ([idQuestion_Answer] ASC);
GO

-- Creating primary key on [idAnswer] in table 'Answers'
ALTER TABLE [dbo].[Answers]
ADD CONSTRAINT [PK_Answers]
    PRIMARY KEY CLUSTERED ([idAnswer] ASC);
GO

-- Creating primary key on [idFriend] in table 'Friends'
ALTER TABLE [dbo].[Friends]
ADD CONSTRAINT [PK_Friends]
    PRIMARY KEY CLUSTERED ([idFriend] ASC);
GO

-- Creating primary key on [idMatch] in table 'Matches'
ALTER TABLE [dbo].[Matches]
ADD CONSTRAINT [PK_Matches]
    PRIMARY KEY CLUSTERED ([idMatch] ASC);
GO

-- Creating primary key on [diagram_id] in table 'sysdiagrams'
ALTER TABLE [dbo].[sysdiagrams]
ADD CONSTRAINT [PK_sysdiagrams]
    PRIMARY KEY CLUSTERED ([diagram_id] ASC);
GO

-- Creating primary key on [Match_Score_idMatch_Score], [Players_idPlayer] in table 'Match_ScorePlayer'
ALTER TABLE [dbo].[Match_ScorePlayer]
ADD CONSTRAINT [PK_Match_ScorePlayer]
    PRIMARY KEY CLUSTERED ([Match_Score_idMatch_Score], [Players_idPlayer] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [Question_Answer_idQuestion_Answer] in table 'Questions'
ALTER TABLE [dbo].[Questions]
ADD CONSTRAINT [FK_QuestionQuestion_Answer]
    FOREIGN KEY ([Question_Answer_idQuestion_Answer])
    REFERENCES [dbo].[Question_Answer]
        ([idQuestion_Answer])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_QuestionQuestion_Answer'
CREATE INDEX [IX_FK_QuestionQuestion_Answer]
ON [dbo].[Questions]
    ([Question_Answer_idQuestion_Answer]);
GO

-- Creating foreign key on [Question_Answer_idQuestion_Answer] in table 'Answers'
ALTER TABLE [dbo].[Answers]
ADD CONSTRAINT [FK_AnswerQuestion_Answer]
    FOREIGN KEY ([Question_Answer_idQuestion_Answer])
    REFERENCES [dbo].[Question_Answer]
        ([idQuestion_Answer])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_AnswerQuestion_Answer'
CREATE INDEX [IX_FK_AnswerQuestion_Answer]
ON [dbo].[Answers]
    ([Question_Answer_idQuestion_Answer]);
GO

-- Creating foreign key on [Players_idPlayer] in table 'Users'
ALTER TABLE [dbo].[Users]
ADD CONSTRAINT [FK_UserPlayer]
    FOREIGN KEY ([Players_idPlayer])
    REFERENCES [dbo].[Players]
        ([idPlayer])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_UserPlayer'
CREATE INDEX [IX_FK_UserPlayer]
ON [dbo].[Users]
    ([Players_idPlayer]);
GO

-- Creating foreign key on [Match_Score_idMatch_Score] in table 'Match_ScorePlayer'
ALTER TABLE [dbo].[Match_ScorePlayer]
ADD CONSTRAINT [FK_Match_ScorePlayer_Match_Score]
    FOREIGN KEY ([Match_Score_idMatch_Score])
    REFERENCES [dbo].[Match_Score]
        ([idMatch_Score])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [Players_idPlayer] in table 'Match_ScorePlayer'
ALTER TABLE [dbo].[Match_ScorePlayer]
ADD CONSTRAINT [FK_Match_ScorePlayer_Player]
    FOREIGN KEY ([Players_idPlayer])
    REFERENCES [dbo].[Players]
        ([idPlayer])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Match_ScorePlayer_Player'
CREATE INDEX [IX_FK_Match_ScorePlayer_Player]
ON [dbo].[Match_ScorePlayer]
    ([Players_idPlayer]);
GO

-- Creating foreign key on [Matches_idMatch] in table 'Question_Answer'
ALTER TABLE [dbo].[Question_Answer]
ADD CONSTRAINT [FK_Question_AnswerMatch]
    FOREIGN KEY ([Matches_idMatch])
    REFERENCES [dbo].[Matches]
        ([idMatch])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Question_AnswerMatch'
CREATE INDEX [IX_FK_Question_AnswerMatch]
ON [dbo].[Question_Answer]
    ([Matches_idMatch]);
GO

-- Creating foreign key on [Matches_idMatch] in table 'Match_Score'
ALTER TABLE [dbo].[Match_Score]
ADD CONSTRAINT [FK_Match_ScoreMatch]
    FOREIGN KEY ([Matches_idMatch])
    REFERENCES [dbo].[Matches]
        ([idMatch])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Match_ScoreMatch'
CREATE INDEX [IX_FK_Match_ScoreMatch]
ON [dbo].[Match_Score]
    ([Matches_idMatch]);
GO

-- Creating foreign key on [Player_idPlayer] in table 'Friends'
ALTER TABLE [dbo].[Friends]
ADD CONSTRAINT [FK_PlayerFriends]
    FOREIGN KEY ([Player_idPlayer])
    REFERENCES [dbo].[Players]
        ([idPlayer])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_PlayerFriends'
CREATE INDEX [IX_FK_PlayerFriends]
ON [dbo].[Friends]
    ([Player_idPlayer]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------