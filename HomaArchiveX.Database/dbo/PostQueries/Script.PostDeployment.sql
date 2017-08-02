/*
Post-Deployment Script Template							
--------------------------------------------------------------------------------------
 This file contains SQL statements that will be appended to the build script.		
 Use SQLCMD syntax to include a file in the post-deployment script.			
 Example:      :r .\myfile.sql								
 Use SQLCMD syntax to reference a variable in the post-deployment script.		
 Example:      :setvar TableName MyTable							
               SELECT * FROM [$(TableName)]					
--------------------------------------------------------------------------------------
*/
/*USE [HmeArhX]
GO
INSERT [dbo].[GeneralInfoAboutLevels] ([Level], [Generic], [Audio], [Video], [Images], [Examples]) VALUES (1, NULL, NULL, N'Shot', NULL, NULL)
GO
INSERT [dbo].[GeneralInfoAboutLevels] ([Level], [Generic], [Audio], [Video], [Images], [Examples]) VALUES (2, NULL, N'Subtrack', N'Scene', NULL, NULL)
GO
INSERT [dbo].[GeneralInfoAboutLevels] ([Level], [Generic], [Audio], [Video], [Images], [Examples]) VALUES (3, NULL, N'Track', N'Chapter', NULL, NULL)
GO
INSERT [dbo].[GeneralInfoAboutLevels] ([Level], [Generic], [Audio], [Video], [Images], [Examples]) VALUES (4, N'Part', NULL, NULL, NULL, N'CD1, CD2')
GO
INSERT [dbo].[GeneralInfoAboutLevels] ([Level], [Generic], [Audio], [Video], [Images], [Examples]) VALUES (5, NULL, N'Album', N'Movie', N'Comic', N'The joshua tree, Starwars, a new hope')
GO
INSERT [dbo].[GeneralInfoAboutLevels] ([Level], [Generic], [Audio], [Video], [Images], [Examples]) VALUES (6, N'Season', NULL, NULL, NULL, N'Strawars first Trilogy, Season 1')
GO
INSERT [dbo].[GeneralInfoAboutLevels] ([Level], [Generic], [Audio], [Video], [Images], [Examples]) VALUES (7, N'Collection', NULL, NULL, NULL, N'Starwars movies, Stargate movie, Stargate SG-1, Stargate Atlantis')
GO
INSERT [dbo].[GeneralInfoAboutLevels] ([Level], [Generic], [Audio], [Video], [Images], [Examples]) VALUES (8, N'Domain', NULL, NULL, NULL, N'Starwars, Stargate, U2')
GO


USE [HmeArhX]
GO
INSERT [dbo].[MediaInfoType] ([MediaInfoTypeId], [Title]) VALUES (1, N'General')
GO
INSERT [dbo].[MediaInfoType] ([MediaInfoTypeId], [Title]) VALUES (2, N'Video')
GO
INSERT [dbo].[MediaInfoType] ([MediaInfoTypeId], [Title]) VALUES (3, N'Audio')
GO
INSERT [dbo].[MediaInfoType] ([MediaInfoTypeId], [Title]) VALUES (4, N'Image')
GO
INSERT [dbo].[MediaInfoType] ([MediaInfoTypeId], [Title]) VALUES (5, N'Text')
GO
INSERT [dbo].[MediaInfoType] ([MediaInfoTypeId], [Title]) VALUES (6, N'Menu')
GO
INSERT [dbo].[MediaInfoType] ([MediaInfoTypeId], [Title]) VALUES (7, N'Generic')
GO
INSERT [dbo].[MediaInfoType] ([MediaInfoTypeId], [Title]) VALUES (8, N'Other')
GO





USE [HmeArhX]
GO
SET IDENTITY_INSERT [dbo].[MediaInfoParameter] ON 

GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1, 1, N'Count', NULL, NULL, N'N NI', NULL, NULL, N'Count of objects available in this stream', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (2, 2, N'Count', NULL, NULL, N'N NI', NULL, NULL, N'Count of objects available in this stream', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (3, 3, N'Count', NULL, NULL, N'N NI', NULL, NULL, N'Count of objects available in this stream', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (4, 4, N'Count', NULL, NULL, N'N NI', NULL, NULL, N'Count of objects available in this stream', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (5, 5, N'Count', NULL, NULL, N'N NI', NULL, NULL, N'Count of objects available in this stream', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (6, 6, N'Count', NULL, NULL, N'N NI', NULL, NULL, N'Count of objects available in this stream', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (7, 8, N'Count', NULL, NULL, N'N NI', NULL, NULL, N'Count of objects available in this stream', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (8, 1, N'Status', NULL, NULL, N'N NI', NULL, NULL, N'bit field (0=IsAccepted, 1=IsFilled, 2=IsUpdated, 3=IsFinished)', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (9, 1, N'StreamCount', NULL, NULL, N'N NI', NULL, NULL, N'Count of streams of that kind available', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (10, 1, N'StreamKind', N'General', NULL, N'N NT', NULL, NULL, N'Stream type name', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (11, 1, N'StreamKind/String', NULL, NULL, N'N NT', NULL, NULL, N'Stream type name', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (12, 1, N'StreamKindID', NULL, NULL, N'N NI', NULL, NULL, N'Number of the stream (base=0)', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (13, 1, N'StreamKindPos', NULL, NULL, N'N NI', NULL, NULL, N'When multiple streams, number of the stream (base=1)', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (14, 1, N'StreamOrder', NULL, NULL, N'N YI', NULL, NULL, N'Stream order in the file, whatever is the kind of stream (base=0)', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (15, 1, N'FirstPacketOrder', NULL, NULL, N'N YI', NULL, NULL, N'Order of the first fully decodable packet met in the file, whatever is the kind of stream (base=0)', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (16, 1, N'Inform', NULL, NULL, N'N NT', NULL, NULL, N'Last **Inform** call', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (17, 1, N'ID', NULL, NULL, N'N YIY', NULL, NULL, N'The ID for this stream in this file', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (18, 1, N'ID/String', NULL, NULL, N'Y NT', NULL, NULL, N'The ID for this stream in this file', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (19, 1, N'OriginalSourceMedium_ID', NULL, NULL, N'N YIY', NULL, NULL, N'The ID for this stream in the original medium of the material', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (20, 1, N'OriginalSourceMedium_ID/String', NULL, NULL, N'Y NT', NULL, NULL, N'The ID for this stream in the original medium of the material', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (21, 1, N'UniqueID', NULL, NULL, N'N YIY', NULL, NULL, N'The unique ID for this stream, should be copied with stream copy', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (22, 1, N'UniqueID/String', NULL, NULL, N'Y NT', NULL, NULL, N'The unique ID for this stream, should be copied with stream copy', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (23, 1, N'MenuID', NULL, NULL, N'N YIY', NULL, NULL, N'The menu ID for this stream in this file', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (24, 1, N'MenuID/String', NULL, NULL, N'Y NT', NULL, NULL, N'The menu ID for this stream in this file', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (25, 1, N'GeneralCount', N'1', NULL, N'N NIY', NULL, NULL, N'Number of general streams', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (26, 1, N'VideoCount', NULL, NULL, N'N NIY', NULL, NULL, N'Number of video streams', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (27, 1, N'AudioCount', NULL, NULL, N'N NIY', NULL, NULL, N'Number of audio streams', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (28, 1, N'TextCount', NULL, NULL, N'N NIY', NULL, NULL, N'Number of text streams', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (29, 1, N'OtherCount', NULL, NULL, N'N NIY', NULL, NULL, N'Number of other streams', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (30, 1, N'ImageCount', NULL, NULL, N'N NIY', NULL, NULL, N'Number of image streams', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (31, 1, N'MenuCount', NULL, NULL, N'N NIY', NULL, NULL, N'Number of menu streams', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (32, 1, N'Video_Format_List', NULL, NULL, N'N NT', NULL, NULL, N'Video Codecs in this file, separated by /', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (33, 1, N'Video_Format_WithHint_List', NULL, NULL, N'N NT', NULL, NULL, N'Video Codecs in this file with popular name (hint), separated by /', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (34, 1, N'Video_Codec_List', NULL, NULL, N'N NT', NULL, NULL, N'Deprecated, do not use in new projects', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (35, 1, N'Video_Language_List', NULL, NULL, N'N NT', NULL, NULL, N'Video languagesin this file, full names, separated by /', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (36, 1, N'Audio_Format_List', NULL, NULL, N'N NT', NULL, NULL, N'Audio Codecs in this file,separated by /', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (37, 1, N'Audio_Format_WithHint_List', NULL, NULL, N'N NT', NULL, NULL, N'Audio Codecs in this file with popular name (hint), separated by /', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (38, 1, N'Audio_Codec_List', NULL, NULL, N'N NT', NULL, NULL, N'Deprecated, do not use in new projects', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (39, 1, N'Audio_Language_List', NULL, NULL, N'N NT', NULL, NULL, N'Audio languages in this file separated by /', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (40, 1, N'Text_Format_List', NULL, NULL, N'N NT', NULL, NULL, N'Text Codecs in this file, separated by /', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (41, 1, N'Text_Format_WithHint_List', NULL, NULL, N'N NT', NULL, NULL, N'Text Codecs in this file with popular name (hint),separated by /', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (42, 1, N'Text_Codec_List', NULL, NULL, N'N NT', NULL, NULL, N'Deprecated, do not use in new projects', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (43, 1, N'Text_Language_List', NULL, NULL, N'N NT', NULL, NULL, N'Text languages in this file, separated by /', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (44, 1, N'Other_Format_List', NULL, NULL, N'N NT', NULL, NULL, N'Other formats in this file, separated by /', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (45, 1, N'Other_Format_WithHint_List', NULL, NULL, N'N NT', NULL, NULL, N'Other formats in this file with popular name (hint), separated by /', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (46, 1, N'Other_Codec_List', NULL, NULL, N'N NT', NULL, NULL, N'Deprecated, do not use in new projects', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (47, 1, N'Other_Language_List', NULL, NULL, N'N NT', NULL, NULL, N'Chapters languages in this file, separated by /', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (48, 1, N'Image_Format_List', NULL, NULL, N'N NT', NULL, NULL, N'Image Codecs in this file, separated by /', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (49, 1, N'Image_Format_WithHint_List', NULL, NULL, N'N NT', NULL, NULL, N'Image Codecs in this file with popular name (hint), separated by /', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (50, 1, N'Image_Codec_List', NULL, NULL, N'N NT', NULL, NULL, N'Deprecated, do not use in new projects', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (51, 1, N'Image_Language_List', NULL, NULL, N'N NT', NULL, NULL, N'Image languages in this file, separated by /', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (52, 1, N'Menu_Format_List', NULL, NULL, N'N NT', NULL, NULL, N'Menu Codecsin this file, separated by /', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (53, 1, N'Menu_Format_WithHint_List', NULL, NULL, N'N NT', NULL, NULL, N'Menu Codecs in this file with popular name (hint),separated by /', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (54, 1, N'Menu_Codec_List', NULL, NULL, N'N NT', NULL, NULL, N'Deprecated, do not use in new projects', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (55, 1, N'Menu_Language_List', NULL, NULL, N'N NT', NULL, NULL, N'Menu languages in this file, separated by /', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (56, 1, N'CompleteName', NULL, NULL, N'Y YT', NULL, NULL, N'Complete name (Folder+Name+Extension)', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (57, 1, N'FolderName', NULL, NULL, N'N NT', NULL, NULL, N'Folder name only', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (58, 1, N'FileName', NULL, NULL, N'N NT', NULL, NULL, N'File name only', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (59, 1, N'FileExtension', NULL, NULL, N'N NTY', NULL, NULL, N'File extension only', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (60, 1, N'CompleteName_Last', NULL, NULL, N'Y YTY', NULL, NULL, N'Complete name (Folder+Name+Extension) of the last file (in the case of a sequence of files)', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (61, 1, N'FolderName_Last', NULL, NULL, N'N NT', NULL, NULL, N'Folder name only of the last file (in the case of a sequence of files)', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (62, 1, N'FileName_Last', NULL, NULL, N'N NT', NULL, NULL, N'File name only of the last file (in the case of a sequence of files)', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (63, 1, N'FileExtension_Last', NULL, NULL, N'N NT', NULL, NULL, N'File extension only of the last file (in the case of a sequence of files)', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (64, 1, N'Format', NULL, NULL, N'Y YTY', NULL, NULL, N'Format used', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (65, 1, N'Format/String', NULL, NULL, N'N NT', NULL, NULL, N'Deprecated, do not use in new projects', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (66, 1, N'Format/Info', NULL, NULL, N'Y NT', NULL, NULL, N'Info about this Format', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (67, 1, N'Format/Url', NULL, NULL, N'N NT', NULL, NULL, N'Link to a description of this format', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (68, 1, N'Format/Extensions', NULL, NULL, N'N NT', NULL, NULL, N'Known extensions of this format', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (69, 1, N'Format_Commercial', NULL, NULL, N'N NT', NULL, NULL, N'Commercial name used by vendor for theses setings or Format field if there is no difference', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (70, 1, N'Format_Commercial_IfAny', NULL, NULL, N'Y YTY', NULL, NULL, N'Commercial name used by vendor for theses setings if there is one', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (71, 1, N'Format_Version', NULL, NULL, N'Y YTY', NULL, NULL, N'Version of this format', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (72, 1, N'Format_Profile', NULL, NULL, N'Y YTY', NULL, NULL, N'Profile of the Format (old XML: ''Profile@Level'' format', N' MIXML: ''Profile'' only)', NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (73, 1, N'Format_Level', NULL, NULL, N'Y YTY', NULL, NULL, N'Level of the Format (only MIXML)', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (74, 1, N'Format_Compression', NULL, NULL, N'Y YTY', NULL, NULL, N'Compression method used', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (75, 1, N'Format_Settings', NULL, NULL, N'Y YTY', NULL, NULL, N'Settings needed for decoder used', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (76, 1, N'InternetMediaType', NULL, NULL, N'N YT', NULL, NULL, N'Internet Media Type (aka MIME Type, Content-Type)', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (77, 1, N'CodecID', NULL, NULL, N'N YTY', NULL, NULL, N'Codec ID (found in some containers)', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (78, 1, N'CodecID/String', NULL, NULL, N'Y NT', NULL, NULL, N'Codec ID (found in some containers)', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (79, 1, N'CodecID/Info', NULL, NULL, N'Y NT', NULL, NULL, N'Info about this codec', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (80, 1, N'CodecID/Hint', NULL, NULL, N'Y NT', NULL, NULL, N'A hint/popular name for this codec', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (81, 1, N'CodecID/Url', NULL, NULL, N'N NT', NULL, NULL, N'A link to more details about this codec ID', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (82, 1, N'CodecID_Description', NULL, NULL, N'Y YT', NULL, NULL, N'Manual description given by the container', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (83, 1, N'CodecID_Version', NULL, NULL, N'N YT', NULL, NULL, N'Version of the CodecID', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (84, 1, N'CodecID_Compatible', NULL, NULL, N'N YT', NULL, NULL, N'Compatible CodecIDs', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (85, 1, N'Interleaved', NULL, NULL, N'N YTY', NULL, NULL, N'If Audio and video are muxed', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (86, 1, N'Codec', NULL, NULL, N'N NT', NULL, NULL, N'Deprecated, do not use in new projects', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (87, 1, N'Codec/String', NULL, NULL, N'N NT', NULL, NULL, N'Deprecated, do not use in new projects', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (88, 1, N'Codec/Info', NULL, NULL, N'N NT', NULL, NULL, N'Deprecated, do not use in new projects', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (89, 1, N'Codec/Url', NULL, NULL, N'N NT', NULL, NULL, N'Deprecated, do not use in new projects', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (90, 1, N'Codec/Extensions', NULL, NULL, N'N NT', NULL, NULL, N'Deprecated, do not use in new projects', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (91, 1, N'Codec_Settings', NULL, NULL, N'N NT', NULL, NULL, N'Deprecated, do not use in new projects', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (92, 1, N'Codec_Settings_Automatic', NULL, NULL, N'N NT', NULL, NULL, N'Deprecated, do not use in new projects', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (93, 1, N'FileSize', NULL, N' byte', N'N YTY', NULL, NULL, N'File size in bytes', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (94, 1, N'FileSize/String', NULL, NULL, N'Y NT', NULL, NULL, N'File size (with measure)', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (95, 1, N'FileSize/String1', NULL, NULL, N'N NT', NULL, NULL, N'File size (with measure, 1 digit mini)', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (96, 1, N'FileSize/String2', NULL, NULL, N'N NT', NULL, NULL, N'File size (with measure, 2 digit mini)', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (97, 1, N'FileSize/String3', NULL, NULL, N'N NT', NULL, NULL, N'File size (with measure, 3 digit mini)', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (98, 1, N'FileSize/String4', NULL, NULL, N'N NT', NULL, NULL, N'File size (with measure, 4 digit mini)', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (99, 1, N'Duration', NULL, N' ms', N'N YIY', NULL, NULL, N'Play time of the stream in ms', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (100, 1, N'Duration/String', NULL, NULL, N'Y NT', NULL, NULL, N'Play time in format : XXx YYy only, YYy omited if zero', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (101, 1, N'Duration/String1', NULL, NULL, N'N NT', NULL, NULL, N'Play time in format : HHh MMmn SSs MMMms, XX omited if zero', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (102, 1, N'Duration/String2', NULL, NULL, N'N NT', NULL, NULL, N'Play time in format : XXx YYy only, YYy omited if zero', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (103, 1, N'Duration/String3', NULL, NULL, N'N NT', NULL, NULL, N'Play time in format : HH:MM:SS.MMM', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (104, 1, N'Duration/String4', NULL, NULL, N'N NT', NULL, NULL, N'Play time in format : HH:MM:SS:FF, last colon replaced by semicolon for drop frame if available', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (105, 1, N'Duration/String5', NULL, NULL, N'N NT', NULL, NULL, N'Play time in format : HH:MM:SS.mmm (HH:MM:SS:FF)', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (106, 1, N'Duration_Start', NULL, NULL, N'Y YTY', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (107, 1, N'Duration_End', NULL, NULL, N'Y YTY', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (108, 1, N'OverallBitRate_Mode', NULL, NULL, N'N YTY', NULL, NULL, N'Bit rate mode of all streams (VBR, CBR)', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (109, 1, N'OverallBitRate_Mode/String', NULL, NULL, N'Y NT', NULL, NULL, N'Bit rate mode of all streams (Variable, Constant)', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (110, 1, N'OverallBitRate', NULL, N' bps', N'N YFY', NULL, NULL, N'Bit rate of all streams in bps', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (111, 1, N'OverallBitRate/String', NULL, NULL, N'Y NT', NULL, NULL, N'Bit rate of all streams (with measure)', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (112, 1, N'OverallBitRate_Minimum', NULL, N' bps', N'N YFY', NULL, NULL, N'Minimum Bit rate in bps', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (113, 1, N'OverallBitRate_Minimum/String', NULL, NULL, N'Y NT', NULL, NULL, N'Minimum Bit rate (with measurement)', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (114, 1, N'OverallBitRate_Nominal', NULL, N' bps', N'N YFY', NULL, NULL, N'Nominal Bit rate in bps', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (115, 1, N'OverallBitRate_Nominal/String', NULL, NULL, N'Y NT', NULL, NULL, N'Nominal Bit rate (with measurement)', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (116, 1, N'OverallBitRate_Maximum', NULL, N' bps', N'N YFY', NULL, NULL, N'Maximum Bit rate in bps', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (117, 1, N'OverallBitRate_Maximum/String', NULL, NULL, N'Y NT', NULL, NULL, N'Maximum Bit rate (with measurement)', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (118, 1, N'FrameRate', NULL, N' fps', N'N YFY', NULL, NULL, N'Frames per second', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (119, 1, N'FrameRate/String', NULL, NULL, N'N NT', NULL, NULL, N'Frames per second (with measurement)', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (120, 1, N'FrameRate_Num', NULL, NULL, N'N NFN', NULL, NULL, N'Frames per second, numerator', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (121, 1, N'FrameRate_Den', NULL, NULL, N'N NFN', NULL, NULL, N'Frames per second, denominator', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (122, 1, N'FrameCount', NULL, NULL, N'N NIY', NULL, NULL, N'Frame count (a frame contains a count of samples depends of the format)', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (123, 1, N'Delay', NULL, N' ms', N'N YI', NULL, NULL, N'Delay fixed in the stream (relative) IN MS', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (124, 1, N'Delay/String', NULL, NULL, N'N NT', NULL, NULL, N'Delay with measurement', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (125, 1, N'Delay/String1', NULL, NULL, N'N NT', NULL, NULL, N'Delay with measurement', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (126, 1, N'Delay/String2', NULL, NULL, N'N NT', NULL, NULL, N'Delay with measurement', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (127, 1, N'Delay/String3', NULL, NULL, N'N NT', NULL, NULL, N'format : HH:MM:SS.MMM', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (128, 1, N'Delay/String4', NULL, NULL, N'N NT', NULL, NULL, N'Delay in format : HH:MM:SS:FF, last colon replaced by semicolon for drop frame if available', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (129, 1, N'Delay/String5', NULL, NULL, N'N NT', NULL, NULL, N'Delay in format : HH:MM:SS.mmm (HH:MM:SS:FF)', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (130, 1, N'Delay_Settings', NULL, NULL, N'N NTY', NULL, NULL, N'Delay settings (in case of timecode for example)', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (131, 1, N'Delay_DropFrame', NULL, NULL, N'N NTY', NULL, NULL, N'Delay drop frame', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (132, 1, N'Delay_Source', NULL, NULL, N'N NTY', NULL, NULL, N'Delay source (Container or Stream or empty)', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (133, 1, N'Delay_Source/String', NULL, NULL, N'N NT', NULL, NULL, N'Delay source (Container or Stream or empty)', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (134, 1, N'StreamSize', NULL, N' byte', N'N YIY', NULL, NULL, N'Stream size in bytes', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (135, 1, N'StreamSize/String', NULL, NULL, N'N NT', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (136, 1, N'StreamSize/String1', NULL, NULL, N'N NT', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (137, 1, N'StreamSize/String2', NULL, NULL, N'N NT', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (138, 1, N'StreamSize/String3', NULL, NULL, N'N NT', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (139, 1, N'StreamSize/String4', NULL, NULL, N'N NT', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (140, 1, N'StreamSize/String5', NULL, NULL, N'N NT', NULL, NULL, N'With proportion', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (141, 1, N'StreamSize_Proportion', NULL, NULL, N'N NT', NULL, NULL, N'Stream size divided by file size', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (142, 1, N'StreamSize_Demuxed', NULL, N' byte', N'N YIN', NULL, NULL, N'StreamSize in bytes of hte stream after demux', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (143, 1, N'StreamSize_Demuxed/String', NULL, NULL, N'N NT', NULL, NULL, N'StreamSize_Demuxed in with percentage value', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (144, 1, N'StreamSize_Demuxed/String1', NULL, NULL, N'N NT', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (145, 1, N'StreamSize_Demuxed/String2', NULL, NULL, N'N NT', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (146, 1, N'StreamSize_Demuxed/String3', NULL, NULL, N'N NT', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (147, 1, N'StreamSize_Demuxed/String4', NULL, NULL, N'N NT', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (148, 1, N'StreamSize_Demuxed/String5', NULL, NULL, N'N NT', NULL, NULL, N'StreamSize_Demuxed in with percentage value (note: theoritical value, not for real use)', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (149, 1, N'HeaderSize', NULL, NULL, N'N YIY', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (150, 1, N'DataSize', NULL, NULL, N'N YIY', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (151, 1, N'FooterSize', NULL, NULL, N'N YIY', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (152, 1, N'IsStreamable', NULL, NULL, N'N YTY', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (153, 1, N'Album_ReplayGain_Gain', NULL, N' dB', N'N YTY', NULL, NULL, N'The gain to apply to reach 89dB SPL on playback', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (154, 1, N'Album_ReplayGain_Gain/String', NULL, NULL, N'Y YT', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (155, 1, N'Album_ReplayGain_Peak', NULL, NULL, N'Y YTY', NULL, NULL, N'The maximum absolute peak value of the item', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (156, 1, N'Encryption', NULL, NULL, N'Y YT', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (157, 1, N'Encryption_Format', NULL, NULL, N'N YTY', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (158, 1, N'Encryption_Length', NULL, NULL, N'N YTY', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (159, 1, N'Encryption_Method', NULL, NULL, N'N YTY', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (160, 1, N'Encryption_Mode', NULL, NULL, N'N YTY', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (161, 1, N'Encryption_Padding', NULL, NULL, N'N YTY', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (162, 1, N'Encryption_InitializationVector', NULL, NULL, N'N YTY', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (163, 1, N'Title', NULL, NULL, N'N NTY', NULL, NULL, N'(Generic)Title of file', NULL, N'Title')
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (164, 1, N'Title_More', NULL, NULL, N'N NTY', NULL, NULL, N'(Generic)More info about the title of file', NULL, N'Title')
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (165, 1, N'Title/Url', NULL, NULL, N'N NT', NULL, NULL, N'(Generic)Url', NULL, N'Title')
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (166, 1, N'Domain', NULL, NULL, N'Y YT', NULL, NULL, N'Univers movies belong to, e.g. Starwars, Stargate, Buffy, Dragonballs', NULL, N'Title')
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (167, 1, N'Collection', NULL, NULL, N'Y YT', NULL, NULL, N'Name of the series, e.g. Starwars movies, Stargate SG-1, Stargate Atlantis, Buffy, Angel', NULL, N'Title')
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (168, 1, N'Season', NULL, NULL, N'Y YT', NULL, NULL, N'Name of the season, e.g. Strawars first Trilogy, Season 1', NULL, N'Title')
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (169, 1, N'Season_Position', NULL, NULL, N'Y YI', NULL, NULL, N'Number of the Season', NULL, N'Title')
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (170, 1, N'Season_Position_Total', NULL, NULL, N'Y YI', NULL, NULL, N'Place of the season e.g. 2 of 7', NULL, N'Title')
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (171, 1, N'Movie', NULL, NULL, N'Y YT', NULL, NULL, N'Name of the movie. Eg : Starwars, a new hope', NULL, N'Title')
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (172, 1, N'Movie_More', NULL, NULL, N'Y YT', NULL, NULL, N'More infos about the movie', NULL, N'Title')
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (173, 1, N'Movie/Country', NULL, NULL, N'Y YT', NULL, NULL, N'Country, where the movie was procuced', NULL, N'Title')
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (174, 1, N'Movie/Url', NULL, NULL, N'Y YT', NULL, NULL, N'Homepage for the movie', NULL, N'Title')
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (175, 1, N'Album', NULL, NULL, N'Y YT', NULL, NULL, N'Name of an audio-album. Eg : The joshua tree', NULL, N'Title')
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (176, 1, N'Album_More', NULL, NULL, N'Y YT', NULL, NULL, N'More infos about the album', NULL, N'Title')
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (177, 1, N'Album/Sort', NULL, NULL, N'Y YT', NULL, NULL, NULL, NULL, N'Title')
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (178, 1, N'Album/Performer', NULL, NULL, N'Y YT', NULL, NULL, N'Album performer/artist of this file', NULL, N'Entity')
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (179, 1, N'Album/Performer/Sort', NULL, NULL, N'Y YT', NULL, NULL, NULL, NULL, N'Entity')
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (180, 1, N'Album/Performer/Url', NULL, NULL, N'Y YT', NULL, NULL, N'Homepage of the album performer/artist', NULL, N'Entity')
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (181, 1, N'Comic', NULL, NULL, N'Y YT', NULL, NULL, N'Name of the comic.', NULL, N'Title')
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (182, 1, N'Comic_More', NULL, NULL, N'Y YT', NULL, NULL, NULL, NULL, N'Title')
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (183, 1, N'Comic/Position_Total', NULL, NULL, N'Y YI', NULL, NULL, NULL, NULL, N'Title')
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (184, 1, N'Part', NULL, NULL, N'Y YT', NULL, NULL, N'Name of the part. e.g. CD1, CD2', NULL, N'Title')
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (185, 1, N'Part/Position', NULL, NULL, N'Y YI', NULL, NULL, N'Number of the part', NULL, N'Title')
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (186, 1, N'Part/Position_Total', NULL, NULL, N'Y YI', NULL, NULL, N'Place of the part e.g. 2 of 3', NULL, N'Title')
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (187, 1, N'Track', NULL, NULL, N'Y YT', NULL, NULL, N'Name of the track. e.g. track1, track 2', NULL, N'Title')
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (188, 1, N'Track_More', NULL, NULL, N'Y YT', NULL, NULL, N'More infos about the track', NULL, N'Title')
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (189, 1, N'Track/Url', NULL, NULL, N'Y YT', NULL, NULL, N'Link to a site about this track', NULL, N'Title')
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (190, 1, N'Track/Sort', NULL, NULL, N'Y YT', NULL, NULL, NULL, NULL, N'Title')
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (191, 1, N'Track/Position', NULL, NULL, N'Y YI', NULL, NULL, N'Number of this track', NULL, N'Title')
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (192, 1, N'Track/Position_Total', NULL, NULL, N'Y YI', NULL, NULL, N'Place of this track, e.g. 3 of 15', NULL, N'Title')
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (193, 1, N'PackageName', NULL, NULL, N'Y YTY', NULL, NULL, N'Package name i.e. technical flavor of the content', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (194, 1, N'Grouping', NULL, NULL, N'Y YT', NULL, NULL, N'iTunes grouping', NULL, N'Title')
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (195, 1, N'Chapter', NULL, NULL, N'Y YT', NULL, NULL, N'Name of the chapter.', NULL, N'Title')
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (196, 1, N'SubTrack', NULL, NULL, N'Y YT', NULL, NULL, N'Name of the subtrack.', NULL, N'Title')
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (197, 1, N'Original/Album', NULL, NULL, N'Y YT', NULL, NULL, N'Original name of album, serie...', NULL, N'Title')
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (198, 1, N'Original/Movie', NULL, NULL, N'Y YT', NULL, NULL, N'Original name of the movie', NULL, N'Title')
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (199, 1, N'Original/Part', NULL, NULL, N'Y YT', NULL, NULL, N'Original name of the part in the original support', NULL, N'Title')
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (200, 1, N'Original/Track', NULL, NULL, N'Y YT', NULL, NULL, N'Original name of the track in the original support', NULL, N'Title')
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (201, 1, N'Compilation', NULL, N'Yes', N'N YT', NULL, NULL, N'iTunes compilation', NULL, N'Title')
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (202, 1, N'Compilation/String', NULL, NULL, N'Y NT', NULL, NULL, N'iTunes compilation', NULL, N'Title')
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (203, 1, N'Performer', NULL, NULL, N'Y YT', NULL, NULL, N'Main performer/artist of this file', NULL, N'Entity')
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (204, 1, N'Performer/Sort', NULL, NULL, N'Y YT', NULL, NULL, NULL, NULL, N'Entity')
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (205, 1, N'Performer/Url', NULL, NULL, N'Y YT', NULL, NULL, N'Homepage of the performer/artist', NULL, N'Entity')
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (206, 1, N'Original/Performer', NULL, NULL, N'Y YT', NULL, NULL, N'Original artist(s)/performer(s).', NULL, N'Entity')
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (207, 1, N'Accompaniment', NULL, NULL, N'Y YT', NULL, NULL, N'Band/orchestra/accompaniment/musician.', NULL, N'Entity')
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (208, 1, N'Composer', NULL, NULL, N'Y YT', NULL, NULL, N'Name of the original composer.', NULL, N'Entity')
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (209, 1, N'Composer/Nationality', NULL, NULL, N'Y YT', NULL, NULL, N'Nationality of the main composer of the item, mostly for classical music.', NULL, N'Entity')
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (210, 1, N'Composer/Sort', NULL, NULL, N'Y YT', NULL, NULL, NULL, NULL, N'Entity')
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (211, 1, N'Arranger', NULL, NULL, N'Y YT', NULL, NULL, N'The person who arranged the piece. e.g. Ravel.', NULL, N'Entity')
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (212, 1, N'Lyricist', NULL, NULL, N'Y YT', NULL, NULL, N'The person who wrote the lyrics for a musical item.', NULL, N'Entity')
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (213, 1, N'Original/Lyricist', NULL, NULL, N'Y YT', NULL, NULL, N'Original lyricist(s)/text writer(s).', NULL, N'Entity')
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (214, 1, N'Conductor', NULL, NULL, N'Y YT', NULL, NULL, N'The artist(s) who performed the work. In classical music this would be the conductor, orchestra, soloists.', NULL, N'Entity')
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (215, 1, N'Director', NULL, NULL, N'Y YT', NULL, NULL, N'Name of the director.', NULL, N'Entity')
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (216, 1, N'CoDirector', NULL, NULL, N'Y YT', NULL, NULL, N'Name of the codirector.', NULL, N'Entity')
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (217, 1, N'AssistantDirector', NULL, NULL, N'Y YT', NULL, NULL, N'Name of the assistant director.', NULL, N'Entity')
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (218, 1, N'DirectorOfPhotography', NULL, NULL, N'Y YT', NULL, NULL, N'The name of the director of photography, also known as cinematographer.', NULL, N'Entity')
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (219, 1, N'SoundEngineer', NULL, NULL, N'Y YT', NULL, NULL, N'The name of the sound engineer or sound recordist.', NULL, N'Entity')
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (220, 1, N'ArtDirector', NULL, NULL, N'Y YT', NULL, NULL, N'The person who oversees the artists and craftspeople who build the sets.', NULL, N'Entity')
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (221, 1, N'ProductionDesigner', NULL, NULL, N'Y YT', NULL, NULL, N'The person responsible for designing the Overall visual appearance of a movie.', NULL, N'Entity')
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (222, 1, N'Choregrapher', NULL, NULL, N'Y YT', NULL, NULL, N'The name of the choregrapher.', NULL, N'Entity')
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (223, 1, N'CostumeDesigner', NULL, NULL, N'Y YT', NULL, NULL, N'The name of the costume designer.', NULL, N'Entity')
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (224, 1, N'Actor', NULL, NULL, N'Y YT', NULL, NULL, N'Real name of an actor or actress playing a role in the movie.', NULL, N'Entity')
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (225, 1, N'Actor_Character', NULL, NULL, N'Y YT', NULL, NULL, N'Name of the character an actor or actress plays in this movie.', NULL, N'Entity')
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (226, 1, N'WrittenBy', NULL, NULL, N'Y YT', NULL, NULL, N'The author of the story or script.', NULL, N'Entity')
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (227, 1, N'ScreenplayBy', NULL, NULL, N'Y YT', NULL, NULL, N'The author of the screenplay or scenario (used for movies and TV shows).', NULL, N'Entity')
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (228, 1, N'EditedBy', NULL, NULL, N'Y YT', NULL, NULL, N'Editors name', NULL, N'Entity')
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (229, 1, N'CommissionedBy', NULL, NULL, N'Y YT', NULL, NULL, N'name of the person or organization that commissioned the subject of the file', NULL, N'Entity')
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (230, 1, N'Producer', NULL, NULL, N'Y YT', NULL, NULL, N'Name of the producer of the movie.', NULL, N'Entity')
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (231, 1, N'CoProducer', NULL, NULL, N'Y YT', NULL, NULL, N'The name of a co-producer.', NULL, N'Entity')
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (232, 1, N'ExecutiveProducer', NULL, NULL, N'Y YT', NULL, NULL, N'The name of an executive producer.', NULL, N'Entity')
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (233, 1, N'MusicBy', NULL, NULL, N'Y YT', NULL, NULL, N'Main music-artist for a movie', NULL, N'Entity')
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (234, 1, N'DistributedBy', NULL, NULL, N'Y YT', NULL, NULL, N'Company the item is mainly distributed by ', NULL, N'Entity')
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (235, 1, N'OriginalSourceForm/DistributedBy', NULL, NULL, N'Y YT', NULL, NULL, N'Name of the person or organization who supplied the original subject', NULL, N'Entity')
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (236, 1, N'MasteredBy', NULL, NULL, N'Y YT', NULL, NULL, N'The engineer who mastered the content for a physical medium or for digital distribution.', NULL, N'Entity')
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (237, 1, N'EncodedBy', NULL, NULL, N'Y YT', NULL, NULL, N'Name of the person or organisation that encoded/ripped the audio file.', NULL, N'Entity')
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (238, 1, N'RemixedBy', NULL, NULL, N'Y YT', NULL, NULL, N'Name of the artist(s), that interpreted, remixed, or otherwise modified the item.', NULL, N'Entity')
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (239, 1, N'ProductionStudio', NULL, NULL, N'Y YT', NULL, NULL, N'Main production studio ', NULL, N'Entity')
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (240, 1, N'ThanksTo', NULL, NULL, N'Y YT', NULL, NULL, N'A very general tag for everyone else that wants to be listed.', NULL, N'Entity')
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (241, 1, N'Publisher', NULL, NULL, N'Y YT', NULL, NULL, N'Name of the organization publishing the album (i.e. the ''record label'') or movie.', NULL, N'Entity')
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (242, 1, N'Publisher/URL', NULL, NULL, N'Y YT', NULL, NULL, N'Publishers official webpage.', NULL, N'Entity')
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (243, 1, N'Label', NULL, NULL, N'Y YT', NULL, NULL, N'Brand or trademark associated with the marketing of music recordings and music videos.', NULL, N'Entity')
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (244, 1, N'Genre', NULL, NULL, N'Y YT', NULL, NULL, N'The main genre of the audio or video. e.g. classical, ambient-house, synthpop, sci-fi, drama, etc.', NULL, N'Classification')
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (245, 1, N'PodcastCategory', NULL, NULL, N'Y YT', NULL, NULL, N'Podcast category', NULL, N'Classification')
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (246, 1, N'Mood', NULL, NULL, N'Y YT', NULL, NULL, N'Intended to reflect the mood of the item with a few keywords, e.g. Romantic, Sad, Uplifting, etc.', NULL, N'Classification')
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (247, 1, N'ContentType', NULL, NULL, N'Y YT', NULL, NULL, N'The type of the item. e.g. Documentary, Feature Film, Cartoon, Music Video, Music, Sound FX, etc.', NULL, N'Classification')
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (248, 1, N'Subject', NULL, NULL, N'Y YT', NULL, NULL, N'Describes the topic of the file, such as Aerial view of Seattle..', NULL, N'Classification')
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (249, 1, N'Description', NULL, NULL, N'Y YT', NULL, NULL, N'A short description of the contents, such as Two birds flying.', NULL, N'Classification')
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (250, 1, N'Keywords', NULL, NULL, N'Y YT', NULL, NULL, N'Keywords to the item separated by a comma, used for searching.', NULL, N'Classification')
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (251, 1, N'Summary', NULL, NULL, N'Y YT', NULL, NULL, N'A plot outline or a summary of the story.', NULL, N'Classification')
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (252, 1, N'Synopsis', NULL, NULL, N'Y YT', NULL, NULL, N'A description of the story line of the item.', NULL, N'Classification')
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (253, 1, N'Period', NULL, NULL, N'Y YT', NULL, NULL, N'Describes the period that the piece is from or about. e.g. Renaissance.', NULL, N'Classification')
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (254, 1, N'LawRating', NULL, NULL, N'Y YT', NULL, NULL, N'Depending on the country it''s the format of the rating of a movie (P, R, X in the USA, an age in other countries or a URI defining a logo).', NULL, N'Classification')
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (255, 1, N'LawRating_Reason', NULL, NULL, N'Y YT', NULL, NULL, N'Reason for the law rating', NULL, N'Classification')
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (256, 1, N'ICRA', NULL, NULL, N'Y YT', NULL, NULL, N'The ICRA rating. (Previously RSACi)', NULL, N'Classification')
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (257, 1, N'Released_Date', NULL, NULL, N'Y YT', NULL, NULL, N'The date/year that the item was released.', NULL, N'Temporal')
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (258, 1, N'Original/Released_Date', NULL, NULL, N'Y YT', NULL, NULL, N'The date/year that the item was originaly released.', NULL, N'Temporal')
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (259, 1, N'Recorded_Date', NULL, NULL, N'Y YT', NULL, NULL, N'The time/date/year that the recording began.', NULL, N'Temporal')
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (260, 1, N'Encoded_Date', NULL, NULL, N'Y YT', NULL, NULL, N'The time/date/year that the encoding of this item was completed began.', NULL, N'Temporal')
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (261, 1, N'Tagged_Date', NULL, NULL, N'Y YT', NULL, NULL, N'The time/date/year that the tags were done for this item.', NULL, N'Temporal')
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (262, 1, N'Written_Date', NULL, NULL, N'Y YT', NULL, NULL, N'The time/date/year that the composition of the music/script began.', NULL, N'Temporal')
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (263, 1, N'Mastered_Date', NULL, NULL, N'Y YT', NULL, NULL, N'The time/date/year that the item was tranfered to a digitalmedium.', NULL, N'Temporal')
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (264, 1, N'File_Created_Date', NULL, NULL, N'N NT', NULL, NULL, N'The time that the file was created on the file system', NULL, N'Temporal')
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (265, 1, N'File_Created_Date_Local', NULL, NULL, N'N NT', NULL, NULL, N'The time that the file was created on the file system (Warning: this field depends of local configuration, do not use it in an international database)', NULL, N'Temporal')
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (266, 1, N'File_Modified_Date', NULL, NULL, N'N NT', NULL, NULL, N'The time that the file was modified on the file system', NULL, N'Temporal')
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (267, 1, N'File_Modified_Date_Local', NULL, NULL, N'N NT', NULL, NULL, N'The time that the file was modified on the file system (Warning: this field depends of local configuration, do not use it in an international database)', NULL, N'Temporal')
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (268, 1, N'Recorded_Location', NULL, NULL, N'Y YT', NULL, NULL, N'Location where track was recorded. (See COMPOSITION_LOCATION for format)', NULL, N'Spatial')
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (269, 1, N'Written_Location', NULL, NULL, N'Y YT', NULL, NULL, N'Location that the item was originaly designed/written. Information should be stored in the following format: country code, state/province, city where the coutry code is the same 2 octets as in Internet domains, or possibly ISO-3166. e.g. US, Texas, Austin', NULL, N'Spatial')
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (270, 1, N'Archival_Location', NULL, NULL, N'Y YT', NULL, NULL, N'Location, where an item is archived, e.eg. Louvre,Paris,France', NULL, N'Spatial')
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (271, 1, N'Encoded_Application', NULL, NULL, N'N YT', NULL, NULL, N'Name of the software package used to create the file, such as Microsoft WaveEdit', NULL, N'Technical')
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (272, 1, N'Encoded_Application/String', NULL, NULL, N'Y NT', NULL, NULL, N'Name of the software package used to create the file, such as Microsoft WaveEdit, trying to have the format ''CompanyName ProductName (OperatingSystem) Version (Date)''', NULL, N'Technical')
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (273, 1, N'Encoded_Application_CompanyName', NULL, NULL, N'N YT', NULL, NULL, N'Name of the company', NULL, N'Technical')
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (274, 1, N'Encoded_Application_Name', NULL, NULL, N'N YT', NULL, NULL, N'Name of the product', NULL, N'Technical')
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (275, 1, N'Encoded_Application_Version', NULL, NULL, N'N YT', NULL, NULL, N'Version of the product', NULL, N'Technical')
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (276, 1, N'Encoded_Application_Url', NULL, NULL, N'N YT', NULL, NULL, N'Name of the software package used to create the file, such as Microsoft WaveEdit.', NULL, N'Technical')
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (277, 1, N'Encoded_Library', NULL, NULL, N'N YT', NULL, NULL, N'Software used to create the file', NULL, N'Technical')
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (278, 1, N'Encoded_Library/String', NULL, NULL, N'Y NT', NULL, NULL, N'Software used to create the file, trying to have the format ''CompanyName ProductName (OperatingSystem) Version (Date)''', NULL, N'Technical')
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (279, 1, N'Encoded_Library_CompanyName', NULL, NULL, N'N YT', NULL, NULL, N'Name of the company', NULL, N'Technical')
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (280, 1, N'Encoded_Library_Name', NULL, NULL, N'N NT', NULL, NULL, N'Name of the the encoding-software', NULL, N'Technical')
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (281, 1, N'Encoded_Library_Version', NULL, NULL, N'N NT', NULL, NULL, N'Version of encoding-software', NULL, N'Technical')
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (282, 1, N'Encoded_Library_Date', NULL, NULL, N'N NT', NULL, NULL, N'Release date of software', NULL, N'Technical')
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (283, 1, N'Encoded_Library_Settings', NULL, NULL, N'Y YT', NULL, NULL, N'Parameters used by the software', NULL, N'Technical')
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (284, 1, N'Encoded_OperatingSystem', NULL, NULL, N'N YT', NULL, NULL, N'Operating System of encoding-software', NULL, N'Technical')
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (285, 1, N'Cropped', NULL, NULL, N'Y YT', NULL, NULL, N'Describes whether an image has been cropped and, if so, how it was cropped.', NULL, N'Technical')
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (286, 1, N'Dimensions', NULL, NULL, N'Y YT', NULL, NULL, N'Specifies the size of the original subject of the file. eg 8.5 in h, 11 in w', NULL, N'Technical')
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (287, 1, N'DotsPerInch', NULL, NULL, N'Y YT', NULL, NULL, N'Stores dots per inch setting of the digitizer used to produce the file', NULL, N'Technical')
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (288, 1, N'Lightness', NULL, NULL, N'Y YT', NULL, NULL, N'Describes the changes in lightness settings on the digitizer required to produce the file', NULL, N'Technical')
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (289, 1, N'OriginalSourceMedium', NULL, NULL, N'Y YT', NULL, NULL, N'Original medium of the material, e.g. vinyl, Audio-CD, Super8 or BetaMax', NULL, N'Technical')
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (290, 1, N'OriginalSourceForm', NULL, NULL, N'Y YT', NULL, NULL, N'Original form of the material, e.g. slide, paper, map', NULL, N'Technical')
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (291, 1, N'OriginalSourceForm/NumColors', NULL, NULL, N'Y YT', NULL, NULL, N'Number of colors requested when digitizing, e.g. 256 for images or 32 bit RGB for video', NULL, N'Technical')
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (292, 1, N'OriginalSourceForm/Name', NULL, NULL, N'Y YT', NULL, NULL, N'Name of the product the file was originally intended for', NULL, N'Technical')
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (293, 1, N'OriginalSourceForm/Cropped', NULL, NULL, N'Y YT', NULL, NULL, N'Describes whether an image has been cropped and, if so, how it was cropped. e.g. 16:9 to 4:3, top and bottom', NULL, N'Technical')
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (294, 1, N'OriginalSourceForm/Sharpness', NULL, NULL, N'Y YT', NULL, NULL, N'Identifies the changes in sharpness for the digitizer requiered to produce the file', NULL, N'Technical')
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (295, 1, N'Tagged_Application', NULL, NULL, N'Y YT', NULL, NULL, N'Software used to tag this file', NULL, N'Technical')
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (296, 1, N'BPM', NULL, NULL, N'Y YT', NULL, NULL, N'Average number of beats per minute', NULL, N'Technical')
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (297, 1, N'ISRC', NULL, NULL, N'Y YT', NULL, NULL, N'International Standard Recording Code, excluding the ISRC prefix and including hyphens.', NULL, N'Identifier')
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (298, 1, N'ISBN', NULL, NULL, N'Y YT', NULL, NULL, N'International Standard Book Number.', NULL, N'Identifier')
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (299, 1, N'BarCode', NULL, NULL, N'Y YT', NULL, NULL, N'EAN-13 (13-digit European Article Numbering) or UPC-A (12-digit Universal Product Code) bar code identifier.', NULL, N'Identifier')
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (300, 1, N'LCCN', NULL, NULL, N'Y YT', NULL, NULL, N'Library of Congress Control Number.', NULL, N'Identifier')
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (301, 1, N'CatalogNumber', NULL, NULL, N'Y YT', NULL, NULL, N'A label-specific catalogue number used to identify the release. e.g. TIC 01.', NULL, N'Identifier')
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (302, 1, N'LabelCode', NULL, NULL, N'Y YT', NULL, NULL, N'A 4-digit or 5-digit number to identify the record label, typically printed as (LC) xxxx or (LC) 0xxxx on CDs medias or covers, with only the number being stored.', NULL, N'Identifier')
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (303, 1, N'Owner', NULL, NULL, N'Y YT', NULL, NULL, N'Owner of the file', NULL, N'Legal')
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (304, 1, N'Copyright', NULL, NULL, N'Y YT', NULL, NULL, N'Copyright attribution.', NULL, N'Legal')
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (305, 1, N'Copyright/Url', NULL, NULL, N'Y YT', NULL, NULL, N'Link to a site with copyright/legal information.', NULL, N'Legal')
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (306, 1, N'Producer_Copyright', NULL, NULL, N'Y YT', NULL, NULL, N'The copyright information as per the productioncopyright holder.', NULL, N'Legal')
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (307, 1, N'TermsOfUse', NULL, NULL, N'Y YT', NULL, NULL, N'License information, e.g., All Rights Reserved,Any Use Permitted.', NULL, N'Legal')
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (308, 1, N'ServiceName', NULL, NULL, N'Y YTY', NULL, NULL, NULL, NULL, N'Legal')
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (309, 1, N'ServiceChannel', NULL, NULL, N'Y YTY', NULL, NULL, NULL, NULL, N'Legal')
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (310, 1, N'Service/Url', NULL, NULL, N'Y YT', NULL, NULL, NULL, NULL, N'Legal')
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (311, 1, N'ServiceProvider', NULL, NULL, N'Y YTY', NULL, NULL, NULL, NULL, N'Legal')
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (312, 1, N'ServiceProviderr/Url', NULL, NULL, N'Y YT', NULL, NULL, NULL, NULL, N'Legal')
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (313, 1, N'ServiceType', NULL, NULL, N'Y YTY', NULL, NULL, NULL, NULL, N'Legal')
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (314, 1, N'NetworkName', NULL, NULL, N'Y YTY', NULL, NULL, NULL, NULL, N'Legal')
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (315, 1, N'OriginalNetworkName', NULL, NULL, N'Y YTY', NULL, NULL, NULL, NULL, N'Legal')
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (316, 1, N'Country', NULL, NULL, N'Y YTY', NULL, NULL, NULL, NULL, N'Legal')
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (317, 1, N'TimeZone', NULL, NULL, N'Y YTY', NULL, NULL, NULL, NULL, N'Legal')
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (318, 1, N'Cover', NULL, NULL, N'Y YTY', NULL, NULL, N'Is there a cover', NULL, N'Info')
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (319, 1, N'Cover_Description', NULL, NULL, N'Y YTY', NULL, NULL, N'short descriptio, e.g. Earth in space', NULL, N'Info')
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (320, 1, N'Cover_Type', NULL, NULL, N'Y YTY', NULL, NULL, NULL, NULL, N'Info')
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (321, 1, N'Cover_Mime', NULL, NULL, N'Y YTY', NULL, NULL, NULL, NULL, N'Info')
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (322, 1, N'Cover_Data', NULL, NULL, N'N YT', NULL, NULL, N'Cover, in binary format encoded BASE64', NULL, N'Info')
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (323, 1, N'Lyrics', NULL, NULL, N'Y YT', NULL, NULL, N'Text of a song', NULL, N'Info')
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (324, 1, N'Comment', NULL, NULL, N'Y YT', NULL, NULL, N'Any comment related to the content.', NULL, N'Personal')
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (325, 1, N'Rating', NULL, NULL, N'Y YT', NULL, NULL, N'A numeric value defining how much a person likes the song/movie. The number is between 0 and 5 with decimal values possible (e.g. 2.7), 5(.0) being the highest possible rating.', NULL, N'Personal')
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (326, 1, N'Added_Date', NULL, NULL, N'Y YT', NULL, NULL, N'Date/year the item was added to the owners collection', NULL, N'Personal')
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (327, 1, N'Played_First_Date', NULL, NULL, N'Y YT', NULL, NULL, N'The date, the owner first played an item', NULL, N'Personal')
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (328, 1, N'Played_Last_Date', NULL, NULL, N'Y YT', NULL, NULL, N'The date, the owner last played an item', NULL, N'Personal')
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (329, 1, N'Played_Count', NULL, NULL, N'Y YI', NULL, NULL, N'Number of times an item was played', NULL, N'Personal')
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (330, 1, N'EPG_Positions_Begin', NULL, NULL, N'N YI', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (331, 1, N'EPG_Positions_End', NULL, NULL, N'N YI', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (332, 2, N'Status', NULL, NULL, N'N NI', NULL, NULL, N'bit field (0=IsAccepted, 1=IsFilled, 2=IsUpdated, 3=IsFinished)', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (333, 2, N'StreamCount', NULL, NULL, N'N NI', NULL, NULL, N'Count of streams of that kind available', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (334, 2, N'StreamKind', N'Video', NULL, N'N NT', NULL, NULL, N'Stream type name', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (335, 2, N'StreamKind/String', NULL, NULL, N'N NT', NULL, NULL, N'Stream type name', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (336, 2, N'StreamKindID', NULL, NULL, N'N NI', NULL, NULL, N'Number of the stream (base=0)', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (337, 2, N'StreamKindPos', NULL, NULL, N'N NI', NULL, NULL, N'When multiple streams, number of the stream (base=1)', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (338, 2, N'StreamOrder', NULL, NULL, N'N YIY', NULL, NULL, N'Stream order in the file, whatever is the kind of stream (base=0)', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (339, 2, N'FirstPacketOrder', NULL, NULL, N'N YIY', NULL, NULL, N'Order of the first fully decodable packet met in the file, whatever is the kind of stream (base=0)', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (340, 2, N'Inform', NULL, NULL, N'N NT', NULL, NULL, N'Last **Inform** call', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (341, 2, N'ID', NULL, NULL, N'N YIY', NULL, NULL, N'The ID for this stream in this file', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (342, 2, N'ID/String', NULL, NULL, N'Y NT', NULL, NULL, N'The ID for this stream in this file', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (343, 2, N'OriginalSourceMedium_ID', NULL, NULL, N'N YIY', NULL, NULL, N'The ID for this stream in the original medium of the material', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (344, 2, N'OriginalSourceMedium_ID/String', NULL, NULL, N'Y NT', NULL, NULL, N'The ID for this stream in the original medium of the material', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (345, 2, N'UniqueID', NULL, NULL, N'N YIY', NULL, NULL, N'The unique ID for this stream, should be copied with stream copy', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (346, 2, N'UniqueID/String', NULL, NULL, N'Y NT', NULL, NULL, N'The unique ID for this stream, should be copied with stream copy', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (347, 2, N'MenuID', NULL, NULL, N'N YIY', NULL, NULL, N'The menu ID for this stream in this file', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (348, 2, N'MenuID/String', NULL, NULL, N'Y NT', NULL, NULL, N'The menu ID for this stream in this file', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (349, 2, N'Format', NULL, NULL, N'Y YTY', NULL, NULL, N'Format used', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (350, 2, N'Format/Info', NULL, NULL, N'Y NT', NULL, NULL, N'Info about Format', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (351, 2, N'Format/Url', NULL, NULL, N'N NT', NULL, NULL, N'Link', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (352, 2, N'Format_Commercial', NULL, NULL, N'N NT', NULL, NULL, N'Commercial name used by vendor for theses setings or Format field if there is no difference', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (353, 2, N'Format_Commercial_IfAny', NULL, NULL, N'Y YTY', NULL, NULL, N'Commercial name used by vendor for theses setings if there is one', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (354, 2, N'Format_Version', NULL, NULL, N'Y YTY', NULL, NULL, N'Version of this format', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (355, 2, N'Format_Profile', NULL, NULL, N'Y YTY', NULL, NULL, N'Profile of the Format (old XML: ''Profile@Level@Tier'' format', N' MIXML: ''Profile'' only)', NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (356, 2, N'Format_Level', NULL, NULL, N'Y YTY', NULL, NULL, N'Level of the Format (only MIXML)', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (357, 2, N'Format_Tier', NULL, NULL, N'Y YTY', NULL, NULL, N'Tier of the Format (only MIXML)', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (358, 2, N'Format_Compression', NULL, NULL, N'Y YTY', NULL, NULL, N'Compression method used', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (359, 2, N'MultiView_BaseProfile', NULL, NULL, N'Y YTY', NULL, NULL, N'Multiview, profile of the base stream', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (360, 2, N'MultiView_Count', NULL, NULL, N'Y YTY', NULL, NULL, N'Multiview, count of views', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (361, 2, N'MultiView_Layout', NULL, NULL, N'Y YTY', NULL, NULL, N'Multiview, how views are muxed in the container in case of it is not muxing in the stream', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (362, 2, N'Format_Settings', NULL, NULL, N'N YT', NULL, NULL, N'Settings needed for decoder used, summary', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (363, 2, N'Format_Settings_BVOP', NULL, N'Yes', N'N YTY', NULL, NULL, N'Settings needed for decoder used, detailled', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (364, 2, N'Format_Settings_BVOP/String', NULL, NULL, N'Y NT', NULL, NULL, N'Settings needed for decoder used, detailled', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (365, 2, N'Format_Settings_QPel', NULL, N'Yes', N'N YTY', NULL, NULL, N'Settings needed for decoder used, detailled', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (366, 2, N'Format_Settings_QPel/String', NULL, NULL, N'Y NT', NULL, NULL, N'Settings needed for decoder used, detailled', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (367, 2, N'Format_Settings_GMC', NULL, N' warppoint', N'N YIY', NULL, NULL, N'Settings needed for decoder used, detailled', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (368, 2, N'Format_Settings_GMC/String', NULL, NULL, N'Y NT', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (369, 2, N'Format_Settings_Matrix', NULL, NULL, N'N YTY', NULL, NULL, N'Settings needed for decoder used, detailled', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (370, 2, N'Format_Settings_Matrix/String', NULL, NULL, N'Y NT', NULL, NULL, N'Settings needed for decoder used, detailled', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (371, 2, N'Format_Settings_Matrix_Data', NULL, NULL, N'N NTY', NULL, NULL, N'Matrix, in binary format encoded BASE64. Order = intra, non-intra, gray intra, gray non-intra', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (372, 2, N'Format_Settings_CABAC', NULL, N'Yes', N'N YTY', NULL, NULL, N'Settings needed for decoder used, detailled', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (373, 2, N'Format_Settings_CABAC/String', NULL, NULL, N'Y NT', NULL, NULL, N'Settings needed for decoder used, detailled', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (374, 2, N'Format_Settings_RefFrames', NULL, N' frame', N'N YIY', NULL, NULL, N'Settings needed for decoder used, detailled', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (375, 2, N'Format_Settings_RefFrames/String', NULL, NULL, N'Y NT', NULL, NULL, N'Settings needed for decoder used, detailled', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (376, 2, N'Format_Settings_Pulldown', NULL, NULL, N'Y YTY', NULL, NULL, N'Settings needed for decoder used, detailled', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (377, 2, N'Format_Settings_FrameMode', NULL, NULL, N'Y YTY', NULL, NULL, N'Settings needed for decoder used, detailled', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (378, 2, N'Format_Settings_GOP', NULL, NULL, N'Y YTY', NULL, NULL, N'Settings needed for decoder used, detailled (M=x N=y)', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (379, 2, N'Format_Settings_PictureStructure', NULL, NULL, N'Y YTY', NULL, NULL, N'Settings needed for decoder used, detailled (Type of frame, and field/frame info)', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (380, 2, N'Format_Settings_Wrapping', NULL, NULL, N'Y YTY', NULL, NULL, N'Wrapping mode (Frame wrapped or Clip wrapped)', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (381, 2, N'InternetMediaType', NULL, NULL, N'N YT', NULL, NULL, N'Internet Media Type (aka MIME Type, Content-Type)', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (382, 2, N'MuxingMode', NULL, NULL, N'Y YTY', NULL, NULL, N'How this file is muxed in the container', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (383, 2, N'CodecID', NULL, NULL, N'Y YTY', NULL, NULL, N'Codec ID (found in some containers)', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (384, 2, N'CodecID/String', NULL, NULL, N'Y NT', NULL, NULL, N'Codec ID (found in some containers)', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (385, 2, N'CodecID/Info', NULL, NULL, N'Y NT', NULL, NULL, N'Info on the codec', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (386, 2, N'CodecID/Hint', NULL, NULL, N'Y NT', NULL, NULL, N'Hint/popular name for this codec', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (387, 2, N'CodecID/Url', NULL, NULL, N'N NT', NULL, NULL, N'Homepage for more details about this codec', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (388, 2, N'CodecID_Description', NULL, NULL, N'Y YT', NULL, NULL, N'Manual description given by the container', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (389, 2, N'Codec', NULL, NULL, N'N NT', NULL, NULL, N'Deprecated, do not use in new projects', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (390, 2, N'Codec/String', NULL, NULL, N'N NT', NULL, NULL, N'Deprecated, do not use in new projects', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (391, 2, N'Codec/Family', NULL, NULL, N'N NT', NULL, NULL, N'Deprecated, do not use in new projects', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (392, 2, N'Codec/Info', NULL, NULL, N'N NT', NULL, NULL, N'Deprecated, do not use in new projects', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (393, 2, N'Codec/Url', NULL, NULL, N'N NT', NULL, NULL, N'Deprecated, do not use in new projects', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (394, 2, N'Codec/CC', NULL, NULL, N'N NT', NULL, NULL, N'Deprecated, do not use in new projects', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (395, 2, N'Codec_Profile', NULL, NULL, N'N NT', NULL, NULL, N'Deprecated, do not use in new projects', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (396, 2, N'Codec_Description', NULL, NULL, N'N NT', NULL, NULL, N'Deprecated, do not use in new projects', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (397, 2, N'Codec_Settings', NULL, NULL, N'N NT', NULL, NULL, N'Deprecated, do not use in new projects', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (398, 2, N'Codec_Settings_PacketBitStream', NULL, NULL, N'N NT', NULL, NULL, N'Deprecated, do not use in new projects', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (399, 2, N'Codec_Settings_BVOP', NULL, NULL, N'N NT', NULL, NULL, N'Deprecated, do not use in new projects', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (400, 2, N'Codec_Settings_QPel', NULL, NULL, N'N NT', NULL, NULL, N'Deprecated, do not use in new projects', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (401, 2, N'Codec_Settings_GMC', NULL, N' warppoint', N'N NT', NULL, NULL, N'Deprecated, do not use in new projects', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (402, 2, N'Codec_Settings_GMC/String', NULL, NULL, N'N NT', NULL, NULL, N'Deprecated, do not use in new projects', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (403, 2, N'Codec_Settings_Matrix', NULL, NULL, N'N NT', NULL, NULL, N'Deprecated, do not use in new projects', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (404, 2, N'Codec_Settings_Matrix_Data', NULL, NULL, N'N NT', NULL, NULL, N'Deprecated, do not use in new projects', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (405, 2, N'Codec_Settings_CABAC', NULL, NULL, N'N NT', NULL, NULL, N'Deprecated, do not use in new projects', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (406, 2, N'Codec_Settings_RefFrames', NULL, NULL, N'N NT', NULL, NULL, N'Deprecated, do not use in new projects', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (407, 2, N'Duration', NULL, N' ms', N'N YIY', NULL, NULL, N'Play time of the stream in ms', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (408, 2, N'Duration/String', NULL, NULL, N'Y NT', NULL, NULL, N'Play time in format : XXx YYy only, YYy omited if zero', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (409, 2, N'Duration/String1', NULL, NULL, N'N NT', NULL, NULL, N'Play time in format : HHh MMmn SSs MMMms, XX omited if zero', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (410, 2, N'Duration/String2', NULL, NULL, N'N NT', NULL, NULL, N'Play time in format : XXx YYy only, YYy omited if zero', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (411, 2, N'Duration/String3', NULL, NULL, N'N NT', NULL, NULL, N'Play time in format : HH:MM:SS.MMM', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (412, 2, N'Duration/String4', NULL, NULL, N'N NT', NULL, NULL, N'Play time in format : HH:MM:SS:FF, last colon replaced by semicolon for drop frame if available', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (413, 2, N'Duration/String5', NULL, NULL, N'N NT', NULL, NULL, N'Play time in format : HH:MM:SS.mmm (HH:MM:SS:FF)', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (414, 2, N'Duration_FirstFrame', NULL, N' ms', N'N YIY', NULL, NULL, N'Duration of the first frame if it is longer than others, in ms', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (415, 2, N'Duration_FirstFrame/String', NULL, NULL, N'Y NT', NULL, NULL, N'Duration of the first frame if it is longer than others, in format : XXx YYy only, YYy omited if zero', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (416, 2, N'Duration_FirstFrame/String1', NULL, NULL, N'N NT', NULL, NULL, N'Duration of the first frame if it is longer than others, in format : HHh MMmn SSs MMMms, XX omited if zero', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (417, 2, N'Duration_FirstFrame/String2', NULL, NULL, N'N NT', NULL, NULL, N'Duration of the first frame if it is longer than others, in format : XXx YYy only, YYy omited if zero', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (418, 2, N'Duration_FirstFrame/String3', NULL, NULL, N'N NT', NULL, NULL, N'Duration of the first frame if it is longer than others, in format : HH:MM:SS.MMM', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (419, 2, N'Duration_FirstFrame/String4', NULL, NULL, N'N NT', NULL, NULL, N'Play time in format : HH:MM:SS:FF, last colon replaced by semicolon for drop frame if available', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (420, 2, N'Duration_FirstFrame/String5', NULL, NULL, N'N NT', NULL, NULL, N'Play time in format : HH:MM:SS.mmm (HH:MM:SS:FF)', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (421, 2, N'Duration_LastFrame', NULL, N' ms', N'N YIY', NULL, NULL, N'Duration of the last frame if it is longer than others, in ms', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (422, 2, N'Duration_LastFrame/String', NULL, NULL, N'Y NT', NULL, NULL, N'Duration of the last frame if it is longer than others, in format : XXx YYy only, YYy omited if zero', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (423, 2, N'Duration_LastFrame/String1', NULL, NULL, N'N NT', NULL, NULL, N'Duration of the last frame if it is longer than others, in format : HHh MMmn SSs MMMms, XX omited if zero', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (424, 2, N'Duration_LastFrame/String2', NULL, NULL, N'N NT', NULL, NULL, N'Duration of the last frame if it is longer than others, in format : XXx YYy only, YYy omited if zero', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (425, 2, N'Duration_LastFrame/String3', NULL, NULL, N'N NT', NULL, NULL, N'Duration of the last frame if it is longer than others, in format : HH:MM:SS.MMM', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (426, 2, N'Duration_LastFrame/String4', NULL, NULL, N'N NT', NULL, NULL, N'Play time in format : HH:MM:SS:FF, last colon replaced by semicolon for drop frame if available', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (427, 2, N'Duration_LastFrame/String5', NULL, NULL, N'N NT', NULL, NULL, N'Play time in format : HH:MM:SS.mmm (HH:MM:SS:FF)', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (428, 2, N'Source_Duration', NULL, N' ms', N'N YIY', NULL, NULL, N'Source Play time of the stream, in ms', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (429, 2, N'Source_Duration/String', NULL, NULL, N'Y NT', NULL, NULL, N'Source Play time in format : XXx YYy only, YYy omited if zero', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (430, 2, N'Source_Duration/String1', NULL, NULL, N'N NT', NULL, NULL, N'Source Play time in format : HHh MMmn SSs MMMms, XX omited if zero', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (431, 2, N'Source_Duration/String2', NULL, NULL, N'N NT', NULL, NULL, N'Source Play time in format : XXx YYy only, YYy omited if zero', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (432, 2, N'Source_Duration/String3', NULL, NULL, N'N NT', NULL, NULL, N'Source Play time in format : HH:MM:SS.MMM', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (433, 2, N'Source_Duration/String4', NULL, NULL, N'N NT', NULL, NULL, N'Play time in format : HH:MM:SS:FF, last colon replaced by semicolon for drop frame if available', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (434, 2, N'Source_Duration/String5', NULL, NULL, N'N NT', NULL, NULL, N'Play time in format : HH:MM:SS.mmm (HH:MM:SS:FF)', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (435, 2, N'Source_Duration_FirstFrame', NULL, N' ms', N'N YIY', NULL, NULL, N'Source Duration of the first frame if it is longer than others, in ms', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (436, 2, N'Source_Duration_FirstFrame/String', NULL, NULL, N'Y NT', NULL, NULL, N'Source Duration of the first frame if it is longer than others, in format : XXx YYy only, YYy omited if zero', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (437, 2, N'Source_Duration_FirstFrame/String1', NULL, NULL, N'N NT', NULL, NULL, N'Source Duration of the first frame if it is longer than others, in format : HHh MMmn SSs MMMms, XX omited if zero', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (438, 2, N'Source_Duration_FirstFrame/String2', NULL, NULL, N'N NT', NULL, NULL, N'Source Duration of the first frame if it is longer than others, in format : XXx YYy only, YYy omited if zero', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (439, 2, N'Source_Duration_FirstFrame/String3', NULL, NULL, N'N NT', NULL, NULL, N'Source Duration of the first frame if it is longer than others, in format : HH:MM:SS.MMM', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (440, 2, N'Source_Duration_FirstFrame/String4', NULL, NULL, N'N NT', NULL, NULL, N'Play time in format : HH:MM:SS:FF, last colon replaced by semicolon for drop frame if available', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (441, 2, N'Source_Duration_FirstFrame/String5', NULL, NULL, N'N NT', NULL, NULL, N'Play time in format : HH:MM:SS.mmm (HH:MM:SS:FF)', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (442, 2, N'Source_Duration_LastFrame', NULL, N' ms', N'N YIY', NULL, NULL, N'Source Duration of the last frame if it is longer than others, in ms', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (443, 2, N'Source_Duration_LastFrame/String', NULL, NULL, N'Y NT', NULL, NULL, N'Source Duration of the last frame if it is longer than others, in format : XXx YYy only, YYy omited if zero', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (444, 2, N'Source_Duration_LastFrame/String1', NULL, NULL, N'N NT', NULL, NULL, N'Source Duration of the last frame if it is longer than others, in format : HHh MMmn SSs MMMms, XX omited if zero', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (445, 2, N'Source_Duration_LastFrame/String2', NULL, NULL, N'N NT', NULL, NULL, N'Source Duration of the last frame if it is longer than others, in format : XXx YYy only, YYy omited if zero', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (446, 2, N'Source_Duration_LastFrame/String3', NULL, NULL, N'N NT', NULL, NULL, N'Source Duration of the last frame if it is longer than others, in format : HH:MM:SS.MMM', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (447, 2, N'Source_Duration_LastFrame/String4', NULL, NULL, N'N NT', NULL, NULL, N'Play time in format : HH:MM:SS:FF, last colon replaced by semicolon for drop frame if available', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (448, 2, N'Source_Duration_LastFrame/String5', NULL, NULL, N'N NT', NULL, NULL, N'Play time in format : HH:MM:SS.mmm (HH:MM:SS:FF)', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (449, 2, N'BitRate_Mode', NULL, NULL, N'N YTY', NULL, NULL, N'Bit rate mode (VBR, CBR)', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (450, 2, N'BitRate_Mode/String', NULL, NULL, N'Y NT', NULL, NULL, N'Bit rate mode (Variable, Cconstant)', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (451, 2, N'BitRate', NULL, N' bps', N'N YFY', NULL, NULL, N'Bit rate in bps', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (452, 2, N'BitRate/String', NULL, NULL, N'Y NT', NULL, NULL, N'Bit rate (with measurement)', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (453, 2, N'BitRate_Minimum', NULL, N' bps', N'N YFY', NULL, NULL, N'Minimum Bit rate in bps', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (454, 2, N'BitRate_Minimum/String', NULL, NULL, N'Y NT', NULL, NULL, N'Minimum Bit rate (with measurement)', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (455, 2, N'BitRate_Nominal', NULL, N' bps', N'N YFY', NULL, NULL, N'Nominal Bit rate in bps', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (456, 2, N'BitRate_Nominal/String', NULL, NULL, N'Y NT', NULL, NULL, N'Nominal Bit rate (with measurement)', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (457, 2, N'BitRate_Maximum', NULL, N' bps', N'N YFY', NULL, NULL, N'Maximum Bit rate in bps', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (458, 2, N'BitRate_Maximum/String', NULL, NULL, N'Y NT', NULL, NULL, N'Maximum Bit rate (with measurement)', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (459, 2, N'BitRate_Encoded', NULL, N' bps', N'N YFY', NULL, NULL, N'Encoded (with forced padding) bit rate in bps, if some container padding is present', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (460, 2, N'BitRate_Encoded/String', NULL, NULL, N'Y NT', NULL, NULL, N'Encoded (with forced padding) bit rate (with measurement), if some container padding is present', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (461, 2, N'Width', NULL, N' pixel', N'N YIY', NULL, NULL, N'Width (aperture size if present) in pixel', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (462, 2, N'Width/String', NULL, NULL, N'Y NT', NULL, NULL, N'Width (aperture size if present) with measurement (pixel)', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (463, 2, N'Width_Offset', NULL, N' pixel', N'N YIY', NULL, NULL, N'Offset between original width and displayed width in pixel', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (464, 2, N'Width_Offset/String', NULL, NULL, N'N NT', NULL, NULL, N'Offset between original width and displayed width in pixel', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (465, 2, N'Width_Original', NULL, N' pixel', N'N YIY', NULL, NULL, N'Original (in the raw stream) width in pixel', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (466, 2, N'Width_Original/String', NULL, NULL, N'Y NT', NULL, NULL, N'Original (in the raw stream) width with measurement (pixel)', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (467, 2, N'Width_CleanAperture', NULL, N' pixel', N'N YIY', NULL, NULL, N'Clean Aperture width in pixel', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (468, 2, N'Width_CleanAperture/String', NULL, NULL, N'Y NT', NULL, NULL, N'Clean Aperture width with measurement (pixel)', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (469, 2, N'Height', NULL, N' pixel', N'N YIY', NULL, NULL, N'Height in pixel', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (470, 2, N'Height/String', NULL, NULL, N'Y NT', NULL, NULL, N'Height with measurement (pixel)', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (471, 2, N'Height_Offset', NULL, N' pixel', N'N YIY', NULL, NULL, N'Offset between original height and displayed height in pixel', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (472, 2, N'Height_Offset/String', NULL, NULL, N'N NT', NULL, NULL, N'Offset between original height and displayed height  in pixel', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (473, 2, N'Height_Original', NULL, N' pixel', N'N YIY', NULL, NULL, N'Original (in the raw stream) height in pixel', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (474, 2, N'Height_Original/String', NULL, NULL, N'Y NT', NULL, NULL, N'Original (in the raw stream) height with measurement (pixel)', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (475, 2, N'Height_CleanAperture', NULL, N' pixel', N'N YI', NULL, NULL, N'Clean Aperture height in pixel', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (476, 2, N'Height_CleanAperture/String', NULL, NULL, N'Y NT', NULL, NULL, N'Clean Aperture height with measurement (pixel)', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (477, 2, N'Stored_Width', NULL, NULL, N'N YIY', NULL, NULL, N'Stored width', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (478, 2, N'Stored_Height', NULL, NULL, N'N YIY', NULL, NULL, N'Stored height', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (479, 2, N'Sampled_Width', NULL, NULL, N'N YIY', NULL, NULL, N'Sampled width', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (480, 2, N'Sampled_Height', NULL, NULL, N'N YIY', NULL, NULL, N'Sampled height', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (481, 2, N'PixelAspectRatio', NULL, NULL, N'N YFY', NULL, NULL, N'Pixel Aspect ratio', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (482, 2, N'PixelAspectRatio/String', NULL, NULL, N'N NT', NULL, NULL, N'Pixel Aspect ratio', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (483, 2, N'PixelAspectRatio_Original', NULL, NULL, N'N YFY', NULL, NULL, N'Original (in the raw stream) Pixel Aspect ratio', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (484, 2, N'PixelAspectRatio_Original/String', NULL, NULL, N'N NT', NULL, NULL, N'Original (in the raw stream) Pixel Aspect ratio', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (485, 2, N'PixelAspectRatio_CleanAperture', NULL, NULL, N'N YF', NULL, NULL, N'Clean Aperture Pixel Aspect ratio', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (486, 2, N'PixelAspectRatio_CleanAperture/String', NULL, NULL, N'N NT', NULL, NULL, N'Clean Aperture Pixel Aspect ratio', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (487, 2, N'DisplayAspectRatio', NULL, NULL, N'N YFY', NULL, NULL, N'Display Aspect ratio', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (488, 2, N'DisplayAspectRatio/String', NULL, NULL, N'Y NT', NULL, NULL, N'Display Aspect ratio', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (489, 2, N'DisplayAspectRatio_Original', NULL, NULL, N'N YFY', NULL, NULL, N'Original (in the raw stream) Display Aspect ratio', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (490, 2, N'DisplayAspectRatio_Original/String', NULL, NULL, N'Y NT', NULL, NULL, N'Original (in the raw stream) Display Aspect ratio', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (491, 2, N'DisplayAspectRatio_CleanAperture', NULL, NULL, N'N YF', NULL, NULL, N'Clean Aperture Display Aspect ratio', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (492, 2, N'DisplayAspectRatio_CleanAperture/String', NULL, NULL, N'Y NT', NULL, NULL, N'Clean Aperture Display Aspect ratio', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (493, 2, N'ActiveFormatDescription', NULL, NULL, N'N YNY', NULL, NULL, N'Active Format Description (AFD value)', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (494, 2, N'ActiveFormatDescription/String', NULL, NULL, N'Y NT', NULL, NULL, N'Active Format Description (text)', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (495, 2, N'ActiveFormatDescription_MuxingMode', NULL, NULL, N'N YT', NULL, NULL, N'Active Format Description (AFD value) muxing mode (Ancillary or Raw stream)', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (496, 2, N'Rotation', NULL, NULL, N'N YTY', NULL, NULL, N'Rotation', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (497, 2, N'Rotation/String', NULL, NULL, N'Y NT', NULL, NULL, N'Rotation (if not horizontal)', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (498, 2, N'FrameRate_Mode', NULL, NULL, N'N YTY', NULL, NULL, N'Frame rate mode (CFR, VFR)', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (499, 2, N'FrameRate_Mode/String', NULL, NULL, N'Y NT', NULL, NULL, N'Frame rate mode (Constant, Variable)', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (500, 2, N'FrameRate_Mode_Original', NULL, NULL, N'N YTY', NULL, NULL, N'Original frame rate mode (CFR, VFR)', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (501, 2, N'FrameRate_Mode_Original/String', NULL, NULL, N'Y NT', NULL, NULL, N'Original frame rate mode (Constant, Variable)', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (502, 2, N'FrameRate', NULL, N' fps', N'N YFY', NULL, NULL, N'Frames per second', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (503, 2, N'FrameRate/String', NULL, NULL, N'Y NT', NULL, NULL, N'Frames per second (with measurement)', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (504, 2, N'FrameRate_Num', NULL, NULL, N'N NFN', NULL, NULL, N'Frames per second, numerator', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (505, 2, N'FrameRate_Den', NULL, NULL, N'N NFN', NULL, NULL, N'Frames per second, denominator', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (506, 2, N'FrameRate_Minimum', NULL, N' fps', N'N YFY', NULL, NULL, N'Minimum Frames per second', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (507, 2, N'FrameRate_Minimum/String', NULL, NULL, N'Y NT', NULL, NULL, N'Minimum Frames per second (with measurement)', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (508, 2, N'FrameRate_Nominal', NULL, N' fps', N'N YFY', NULL, NULL, N'Nominal Frames per second', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (509, 2, N'FrameRate_Nominal/String', NULL, NULL, N'Y NT', NULL, NULL, N'Nominal Frames per second (with measurement)', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (510, 2, N'FrameRate_Maximum', NULL, N' fps', N'N YFY', NULL, NULL, N'Maximum Frames per second', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (511, 2, N'FrameRate_Maximum/String', NULL, NULL, N'Y NT', NULL, NULL, N'Maximum Frames per second (with measurement)', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (512, 2, N'FrameRate_Original', NULL, N' fps', N'N YFY', NULL, NULL, N'Original (in the raw stream) frames per second', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (513, 2, N'FrameRate_Original/String', NULL, NULL, N'Y NT', NULL, NULL, N'Original (in the raw stream) frames per second (with measurement)', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (514, 2, N'FrameRate_Original_Num', NULL, NULL, N'N NFN', NULL, NULL, N'Frames per second, numerator', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (515, 2, N'FrameRate_Original_Den', NULL, NULL, N'N NFN', NULL, NULL, N'Frames per second, denominator', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (516, 2, N'FrameCount', NULL, NULL, N'N NIY', NULL, NULL, N'Number of frames', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (517, 2, N'Source_FrameCount', NULL, NULL, N'N NI', NULL, NULL, N'Source Number of frames', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (518, 2, N'Standard', NULL, NULL, N'Y NTY', NULL, NULL, N'NTSC or PAL', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (519, 2, N'Resolution', NULL, N' bit', N'N NI', NULL, NULL, N'Deprecated, do not use in new projects', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (520, 2, N'Resolution/String', NULL, NULL, N'N NT', NULL, NULL, N'Deprecated, do not use in new projects', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (521, 2, N'Colorimetry', NULL, NULL, N'N NT', NULL, NULL, N'Deprecated, do not use in new projects', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (522, 2, N'ColorSpace', NULL, NULL, N'Y YTY', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (523, 2, N'ChromaSubsampling', NULL, NULL, N'N YTY', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (524, 2, N'ChromaSubsampling/String', NULL, NULL, N'Y NT', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (525, 2, N'ChromaSubsampling_Position', NULL, NULL, N'N YTY', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (526, 2, N'BitDepth', NULL, N' bit', N'N YIY', NULL, NULL, N'16/24/32', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (527, 2, N'BitDepth/String', NULL, NULL, N'Y NT', NULL, NULL, N'16/24/32 bits', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (528, 2, N'ScanType', NULL, NULL, N'N YTY', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (529, 2, N'ScanType/String', NULL, NULL, N'Y NT', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (530, 2, N'ScanType_Original', NULL, NULL, N'N YTY', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (531, 2, N'ScanType_Original/String', NULL, NULL, N'Y NT', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (532, 2, N'ScanType_StoreMethod', NULL, NULL, N'N YT', NULL, NULL, NULL, N'Separated fields or Interleaved fields', NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (533, 2, N'ScanType_StoreMethod_FieldsPerBlock', NULL, NULL, N'N YT', NULL, NULL, NULL, N'Count of fields per container block', NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (534, 2, N'ScanType_StoreMethod/String', NULL, NULL, N'Y NT', NULL, NULL, NULL, N'Separated fields or Interleaved fields', NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (535, 2, N'ScanOrder', NULL, NULL, N'N YTY', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (536, 2, N'ScanOrder/String', NULL, NULL, N'Y NT', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (537, 2, N'ScanOrder_Stored', NULL, NULL, N'N YTY', NULL, NULL, NULL, N'In case the stored order is not same as the display order', NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (538, 2, N'ScanOrder_Stored/String', NULL, NULL, N'Y NT', NULL, NULL, NULL, N'In case the stored order is not same as the display order', NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (539, 2, N'ScanOrder_StoredDisplayedInverted', NULL, NULL, N'N NT', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (540, 2, N'ScanOrder_Original', NULL, NULL, N'N YTY', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (541, 2, N'ScanOrder_Original/String', NULL, NULL, N'Y NT', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (542, 2, N'Interlacement', NULL, NULL, N'N NT', NULL, NULL, N'Deprecated, do not use in new projects', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (543, 2, N'Interlacement/String', NULL, NULL, N'N NT', NULL, NULL, N'Deprecated, do not use in new projects', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (544, 2, N'Compression_Mode', NULL, NULL, N'N YTY', NULL, NULL, N'Compression mode (Lossy or Lossless)', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (545, 2, N'Compression_Mode/String', NULL, NULL, N'Y NT', NULL, NULL, N'Compression mode (Lossy or Lossless)', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (546, 2, N'Compression_Ratio', NULL, NULL, N'Y YFY', NULL, NULL, N'Current stream size divided by uncompressed stream size', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (547, 2, N'Bits-(Pixel*Frame)', NULL, NULL, N'Y NFN', NULL, NULL, N'bits/(Pixel*Frame) (like Gordian Knot)', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (548, 2, N'Delay', NULL, N' ms', N'N NIY', NULL, NULL, N'Delay fixed in the stream (relative) IN MS', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (549, 2, N'Delay/String', NULL, NULL, N'N NT', NULL, NULL, N'Delay with measurement', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (550, 2, N'Delay/String1', NULL, NULL, N'N NT', NULL, NULL, N'Delay with measurement', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (551, 2, N'Delay/String2', NULL, NULL, N'N NT', NULL, NULL, N'Delay with measurement', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (552, 2, N'Delay/String3', NULL, NULL, N'N NT', NULL, NULL, N'Delay in format : HH:MM:SS.MMM', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (553, 2, N'Delay/String4', NULL, NULL, N'N NT', NULL, NULL, N'Delay in format : HH:MM:SS:FF, last colon replaced by semicolon for drop frame if available', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (554, 2, N'Delay/String5', NULL, NULL, N'N NT', NULL, NULL, N'Delay in format : HH:MM:SS.mmm (HH:MM:SS:FF)', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (555, 2, N'Delay_Settings', NULL, NULL, N'N NT', NULL, NULL, N'Delay settings (in case of timecode for example)', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (556, 2, N'Delay_DropFrame', NULL, NULL, N'N NT', NULL, NULL, N'Delay drop frame', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (557, 2, N'Delay_Source', NULL, NULL, N'N NT', NULL, NULL, N'Delay source (Container or Stream or empty)', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (558, 2, N'Delay_Source/String', NULL, NULL, N'N NT', NULL, NULL, N'Delay source (Container or Stream or empty)', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (559, 2, N'Delay_Original', NULL, N' ms', N'N NIY', NULL, NULL, N'Delay fixed in the raw stream (relative) IN MS', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (560, 2, N'Delay_Original/String', NULL, NULL, N'N NT', NULL, NULL, N'Delay with measurement', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (561, 2, N'Delay_Original/String1', NULL, NULL, N'N NT', NULL, NULL, N'Delay with measurement', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (562, 2, N'Delay_Original/String2', NULL, NULL, N'N NT', NULL, NULL, N'Delay with measurement', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (563, 2, N'Delay_Original/String3', NULL, NULL, N'N NT', NULL, NULL, N'Delay in format: HH:MM:SS.MMM', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (564, 2, N'Delay_Original/String4', NULL, NULL, N'N NT', NULL, NULL, N'Delay in format: HH:MM:SS:FF, last colon replaced by semicolon for drop frame if available', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (565, 2, N'Delay_Original/String5', NULL, NULL, N'N NT', NULL, NULL, N'Delay in format : HH:MM:SS.mmm (HH:MM:SS:FF)', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (566, 2, N'Delay_Original_Settings', NULL, NULL, N'N NT', NULL, NULL, N'Delay settings (in case of timecode for example)', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (567, 2, N'Delay_Original_DropFrame', NULL, NULL, N'N NT', NULL, NULL, N'Delay drop frame info', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (568, 2, N'Delay_Original_Source', NULL, NULL, N'N NT', NULL, NULL, N'Delay source (Stream or empty)', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (569, 2, N'TimeStamp_FirstFrame', NULL, N' ms', N'N YIY', NULL, NULL, N'TimeStamp fixed in the stream (relative) IN MS', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (570, 2, N'TimeStamp_FirstFrame/String', NULL, NULL, N'Y NT', NULL, NULL, N'TimeStamp with measurement', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (571, 2, N'TimeStamp_FirstFrame/String1', NULL, NULL, N'N NT', NULL, NULL, N'TimeStamp with measurement', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (572, 2, N'TimeStamp_FirstFrame/String2', NULL, NULL, N'N NT', NULL, NULL, N'TimeStamp with measurement', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (573, 2, N'TimeStamp_FirstFrame/String3', NULL, NULL, N'N NT', NULL, NULL, N'TimeStamp in format : HH:MM:SS.MMM', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (574, 2, N'TimeStamp_FirstFrame/String4', NULL, NULL, N'N NT', NULL, NULL, N'TimeStamp in format: HH:MM:SS:FF, last colon replaced by semicolon for drop frame if available', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (575, 2, N'TimeStamp_FirstFrame/String5', NULL, NULL, N'N NT', NULL, NULL, N'TimeStamp in format : HH:MM:SS.mmm (HH:MM:SS:FF)', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (576, 2, N'TimeCode_FirstFrame', NULL, NULL, N'Y YCY', NULL, NULL, N'Time code in HH:MM:SS:FF, last colon replaced by semicolon for drop frame if available format', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (577, 2, N'TimeCode_Settings', NULL, NULL, N'Y YTY', NULL, NULL, N'Time code settings', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (578, 2, N'TimeCode_Source', NULL, NULL, N'Y YTY', NULL, NULL, N'Time code source (Container, Stream, SystemScheme1, SDTI, ANC...)', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (579, 2, N'Gop_OpenClosed', NULL, N' ', N'N YTY', NULL, NULL, N'Time code information about Open/Closed', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (580, 2, N'Gop_OpenClosed/String', NULL, NULL, N'Y NT', NULL, NULL, N'Time code information about Open/Closed', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (581, 2, N'Gop_OpenClosed_FirstFrame', NULL, N' ', N'N YTY', NULL, NULL, N'Time code information about Open/Closed of first frame if GOP is Open for the other GOPs', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (582, 2, N'Gop_OpenClosed_FirstFrame/String', NULL, NULL, N'Y NT', NULL, NULL, N'Time code information about Open/Closed of first frame if GOP is Open for the other GOPs', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (583, 2, N'StreamSize', NULL, N' byte', N'N YIY', NULL, NULL, N'Streamsize in bytes', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (584, 2, N'StreamSize/String', NULL, NULL, N'Y NT', NULL, NULL, N'Streamsize in with percentage value', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (585, 2, N'StreamSize/String1', NULL, NULL, N'N NT', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (586, 2, N'StreamSize/String2', NULL, NULL, N'N NT', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (587, 2, N'StreamSize/String3', NULL, NULL, N'N NT', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (588, 2, N'StreamSize/String4', NULL, NULL, N'N NT', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (589, 2, N'StreamSize/String5', NULL, NULL, N'N NT', NULL, NULL, N'Streamsize in with percentage value', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (590, 2, N'StreamSize_Proportion', NULL, NULL, N'N NT', NULL, NULL, N'Stream size divided by file size', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (591, 2, N'StreamSize_Demuxed', NULL, N' byte', N'N YIN', NULL, NULL, N'StreamSize in bytes of hte stream after demux', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (592, 2, N'StreamSize_Demuxed/String', NULL, NULL, N'N NT', NULL, NULL, N'StreamSize_Demuxed in with percentage value', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (593, 2, N'StreamSize_Demuxed/String1', NULL, NULL, N'N NT', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (594, 2, N'StreamSize_Demuxed/String2', NULL, NULL, N'N NT', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (595, 2, N'StreamSize_Demuxed/String3', NULL, NULL, N'N NT', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (596, 2, N'StreamSize_Demuxed/String4', NULL, NULL, N'N NT', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (597, 2, N'StreamSize_Demuxed/String5', NULL, NULL, N'N NT', NULL, NULL, N'StreamSize_Demuxed in with percentage value (note: theoritical value, not for real use)', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (598, 2, N'Source_StreamSize', NULL, N' byte', N'N YIY', NULL, NULL, N'Source Streamsize in bytes', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (599, 2, N'Source_StreamSize/String', NULL, NULL, N'Y NT', NULL, NULL, N'Source Streamsize in with percentage value', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (600, 2, N'Source_StreamSize/String1', NULL, NULL, N'N NT', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (601, 2, N'Source_StreamSize/String2', NULL, NULL, N'N NT', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (602, 2, N'Source_StreamSize/String3', NULL, NULL, N'N NT', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (603, 2, N'Source_StreamSize/String4', NULL, NULL, N'N NT', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (604, 2, N'Source_StreamSize/String5', NULL, NULL, N'N NT', NULL, NULL, N'Source Streamsize in with percentage value', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (605, 2, N'Source_StreamSize_Proportion', NULL, NULL, N'N NT', NULL, NULL, N'Source Stream size divided by file size', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (606, 2, N'StreamSize_Encoded', NULL, N' byte', N'N YIY', NULL, NULL, N'Encoded Streamsize in bytes', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (607, 2, N'StreamSize_Encoded/String', NULL, NULL, N'Y NT', NULL, NULL, N'Encoded Streamsize in with percentage value', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (608, 2, N'StreamSize_Encoded/String1', NULL, NULL, N'N NT', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (609, 2, N'StreamSize_Encoded/String2', NULL, NULL, N'N NT', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (610, 2, N'StreamSize_Encoded/String3', NULL, NULL, N'N NT', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (611, 2, N'StreamSize_Encoded/String4', NULL, NULL, N'N NT', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (612, 2, N'StreamSize_Encoded/String5', NULL, NULL, N'N NT', NULL, NULL, N'Encoded Streamsize in with percentage value', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (613, 2, N'StreamSize_Encoded_Proportion', NULL, NULL, N'N NT', NULL, NULL, N'Encoded Stream size divided by file size', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (614, 2, N'Source_StreamSize_Encoded', NULL, N' byte', N'N YIY', NULL, NULL, N'Source Encoded Streamsize in bytes', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (615, 2, N'Source_StreamSize_Encoded/String', NULL, NULL, N'Y NT', NULL, NULL, N'Source Encoded Streamsize in with percentage value', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (616, 2, N'Source_StreamSize_Encoded/String1', NULL, NULL, N'N NT', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (617, 2, N'Source_StreamSize_Encoded/String2', NULL, NULL, N'N NT', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (618, 2, N'Source_StreamSize_Encoded/String3', NULL, NULL, N'N NT', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (619, 2, N'Source_StreamSize_Encoded/String4', NULL, NULL, N'N NT', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (620, 2, N'Source_StreamSize_Encoded/String5', NULL, NULL, N'N NT', NULL, NULL, N'Source Encoded Streamsize in with percentage value', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (621, 2, N'Source_StreamSize_Encoded_Proportion', NULL, NULL, N'N NT', NULL, NULL, N'Source Encoded Stream size divided by file size', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (622, 2, N'Alignment', NULL, NULL, N'Y NTY', NULL, NULL, N'How this stream file is aligned in the container', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (623, 2, N'Alignment/String', NULL, NULL, N'N YT', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (624, 2, N'Title', NULL, NULL, N'Y YIY', NULL, NULL, N'Name of the track', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (625, 2, N'Encoded_Application', NULL, NULL, N'N YTY', NULL, NULL, N'Name of the software package used to create the file, such as Microsoft WaveEdit', NULL, N'Technical')
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (626, 2, N'Encoded_Application/String', NULL, NULL, N'Y NTY', NULL, NULL, N'Name of the software package used to create the file, such as Microsoft WaveEdit, trying to have the format ''CompanyName ProductName (OperatingSystem) Version (Date)''', NULL, N'Technical')
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (627, 2, N'Encoded_Application_CompanyName', NULL, NULL, N'N YTY', NULL, NULL, N'Name of the company', NULL, N'Technical')
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (628, 2, N'Encoded_Application_Name', NULL, NULL, N'N YTY', NULL, NULL, N'Name of the product', NULL, N'Technical')
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (629, 2, N'Encoded_Application_Version', NULL, NULL, N'N YTY', NULL, NULL, N'Version of the product', NULL, N'Technical')
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (630, 2, N'Encoded_Application_Url', NULL, NULL, N'N YTY', NULL, NULL, N'Name of the software package used to create the file, such as Microsoft WaveEdit.', NULL, N'Technical')
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (631, 2, N'Encoded_Library', NULL, NULL, N'N YTY', NULL, NULL, N'Software used to create the file', NULL, N'Technical')
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (632, 2, N'Encoded_Library/String', NULL, NULL, N'Y NT', NULL, NULL, N'Software used to create the file, trying to have the format ''CompanyName ProductName (OperatingSystem) Version (Date)''', NULL, N'Technical')
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (633, 2, N'Encoded_Library_CompanyName', NULL, NULL, N'N YTY', NULL, NULL, N'Name of the company', NULL, N'Technical')
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (634, 2, N'Encoded_Library_Name', NULL, NULL, N'N NTY', NULL, NULL, N'Name of the the encoding-software', NULL, N'Technical')
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (635, 2, N'Encoded_Library_Version', NULL, NULL, N'N NTY', NULL, NULL, N'Version of encoding-software', NULL, N'Technical')
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (636, 2, N'Encoded_Library_Date', NULL, NULL, N'N NTY', NULL, NULL, N'Release date of software', NULL, N'Technical')
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (637, 2, N'Encoded_Library_Settings', NULL, NULL, N'Y YTY', NULL, NULL, N'Parameters used by the software', NULL, N'Technical')
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (638, 2, N'Encoded_OperatingSystem', NULL, NULL, N'N YTY', NULL, NULL, N'Operating System of encoding-software', NULL, N'Technical')
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (639, 2, N'Language', NULL, NULL, N'N YTY', NULL, NULL, N'Language (2-letter ISO 639-1 if exists, else 3-letter ISO 639-2, and with optional ISO 3166-1 country separated by a dash if available, e.g. en, en-us, zh-cn)', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (640, 2, N'Language/String', NULL, NULL, N'Y NT', NULL, NULL, N'Language (full)', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (641, 2, N'Language/String1', NULL, NULL, N'N NT', NULL, NULL, N'Language (full)', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (642, 2, N'Language/String2', NULL, NULL, N'N NT', NULL, NULL, N'Language (2-letter ISO 639-1 if exists, else empty)', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (643, 2, N'Language/String3', NULL, NULL, N'N NT', NULL, NULL, N'Language (3-letter ISO 639-2 if exists, else empty)', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (644, 2, N'Language/String4', NULL, NULL, N'N NT', NULL, NULL, N'Language (2-letter ISO 639-1 if exists with optional ISO 3166-1 country separated by a dash if available, e.g. en, en-us, zh-cn, else empty)', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (645, 2, N'Language_More', NULL, NULL, N'Y YTY', NULL, NULL, N'More info about Language (e.g. Director''s Comment)', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (646, 2, N'ServiceKind', NULL, NULL, N'N YTY', NULL, NULL, N'Service kind, e.g. visually impaired, commentary, voice over', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (647, 2, N'ServiceKind/String', NULL, NULL, N'Y NT', NULL, NULL, N'Service kind (full)', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (648, 2, N'Disabled', NULL, N'Yes', N'N YTY', NULL, NULL, N'Set if that track should not be used', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (649, 2, N'Disabled/String', NULL, NULL, N'Y NT', NULL, NULL, N'Set if that track should not be used', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (650, 2, N'Default', NULL, N'Yes', N'N YTY', NULL, NULL, N'Set if that track should be used if no language found matches the user preference.', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (651, 2, N'Default/String', NULL, NULL, N'Y NT', NULL, NULL, N'Set if that track should be used if no language found matches the user preference.', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (652, 2, N'Forced', NULL, N'Yes', N'N YTY', NULL, NULL, N'Set if that track should be used if no language found matches the user preference.', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (653, 2, N'Forced/String', NULL, NULL, N'Y NT', NULL, NULL, N'Set if that track should be used if no language found matches the user preference.', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (654, 2, N'AlternateGroup', NULL, N'Yes', N'N YTY', NULL, NULL, N'Number of a group in order to provide versions of the same track', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (655, 2, N'AlternateGroup/String', NULL, NULL, N'Y NT', NULL, NULL, N'Number of a group in order to provide versions of the same track', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (656, 2, N'Encoded_Date', NULL, NULL, N'Y YTY', NULL, NULL, N'UTC time that the encoding of this item was completed began.', NULL, N'Temporal')
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (657, 2, N'Tagged_Date', NULL, NULL, N'Y YTY', NULL, NULL, N'UTC time that the tags were done for this item.', NULL, N'Temporal')
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (658, 2, N'Encryption', NULL, NULL, N'Y YTY', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (659, 2, N'BufferSize', NULL, NULL, N'N YTY', NULL, NULL, N'Defines the size of the buffer needed to decode the sequence.', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (660, 2, N'colour_range', NULL, NULL, N'Y YTY', NULL, NULL, N'Colour range for YUV colour space', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (661, 2, N'colour_description_present', NULL, NULL, N'N YTY', NULL, NULL, N'Presence of colour description', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (662, 2, N'colour_primaries', NULL, NULL, N'Y YTY', NULL, NULL, N'Chromaticity coordinates of the source primaries', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (663, 2, N'transfer_characteristics', NULL, NULL, N'Y YTY', NULL, NULL, N'Opto-electronic transfer characteristic of the source picture', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (664, 2, N'matrix_coefficients', NULL, NULL, N'Y YTY', NULL, NULL, N'Matrix coefficients used in deriving luma and chroma signals from the green, blue, and red primaries', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (665, 2, N'colour_description_present_Original', NULL, NULL, N'N YTY', NULL, NULL, N'Presence of colour description', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (666, 2, N'colour_primaries_Original', NULL, NULL, N'Y YTY', NULL, NULL, N'Chromaticity coordinates of the source primaries', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (667, 2, N'transfer_characteristics_Original', NULL, NULL, N'Y YTY', NULL, NULL, N'Opto-electronic transfer characteristic of the source picture', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (668, 2, N'matrix_coefficients_Original', NULL, NULL, N'Y YTY', NULL, NULL, N'Matrix coefficients used in deriving luma and chroma signals from the green, blue, and red primaries', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (669, 3, N'Status', NULL, NULL, N'N NI', NULL, NULL, N'bit field (0=IsAccepted, 1=IsFilled, 2=IsUpdated, 3=IsFinished)', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (670, 3, N'StreamCount', NULL, NULL, N'N NI', NULL, NULL, N'Count of streams of that kind available', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (671, 3, N'StreamKind', N'Audio', NULL, N'N NT', NULL, NULL, N'Stream type name', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (672, 3, N'StreamKind/String', NULL, NULL, N'N NT', NULL, NULL, N'Stream type name', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (673, 3, N'StreamKindID', NULL, NULL, N'N NI', NULL, NULL, N'Number of the stream (base=0)', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (674, 3, N'StreamKindPos', NULL, NULL, N'N NI', NULL, NULL, N'When multiple streams, number of the stream (base=1)', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (675, 3, N'StreamOrder', NULL, NULL, N'N YIY', NULL, NULL, N'Stream order in the file, whatever is the kind of stream (base=0)', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (676, 3, N'FirstPacketOrder', NULL, NULL, N'N YIY', NULL, NULL, N'Order of the first fully decodable packet met in the file, whatever is the kind of stream (base=0)', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (677, 3, N'Inform', NULL, NULL, N'N NT', NULL, NULL, N'Last **Inform** call', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (678, 3, N'ID', NULL, NULL, N'N YIY', NULL, NULL, N'The ID for this stream in this file', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (679, 3, N'ID/String', NULL, NULL, N'Y NT', NULL, NULL, N'The ID for this stream in this file', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (680, 3, N'OriginalSourceMedium_ID', NULL, NULL, N'N YIY', NULL, NULL, N'The ID for this stream in the original medium of the material', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (681, 3, N'OriginalSourceMedium_ID/String', NULL, NULL, N'Y NT', NULL, NULL, N'The ID for this stream in the original medium of the material', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (682, 3, N'UniqueID', NULL, NULL, N'N YIY', NULL, NULL, N'The unique ID for this stream, should be copied with stream copy', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (683, 3, N'UniqueID/String', NULL, NULL, N'Y NT', NULL, NULL, N'The unique ID for this stream, should be copied with stream copy', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (684, 3, N'MenuID', NULL, NULL, N'N YIY', NULL, NULL, N'The menu ID for this stream in this file', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (685, 3, N'MenuID/String', NULL, NULL, N'Y NT', NULL, NULL, N'The menu ID for this stream in this file', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (686, 3, N'Format', NULL, NULL, N'Y YTY', NULL, NULL, N'Format used', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (687, 3, N'Format/Info', NULL, NULL, N'Y NT', NULL, NULL, N'Info about the format', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (688, 3, N'Format/Url', NULL, NULL, N'N NT', NULL, NULL, N'Homepage of this format', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (689, 3, N'Format_Commercial', NULL, NULL, N'N YT', NULL, NULL, N'Commercial name used by vendor for theses setings or Format field if there is no difference', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (690, 3, N'Format_Commercial_IfAny', NULL, NULL, N'Y YTY', NULL, NULL, N'Commercial name used by vendor for theses setings if there is one', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (691, 3, N'Format_Version', NULL, NULL, N'Y YTY', NULL, NULL, N'Version of this format', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (692, 3, N'Format_Profile', NULL, NULL, N'Y YTY', NULL, NULL, N'Profile of the Format (old XML: ''Profile@Level'' format', N' MIXML: ''Profile'' only)', NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (693, 3, N'Format_Level', NULL, NULL, N'Y YTY', NULL, NULL, N'Level of the Format (only MIXML)', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (694, 3, N'Format_Compression', NULL, NULL, N'Y YTY', NULL, NULL, N'Compression method used', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (695, 3, N'Format_Settings', NULL, NULL, N'N YT', NULL, NULL, N'Settings needed for decoder used, summary', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (696, 3, N'Format_Settings_SBR', NULL, N'Yes', N'N YTY', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (697, 3, N'Format_Settings_SBR/String', NULL, NULL, N'N NT', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (698, 3, N'Format_Settings_PS', NULL, N'Yes', N'N YTY', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (699, 3, N'Format_Settings_PS/String', NULL, NULL, N'N NT', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (700, 3, N'Format_Settings_Mode', NULL, NULL, N'Y YTY', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (701, 3, N'Format_Settings_ModeExtension', NULL, NULL, N'Y YTY', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (702, 3, N'Format_Settings_Emphasis', NULL, NULL, N'Y YTY', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (703, 3, N'Format_Settings_Floor', NULL, NULL, N'Y YTY', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (704, 3, N'Format_Settings_Firm', NULL, NULL, N'Y YTY', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (705, 3, N'Format_Settings_Endianness', NULL, NULL, N'Y YTY', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (706, 3, N'Format_Settings_Sign', NULL, NULL, N'Y YTY', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (707, 3, N'Format_Settings_Law', NULL, NULL, N'Y YTY', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (708, 3, N'Format_Settings_ITU', NULL, NULL, N'Y YTY', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (709, 3, N'Format_Settings_Wrapping', NULL, NULL, N'Y YTY', NULL, NULL, N'Wrapping mode (Frame wrapped or Clip wrapped)', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (710, 3, N'Matrix_Format', NULL, NULL, N'Y YIY', NULL, NULL, N'Matrix format (e.g. DTS Neural)', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (711, 3, N'InternetMediaType', NULL, NULL, N'N YT', NULL, NULL, N'Internet Media Type (aka MIME Type, Content-Type)', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (712, 3, N'MuxingMode', NULL, NULL, N'Y YTY', NULL, NULL, N'How this stream is muxed in the container', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (713, 3, N'MuxingMode_MoreInfo', NULL, NULL, N'Y NT', NULL, NULL, N'More info (text) about the muxing mode', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (714, 3, N'CodecID', NULL, NULL, N'Y YTY', NULL, NULL, N'Codec ID (found in some containers)', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (715, 3, N'CodecID/String', NULL, NULL, N'Y NT', NULL, NULL, N'Codec ID (found in some containers)', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (716, 3, N'CodecID/Info', NULL, NULL, N'Y NT', NULL, NULL, N'Info about codec ID', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (717, 3, N'CodecID/Hint', NULL, NULL, N'Y NT', NULL, NULL, N'Hint/popular name for this codec ID', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (718, 3, N'CodecID/Url', NULL, NULL, N'N NT', NULL, NULL, N'Homepage for more details about this codec ID', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (719, 3, N'CodecID_Description', NULL, NULL, N'Y YT', NULL, NULL, N'Manual description given by the container', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (720, 3, N'Codec', NULL, NULL, N'N NT', NULL, NULL, N'Deprecated, do not use in new projects', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (721, 3, N'Codec/String', NULL, NULL, N'N NT', NULL, NULL, N'Deprecated, do not use in new projects', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (722, 3, N'Codec/Family', NULL, NULL, N'N NT', NULL, NULL, N'Deprecated, do not use in new projects', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (723, 3, N'Codec/Info', NULL, NULL, N'N NT', NULL, NULL, N'Deprecated, do not use in new projects', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (724, 3, N'Codec/Url', NULL, NULL, N'N NT', NULL, NULL, N'Deprecated, do not use in new projects', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (725, 3, N'Codec/CC', NULL, NULL, N'N NT', NULL, NULL, N'Deprecated, do not use in new projects', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (726, 3, N'Codec_Description', NULL, NULL, N'N NT', NULL, NULL, N'Deprecated, do not use in new projects', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (727, 3, N'Codec_Profile', NULL, NULL, N'N NT', NULL, NULL, N'Deprecated, do not use in new projects', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (728, 3, N'Codec_Settings', NULL, NULL, N'N NT', NULL, NULL, N'Deprecated, do not use in new projects', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (729, 3, N'Codec_Settings_Automatic', NULL, NULL, N'N NT', NULL, NULL, N'Deprecated, do not use in new projects', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (730, 3, N'Codec_Settings_Floor', NULL, NULL, N'N NT', NULL, NULL, N'Deprecated, do not use in new projects', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (731, 3, N'Codec_Settings_Firm', NULL, NULL, N'N NT', NULL, NULL, N'Deprecated, do not use in new projects', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (732, 3, N'Codec_Settings_Endianness', NULL, NULL, N'N NT', NULL, NULL, N'Deprecated, do not use in new projects', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (733, 3, N'Codec_Settings_Sign', NULL, NULL, N'N NT', NULL, NULL, N'Deprecated, do not use in new projects', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (734, 3, N'Codec_Settings_Law', NULL, NULL, N'N NT', NULL, NULL, N'Deprecated, do not use in new projects', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (735, 3, N'Codec_Settings_ITU', NULL, NULL, N'N NT', NULL, NULL, N'Deprecated, do not use in new projects', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (736, 3, N'Duration', NULL, N' ms', N'N YIY', NULL, NULL, N'Play time of the stream, in ms', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (737, 3, N'Duration/String', NULL, NULL, N'Y NT', NULL, NULL, N'Play time in format : XXx YYy only, YYy omited if zero', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (738, 3, N'Duration/String1', NULL, NULL, N'N NT', NULL, NULL, N'Play time in format : HHh MMmn SSs MMMms, XX omited if zero', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (739, 3, N'Duration/String2', NULL, NULL, N'N NT', NULL, NULL, N'Play time in format : XXx YYy only, YYy omited if zero', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (740, 3, N'Duration/String3', NULL, NULL, N'N NT', NULL, NULL, N'Play time in format : HH:MM:SS.MMM', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (741, 3, N'Duration/String4', NULL, NULL, N'N NT', NULL, NULL, N'Play time in format : HH:MM:SS:FF, last colon replaced by semicolon for drop frame if available', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (742, 3, N'Duration/String5', NULL, NULL, N'N NT', NULL, NULL, N'Play time in format : HH:MM:SS.mmm (HH:MM:SS:FF)', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (743, 3, N'Duration_FirstFrame', NULL, N' ms', N'N YIY', NULL, NULL, N'Duration of the first frame if it is longer than others, in ms', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (744, 3, N'Duration_FirstFrame/String', NULL, NULL, N'Y NT', NULL, NULL, N'Duration of the first frame if it is longer than others, in format : XXx YYy only, YYy omited if zero', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (745, 3, N'Duration_FirstFrame/String1', NULL, NULL, N'N NT', NULL, NULL, N'Duration of the first frame if it is longer than others, in format : HHh MMmn SSs MMMms, XX omited if zero', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (746, 3, N'Duration_FirstFrame/String2', NULL, NULL, N'N NT', NULL, NULL, N'Duration of the first frame if it is longer than others, in format : XXx YYy only, YYy omited if zero', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (747, 3, N'Duration_FirstFrame/String3', NULL, NULL, N'N NT', NULL, NULL, N'Duration of the first frame if it is longer than others, in format : HH:MM:SS.MMM', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (748, 3, N'Duration_FirstFrame/String4', NULL, NULL, N'N NT', NULL, NULL, N'Play time in format : HH:MM:SS:FF, last colon replaced by semicolon for drop frame if available', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (749, 3, N'Duration_FirstFrame/String5', NULL, NULL, N'N NT', NULL, NULL, N'Play time in format : HH:MM:SS.mmm (HH:MM:SS:FF)', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (750, 3, N'Duration_LastFrame', NULL, N' ms', N'N YIY', NULL, NULL, N'Duration of the last frame if it is longer than others, in ms', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (751, 3, N'Duration_LastFrame/String', NULL, NULL, N'Y NT', NULL, NULL, N'Duration of the last frame if it is longer than others, in format : XXx YYy only, YYy omited if zero', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (752, 3, N'Duration_LastFrame/String1', NULL, NULL, N'N NT', NULL, NULL, N'Duration of the last frame if it is longer than others, in format : HHh MMmn SSs MMMms, XX omited if zero', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (753, 3, N'Duration_LastFrame/String2', NULL, NULL, N'N NT', NULL, NULL, N'Duration of the last frame if it is longer than others, in format : XXx YYy only, YYy omited if zero', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (754, 3, N'Duration_LastFrame/String3', NULL, NULL, N'N NT', NULL, NULL, N'Duration of the last frame if it is longer than others, in format : HH:MM:SS.MMM', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (755, 3, N'Duration_LastFrame/String4', NULL, NULL, N'N NT', NULL, NULL, N'Play time in format : HH:MM:SS:FF, last colon replaced by semicolon for drop frame if available', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (756, 3, N'Duration_LastFrame/String5', NULL, NULL, N'N NT', NULL, NULL, N'Play time in format : HH:MM:SS.mmm (HH:MM:SS:FF)', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (757, 3, N'Source_Duration', NULL, N' ms', N'N YIY', NULL, NULL, N'Source Play time of the stream, in ms', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (758, 3, N'Source_Duration/String', NULL, NULL, N'Y NT', NULL, NULL, N'Source Play time in format : XXx YYy only, YYy omited if zero', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (759, 3, N'Source_Duration/String1', NULL, NULL, N'N NT', NULL, NULL, N'Source Play time in format : HHh MMmn SSs MMMms, XX omited if zero', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (760, 3, N'Source_Duration/String2', NULL, NULL, N'N NT', NULL, NULL, N'Source Play time in format : XXx YYy only, YYy omited if zero', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (761, 3, N'Source_Duration/String3', NULL, NULL, N'N NT', NULL, NULL, N'Source Play time in format : HH:MM:SS.MMM', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (762, 3, N'Source_Duration/String4', NULL, NULL, N'N NT', NULL, NULL, N'Source Play time in format : HH:MM:SS:FF, last colon replaced by semicolon for drop frame if available', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (763, 3, N'Source_Duration/String5', NULL, NULL, N'N NT', NULL, NULL, N'Source Play time in format : HH:MM:SS.mmm (HH:MM:SS:FF)', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (764, 3, N'Source_Duration_FirstFrame', NULL, N' ms', N'N YIY', NULL, NULL, N'Source Duration of the first frame if it is longer than others, in ms', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (765, 3, N'Source_Duration_FirstFrame/String', NULL, NULL, N'Y NT', NULL, NULL, N'Source Duration of the first frame if it is longer than others, in format : XXx YYy only, YYy omited if zero', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (766, 3, N'Source_Duration_FirstFrame/String1', NULL, NULL, N'N NT', NULL, NULL, N'Source Duration of the first frame if it is longer than others, in format : HHh MMmn SSs MMMms, XX omited if zero', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (767, 3, N'Source_Duration_FirstFrame/String2', NULL, NULL, N'N NT', NULL, NULL, N'Source Duration of the first frame if it is longer than others, in format : XXx YYy only, YYy omited if zero', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (768, 3, N'Source_Duration_FirstFrame/String3', NULL, NULL, N'N NT', NULL, NULL, N'Source Duration of the first frame if it is longer than others, in format : HH:MM:SS.MMM', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (769, 3, N'Source_Duration_FirstFrame/String4', NULL, NULL, N'N NT', NULL, NULL, N'Source Duration of the first frame if it is longer than others, in format : HH:MM:SS:FF, last colon replaced by semicolon for drop frame if available', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (770, 3, N'Source_Duration_FirstFrame/String5', NULL, NULL, N'N NT', NULL, NULL, N'Source Duration of the first frame if it is longer than others, in format : HH:MM:SS.mmm (HH:MM:SS:FF)', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (771, 3, N'Source_Duration_LastFrame', NULL, N' ms', N'N YIY', NULL, NULL, N'Source Duration of the last frame if it is longer than others, in ms', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (772, 3, N'Source_Duration_LastFrame/String', NULL, NULL, N'Y NT', NULL, NULL, N'Source Duration of the last frame if it is longer than others, in format : XXx YYy only, YYy omited if zero', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (773, 3, N'Source_Duration_LastFrame/String1', NULL, NULL, N'N NT', NULL, NULL, N'Source Duration of the last frame if it is longer than others, in format : HHh MMmn SSs MMMms, XX omited if zero', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (774, 3, N'Source_Duration_LastFrame/String2', NULL, NULL, N'N NT', NULL, NULL, N'Source Duration of the last frame if it is longer than others, in format : XXx YYy only, YYy omited if zero', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (775, 3, N'Source_Duration_LastFrame/String3', NULL, NULL, N'N NT', NULL, NULL, N'Source Duration of the last frame if it is longer than others, in format : HH:MM:SS.MMM', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (776, 3, N'Source_Duration_LastFrame/String4', NULL, NULL, N'N NT', NULL, NULL, N'Source Duration of the last frame if it is longer than others, in format : HH:MM:SS:FF, last colon replaced by semicolon for drop frame if available', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (777, 3, N'Source_Duration_LastFrame/String5', NULL, NULL, N'N NT', NULL, NULL, N'Source Duration of the last frame if it is longer than others, in format : HH:MM:SS.mmm (HH:MM:SS:FF)', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (778, 3, N'BitRate_Mode', NULL, NULL, N'N YTY', NULL, NULL, N'Bit rate mode (VBR, CBR)', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (779, 3, N'BitRate_Mode/String', NULL, NULL, N'Y NT', NULL, NULL, N'Bit rate mode (Constant, Variable)', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (780, 3, N'BitRate', NULL, N' bps', N'N YFY', NULL, NULL, N'Bit rate in bps', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (781, 3, N'BitRate/String', NULL, NULL, N'Y NT', NULL, NULL, N'Bit rate (with measurement)', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (782, 3, N'BitRate_Minimum', NULL, N' bps', N'N YFY', NULL, NULL, N'Minimum Bit rate in bps', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (783, 3, N'BitRate_Minimum/String', NULL, NULL, N'Y NT', NULL, NULL, N'Minimum Bit rate (with measurement)', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (784, 3, N'BitRate_Nominal', NULL, N' bps', N'N YFY', NULL, NULL, N'Nominal Bit rate in bps', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (785, 3, N'BitRate_Nominal/String', NULL, NULL, N'Y NT', NULL, NULL, N'Nominal Bit rate (with measurement)', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (786, 3, N'BitRate_Maximum', NULL, N' bps', N'N YFY', NULL, NULL, N'Maximum Bit rate in bps', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (787, 3, N'BitRate_Maximum/String', NULL, NULL, N'Y NT', NULL, NULL, N'Maximum Bit rate (with measurement)', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (788, 3, N'BitRate_Encoded', NULL, N' bps', N'N YFY', NULL, NULL, N'Encoded (with forced padding) bit rate in bps, if some container padding is present', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (789, 3, N'BitRate_Encoded/String', NULL, NULL, N'Y NT', NULL, NULL, N'Encoded (with forced padding) bit rate (with measurement), if some container padding is present', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (790, 3, N'Channel(s)', NULL, N' channel', N'N YIY', NULL, NULL, N'Number of channels', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (791, 3, N'Channel(s)/String', NULL, NULL, N'Y NT', NULL, NULL, N'Number of channels (with measurement)', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (792, 3, N'Channel(s)_Original', NULL, N' channel', N'N YIY', NULL, NULL, N'Number of channels', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (793, 3, N'Channel(s)_Original/String', NULL, NULL, N'Y NT', NULL, NULL, N'Number of channels (with measurement)', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (794, 3, N'Matrix_Channel(s)', NULL, N' channel', N'N YIY', NULL, NULL, N'Number of channels after matrix decoding', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (795, 3, N'Matrix_Channel(s)/String', NULL, NULL, N'Y NT', NULL, NULL, N'Number of channels after matrix decoding (with measurement)', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (796, 3, N'ChannelPositions', NULL, NULL, N'Y YTY', NULL, NULL, N'Position of channels', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (797, 3, N'ChannelPositions/String2', NULL, NULL, N'N NT', NULL, NULL, N'Position of channels (x/y.z format)', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (798, 3, N'Matrix_ChannelPositions', NULL, NULL, N'Y YTY', NULL, NULL, N'Position of channels after matrix decoding', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (799, 3, N'Matrix_ChannelPositions/String2', NULL, NULL, N'N NT', NULL, NULL, N'Position of channels after matrix decoding (x/y.z format)', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (800, 3, N'ChannelLayout', NULL, NULL, N'N YTY', NULL, NULL, N'Layout of channels (in the stream)', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (801, 3, N'ChannelLayoutID', NULL, NULL, N'N YT', NULL, NULL, N'ID of layout of channels (e.g. MXF descriptor channel assignment). Warning, sometimes this is not enough for uniquely identifying a layout (e.g. MXF descriptor channel assignment is SMPTE 377-4). For AC-3, the form is x,y with x=acmod and y=lfeon.', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (802, 3, N'SamplesPerFrame', NULL, NULL, N'N YFY', NULL, NULL, N'Sampling rate', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (803, 3, N'SamplingRate', NULL, N' Hz', N'N YFY', NULL, NULL, N'Sampling rate', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (804, 3, N'SamplingRate/String', NULL, NULL, N'Y NT', NULL, NULL, N'in KHz', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (805, 3, N'SamplingCount', NULL, NULL, N'N NIY', NULL, NULL, N'Sample count (based on sampling rate)', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (806, 3, N'Source_SamplingCount', NULL, NULL, N'N NIY', NULL, NULL, N'Source Sample count (based on sampling rate)', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (807, 3, N'FrameRate', NULL, N' fps', N'N YFY', NULL, NULL, N'Frames per second', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (808, 3, N'FrameRate/String', NULL, NULL, N'Y NT', NULL, NULL, N'Frames per second (with measurement)', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (809, 3, N'FrameRate_Num', NULL, NULL, N'N NFN', NULL, NULL, N'Frames per second, numerator', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (810, 3, N'FrameRate_Den', NULL, NULL, N'N NFN', NULL, NULL, N'Frames per second, denominator', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (811, 3, N'FrameCount', NULL, NULL, N'N NIY', NULL, NULL, N'Frame count (a frame contains a count of samples depends of the format)', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (812, 3, N'Source_FrameCount', NULL, NULL, N'N NIY', NULL, NULL, N'Source Frame count (a frame contains a count of samples depends of the format)', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (813, 3, N'Resolution', NULL, N' bit', N'N NI', NULL, NULL, N'Deprecated, do not use in new projects', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (814, 3, N'Resolution/String', NULL, NULL, N'N NT', NULL, NULL, N'Deprecated, do not use in new projects', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (815, 3, N'BitDepth', NULL, N' bit', N'N YIY', NULL, NULL, N'Resolution in bits (8, 16, 20, 24). Note: significant bits in case the stored bit depth is different', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (816, 3, N'BitDepth/String', NULL, NULL, N'Y NT', NULL, NULL, N'Resolution in bits (8, 16, 20, 24). Note: significant bits in case the stored bit depth is different', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (817, 3, N'BitDepth_Detected', NULL, N' bit', N'N YIY', NULL, NULL, N'Detected (during scan of the input by the muxer) resolution in bits', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (818, 3, N'BitDepth_Detected/String', NULL, NULL, N'Y NT', NULL, NULL, N'Detected (during scan of the input by the muxer) resolution in bits', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (819, 3, N'BitDepth_Stored', NULL, N' bit', N'N YIY', NULL, NULL, N'Stored Resolution in bits (8, 16, 20, 24)', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (820, 3, N'BitDepth_Stored/String', NULL, NULL, N'Y NT', NULL, NULL, N'Stored Resolution in bits (8, 16, 20, 24)', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (821, 3, N'Compression_Mode', NULL, NULL, N'N YTY', NULL, NULL, N'Compression mode (Lossy or Lossless)', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (822, 3, N'Compression_Mode/String', NULL, NULL, N'Y NT', NULL, NULL, N'Compression mode (Lossy or Lossless)', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (823, 3, N'Compression_Ratio', NULL, NULL, N'Y YF', NULL, NULL, N'Current stream size divided by uncompressed stream size', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (824, 3, N'Delay', NULL, N' ms', N'N NIY', NULL, NULL, N'Delay fixed in the stream (relative) IN MS', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (825, 3, N'Delay/String', NULL, NULL, N'N NT', NULL, NULL, N'Delay with measurement', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (826, 3, N'Delay/String1', NULL, NULL, N'N NT', NULL, NULL, N'Delay with measurement', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (827, 3, N'Delay/String2', NULL, NULL, N'N NT', NULL, NULL, N'Delay with measurement', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (828, 3, N'Delay/String3', NULL, NULL, N'N NT', NULL, NULL, N'Delay in format : HH:MM:SS.MMM', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (829, 3, N'Delay/String4', NULL, NULL, N'N NT', NULL, NULL, N'Delay in format : HH:MM:SS:FF, last colon replaced by semicolon for drop frame if available', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (830, 3, N'Delay/String5', NULL, NULL, N'N NT', NULL, NULL, N'Delay in format : HH:MM:SS.mmm (HH:MM:SS:FF)', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (831, 3, N'Delay_Settings', NULL, NULL, N'N NTY', NULL, NULL, N'Delay settings (in case of timecode for example)', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (832, 3, N'Delay_DropFrame', NULL, NULL, N'N NTY', NULL, NULL, N'Delay drop frame', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (833, 3, N'Delay_Source', NULL, NULL, N'N NTY', NULL, NULL, N'Delay source (Container or Stream or empty)', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (834, 3, N'Delay_Source/String', NULL, NULL, N'N NT', NULL, NULL, N'Delay source (Container or Stream or empty)', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (835, 3, N'Delay_Original', NULL, N' ms', N'N NIY', NULL, NULL, N'Delay fixed in the raw stream (relative) IN MS', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (836, 3, N'Delay_Original/String', NULL, NULL, N'N NT', NULL, NULL, N'Delay with measurement', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (837, 3, N'Delay_Original/String1', NULL, NULL, N'N NT', NULL, NULL, N'Delay with measurement', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (838, 3, N'Delay_Original/String2', NULL, NULL, N'N NT', NULL, NULL, N'Delay with measurement', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (839, 3, N'Delay_Original/String3', NULL, NULL, N'N NT', NULL, NULL, N'Delay in format: HH:MM:SS.MMM', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (840, 3, N'Delay_Original/String4', NULL, NULL, N'N NT', NULL, NULL, N'Delay in format : HH:MM:SS:FF, last colon replaced by semicolon for drop frame if available', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (841, 3, N'Delay_Original/String5', NULL, NULL, N'N NT', NULL, NULL, N'Delay in format : HH:MM:SS.mmm (HH:MM:SS:FF)', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (842, 3, N'Delay_Original_Settings', NULL, NULL, N'N NT', NULL, NULL, N'Delay settings (in case of timecode for example)', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (843, 3, N'Delay_Original_DropFrame', NULL, NULL, N'N NTY', NULL, NULL, N'Delay drop frame info', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (844, 3, N'Delay_Original_Source', NULL, NULL, N'N NTY', NULL, NULL, N'Delay source (Stream or empty)', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (845, 3, N'Video_Delay', NULL, N' ms', N'N NI', NULL, NULL, N'Delay fixed in the stream (absolute / video)', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (846, 3, N'Video_Delay/String', NULL, NULL, N'Y NT', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (847, 3, N'Video_Delay/String1', NULL, NULL, N'N NT', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (848, 3, N'Video_Delay/String2', NULL, NULL, N'N NT', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (849, 3, N'Video_Delay/String3', NULL, NULL, N'N NT', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (850, 3, N'Video_Delay/String4', NULL, NULL, N'N NT', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (851, 3, N'Video_Delay/String5', NULL, NULL, N'N NT', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (852, 3, N'Video0_Delay', NULL, N' ms', N'N NI', NULL, NULL, N'Deprecated, do not use in new projects', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (853, 3, N'Video0_Delay/String', NULL, NULL, N'N NT', NULL, NULL, N'Deprecated, do not use in new projects', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (854, 3, N'Video0_Delay/String1', NULL, NULL, N'N NT', NULL, NULL, N'Deprecated, do not use in new projects', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (855, 3, N'Video0_Delay/String2', NULL, NULL, N'N NT', NULL, NULL, N'Deprecated, do not use in new projects', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (856, 3, N'Video0_Delay/String3', NULL, NULL, N'N NT', NULL, NULL, N'Deprecated, do not use in new projects', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (857, 3, N'Video0_Delay/String4', NULL, NULL, N'N NT', NULL, NULL, N'Deprecated, do not use in new projects', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (858, 3, N'Video0_Delay/String5', NULL, NULL, N'N NT', NULL, NULL, N'Deprecated, do not use in new projects', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (859, 3, N'ReplayGain_Gain', NULL, N' dB', N'N YTY', NULL, NULL, N'The gain to apply to reach 89dB SPL on playback', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (860, 3, N'ReplayGain_Gain/String', NULL, NULL, N'Y YT', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (861, 3, N'ReplayGain_Peak', NULL, NULL, N'Y YTY', NULL, NULL, N'The maximum absolute peak value of the item', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (862, 3, N'StreamSize', NULL, N' byte', N'N YIY', NULL, NULL, N'Streamsize in bytes', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (863, 3, N'StreamSize/String', NULL, NULL, N'Y NT', NULL, NULL, N'Streamsize in with percentage value', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (864, 3, N'StreamSize/String1', NULL, NULL, N'N NT', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (865, 3, N'StreamSize/String2', NULL, NULL, N'N NT', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (866, 3, N'StreamSize/String3', NULL, NULL, N'N NT', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (867, 3, N'StreamSize/String4', NULL, NULL, N'N NT', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (868, 3, N'StreamSize/String5', NULL, NULL, N'N NT', NULL, NULL, N'Streamsize in with percentage value', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (869, 3, N'StreamSize_Proportion', NULL, NULL, N'N NTY', NULL, NULL, N'Stream size divided by file size', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (870, 3, N'StreamSize_Demuxed', NULL, N' byte', N'N YIN', NULL, NULL, N'StreamSize in bytes of hte stream after demux', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (871, 3, N'StreamSize_Demuxed/String', NULL, NULL, N'N NT', NULL, NULL, N'StreamSize_Demuxed in with percentage value', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (872, 3, N'StreamSize_Demuxed/String1', NULL, NULL, N'N NT', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (873, 3, N'StreamSize_Demuxed/String2', NULL, NULL, N'N NT', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (874, 3, N'StreamSize_Demuxed/String3', NULL, NULL, N'N NT', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (875, 3, N'StreamSize_Demuxed/String4', NULL, NULL, N'N NT', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (876, 3, N'StreamSize_Demuxed/String5', NULL, NULL, N'N NT', NULL, NULL, N'StreamSize_Demuxed in with percentage value (note: theoritical value, not for real use)', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (877, 3, N'Source_StreamSize', NULL, N' byte', N'N YIY', NULL, NULL, N'Source Streamsize in bytes', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (878, 3, N'Source_StreamSize/String', NULL, NULL, N'Y NT', NULL, NULL, N'Source Streamsize in with percentage value', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (879, 3, N'Source_StreamSize/String1', NULL, NULL, N'N NT', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (880, 3, N'Source_StreamSize/String2', NULL, NULL, N'N NT', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (881, 3, N'Source_StreamSize/String3', NULL, NULL, N'N NT', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (882, 3, N'Source_StreamSize/String4', NULL, NULL, N'N NT', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (883, 3, N'Source_StreamSize/String5', NULL, NULL, N'N NT', NULL, NULL, N'Source Streamsize in with percentage value', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (884, 3, N'Source_StreamSize_Proportion', NULL, NULL, N'N NTY', NULL, NULL, N'Source Stream size divided by file size', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (885, 3, N'StreamSize_Encoded', NULL, N' byte', N'N YIY', NULL, NULL, N'Encoded Streamsize in bytes', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (886, 3, N'StreamSize_Encoded/String', NULL, NULL, N'Y NT', NULL, NULL, N'Encoded Streamsize in with percentage value', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (887, 3, N'StreamSize_Encoded/String1', NULL, NULL, N'N NT', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (888, 3, N'StreamSize_Encoded/String2', NULL, NULL, N'N NT', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (889, 3, N'StreamSize_Encoded/String3', NULL, NULL, N'N NT', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (890, 3, N'StreamSize_Encoded/String4', NULL, NULL, N'N NT', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (891, 3, N'StreamSize_Encoded/String5', NULL, NULL, N'N NT', NULL, NULL, N'Encoded Streamsize in with percentage value', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (892, 3, N'StreamSize_Encoded_Proportion', NULL, NULL, N'N NT', NULL, NULL, N'Encoded Stream size divided by file size', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (893, 3, N'Source_StreamSize_Encoded', NULL, N' byte', N'N YIY', NULL, NULL, N'Source Encoded Streamsize in bytes', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (894, 3, N'Source_StreamSize_Encoded/String', NULL, NULL, N'Y NT', NULL, NULL, N'Source Encoded Streamsize in with percentage value', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (895, 3, N'Source_StreamSize_Encoded/String1', NULL, NULL, N'N NT', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (896, 3, N'Source_StreamSize_Encoded/String2', NULL, NULL, N'N NT', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (897, 3, N'Source_StreamSize_Encoded/String3', NULL, NULL, N'N NT', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (898, 3, N'Source_StreamSize_Encoded/String4', NULL, NULL, N'N NT', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (899, 3, N'Source_StreamSize_Encoded/String5', NULL, NULL, N'N NT', NULL, NULL, N'Source Encoded Streamsize in with percentage value', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (900, 3, N'Source_StreamSize_Encoded_Proportion', NULL, NULL, N'N NT', NULL, NULL, N'Source Encoded Stream size divided by file size', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (901, 3, N'Alignment', NULL, NULL, N'N YTY', NULL, NULL, N'How this stream file is aligned in the container', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (902, 3, N'Alignment/String', NULL, NULL, N'Y NT', NULL, NULL, N'Where this stream file is aligned in the container', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (903, 3, N'Interleave_VideoFrames', NULL, NULL, N'N YFY', NULL, NULL, N'Between how many video frames the stream is inserted', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (904, 3, N'Interleave_Duration', NULL, NULL, N'N YIY', NULL, NULL, N'Between how much time (ms) the stream is inserted', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (905, 3, N'Interleave_Duration/String', NULL, NULL, N'Y NT', NULL, NULL, N'Between how much time and video frames the stream is inserted (with measurement)', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (906, 3, N'Interleave_Preload', NULL, NULL, N'N YIY', NULL, NULL, N'How much time is buffered before the first video frame', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (907, 3, N'Interleave_Preload/String', NULL, NULL, N'Y NT', NULL, NULL, N'How much time is buffered before the first video frame (with measurement)', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (908, 3, N'Title', NULL, NULL, N'Y YIY', NULL, NULL, N'Name of the track', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (909, 3, N'Encoded_Application', NULL, NULL, N'N YTY', NULL, NULL, N'Name of the software package used to create the file, such as Microsoft WaveEdit', NULL, N'Technical')
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (910, 3, N'Encoded_Application/String', NULL, NULL, N'Y NT', NULL, NULL, N'Name of the software package used to create the file, such as Microsoft WaveEdit, trying to have the format ''CompanyName ProductName (OperatingSystem) Version (Date)''', NULL, N'Technical')
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (911, 3, N'Encoded_Application_CompanyName', NULL, NULL, N'N YTY', NULL, NULL, N'Name of the company', NULL, N'Technical')
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (912, 3, N'Encoded_Application_Name', NULL, NULL, N'N YTY', NULL, NULL, N'Name of the product', NULL, N'Technical')
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (913, 3, N'Encoded_Application_Version', NULL, NULL, N'N YTY', NULL, NULL, N'Version of the product', NULL, N'Technical')
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (914, 3, N'Encoded_Application_Url', NULL, NULL, N'N YT', NULL, NULL, N'Name of the software package used to create the file, such as Microsoft WaveEdit.', NULL, N'Technical')
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (915, 3, N'Encoded_Library', NULL, NULL, N'N YTY', NULL, NULL, N'Software used to create the file', NULL, N'Technical')
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (916, 3, N'Encoded_Library/String', NULL, NULL, N'Y NT', NULL, NULL, N'Software used to create the file, trying to have the format ''CompanyName ProductName (OperatingSystem) Version (Date)''', NULL, N'Technical')
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (917, 3, N'Encoded_Library_CompanyName', NULL, NULL, N'N YTY', NULL, NULL, N'Name of the company', NULL, N'Technical')
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (918, 3, N'Encoded_Library_Name', NULL, NULL, N'N NTY', NULL, NULL, N'Name of the the encoding-software', NULL, N'Technical')
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (919, 3, N'Encoded_Library_Version', NULL, NULL, N'N NTY', NULL, NULL, N'Version of encoding-software', NULL, N'Technical')
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (920, 3, N'Encoded_Library_Date', NULL, NULL, N'N NTY', NULL, NULL, N'Release date of software', NULL, N'Technical')
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (921, 3, N'Encoded_Library_Settings', NULL, NULL, N'Y YTY', NULL, NULL, N'Parameters used by the software', NULL, N'Technical')
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (922, 3, N'Encoded_OperatingSystem', NULL, NULL, N'N YTY', NULL, NULL, N'Operating System of encoding-software', NULL, N'Technical')
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (923, 3, N'Language', NULL, NULL, N'N YTY', NULL, NULL, N'Language (2-letter ISO 639-1 if exists, else 3-letter ISO 639-2, and with optional ISO 3166-1 country separated by a dash if available, e.g. en, en-us, zh-cn)', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (924, 3, N'Language/String', NULL, NULL, N'Y NT', NULL, NULL, N'Language (full)', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (925, 3, N'Language/String1', NULL, NULL, N'N NT', NULL, NULL, N'Language (full)', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (926, 3, N'Language/String2', NULL, NULL, N'N NT', NULL, NULL, N'Language (2-letter ISO 639-1 if exists, else empty)', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (927, 3, N'Language/String3', NULL, NULL, N'N NT', NULL, NULL, N'Language (3-letter ISO 639-2 if exists, else empty)', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (928, 3, N'Language/String4', NULL, NULL, N'N NT', NULL, NULL, N'Language (2-letter ISO 639-1 if exists with optional ISO 3166-1 country separated by a dash if available, e.g. en, en-us, zh-cn, else empty)', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (929, 3, N'Language_More', NULL, NULL, N'Y YTY', NULL, NULL, N'More info about Language (e.g. Director''s Comment)', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (930, 3, N'ServiceKind', NULL, NULL, N'N YTY', NULL, NULL, N'Service kind, e.g. visually impaired, commentary, voice over', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (931, 3, N'ServiceKind/String', NULL, NULL, N'Y NT', NULL, NULL, N'Service kind (full)', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (932, 3, N'Disabled', NULL, N'Yes', N'N YTY', NULL, NULL, N'Set if that track should not be used', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (933, 3, N'Disabled/String', NULL, NULL, N'Y NT', NULL, NULL, N'Set if that track should not be used', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (934, 3, N'Default', NULL, N'Yes', N'N YTY', NULL, NULL, N'Set if that track should be used if no language found matches the user preference.', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (935, 3, N'Default/String', NULL, NULL, N'Y NT', NULL, NULL, N'Set if that track should be used if no language found matches the user preference.', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (936, 3, N'Forced', NULL, N'Yes', N'N YTY', NULL, NULL, N'Set if that track should be used if no language found matches the user preference.', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (937, 3, N'Forced/String', NULL, NULL, N'Y NT', NULL, NULL, N'Set if that track should be used if no language found matches the user preference.', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (938, 3, N'AlternateGroup', NULL, N'Yes', N'N YTY', NULL, NULL, N'Number of a group in order to provide versions of the same track', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (939, 3, N'AlternateGroup/String', NULL, NULL, N'Y NT', NULL, NULL, N'Number of a group in order to provide versions of the same track', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (940, 3, N'Encoded_Date', NULL, NULL, N'Y YTY', NULL, NULL, N'UTC time that the encoding of this item was completed began.', NULL, N'Temporal')
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (941, 3, N'Tagged_Date', NULL, NULL, N'Y YTY', NULL, NULL, N'UTC time that the tags were done for this item.', NULL, N'Temporal')
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (942, 3, N'Encryption', NULL, NULL, N'Y YTY', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (943, 4, N'Status', NULL, NULL, N'N NI', NULL, NULL, N'bit field (0=IsAccepted, 1=IsFilled, 2=IsUpdated, 3=IsFinished)', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (944, 4, N'StreamCount', NULL, NULL, N'N NI', NULL, NULL, N'Count of streams of that kind available', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (945, 4, N'StreamKind', N'Image', NULL, N'N NT', NULL, NULL, N'Stream type name', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (946, 4, N'StreamKind/String', NULL, NULL, N'N NT', NULL, NULL, N'Stream type name', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (947, 4, N'StreamKindID', NULL, NULL, N'N NI', NULL, NULL, N'Number of the stream (base=0)', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (948, 4, N'StreamKindPos', NULL, NULL, N'N NI', NULL, NULL, N'When multiple streams, number of the stream (base=1)', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (949, 4, N'StreamOrder', NULL, NULL, N'N YIY', NULL, NULL, N'Stream order in the file, whatever is the kind of stream (base=0)', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (950, 4, N'FirstPacketOrder', NULL, NULL, N'N YIY', NULL, NULL, N'Order of the first fully decodable packet met in the file, whatever is the kind of stream (base=0)', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (951, 4, N'Inform', NULL, NULL, N'N NT', NULL, NULL, N'Last **Inform** call', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (952, 4, N'ID', NULL, NULL, N'N YIY', NULL, NULL, N'The ID for this stream in this file', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (953, 4, N'ID/String', NULL, NULL, N'Y NT', NULL, NULL, N'The ID for this stream in this file', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (954, 4, N'OriginalSourceMedium_ID', NULL, NULL, N'N YIY', NULL, NULL, N'The ID for this stream in the original medium of the material', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (955, 4, N'OriginalSourceMedium_ID/String', NULL, NULL, N'Y NT', NULL, NULL, N'The ID for this stream in the original medium of the material', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (956, 4, N'UniqueID', NULL, NULL, N'N YIY', NULL, NULL, N'The unique ID for this stream, should be copied with stream copy', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (957, 4, N'UniqueID/String', NULL, NULL, N'Y NT', NULL, NULL, N'The unique ID for this stream, should be copied with stream copy', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (958, 4, N'MenuID', NULL, NULL, N'N YIY', NULL, NULL, N'The menu ID for this stream in this file', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (959, 4, N'MenuID/String', NULL, NULL, N'Y NT', NULL, NULL, N'The menu ID for this stream in this file', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (960, 4, N'Title', NULL, NULL, N'Y YI', NULL, NULL, N'Name of the track', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (961, 4, N'Format', NULL, NULL, N'Y YTY', NULL, NULL, N'Format used', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (962, 4, N'Format/Info', NULL, NULL, N'Y NT', NULL, NULL, N'Info about Format', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (963, 4, N'Format/Url', NULL, NULL, N'N NT', NULL, NULL, N'Link', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (964, 4, N'Format_Commercial', NULL, NULL, N'N NT', NULL, NULL, N'Commercial name used by vendor for theses setings or Format field if there is no difference', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (965, 4, N'Format_Commercial_IfAny', NULL, NULL, N'Y YTY', NULL, NULL, N'Commercial name used by vendor for theses setings if there is one', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (966, 4, N'Format_Version', NULL, NULL, N'Y NTY', NULL, NULL, N'Version of this format', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (967, 4, N'Format_Profile', NULL, NULL, N'Y NTY', NULL, NULL, N'Profile of the Format', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (968, 4, N'Format_Compression', NULL, NULL, N'Y YTY', NULL, NULL, N'Compression method used', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (969, 4, N'Format_Settings', NULL, NULL, N'Y NT', NULL, NULL, N'Settings needed for decoder used', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (970, 4, N'Format_Settings_Wrapping', NULL, NULL, N'Y YTY', NULL, NULL, N'Wrapping mode (Frame wrapped or Clip wrapped)', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (971, 4, N'InternetMediaType', NULL, NULL, N'N YT', NULL, NULL, N'Internet Media Type (aka MIME Type, Content-Type)', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (972, 4, N'CodecID', NULL, NULL, N'Y YTY', NULL, NULL, N'Codec ID (found in some containers)', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (973, 4, N'CodecID/String', NULL, NULL, N'Y NT', NULL, NULL, N'Codec ID (found in some containers)', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (974, 4, N'CodecID/Info', NULL, NULL, N'Y NT', NULL, NULL, N'Info about codec ID', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (975, 4, N'CodecID/Hint', NULL, NULL, N'Y NT', NULL, NULL, N'A hint for this codec ID', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (976, 4, N'CodecID/Url', NULL, NULL, N'N NT', NULL, NULL, N'A link for more details about this codec ID', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (977, 4, N'CodecID_Description', NULL, NULL, N'Y YT', NULL, NULL, N'Manual description given by the container', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (978, 4, N'Codec', NULL, NULL, N'N NT', NULL, NULL, N'Deprecated, do not use in new projects', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (979, 4, N'Codec/String', NULL, NULL, N'N NT', NULL, NULL, N'Deprecated, do not use in new projects', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (980, 4, N'Codec/Family', NULL, NULL, N'N NT', NULL, NULL, N'Deprecated, do not use in new projects', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (981, 4, N'Codec/Info', NULL, NULL, N'N NT', NULL, NULL, N'Deprecated, do not use in new projects', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (982, 4, N'Codec/Url', NULL, NULL, N'N NT', NULL, NULL, N'Deprecated, do not use in new projects', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (983, 4, N'Width', NULL, N' pixel', N'N YIY', NULL, NULL, N'Width (aperture size if present) in pixel', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (984, 4, N'Width/String', NULL, NULL, N'Y NT', NULL, NULL, N'Width (aperture size if present) with measurement (pixel)', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (985, 4, N'Width_Offset', NULL, N' pixel', N'N YIY', NULL, NULL, N'Offset between original width and displayed width (aperture size) in pixel', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (986, 4, N'Width_Offset/String', NULL, NULL, N'N NT', NULL, NULL, N'Offset between original width and displayed width (aperture size)  in pixel', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (987, 4, N'Width_Original', NULL, N' pixel', N'N YIY', NULL, NULL, N'Original (in the raw stream) width in pixel', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (988, 4, N'Width_Original/String', NULL, NULL, N'Y NT', NULL, NULL, N'Original (in the raw stream) width with measurement (pixel)', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (989, 4, N'Height', NULL, N' pixel', N'N YIY', NULL, NULL, N'Height (aperture size if present) in pixel', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (990, 4, N'Height/String', NULL, NULL, N'Y NT', NULL, NULL, N'Height (aperture size if present) with measurement (pixel)', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (991, 4, N'Height_Offset', NULL, N' pixel', N'N YIY', NULL, NULL, N'Offset between original height and displayed height (aperture size) in pixel', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (992, 4, N'Height_Offset/String', NULL, NULL, N'N NT', NULL, NULL, N'Offset between original height and displayed height (aperture size)  in pixel', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (993, 4, N'Height_Original', NULL, N' pixel', N'N YIY', NULL, NULL, N'Original (in the raw stream) height in pixel', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (994, 4, N'Height_Original/String', NULL, NULL, N'Y NT', NULL, NULL, N'Original (in the raw stream) height with measurement (pixel)', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (995, 4, N'PixelAspectRatio', NULL, NULL, N'N YFY', NULL, NULL, N'Pixel Aspect ratio', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (996, 4, N'PixelAspectRatio/String', NULL, NULL, N'N NT', NULL, NULL, N'Pixel Aspect ratio', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (997, 4, N'PixelAspectRatio_Original', NULL, NULL, N'N YFY', NULL, NULL, N'Original (in the raw stream) Pixel Aspect ratio', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (998, 4, N'PixelAspectRatio_Original/String', NULL, NULL, N'N NT', NULL, NULL, N'Original (in the raw stream) Pixel Aspect ratio', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (999, 4, N'DisplayAspectRatio', NULL, NULL, N'N YFY', NULL, NULL, N'Display Aspect ratio', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1000, 4, N'DisplayAspectRatio/String', NULL, NULL, N'Y NT', NULL, NULL, N'Display Aspect ratio', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1001, 4, N'DisplayAspectRatio_Original', NULL, NULL, N'N YFY', NULL, NULL, N'Original (in the raw stream) Display Aspect ratio', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1002, 4, N'DisplayAspectRatio_Original/String', NULL, NULL, N'Y NT', NULL, NULL, N'Original (in the raw stream) Display Aspect ratio', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1003, 4, N'ColorSpace', NULL, NULL, N'Y YTY', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1004, 4, N'ChromaSubsampling', NULL, NULL, N'Y YTY', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1005, 4, N'Resolution', NULL, N' bit', N'N NI', NULL, NULL, N'Deprecated, do not use in new projects', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1006, 4, N'Resolution/String', NULL, NULL, N'N NT', NULL, NULL, N'Deprecated, do not use in new projects', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1007, 4, N'BitDepth', NULL, N' bit', N'N YIY', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1008, 4, N'BitDepth/String', NULL, NULL, N'Y NT', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1009, 4, N'Compression_Mode', NULL, NULL, N'N YTY', NULL, NULL, N'Compression mode (Lossy or Lossless)', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1010, 4, N'Compression_Mode/String', NULL, NULL, N'Y NT', NULL, NULL, N'Compression mode (Lossy or Lossless)', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1011, 4, N'Compression_Ratio', NULL, NULL, N'Y YF', NULL, NULL, N'Current stream size divided by uncompressed stream size', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1012, 4, N'StreamSize', NULL, N' byte', N'N YIY', NULL, NULL, N'Stream size in bytes', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1013, 4, N'StreamSize/String', NULL, NULL, N'Y NT', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1014, 4, N'StreamSize/String1', NULL, NULL, N'N NT', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1015, 4, N'StreamSize/String2', NULL, NULL, N'N NT', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1016, 4, N'StreamSize/String3', NULL, NULL, N'N NT', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1017, 4, N'StreamSize/String4', NULL, NULL, N'N NT', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1018, 4, N'StreamSize/String5', NULL, NULL, N'N NT', NULL, NULL, N'With proportion', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1019, 4, N'StreamSize_Proportion', NULL, NULL, N'N NT', NULL, NULL, N'Stream size divided by file size', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1020, 4, N'StreamSize_Demuxed', NULL, N' byte', N'N YIN', NULL, NULL, N'StreamSize in bytes of hte stream after demux', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1021, 4, N'StreamSize_Demuxed/String', NULL, NULL, N'N NT', NULL, NULL, N'StreamSize_Demuxed in with percentage value', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1022, 4, N'StreamSize_Demuxed/String1', NULL, NULL, N'N NT', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1023, 4, N'StreamSize_Demuxed/String2', NULL, NULL, N'N NT', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1024, 4, N'StreamSize_Demuxed/String3', NULL, NULL, N'N NT', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1025, 4, N'StreamSize_Demuxed/String4', NULL, NULL, N'N NT', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1026, 4, N'StreamSize_Demuxed/String5', NULL, NULL, N'N NT', NULL, NULL, N'StreamSize_Demuxed in with percentage value (note: theoritical value, not for real use)', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1027, 4, N'Encoded_Library', NULL, NULL, N'N YTY', NULL, NULL, N'Software used to create the file', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1028, 4, N'Encoded_Library/String', NULL, NULL, N'Y NT', NULL, NULL, N'Software used to create the file', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1029, 4, N'Encoded_Library_Name', NULL, NULL, N'N NTY', NULL, NULL, N'Info from the software', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1030, 4, N'Encoded_Library_Version', NULL, NULL, N'N NTY', NULL, NULL, N'Version of software', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1031, 4, N'Encoded_Library_Date', NULL, NULL, N'N NTY', NULL, NULL, N'Release date of software', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1032, 4, N'Encoded_Library_Settings', NULL, NULL, N'Y YTY', NULL, NULL, N'Parameters used by the software', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1033, 4, N'Language', NULL, NULL, N'N YTY', NULL, NULL, N'Language (2-letter ISO 639-1 if exists, else 3-letter ISO 639-2, and with optional ISO 3166-1 country separated by a dash if available, e.g. en, en-us, zh-cn)', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1034, 4, N'Language/String', NULL, NULL, N'Y NT', NULL, NULL, N'Language (full)', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1035, 4, N'Language/String1', NULL, NULL, N'N NT', NULL, NULL, N'Language (full)', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1036, 4, N'Language/String2', NULL, NULL, N'N NT', NULL, NULL, N'Language (2-letter ISO 639-1 if exists, else empty)', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1037, 4, N'Language/String3', NULL, NULL, N'N NT', NULL, NULL, N'Language (3-letter ISO 639-2 if exists, else empty)', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1038, 4, N'Language/String4', NULL, NULL, N'N NT', NULL, NULL, N'Language (2-letter ISO 639-1 if exists with optional ISO 3166-1 country separated by a dash if available, e.g. en, en-us, zh-cn, else empty)', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1039, 4, N'Language_More', NULL, NULL, N'Y YTY', NULL, NULL, N'More info about Language (e.g. Director''s Comment)', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1040, 4, N'ServiceKind', NULL, NULL, N'N YTY', NULL, NULL, N'Service kind, e.g. visually impaired, commentary, voice over', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1041, 4, N'ServiceKind/String', NULL, NULL, N'Y NT', NULL, NULL, N'Service kind (full)', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1042, 4, N'Disabled', NULL, N'Yes', N'N YTY', NULL, NULL, N'Set if that track should not be used', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1043, 4, N'Disabled/String', NULL, NULL, N'Y NT', NULL, NULL, N'Set if that track should not be used', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1044, 4, N'Default', NULL, N'Yes', N'N YTY', NULL, NULL, N'Set if that track should be used if no language found matches the user preference.', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1045, 4, N'Default/String', NULL, NULL, N'Y NT', NULL, NULL, N'Set if that track should be used if no language found matches the user preference.', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1046, 4, N'Forced', NULL, N'Yes', N'N YTY', NULL, NULL, N'Set if that track should be used if no language found matches the user preference.', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1047, 4, N'Forced/String', NULL, NULL, N'Y NT', NULL, NULL, N'Set if that track should be used if no language found matches the user preference.', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1048, 4, N'AlternateGroup', NULL, N'Yes', N'N YTY', NULL, NULL, N'Number of a group in order to provide versions of the same track', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1049, 4, N'AlternateGroup/String', NULL, NULL, N'Y NT', NULL, NULL, N'Number of a group in order to provide versions of the same track', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1050, 4, N'Summary', NULL, NULL, N'N NTY', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1051, 4, N'Encoded_Date', NULL, NULL, N'Y YTY', NULL, NULL, N'The time that the encoding of this item was completed began.', NULL, N'Temporal')
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1052, 4, N'Tagged_Date', NULL, NULL, N'Y YTY', NULL, NULL, N'The time that the tags were done for this item.', NULL, N'Temporal')
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1053, 4, N'Encryption', NULL, NULL, N'Y YTY', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1054, 4, N'colour_description_present', NULL, NULL, N'N YTY', NULL, NULL, N'Presence of colour description', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1055, 4, N'colour_primaries', NULL, NULL, N'Y YTY', NULL, NULL, N'Chromaticity coordinates of the source primaries', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1056, 4, N'transfer_characteristics', NULL, NULL, N'Y YTY', NULL, NULL, N'Opto-electronic transfer characteristic of the source picture', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1057, 4, N'matrix_coefficients', NULL, NULL, N'Y YTY', NULL, NULL, N'Matrix coefficients used in deriving luma and chroma signals from the green, blue, and red primaries', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1058, 4, N'colour_description_present_Original', NULL, NULL, N'N YTY', NULL, NULL, N'Presence of colour description', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1059, 4, N'colour_primaries_Original', NULL, NULL, N'Y YTY', NULL, NULL, N'Chromaticity coordinates of the source primaries', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1060, 4, N'transfer_characteristics_Original', NULL, NULL, N'Y YTY', NULL, NULL, N'Opto-electronic transfer characteristic of the source picture', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1061, 4, N'matrix_coefficients_Original', NULL, NULL, N'Y YTY', NULL, NULL, N'Matrix coefficients used in deriving luma and chroma signals from the green, blue, and red primaries', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1062, 5, N'Status', NULL, NULL, N'N NI', NULL, NULL, N'bit field (0=IsAccepted, 1=IsFilled, 2=IsUpdated, 3=IsFinished)', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1063, 5, N'StreamCount', NULL, NULL, N'N NI', NULL, NULL, N'Count of streams of that kind available', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1064, 5, N'StreamKind', N'Text', NULL, N'N NT', NULL, NULL, N'Stream type name', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1065, 5, N'StreamKind/String', NULL, NULL, N'N NT', NULL, NULL, N'Stream type name', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1066, 5, N'StreamKindID', NULL, NULL, N'N NI', NULL, NULL, N'Number of the stream (base=0)', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1067, 5, N'StreamKindPos', NULL, NULL, N'N NI', NULL, NULL, N'When multiple streams, number of the stream (base=1)', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1068, 5, N'StreamOrder', NULL, NULL, N'N YI', NULL, NULL, N'Stream order in the file, whatever is the kind of stream (base=0)', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1069, 5, N'FirstPacketOrder', NULL, NULL, N'N YI', NULL, NULL, N'Order of the first fully decodable packet met in the file, whatever is the kind of stream (base=0)', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1070, 5, N'Inform', NULL, NULL, N'N NT', NULL, NULL, N'Last **Inform** call', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1071, 5, N'ID', NULL, NULL, N'N YIY', NULL, NULL, N'The ID for this stream in this file', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1072, 5, N'ID/String', NULL, NULL, N'Y NT', NULL, NULL, N'The ID for this stream in this file', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1073, 5, N'OriginalSourceMedium_ID', NULL, NULL, N'N YIY', NULL, NULL, N'The ID for this stream in the original medium of the material', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1074, 5, N'OriginalSourceMedium_ID/String', NULL, NULL, N'Y NT', NULL, NULL, N'The ID for this stream in the original medium of the material', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1075, 5, N'UniqueID', NULL, NULL, N'N YIY', NULL, NULL, N'The unique ID for this stream, should be copied with stream copy', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1076, 5, N'UniqueID/String', NULL, NULL, N'Y NT', NULL, NULL, N'The unique ID for this stream, should be copied with stream copy', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1077, 5, N'MenuID', NULL, NULL, N'N YIY', NULL, NULL, N'The menu ID for this stream in this file', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1078, 5, N'MenuID/String', NULL, NULL, N'Y NT', NULL, NULL, N'The menu ID for this stream in this file', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1079, 5, N'Format', NULL, NULL, N'Y YTY', NULL, NULL, N'Format used', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1080, 5, N'Format/Info', NULL, NULL, N'Y NT', NULL, NULL, N'Info about Format', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1081, 5, N'Format/Url', NULL, NULL, N'N NT', NULL, NULL, N'Link', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1082, 5, N'Format_Commercial', NULL, NULL, N'N NT', NULL, NULL, N'Commercial name used by vendor for theses setings or Format field if there is no difference', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1083, 5, N'Format_Commercial_IfAny', NULL, NULL, N'Y YTY', NULL, NULL, N'Commercial name used by vendor for theses setings if there is one', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1084, 5, N'Format_Version', NULL, NULL, N'Y NTY', NULL, NULL, N'Version of this format', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1085, 5, N'Format_Profile', NULL, NULL, N'Y NTY', NULL, NULL, N'Profile of the Format', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1086, 5, N'Format_Compression', NULL, NULL, N'Y NTY', NULL, NULL, N'Compression method used', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1087, 5, N'Format_Settings', NULL, NULL, N'Y NTY', NULL, NULL, N'Settings needed for decoder used', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1088, 5, N'Format_Settings_Wrapping', NULL, NULL, N'Y YTY', NULL, NULL, N'Wrapping mode (Frame wrapped or Clip wrapped)', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1089, 5, N'InternetMediaType', NULL, NULL, N'N YT', NULL, NULL, N'Internet Media Type (aka MIME Type, Content-Type)', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1090, 5, N'MuxingMode', NULL, NULL, N'Y YTY', NULL, NULL, N'How this stream is muxed in the container', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1091, 5, N'MuxingMode_MoreInfo', NULL, NULL, N'Y NTY', NULL, NULL, N'More info (text) about the muxing mode', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1092, 5, N'CodecID', NULL, NULL, N'Y YTY', NULL, NULL, N'Codec ID (found in some containers)', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1093, 5, N'CodecID/String', NULL, NULL, N'Y NT', NULL, NULL, N'Codec ID (found in some containers)', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1094, 5, N'CodecID/Info', NULL, NULL, N'Y NT', NULL, NULL, N'Info about codec ID', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1095, 5, N'CodecID/Hint', NULL, NULL, N'Y NT', NULL, NULL, N'A hint for this codec ID', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1096, 5, N'CodecID/Url', NULL, NULL, N'N NT', NULL, NULL, N'A link for more details about this codec ID', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1097, 5, N'CodecID_Description', NULL, NULL, N'Y YT', NULL, NULL, N'Manual description given by the container', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1098, 5, N'Codec', NULL, NULL, N'N YT', NULL, NULL, N'Deprecated', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1099, 5, N'Codec/String', NULL, NULL, N'N NT', NULL, NULL, N'Deprecated', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1100, 5, N'Codec/Info', NULL, NULL, N'N NT', NULL, NULL, N'Deprecated', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1101, 5, N'Codec/Url', NULL, NULL, N'N NT', NULL, NULL, N'Deprecated', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1102, 5, N'Codec/CC', NULL, NULL, N'N NT', NULL, NULL, N'Deprecated', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1103, 5, N'Duration', NULL, N' ms', N'N YIY', NULL, NULL, N'Play time of the stream, in ms', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1104, 5, N'Duration/String', NULL, NULL, N'Y NT', NULL, NULL, N'Play time (formated)', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1105, 5, N'Duration/String1', NULL, NULL, N'N NT', NULL, NULL, N'Play time in format : HHh MMmn SSs MMMms, XX omited if zero', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1106, 5, N'Duration/String2', NULL, NULL, N'N NT', NULL, NULL, N'Play time in format : XXx YYy only, YYy omited if zero', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1107, 5, N'Duration/String3', NULL, NULL, N'N NT', NULL, NULL, N'Play time in format : HH:MM:SS.MMM', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1108, 5, N'Duration/String4', NULL, NULL, N'N NT', NULL, NULL, N'Play time in format : HH:MM:SS:FF, last colon replaced by semicolon for drop frame if available', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1109, 5, N'Duration/String5', NULL, NULL, N'N NT', NULL, NULL, N'Play time in format : HH:MM:SS.mmm (HH:MM:SS:FF)', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1110, 5, N'Duration_FirstFrame', NULL, N' ms', N'N YIY', NULL, NULL, N'Duration of the first frame if it is longer than others, in ms', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1111, 5, N'Duration_FirstFrame/String', NULL, NULL, N'Y NT', NULL, NULL, N'Duration of the first frame if it is longer than others, in format : XXx YYy only, YYy omited if zero', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1112, 5, N'Duration_FirstFrame/String1', NULL, NULL, N'N NT', NULL, NULL, N'Duration of the first frame if it is longer than others, in format : HHh MMmn SSs MMMms, XX omited if zero', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1113, 5, N'Duration_FirstFrame/String2', NULL, NULL, N'N NT', NULL, NULL, N'Duration of the first frame if it is longer than others, in format : XXx YYy only, YYy omited if zero', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1114, 5, N'Duration_FirstFrame/String3', NULL, NULL, N'N NT', NULL, NULL, N'Duration of the first frame if it is longer than others, in format : HH:MM:SS.MMM', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1115, 5, N'Duration_FirstFrame/String4', NULL, NULL, N'N NT', NULL, NULL, N'Duration of the first frame if it is longer than others, in format : HH:MM:SS:FF, last colon replaced by semicolon for drop frame if available', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1116, 5, N'Duration_FirstFrame/String5', NULL, NULL, N'N NT', NULL, NULL, N'Duration of the first frame if it is longer than others, in format : HH:MM:SS.mmm (HH:MM:SS:FF)', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1117, 5, N'Duration_LastFrame', NULL, N' ms', N'N YIY', NULL, NULL, N'Duration of the last frame if it is longer than others, in ms', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1118, 5, N'Duration_LastFrame/String', NULL, NULL, N'Y NT', NULL, NULL, N'Duration of the last frame if it is longer than others, in format : XXx YYy only, YYy omited if zero', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1119, 5, N'Duration_LastFrame/String1', NULL, NULL, N'N NT', NULL, NULL, N'Duration of the last frame if it is longer than others, in format : HHh MMmn SSs MMMms, XX omited if zero', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1120, 5, N'Duration_LastFrame/String2', NULL, NULL, N'N NT', NULL, NULL, N'Duration of the last frame if it is longer than others, in format : XXx YYy only, YYy omited if zero', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1121, 5, N'Duration_LastFrame/String3', NULL, NULL, N'N NT', NULL, NULL, N'Duration of the last frame if it is longer than others, in format : HH:MM:SS.MMM', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1122, 5, N'Duration_LastFrame/String4', NULL, NULL, N'N NT', NULL, NULL, N'Duration of the last frame if it is longer than others, in format : HH:MM:SS:FF, last colon replaced by semicolon for drop frame if available', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1123, 5, N'Duration_LastFrame/String5', NULL, NULL, N'N NT', NULL, NULL, N'Duration of the last frame if it is longer than others, in format : HH:MM:SS.mmm (HH:MM:SS:FF)', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1124, 5, N'Source_Duration', NULL, N' ms', N'N YIY', NULL, NULL, N'Source Play time of the stream, in ms', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1125, 5, N'Source_Duration/String', NULL, NULL, N'Y NT', NULL, NULL, N'Source Play time in format : XXx YYy only, YYy omited if zero', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1126, 5, N'Source_Duration/String1', NULL, NULL, N'N NT', NULL, NULL, N'Source Play time in format : HHh MMmn SSs MMMms, XX omited if zero', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1127, 5, N'Source_Duration/String2', NULL, NULL, N'N NT', NULL, NULL, N'Source Play time in format : XXx YYy only, YYy omited if zero', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1128, 5, N'Source_Duration/String3', NULL, NULL, N'N NT', NULL, NULL, N'Source Play time in format : HH:MM:SS.MMM', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1129, 5, N'Source_Duration/String4', NULL, NULL, N'N NT', NULL, NULL, N'Source Play time in format : HH:MM:SS:FF, last colon replaced by semicolon for drop frame if available', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1130, 5, N'Source_Duration/String5', NULL, NULL, N'N NT', NULL, NULL, N'Source Play time in format : HH:MM:SS.mmm (HH:MM:SS:FF)', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1131, 5, N'Source_Duration_FirstFrame', NULL, N' ms', N'N YIY', NULL, NULL, N'Source Duration of the first frame if it is longer than others, in ms', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1132, 5, N'Source_Duration_FirstFrame/String', NULL, NULL, N'Y NT', NULL, NULL, N'Source Duration of the first frame if it is longer than others, in format : XXx YYy only, YYy omited if zero', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1133, 5, N'Source_Duration_FirstFrame/String1', NULL, NULL, N'N NT', NULL, NULL, N'Source Duration of the first frame if it is longer than others, in format : HHh MMmn SSs MMMms, XX omited if zero', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1134, 5, N'Source_Duration_FirstFrame/String2', NULL, NULL, N'N NT', NULL, NULL, N'Source Duration of the first frame if it is longer than others, in format : XXx YYy only, YYy omited if zero', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1135, 5, N'Source_Duration_FirstFrame/String3', NULL, NULL, N'N NT', NULL, NULL, N'Source Duration of the first frame if it is longer than others, in format : HH:MM:SS.MMM', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1136, 5, N'Source_Duration_FirstFrame/String4', NULL, NULL, N'N NT', NULL, NULL, N'Source Duration of the first frame if it is longer than others, in format : HH:MM:SS:FF, last colon replaced by semicolon for drop frame if available', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1137, 5, N'Source_Duration_FirstFrame/String5', NULL, NULL, N'N NT', NULL, NULL, N'Source Duration of the first frame if it is longer than others, in format : HH:MM:SS.mmm (HH:MM:SS:FF)', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1138, 5, N'Source_Duration_LastFrame', NULL, N' ms', N'N YIY', NULL, NULL, N'Source Duration of the last frame if it is longer than others, in ms', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1139, 5, N'Source_Duration_LastFrame/String', NULL, NULL, N'Y NT', NULL, NULL, N'Source Duration of the last frame if it is longer than others, in format : XXx YYy only, YYy omited if zero', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1140, 5, N'Source_Duration_LastFrame/String1', NULL, NULL, N'N NT', NULL, NULL, N'Source Duration of the last frame if it is longer than others, in format : HHh MMmn SSs MMMms, XX omited if zero', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1141, 5, N'Source_Duration_LastFrame/String2', NULL, NULL, N'N NT', NULL, NULL, N'Source Duration of the last frame if it is longer than others, in format : XXx YYy only, YYy omited if zero', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1142, 5, N'Source_Duration_LastFrame/String3', NULL, NULL, N'N NT', NULL, NULL, N'Source Duration of the last frame if it is longer than others, in format : HH:MM:SS.MMM', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1143, 5, N'Source_Duration_LastFrame/String4', NULL, NULL, N'N NT', NULL, NULL, N'Source Duration of the last frame if it is longer than others, in format : HH:MM:SS:FF, last colon replaced by semicolon for drop frame if available', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1144, 5, N'Source_Duration_LastFrame/String5', NULL, NULL, N'N NT', NULL, NULL, N'Source Duration of the last frame if it is longer than others, in format : HH:MM:SS.mmm (HH:MM:SS:FF)', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1145, 5, N'BitRate_Mode', NULL, NULL, N'N YTY', NULL, NULL, N'Bit rate mode (VBR, CBR)', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1146, 5, N'BitRate_Mode/String', NULL, NULL, N'Y NT', NULL, NULL, N'Bit rate mode (Constant, Variable)', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1147, 5, N'BitRate', NULL, N' bps', N'N YFY', NULL, NULL, N'Bit rate in bps', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1148, 5, N'BitRate/String', NULL, NULL, N'Y NT', NULL, NULL, N'Bit rate (with measurement)', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1149, 5, N'BitRate_Minimum', NULL, N' bps', N'N YFY', NULL, NULL, N'Minimum Bit rate in bps', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1150, 5, N'BitRate_Minimum/String', NULL, NULL, N'Y NT', NULL, NULL, N'Minimum Bit rate (with measurement)', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1151, 5, N'BitRate_Nominal', NULL, N' bps', N'N YFY', NULL, NULL, N'Nominal Bit rate in bps', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1152, 5, N'BitRate_Nominal/String', NULL, NULL, N'Y NT', NULL, NULL, N'Nominal Bit rate (with measurement)', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1153, 5, N'BitRate_Maximum', NULL, N' bps', N'N YFY', NULL, NULL, N'Maximum Bit rate in bps', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1154, 5, N'BitRate_Maximum/String', NULL, NULL, N'Y NT', NULL, NULL, N'Maximum Bit rate (with measurement)', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1155, 5, N'BitRate_Encoded', NULL, N' bps', N'N YFY', NULL, NULL, N'Encoded (with forced padding) bit rate in bps, if some container padding is present', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1156, 5, N'BitRate_Encoded/String', NULL, NULL, N'Y NT', NULL, NULL, N'Encoded (with forced padding) bit rate (with measurement), if some container padding is present', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1157, 5, N'Width', NULL, N' character', N'N YIY', NULL, NULL, N'Width', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1158, 5, N'Width/String', NULL, NULL, N'Y NT', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1159, 5, N'Height', NULL, N' character', N'N YIY', NULL, NULL, N'Height', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1160, 5, N'Height/String', NULL, NULL, N'Y NT', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1161, 5, N'FrameRate_Mode', NULL, NULL, N'N YTY', NULL, NULL, N'Frame rate mode (CFR, VFR)', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1162, 5, N'FrameRate_Mode/String', NULL, NULL, N'N NT', NULL, NULL, N'Frame rate mode (Constant, Variable)', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1163, 5, N'FrameRate', NULL, N' fps', N'N YFY', NULL, NULL, N'Frames per second', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1164, 5, N'FrameRate/String', NULL, NULL, N'N NT', NULL, NULL, N'Frames per second (with measurement)', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1165, 5, N'FrameRate_Num', NULL, NULL, N'N NFN', NULL, NULL, N'Frames per second, numerator', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1166, 5, N'FrameRate_Den', NULL, NULL, N'N NFN', NULL, NULL, N'Frames per second, denominator', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1167, 5, N'FrameRate_Minimum', NULL, N' fps', N'N YFY', NULL, NULL, N'Minimum Frames per second', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1168, 5, N'FrameRate_Minimum/String', NULL, NULL, N'N NT', NULL, NULL, N'Minimum Frames per second (with measurement)', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1169, 5, N'FrameRate_Nominal', NULL, N' fps', N'N YFY', NULL, NULL, N'Nominal Frames per second', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1170, 5, N'FrameRate_Nominal/String', NULL, NULL, N'N NT', NULL, NULL, N'Nominal Frames per second (with measurement)', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1171, 5, N'FrameRate_Maximum', NULL, N' fps', N'N YFY', NULL, NULL, N'Maximum Frames per second', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1172, 5, N'FrameRate_Maximum/String', NULL, NULL, N'N NT', NULL, NULL, N'Maximum Frames per second (with measurement)', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1173, 5, N'FrameRate_Original', NULL, N' fps', N'N YFY', NULL, NULL, N'Original (in the raw stream) Frames per second', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1174, 5, N'FrameRate_Original/String', NULL, NULL, N'N NT', NULL, NULL, N'Original (in the raw stream) Frames per second (with measurement)', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1175, 5, N'FrameCount', NULL, NULL, N'N NIY', NULL, NULL, N'Number of frames', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1176, 5, N'ElementCount', NULL, NULL, N'Y NIY', NULL, NULL, N'Number of displayed elements', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1177, 5, N'Source_FrameCount', NULL, NULL, N'N NIY', NULL, NULL, N'Source Number of frames', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1178, 5, N'ColorSpace', NULL, NULL, N'Y YTY', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1179, 5, N'ChromaSubsampling', NULL, NULL, N'Y YTY', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1180, 5, N'Resolution', NULL, N' bit', N'N NI', NULL, NULL, N'Deprecated, do not use in new projects', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1181, 5, N'Resolution/String', NULL, NULL, N'N NT', NULL, NULL, N'Deprecated, do not use in new projects', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1182, 5, N'BitDepth', NULL, N' bit', N'N YIY', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1183, 5, N'BitDepth/String', NULL, NULL, N'Y NT', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1184, 5, N'Compression_Mode', NULL, NULL, N'N YTY', NULL, NULL, N'Compression mode (Lossy or Lossless)', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1185, 5, N'Compression_Mode/String', NULL, NULL, N'Y NT', NULL, NULL, N'Compression mode (Lossy or Lossless)', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1186, 5, N'Compression_Ratio', NULL, NULL, N'Y YF', NULL, NULL, N'Current stream size divided by uncompressed stream size', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1187, 5, N'Delay', NULL, N' ms', N'N NIY', NULL, NULL, N'Delay fixed in the stream (relative) IN MS', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1188, 5, N'Delay/String', NULL, NULL, N'N NT', NULL, NULL, N'Delay with measurement', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1189, 5, N'Delay/String1', NULL, NULL, N'N NT', NULL, NULL, N'Delay with measurement', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1190, 5, N'Delay/String2', NULL, NULL, N'N NT', NULL, NULL, N'Delay with measurement', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1191, 5, N'Delay/String3', NULL, NULL, N'N NT', NULL, NULL, N'Delay in format : HH:MM:SS.MMM', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1192, 5, N'Delay/String4', NULL, NULL, N'N NT', NULL, NULL, N'Delay in format : HH:MM:SS:FF, last colon replaced by semicolon for drop frame if available', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1193, 5, N'Delay/String5', NULL, NULL, N'N NT', NULL, NULL, N'Delay in format : HH:MM:SS.mmm (HH:MM:SS:FF)', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1194, 5, N'Delay_Settings', NULL, NULL, N'N NT', NULL, NULL, N'Delay settings (in case of timecode for example)', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1195, 5, N'Delay_DropFrame', NULL, NULL, N'N NTY', NULL, NULL, N'Delay drop frame', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1196, 5, N'Delay_Source', NULL, NULL, N'N NTY', NULL, NULL, N'Delay source (Container or Stream or empty)', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1197, 5, N'Delay_Source/String', NULL, NULL, N'N NT', NULL, NULL, N'Delay source (Container or Stream or empty)', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1198, 5, N'Delay_Original', NULL, N' ms', N'N NIY', NULL, NULL, N'Delay fixed in the raw stream (relative) IN MS', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1199, 5, N'Delay_Original/String', NULL, NULL, N'N NT', NULL, NULL, N'Delay with measurement', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1200, 5, N'Delay_Original/String1', NULL, NULL, N'N NT', NULL, NULL, N'Delay with measurement', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1201, 5, N'Delay_Original/String2', NULL, NULL, N'N NT', NULL, NULL, N'Delay with measurement', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1202, 5, N'Delay_Original/String3', NULL, NULL, N'N NT', NULL, NULL, N'Delay in format: HH:MM:SS.MMM', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1203, 5, N'Delay_Original/String4', NULL, NULL, N'N NT', NULL, NULL, N'Delay in format: HH:MM:SS:FF, last colon replaced by semicolon for drop frame if available', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1204, 5, N'Delay_Original/String5', NULL, NULL, N'N NT', NULL, NULL, N'Delay in format : HH:MM:SS.mmm (HH:MM:SS:FF)', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1205, 5, N'Delay_Original_Settings', NULL, NULL, N'N NT', NULL, NULL, N'Delay settings (in case of timecode for example)', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1206, 5, N'Delay_Original_DropFrame', NULL, NULL, N'N NT', NULL, NULL, N'Delay drop frame info', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1207, 5, N'Delay_Original_Source', NULL, NULL, N'N NTY', NULL, NULL, N'Delay source (Stream or empty)', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1208, 5, N'Video_Delay', NULL, N' ms', N'N NI', NULL, NULL, N'Delay fixed in the stream (absolute / video)', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1209, 5, N'Video_Delay/String', NULL, NULL, N'Y NT', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1210, 5, N'Video_Delay/String1', NULL, NULL, N'N NT', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1211, 5, N'Video_Delay/String2', NULL, NULL, N'N NT', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1212, 5, N'Video_Delay/String3', NULL, NULL, N'N NT', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1213, 5, N'Video_Delay/String4', NULL, NULL, N'N NT', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1214, 5, N'Video_Delay/String5', NULL, NULL, N'N NT', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1215, 5, N'Video0_Delay', NULL, N' ms', N'N NI', NULL, NULL, N'Deprecated, do not use in new projects', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1216, 5, N'Video0_Delay/String', NULL, NULL, N'N NT', NULL, NULL, N'Deprecated, do not use in new projects', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1217, 5, N'Video0_Delay/String1', NULL, NULL, N'N NT', NULL, NULL, N'Deprecated, do not use in new projects', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1218, 5, N'Video0_Delay/String2', NULL, NULL, N'N NT', NULL, NULL, N'Deprecated, do not use in new projects', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1219, 5, N'Video0_Delay/String3', NULL, NULL, N'N NT', NULL, NULL, N'Deprecated, do not use in new projects', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1220, 5, N'Video0_Delay/String4', NULL, NULL, N'N NT', NULL, NULL, N'Deprecated, do not use in new projects', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1221, 5, N'Video0_Delay/String5', NULL, NULL, N'N NT', NULL, NULL, N'Deprecated, do not use in new projects', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1222, 5, N'StreamSize', NULL, N' byte', N'N YIY', NULL, NULL, N'Streamsize in bytes', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1223, 5, N'StreamSize/String', NULL, NULL, N'Y NT', NULL, NULL, N'Streamsize in with percentage value', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1224, 5, N'StreamSize/String1', NULL, NULL, N'N NT', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1225, 5, N'StreamSize/String2', NULL, NULL, N'N NT', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1226, 5, N'StreamSize/String3', NULL, NULL, N'N NT', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1227, 5, N'StreamSize/String4', NULL, NULL, N'N NT', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1228, 5, N'StreamSize/String5', NULL, NULL, N'N NT', NULL, NULL, N'Streamsize in with percentage value', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1229, 5, N'StreamSize_Proportion', NULL, NULL, N'N NT', NULL, NULL, N'Stream size divided by file size', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1230, 5, N'StreamSize_Demuxed', NULL, N' byte', N'N YIN', NULL, NULL, N'StreamSize in bytes of hte stream after demux', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1231, 5, N'StreamSize_Demuxed/String', NULL, NULL, N'N NT', NULL, NULL, N'StreamSize_Demuxed in with percentage value', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1232, 5, N'StreamSize_Demuxed/String1', NULL, NULL, N'N NT', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1233, 5, N'StreamSize_Demuxed/String2', NULL, NULL, N'N NT', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1234, 5, N'StreamSize_Demuxed/String3', NULL, NULL, N'N NT', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1235, 5, N'StreamSize_Demuxed/String4', NULL, NULL, N'N NT', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1236, 5, N'StreamSize_Demuxed/String5', NULL, NULL, N'N NT', NULL, NULL, N'StreamSize_Demuxed in with percentage value (note: theoritical value, not for real use)', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1237, 5, N'Source_StreamSize', NULL, N' byte', N'N YIY', NULL, NULL, N'Source Streamsize in bytes', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1238, 5, N'Source_StreamSize/String', NULL, NULL, N'Y NT', NULL, NULL, N'Source Streamsize in with percentage value', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1239, 5, N'Source_StreamSize/String1', NULL, NULL, N'N NT', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1240, 5, N'Source_StreamSize/String2', NULL, NULL, N'N NT', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1241, 5, N'Source_StreamSize/String3', NULL, NULL, N'N NT', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1242, 5, N'Source_StreamSize/String4', NULL, NULL, N'N NT', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1243, 5, N'Source_StreamSize/String5', NULL, NULL, N'N NT', NULL, NULL, N'Source Streamsize in with percentage value', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1244, 5, N'Source_StreamSize_Proportion', NULL, NULL, N'N NT', NULL, NULL, N'Source Stream size divided by file size', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1245, 5, N'StreamSize_Encoded', NULL, N' byte', N'N YIY', NULL, NULL, N'Encoded Streamsize in bytes', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1246, 5, N'StreamSize_Encoded/String', NULL, NULL, N'Y NT', NULL, NULL, N'Encoded Streamsize in with percentage value', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1247, 5, N'StreamSize_Encoded/String1', NULL, NULL, N'N NT', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1248, 5, N'StreamSize_Encoded/String2', NULL, NULL, N'N NT', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1249, 5, N'StreamSize_Encoded/String3', NULL, NULL, N'N NT', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1250, 5, N'StreamSize_Encoded/String4', NULL, NULL, N'N NT', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1251, 5, N'StreamSize_Encoded/String5', NULL, NULL, N'N NT', NULL, NULL, N'Encoded Streamsize in with percentage value', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1252, 5, N'StreamSize_Encoded_Proportion', NULL, NULL, N'N NT', NULL, NULL, N'Encoded Stream size divided by file size', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1253, 5, N'Source_StreamSize_Encoded', NULL, N' byte', N'N YI', NULL, NULL, N'Source Encoded Streamsize in bytes', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1254, 5, N'Source_StreamSize_Encoded/String', NULL, NULL, N'Y NT', NULL, NULL, N'Source Encoded Streamsize in with percentage value', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1255, 5, N'Source_StreamSize_Encoded/String1', NULL, NULL, N'N NT', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1256, 5, N'Source_StreamSize_Encoded/String2', NULL, NULL, N'N NT', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1257, 5, N'Source_StreamSize_Encoded/String3', NULL, NULL, N'N NT', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1258, 5, N'Source_StreamSize_Encoded/String4', NULL, NULL, N'N NT', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1259, 5, N'Source_StreamSize_Encoded/String5', NULL, NULL, N'N NT', NULL, NULL, N'Source Encoded Streamsize in with percentage value', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1260, 5, N'Source_StreamSize_Encoded_Proportion', NULL, NULL, N'N NT', NULL, NULL, N'Source Encoded Stream size divided by file size', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1261, 5, N'Title', NULL, NULL, N'Y YIY', NULL, NULL, N'Name of the track', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1262, 5, N'Encoded_Application', NULL, NULL, N'N YT', NULL, NULL, N'Name of the software package used to create the file, such as Microsoft WaveEdit', NULL, N'Technical')
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1263, 5, N'Encoded_Application/String', NULL, NULL, N'Y NT', NULL, NULL, N'Name of the software package used to create the file, such as Microsoft WaveEdit, trying to have the format ''CompanyName ProductName (OperatingSystem) Version (Date)''', NULL, N'Technical')
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1264, 5, N'Encoded_Application_CompanyName', NULL, NULL, N'N YTY', NULL, NULL, N'Name of the company', NULL, N'Technical')
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1265, 5, N'Encoded_Application_Name', NULL, NULL, N'N YTY', NULL, NULL, N'Name of the product', NULL, N'Technical')
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1266, 5, N'Encoded_Application_Version', NULL, NULL, N'N YTY', NULL, NULL, N'Version of the product', NULL, N'Technical')
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1267, 5, N'Encoded_Application_Url', NULL, NULL, N'N YTY', NULL, NULL, N'Name of the software package used to create the file, such as Microsoft WaveEdit.', NULL, N'Technical')
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1268, 5, N'Encoded_Library', NULL, NULL, N'N YT', NULL, NULL, N'Software used to create the file', NULL, N'Technical')
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1269, 5, N'Encoded_Library/String', NULL, NULL, N'Y NT', NULL, NULL, N'Software used to create the file, trying to have the format ''CompanyName ProductName (OperatingSystem) Version (Date)''', NULL, N'Technical')
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1270, 5, N'Encoded_Library_CompanyName', NULL, NULL, N'N YTY', NULL, NULL, N'Name of the company', NULL, N'Technical')
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1271, 5, N'Encoded_Library_Name', NULL, NULL, N'N NTY', NULL, NULL, N'Name of the the encoding-software', NULL, N'Technical')
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1272, 5, N'Encoded_Library_Version', NULL, NULL, N'N NTY', NULL, NULL, N'Version of encoding-software', NULL, N'Technical')
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1273, 5, N'Encoded_Library_Date', NULL, NULL, N'N NTY', NULL, NULL, N'Release date of software', NULL, N'Technical')
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1274, 5, N'Encoded_Library_Settings', NULL, NULL, N'Y YTY', NULL, NULL, N'Parameters used by the software', NULL, N'Technical')
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1275, 5, N'Encoded_OperatingSystem', NULL, NULL, N'N YTY', NULL, NULL, N'Operating System of encoding-software', NULL, N'Technical')
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1276, 5, N'Language', NULL, NULL, N'N YTY', NULL, NULL, N'Language (2-letter ISO 639-1 if exists, else 3-letter ISO 639-2, and with optional ISO 3166-1 country separated by a dash if available, e.g. en, en-us, zh-cn)', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1277, 5, N'Language/String', NULL, NULL, N'Y NT', NULL, NULL, N'Language (full)', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1278, 5, N'Language/String1', NULL, NULL, N'N NT', NULL, NULL, N'Language (full)', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1279, 5, N'Language/String2', NULL, NULL, N'N NT', NULL, NULL, N'Language (2-letter ISO 639-1 if exists, else empty)', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1280, 5, N'Language/String3', NULL, NULL, N'N NT', NULL, NULL, N'Language (3-letter ISO 639-2 if exists, else empty)', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1281, 5, N'Language/String4', NULL, NULL, N'N NT', NULL, NULL, N'Language (2-letter ISO 639-1 if exists with optional ISO 3166-1 country separated by a dash if available, e.g. en, en-us, zh-cn, else empty)', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1282, 5, N'Language_More', NULL, NULL, N'Y YTY', NULL, NULL, N'More info about Language (e.g. Director''s Comment)', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1283, 5, N'ServiceKind', NULL, NULL, N'N YTY', NULL, NULL, N'Service kind, e.g. visually impaired, commentary, voice over', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1284, 5, N'ServiceKind/String', NULL, NULL, N'Y NT', NULL, NULL, N'Service kind (full)', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1285, 5, N'Disabled', NULL, N'Yes', N'N YTY', NULL, NULL, N'Set if that track should not be used', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1286, 5, N'Disabled/String', NULL, NULL, N'Y NT', NULL, NULL, N'Set if that track should not be used', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1287, 5, N'Default', NULL, N'Yes', N'N YTY', NULL, NULL, N'Set if that track should be used if no language found matches the user preference.', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1288, 5, N'Default/String', NULL, NULL, N'Y NT', NULL, NULL, N'Set if that track should be used if no language found matches the user preference.', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1289, 5, N'Forced', NULL, N'Yes', N'N YTY', NULL, NULL, N'Set if that track should be used if no language found matches the user preference.', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1290, 5, N'Forced/String', NULL, NULL, N'Y NT', NULL, NULL, N'Set if that track should be used if no language found matches the user preference.', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1291, 5, N'AlternateGroup', NULL, N'Yes', N'N YTY', NULL, NULL, N'Number of a group in order to provide versions of the same track', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1292, 5, N'AlternateGroup/String', NULL, NULL, N'Y NT', NULL, NULL, N'Number of a group in order to provide versions of the same track', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1293, 5, N'Summary', NULL, NULL, N'N NTY', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1294, 5, N'Encoded_Date', NULL, NULL, N'Y YTY', NULL, NULL, N'The time that the encoding of this item was completed began.', NULL, N'Temporal')
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1295, 5, N'Tagged_Date', NULL, NULL, N'Y YTY', NULL, NULL, N'The time that the tags were done for this item.', NULL, N'Temporal')
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1296, 5, N'Encryption', NULL, NULL, N'Y YTY', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1297, 6, N'Status', NULL, NULL, N'N NI', NULL, NULL, N'bit field (0=IsAccepted, 1=IsFilled, 2=IsUpdated, 3=IsFinished)', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1298, 6, N'StreamCount', NULL, NULL, N'N NI', NULL, NULL, N'Count of streams of that kind available', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1299, 6, N'StreamKind', N'Menu', NULL, N'N NT', NULL, NULL, N'Stream type name', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1300, 6, N'StreamKind/String', NULL, NULL, N'N NT', NULL, NULL, N'Stream type name', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1301, 6, N'StreamKindID', NULL, NULL, N'N NI', NULL, NULL, N'Number of the stream (base=0)', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1302, 6, N'StreamKindPos', NULL, NULL, N'N NI', NULL, NULL, N'When multiple streams, number of the stream (base=1)', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1303, 6, N'StreamOrder', NULL, NULL, N'N YIY', NULL, NULL, N'Stream order in the file, whatever is the kind of stream (base=0)', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1304, 6, N'FirstPacketOrder', NULL, NULL, N'N YIY', NULL, NULL, N'Order of the first fully decodable packet met in the file, whatever is the kind of stream (base=0)', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1305, 6, N'Inform', NULL, NULL, N'N NT', NULL, NULL, N'Last **Inform** call', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1306, 6, N'ID', NULL, NULL, N'N YIY', NULL, NULL, N'The ID for this stream in this file', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1307, 6, N'ID/String', NULL, NULL, N'Y NT', NULL, NULL, N'The ID for this stream in this file', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1308, 6, N'OriginalSourceMedium_ID', NULL, NULL, N'N YIY', NULL, NULL, N'The ID for this stream in the original medium of the material', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1309, 6, N'OriginalSourceMedium_ID/String', NULL, NULL, N'Y NT', NULL, NULL, N'The ID for this stream in the original medium of the material', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1310, 6, N'UniqueID', NULL, NULL, N'N YIY', NULL, NULL, N'The unique ID for this stream, should be copied with stream copy', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1311, 6, N'UniqueID/String', NULL, NULL, N'Y NT', NULL, NULL, N'The unique ID for this stream, should be copied with stream copy', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1312, 6, N'MenuID', NULL, NULL, N'N YIY', NULL, NULL, N'The menu ID for this stream in this file', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1313, 6, N'MenuID/String', NULL, NULL, N'Y NT', NULL, NULL, N'The menu ID for this stream in this file', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1314, 6, N'Format', NULL, NULL, N'N YTY', NULL, NULL, N'Format used', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1315, 6, N'Format/Info', NULL, NULL, N'N NT', NULL, NULL, N'Info about Format', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1316, 6, N'Format/Url', NULL, NULL, N'N NT', NULL, NULL, N'Link', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1317, 6, N'Format_Commercial', NULL, NULL, N'N NT', NULL, NULL, N'Commercial name used by vendor for theses setings or Format field if there is no difference', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1318, 6, N'Format_Commercial_IfAny', NULL, NULL, N'Y YTY', NULL, NULL, N'Commercial name used by vendor for theses setings if there is one', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1319, 6, N'Format_Version', NULL, NULL, N'Y NTY', NULL, NULL, N'Version of this format', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1320, 6, N'Format_Profile', NULL, NULL, N'Y NTY', NULL, NULL, N'Profile of the Format', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1321, 6, N'Format_Compression', NULL, NULL, N'Y NTY', NULL, NULL, N'Compression method used', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1322, 6, N'Format_Settings', NULL, NULL, N'Y NTY', NULL, NULL, N'Settings needed for decoder used', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1323, 6, N'CodecID', NULL, NULL, N'Y YTY', NULL, NULL, N'Codec ID (found in some containers)', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1324, 6, N'CodecID/String', NULL, NULL, N'Y NT', NULL, NULL, N'Codec ID (found in some containers)', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1325, 6, N'CodecID/Info', NULL, NULL, N'Y NT', NULL, NULL, N'Info about this codec', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1326, 6, N'CodecID/Hint', NULL, NULL, N'Y NT', NULL, NULL, N'A hint/popular name for this codec', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1327, 6, N'CodecID/Url', NULL, NULL, N'N NT', NULL, NULL, N'A link to more details about this codec ID', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1328, 6, N'CodecID_Description', NULL, NULL, N'Y YT', NULL, NULL, N'Manual description given by the container', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1329, 6, N'Codec', NULL, NULL, N'N YT', NULL, NULL, N'Deprecated', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1330, 6, N'Codec/String', NULL, NULL, N'N NT', NULL, NULL, N'Deprecated', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1331, 6, N'Codec/Info', NULL, NULL, N'N NT', NULL, NULL, N'Deprecated', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1332, 6, N'Codec/Url', NULL, NULL, N'N NT', NULL, NULL, N'Deprecated', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1333, 6, N'Duration', NULL, N' ms', N'N YIY', NULL, NULL, N'Play time of the stream in ms', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1334, 6, N'Duration/String', NULL, NULL, N'Y NT', NULL, NULL, N'Play time in format : XXx YYy only, YYy omited if zero', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1335, 6, N'Duration/String1', NULL, NULL, N'N NT', NULL, NULL, N'Play time in format : HHh MMmn SSs MMMms, XX omited if zero', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1336, 6, N'Duration/String2', NULL, NULL, N'N NT', NULL, NULL, N'Play time in format : XXx YYy only, YYy omited if zero', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1337, 6, N'Duration/String3', NULL, NULL, N'N NT', NULL, NULL, N'Play time in format : HH:MM:SS.MMM', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1338, 6, N'Duration/String4', NULL, NULL, N'N NT', NULL, NULL, N'Play time in format : HH:MM:SS:FF, last colon replaced by semicolon for drop frame if available', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1339, 6, N'Duration/String5', NULL, NULL, N'N NT', NULL, NULL, N'Play time in format : HH:MM:SS.mmm (HH:MM:SS:FF)', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1340, 6, N'Duration_Start', NULL, NULL, N'Y YTY', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1341, 6, N'Duration_End', NULL, NULL, N'Y YTY', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1342, 6, N'Delay', NULL, N' ms', N'N NIY', NULL, NULL, N'Delay fixed in the stream (relative) IN MS', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1343, 6, N'Delay/String', NULL, NULL, N'N NT', NULL, NULL, N'Delay with measurement', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1344, 6, N'Delay/String1', NULL, NULL, N'N NT', NULL, NULL, N'Delay with measurement', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1345, 6, N'Delay/String2', NULL, NULL, N'N NT', NULL, NULL, N'Delay with measurement', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1346, 6, N'Delay/String3', NULL, NULL, N'N NT', NULL, NULL, N'Delay in format : HH:MM:SS.MMM', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1347, 6, N'Delay/String4', NULL, NULL, N'N NT', NULL, NULL, N'Delay in format : HH:MM:SS:FF, last colon replaced by semicolon for drop frame if available', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1348, 6, N'Delay/String5', NULL, NULL, N'N NT', NULL, NULL, N'Delay in format : HH:MM:SS.mmm (HH:MM:SS:FF)', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1349, 6, N'Delay_Settings', NULL, NULL, N'N NT', NULL, NULL, N'Delay settings (in case of timecode for example)', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1350, 6, N'Delay_DropFrame', NULL, NULL, N'N NTY', NULL, NULL, N'Delay drop frame', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1351, 6, N'Delay_Source', NULL, NULL, N'N NTY', NULL, NULL, N'Delay source (Container or Stream or empty)', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1352, 6, N'List_StreamKind', NULL, NULL, N'N YTY', NULL, NULL, N'List of programs available', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1353, 6, N'List_StreamPos', NULL, NULL, N'N YTY', NULL, NULL, N'List of programs available', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1354, 6, N'List', NULL, NULL, N'N YT', NULL, NULL, N'List of programs available', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1355, 6, N'List/String', NULL, NULL, N'Y NT', NULL, NULL, N'List of programs available', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1356, 6, N'Title', NULL, NULL, N'Y YIY', NULL, NULL, N'Name of this menu', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1357, 6, N'Language', NULL, NULL, N'N YTY', NULL, NULL, N'Language (2-letter ISO 639-1 if exists, else 3-letter ISO 639-2, and with optional ISO 3166-1 country separated by a dash if available, e.g. en, en-us, zh-cn)', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1358, 6, N'Language/String', NULL, NULL, N'Y NT', NULL, NULL, N'Language (full)', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1359, 6, N'Language/String1', NULL, NULL, N'N NT', NULL, NULL, N'Language (full)', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1360, 6, N'Language/String2', NULL, NULL, N'N NT', NULL, NULL, N'Language (2-letter ISO 639-1 if exists, else empty)', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1361, 6, N'Language/String3', NULL, NULL, N'N NT', NULL, NULL, N'Language (3-letter ISO 639-2 if exists, else empty)', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1362, 6, N'Language/String4', NULL, NULL, N'N NT', NULL, NULL, N'Language (2-letter ISO 639-1 if exists with optional ISO 3166-1 country separated by a dash if available, e.g. en, en-us, zh-cn, else empty)', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1363, 6, N'Language_More', NULL, NULL, N'Y YT', NULL, NULL, N'More info about Language (e.g. Director''s Comment)', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1364, 6, N'ServiceKind', NULL, NULL, N'N YTY', NULL, NULL, N'Service kind, e.g. visually impaired, commentary, voice over', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1365, 6, N'ServiceKind/String', NULL, NULL, N'Y NT', NULL, NULL, N'Service kind (full)', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1366, 6, N'ServiceName', NULL, NULL, N'Y YTY', NULL, NULL, NULL, NULL, N'Legal')
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1367, 6, N'ServiceChannel', NULL, NULL, N'Y YTY', NULL, NULL, NULL, NULL, N'Legal')
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1368, 6, N'Service/Url', NULL, NULL, N'Y YT', NULL, NULL, NULL, NULL, N'Legal')
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1369, 6, N'ServiceProvider', NULL, NULL, N'Y YTY', NULL, NULL, NULL, NULL, N'Legal')
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1370, 6, N'ServiceProviderr/Url', NULL, NULL, N'Y YT', NULL, NULL, NULL, NULL, N'Legal')
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1371, 6, N'ServiceType', NULL, NULL, N'Y YTY', NULL, NULL, NULL, NULL, N'Legal')
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1372, 6, N'NetworkName', NULL, NULL, N'Y YTY', NULL, NULL, NULL, NULL, N'Legal')
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1373, 6, N'Original/NetworkName', NULL, NULL, N'Y YTY', NULL, NULL, NULL, NULL, N'Legal')
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1374, 6, N'Countries', NULL, NULL, N'Y YTY', NULL, NULL, NULL, NULL, N'Legal')
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1375, 6, N'TimeZones', NULL, NULL, N'Y YTY', NULL, NULL, NULL, NULL, N'Legal')
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1376, 6, N'LawRating', NULL, NULL, N'Y YTY', NULL, NULL, N'Depending on the country it''s the format of the rating of a movie (P, R, X in the USA, an age in other countries or a URI defining a logo).', NULL, N'Classification')
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1377, 6, N'LawRating_Reason', NULL, NULL, N'Y YTY', NULL, NULL, N'Reason for the law rating', NULL, N'Classification')
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1378, 6, N'Disabled', NULL, N'Yes', N'N YTY', NULL, NULL, N'Set if that track should not be used', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1379, 6, N'Disabled/String', NULL, NULL, N'Y NT', NULL, NULL, N'Set if that track should not be used', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1380, 6, N'Default', NULL, N'Yes', N'N YTY', NULL, NULL, N'Set if that track should be used if no language found matches the user preference.', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1381, 6, N'Default/String', NULL, NULL, N'Y NT', NULL, NULL, N'Set if that track should be used if no language found matches the user preference.', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1382, 6, N'Forced', NULL, N'Yes', N'N YTY', NULL, NULL, N'Set if that track should be used if no language found matches the user preference.', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1383, 6, N'Forced/String', NULL, NULL, N'Y NT', NULL, NULL, N'Set if that track should be used if no language found matches the user preference.', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1384, 6, N'AlternateGroup', NULL, N'Yes', N'N YTY', NULL, NULL, N'Number of a group in order to provide versions of the same track', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1385, 6, N'AlternateGroup/String', NULL, NULL, N'Y NT', NULL, NULL, N'Number of a group in order to provide versions of the same track', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1386, 6, N'Chapters_Pos_Begin', NULL, NULL, N'N NI', NULL, NULL, N'Used by third-party developers to know about the beginning of the chapters list, to be used by Get(Stream_Menu, x, Pos), where Pos is an Integer between Chapters_Pos_Begin and Chapters_Pos_End', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1387, 6, N'Chapters_Pos_End', NULL, NULL, N'N NI', NULL, NULL, N'Used by third-party developers to know about the end of the chapters list (this position excluded)', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1388, 8, N'Status', NULL, NULL, N'N NI', NULL, NULL, N'bit field (0=IsAccepted, 1=IsFilled, 2=IsUpdated, 3=IsFinished)', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1389, 8, N'StreamCount', NULL, NULL, N'N NI', NULL, NULL, N'Count of streams of that kind available', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1390, 8, N'StreamKind', N'Other', NULL, N'N NT', NULL, NULL, N'Stream type name', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1391, 8, N'StreamKind/String', NULL, NULL, N'N NT', NULL, NULL, N'Stream type name', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1392, 8, N'StreamKindID', NULL, NULL, N'N NI', NULL, NULL, N'Number of the stream (base=0)', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1393, 8, N'StreamKindPos', NULL, NULL, N'N NI', NULL, NULL, N'When multiple streams, number of the stream (base=1)', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1394, 8, N'StreamOrder', NULL, NULL, N'N YIY', NULL, NULL, N'Stream order in the file, whatever is the kind of stream (base=0)', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1395, 8, N'FirstPacketOrder', NULL, NULL, N'N YIY', NULL, NULL, N'Order of the first fully decodable packet met in the file, whatever is the kind of stream (base=0)', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1396, 8, N'Inform', NULL, NULL, N'N NT', NULL, NULL, N'Last **Inform** call', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1397, 8, N'ID', NULL, NULL, N'N YIY', NULL, NULL, N'The ID for this stream in this file', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1398, 8, N'ID/String', NULL, NULL, N'Y NT', NULL, NULL, N'The ID for this stream in this file', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1399, 8, N'OriginalSourceMedium_ID', NULL, NULL, N'N YIY', NULL, NULL, N'The ID for this stream in the original medium of the material', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1400, 8, N'OriginalSourceMedium_ID/String', NULL, NULL, N'Y NT', NULL, NULL, N'The ID for this stream in the original medium of the material', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1401, 8, N'UniqueID', NULL, NULL, N'N YIY', NULL, NULL, N'The unique ID for this stream, should be copied with stream copy', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1402, 8, N'UniqueID/String', NULL, NULL, N'Y NT', NULL, NULL, N'The unique ID for this stream, should be copied with stream copy', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1403, 8, N'MenuID', NULL, NULL, N'N YIY', NULL, NULL, N'The menu ID for this stream in this file', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1404, 8, N'MenuID/String', NULL, NULL, N'Y NT', NULL, NULL, N'The menu ID for this stream in this file', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1405, 8, N'Type', NULL, NULL, N'Y YTY', NULL, NULL, N'Type', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1406, 8, N'Format', NULL, NULL, N'Y YTY', NULL, NULL, N'Format used', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1407, 8, N'Format/Info', NULL, NULL, N'N NT', NULL, NULL, N'Info about Format', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1408, 8, N'Format/Url', NULL, NULL, N'N NT', NULL, NULL, N'Link', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1409, 8, N'Format_Commercial', NULL, NULL, N'N NT', NULL, NULL, N'Commercial name used by vendor for theses setings or Format field if there is no difference', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1410, 8, N'Format_Commercial_IfAny', NULL, NULL, N'Y YTY', NULL, NULL, N'Commercial name used by vendor for theses setings if there is one', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1411, 8, N'Format_Version', NULL, NULL, N'Y NTY', NULL, NULL, N'Version of this format', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1412, 8, N'Format_Profile', NULL, NULL, N'Y NTY', NULL, NULL, N'Profile of the Format', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1413, 8, N'Format_Compression', NULL, NULL, N'Y NTY', NULL, NULL, N'Compression method used', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1414, 8, N'Format_Settings', NULL, NULL, N'Y NTY', NULL, NULL, N'Settings needed for decoder used', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1415, 8, N'MuxingMode', NULL, NULL, N'Y YTY', NULL, NULL, N'How this file is muxed in the container', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1416, 8, N'CodecID', NULL, NULL, N'Y YTY', NULL, NULL, N'Codec ID (found in some containers)', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1417, 8, N'CodecID/String', NULL, NULL, N'Y NT', NULL, NULL, N'Codec ID (found in some containers)', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1418, 8, N'CodecID/Info', NULL, NULL, N'Y NT', NULL, NULL, N'Info about this codec', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1419, 8, N'CodecID/Hint', NULL, NULL, N'Y NT', NULL, NULL, N'A hint/popular name for this codec', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1420, 8, N'CodecID/Url', NULL, NULL, N'N NT', NULL, NULL, N'A link to more details about this codec ID', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1421, 8, N'CodecID_Description', NULL, NULL, N'Y YT', NULL, NULL, N'Manual description given by the container', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1422, 8, N'Duration', NULL, N' ms', N'N YIY', NULL, NULL, N'Play time of the stream in ms', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1423, 8, N'Duration/String', NULL, NULL, N'Y NT', NULL, NULL, N'Play time in format : XXx YYy only, YYy omited if zero', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1424, 8, N'Duration/String1', NULL, NULL, N'N NT', NULL, NULL, N'Play time in format : HHh MMmn SSs MMMms, XX omited if zero', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1425, 8, N'Duration/String2', NULL, NULL, N'N NT', NULL, NULL, N'Play time in format : XXx YYy only, YYy omited if zero', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1426, 8, N'Duration/String3', NULL, NULL, N'N NT', NULL, NULL, N'Play time in format : HH:MM:SS.MMM', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1427, 8, N'Duration/String4', NULL, NULL, N'N NT', NULL, NULL, N'Play time in format : HH:MM:SS:FF, last colon replaced by semicolon for drop frame if available', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1428, 8, N'Duration/String5', NULL, NULL, N'N NT', NULL, NULL, N'Play time in format : HH:MM:SS.mmm (HH:MM:SS:FF)', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1429, 8, N'Duration_Start', NULL, NULL, N'Y YTY', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1430, 8, N'Duration_End', NULL, NULL, N'Y YTY', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1431, 8, N'FrameRate', NULL, N' fps', N'N YFY', NULL, NULL, N'Frames per second', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1432, 8, N'FrameRate/String', NULL, NULL, N'Y NT', NULL, NULL, N'Frames per second (with measurement)', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1433, 8, N'FrameRate_Num', NULL, NULL, N'N NFN', NULL, NULL, N'Frames per second, numerator', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1434, 8, N'FrameRate_Den', NULL, NULL, N'N NFN', NULL, NULL, N'Frames per second, denominator', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1435, 8, N'FrameCount', NULL, NULL, N'N NIY', NULL, NULL, N'Number of frames', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1436, 8, N'Delay', NULL, N' ms', N'N NIY', NULL, NULL, N'Delay fixed in the stream (relative) IN MS', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1437, 8, N'Delay/String', NULL, NULL, N'N NT', NULL, NULL, N'Delay with measurement', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1438, 8, N'Delay/String1', NULL, NULL, N'N NT', NULL, NULL, N'Delay with measurement', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1439, 8, N'Delay/String2', NULL, NULL, N'N NT', NULL, NULL, N'Delay with measurement', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1440, 8, N'Delay/String3', NULL, NULL, N'N NT', NULL, NULL, N'Delay in format : HH:MM:SS.MMM', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1441, 8, N'Delay/String4', NULL, NULL, N'N NT', NULL, NULL, N'Delay in format : HH:MM:SS:FF, last colon replaced by semicolon for drop frame if available', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1442, 8, N'Delay/String5', NULL, NULL, N'N NT', NULL, NULL, N'Delay in format : HH:MM:SS.mmm (HH:MM:SS:FF)', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1443, 8, N'Delay_Settings', NULL, NULL, N'N NT', NULL, NULL, N'Delay settings (in case of timecode for example)', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1444, 8, N'Delay_DropFrame', NULL, NULL, N'N NT', NULL, NULL, N'Delay drop frame', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1445, 8, N'Delay_Source', NULL, NULL, N'N NT', NULL, NULL, N'Delay source (Container or Stream or empty)', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1446, 8, N'Delay_Source/String', NULL, NULL, N'N NT', NULL, NULL, N'Delay source (Container or Stream or empty)', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1447, 8, N'Delay_Original', NULL, N' ms', N'N NIY', NULL, NULL, N'Delay fixed in the raw stream (relative) IN MS', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1448, 8, N'Delay_Original/String', NULL, NULL, N'N NT', NULL, NULL, N'Delay with measurement', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1449, 8, N'Delay_Original/String1', NULL, NULL, N'N NT', NULL, NULL, N'Delay with measurement', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1450, 8, N'Delay_Original/String2', NULL, NULL, N'N NT', NULL, NULL, N'Delay with measurement', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1451, 8, N'Delay_Original/String3', NULL, NULL, N'N NT', NULL, NULL, N'Delay in format: HH:MM:SS.MMM', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1452, 8, N'Delay_Original/String4', NULL, NULL, N'N NT', NULL, NULL, N'Delay in format: HH:MM:SS:FF, last colon replaced by semicolon for drop frame if available', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1453, 8, N'Delay_Original/String5', NULL, NULL, N'N NT', NULL, NULL, N'Delay in format : HH:MM:SS.mmm (HH:MM:SS:FF)', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1454, 8, N'Delay_Original_Settings', NULL, NULL, N'N NT', NULL, NULL, N'Delay settings (in case of timecode for example)', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1455, 8, N'Delay_Original_DropFrame', NULL, NULL, N'N NT', NULL, NULL, N'Delay drop frame info', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1456, 8, N'Delay_Original_Source', NULL, NULL, N'N NT', NULL, NULL, N'Delay source (Stream or empty)', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1457, 8, N'Video_Delay', NULL, N' ms', N'N NI', NULL, NULL, N'Delay fixed in the stream (absolute / video)', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1458, 8, N'Video_Delay/String', NULL, NULL, N'Y NT', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1459, 8, N'Video_Delay/String1', NULL, NULL, N'N NT', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1460, 8, N'Video_Delay/String2', NULL, NULL, N'N NT', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1461, 8, N'Video_Delay/String3', NULL, NULL, N'N NT', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1462, 8, N'Video_Delay/String4', NULL, NULL, N'N NT', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1463, 8, N'Video_Delay/String5', NULL, NULL, N'N NT', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1464, 8, N'Video0_Delay', NULL, N' ms', N'N NI', NULL, NULL, N'Deprecated, do not use in new projects', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1465, 8, N'Video0_Delay/String', NULL, NULL, N'N NT', NULL, NULL, N'Deprecated, do not use in new projects', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1466, 8, N'Video0_Delay/String1', NULL, NULL, N'N NT', NULL, NULL, N'Deprecated, do not use in new projects', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1467, 8, N'Video0_Delay/String2', NULL, NULL, N'N NT', NULL, NULL, N'Deprecated, do not use in new projects', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1468, 8, N'Video0_Delay/String3', NULL, NULL, N'N NT', NULL, NULL, N'Deprecated, do not use in new projects', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1469, 8, N'Video0_Delay/String4', NULL, NULL, N'N NT', NULL, NULL, N'Deprecated, do not use in new projects', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1470, 8, N'Video0_Delay/String5', NULL, NULL, N'N NT', NULL, NULL, N'Deprecated, do not use in new projects', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1471, 8, N'TimeStamp_FirstFrame', NULL, N' ms', N'N YIY', NULL, NULL, N'TimeStamp fixed in the stream (relative) IN MS', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1472, 8, N'TimeStamp_FirstFrame/String', NULL, NULL, N'Y NT', NULL, NULL, N'TimeStamp with measurement', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1473, 8, N'TimeStamp_FirstFrame/String1', NULL, NULL, N'N NT', NULL, NULL, N'TimeStamp with measurement', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1474, 8, N'TimeStamp_FirstFrame/String2', NULL, NULL, N'N NT', NULL, NULL, N'TimeStamp with measurement', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1475, 8, N'TimeStamp_FirstFrame/String3', NULL, NULL, N'N NT', NULL, NULL, N'TimeStamp in format : HH:MM:SS.MMM', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1476, 8, N'TimeStamp_FirstFrame/String4', NULL, NULL, N'N NT', NULL, NULL, N'TimeStamp in format : HH:MM:SS:FF, last colon replaced by semicolon for drop frame if available', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1477, 8, N'TimeStamp_FirstFrame/String5', NULL, NULL, N'N NT', NULL, NULL, N'TimeStamp in format : HH:MM:SS.mmm (HH:MM:SS:FF)', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1478, 8, N'TimeCode_FirstFrame', NULL, NULL, N'Y YCY', NULL, NULL, N'Time code in HH:MM:SS:FF, last colon replaced by semicolon for drop frame if available format', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1479, 8, N'TimeCode_Settings', NULL, NULL, N'Y YTY', NULL, NULL, N'Time code settings', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1480, 8, N'TimeCode_Striped', NULL, N'Yes', N'N YTY', NULL, NULL, N'Time code is striped (only 1st time code, no discontinuity)', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1481, 8, N'TimeCode_Striped/String', NULL, NULL, N'Y NT', NULL, NULL, N'Time code is striped (only 1st time code, no discontinuity)', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1482, 8, N'Title', NULL, NULL, N'Y YIY', NULL, NULL, N'Name of this menu', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1483, 8, N'Language', NULL, NULL, N'N YTY', NULL, NULL, N'Language (2-letter ISO 639-1 if exists, else 3-letter ISO 639-2, and with optional ISO 3166-1 country separated by a dash if available, e.g. en, en-us, zh-cn)', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1484, 8, N'Language/String', NULL, NULL, N'Y NT', NULL, NULL, N'Language (full)', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1485, 8, N'Language/String1', NULL, NULL, N'N NT', NULL, NULL, N'Language (full)', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1486, 8, N'Language/String2', NULL, NULL, N'N NT', NULL, NULL, N'Language (2-letter ISO 639-1 if exists, else empty)', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1487, 8, N'Language/String3', NULL, NULL, N'N NT', NULL, NULL, N'Language (3-letter ISO 639-2 if exists, else empty)', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1488, 8, N'Language/String4', NULL, NULL, N'N NT', NULL, NULL, N'Language (2-letter ISO 639-1 if exists with optional ISO 3166-1 country separated by a dash if available, e.g. en, en-us, zh-cn, else empty)', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1489, 8, N'Language_More', NULL, NULL, N'Y YTY', NULL, NULL, N'More info about Language (e.g. Director''s Comment)', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1490, 8, N'ServiceKind', NULL, NULL, N'N YTY', NULL, NULL, N'Service kind, e.g. visually impaired, commentary, voice over', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1491, 8, N'ServiceKind/String', NULL, NULL, N'Y NT', NULL, NULL, N'Service kind (full)', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1492, 8, N'Disabled', NULL, N'Yes', N'N YTY', NULL, NULL, N'Set if that track should not be used', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1493, 8, N'Disabled/String', NULL, NULL, N'Y NT', NULL, NULL, N'Set if that track should not be used', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1494, 8, N'Default', NULL, N'Yes', N'N YTY', NULL, NULL, N'Set if that track should be used if no language found matches the user preference.', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1495, 8, N'Default/String', NULL, NULL, N'Y NT', NULL, NULL, N'Set if that track should be used if no language found matches the user preference.', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1496, 8, N'Forced', NULL, N'Yes', N'N YTY', NULL, NULL, N'Set if that track should be used if no language found matches the user preference.', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1497, 8, N'Forced/String', NULL, NULL, N'Y NT', NULL, NULL, N'Set if that track should be used if no language found matches the user preference.', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1498, 8, N'AlternateGroup', NULL, N'Yes', N'N YTY', NULL, NULL, N'Number of a group in order to provide versions of the same track', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1499, 8, N'AlternateGroup/String', NULL, NULL, N'Y NT', NULL, NULL, N'Number of a group in order to provide versions of the same track', NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1500, 7, N'Format/Info', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1501, 7, N'Format/Url', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1502, 7, N'Format_Commercial', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1503, 7, N'Format_Commercial_IfAny', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1504, 7, N'Format_Version', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1505, 7, N'Format_Profile', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1506, 7, N'Format_Level', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1507, 7, N'Format_Tier', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1508, 7, N'Format_Compression', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1509, 7, N'Format_Settings', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1510, 7, N'InternetMediaType', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1511, 7, N'CodecID', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1512, 7, N'CodecID/Info', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1513, 7, N'CodecID/Hint', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1514, 7, N'CodecID/Url', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1515, 7, N'CodecID_Description', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1516, 7, N'Codec', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1517, 7, N'Codec/String', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1518, 7, N'Codec/Info', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1519, 7, N'Codec/Url', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1520, 7, N'Codec/CC', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1521, 7, N'Duration', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1522, 7, N'Duration/String', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1523, 7, N'Duration/String1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1524, 7, N'Duration/String2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1525, 7, N'Duration/String3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1526, 7, N'Duration/String4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1527, 7, N'Duration/String5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1528, 7, N'Source_Duration', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1529, 7, N'Source_Duration/String', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1530, 7, N'Source_Duration/String1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1531, 7, N'Source_Duration/String2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1532, 7, N'Source_Duration/String3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1533, 7, N'Source_Duration/String4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1534, 7, N'Source_Duration/String5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1535, 7, N'BitRate_Mode', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1536, 7, N'BitRate_Mode/String', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1537, 7, N'BitRate', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1538, 7, N'BitRate/String', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1539, 7, N'BitRate_Minimum', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1540, 7, N'BitRate_Minimum/String', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1541, 7, N'BitRate_Nominal', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1542, 7, N'BitRate_Nominal/String', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1543, 7, N'BitRate_Maximum', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1544, 7, N'BitRate_Maximum/String', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1545, 7, N'BitRate_Encoded', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1546, 7, N'BitRate_Encoded/String', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1547, 7, N'FrameRate', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1548, 7, N'FrameRate/String', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1549, 7, N'FrameRate_Num', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1550, 7, N'FrameRate_Den', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1551, 7, N'FrameCount', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1552, 7, N'Source_FrameCount', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1553, 7, N'ColorSpace', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1554, 7, N'ChromaSubsampling', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1555, 7, N'Resolution', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1556, 7, N'Resolution/String', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1557, 7, N'BitDepth', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1558, 7, N'BitDepth/String', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1559, 7, N'Compression_Mode', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1560, 7, N'Compression_Mode/String', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1561, 7, N'Compression_Ratio', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1562, 7, N'Delay', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1563, 7, N'Delay/String', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1564, 7, N'Delay/String1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1565, 7, N'Delay/String2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1566, 7, N'Delay/String3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1567, 7, N'Delay/String4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1568, 7, N'Delay/String5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1569, 7, N'Delay_Settings', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1570, 7, N'Delay_DropFrame', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1571, 7, N'Delay_Source', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1572, 7, N'Delay_Source/String', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1573, 7, N'Delay_Original', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1574, 7, N'Delay_Original/String', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1575, 7, N'Delay_Original/String1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1576, 7, N'Delay_Original/String2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1577, 7, N'Delay_Original/String3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1578, 7, N'Delay_Original/String4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1579, 7, N'Delay_Original/String5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1580, 7, N'Delay_Original_Settings', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1581, 7, N'Delay_Original_DropFrame', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1582, 7, N'Delay_Original_Source', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1583, 7, N'Video_Delay', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1584, 7, N'Video_Delay/String', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1585, 7, N'Video_Delay/String1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1586, 7, N'Video_Delay/String2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1587, 7, N'Video_Delay/String3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1588, 7, N'Video_Delay/String4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1589, 7, N'Video_Delay/String5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1590, 7, N'StreamSize', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1591, 7, N'StreamSize/String', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1592, 7, N'StreamSize/String1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1593, 7, N'StreamSize/String2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1594, 7, N'StreamSize/String3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1595, 7, N'StreamSize/String4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1596, 7, N'StreamSize/String5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1597, 7, N'StreamSize_Proportion', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1598, 7, N'Source_StreamSize', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1599, 7, N'Source_StreamSize/String', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1600, 7, N'Source_StreamSize/String1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1601, 7, N'Source_StreamSize/String2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1602, 7, N'Source_StreamSize/String3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1603, 7, N'Source_StreamSize/String4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1604, 7, N'Source_StreamSize/String5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1605, 7, N'Source_StreamSize_Proportion', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1606, 7, N'StreamSize_Encoded', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1607, 7, N'StreamSize_Encoded/String', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1608, 7, N'StreamSize_Encoded/String1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1609, 7, N'StreamSize_Encoded/String2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1610, 7, N'StreamSize_Encoded/String3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1611, 7, N'StreamSize_Encoded/String4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1612, 7, N'StreamSize_Encoded/String5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1613, 7, N'StreamSize_Encoded_Proportion', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1614, 7, N'Source_StreamSize_Encoded', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1615, 7, N'Source_StreamSize_Encoded/String', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1616, 7, N'Source_StreamSize_Encoded/String1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1617, 7, N'Source_StreamSize_Encoded/String2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1618, 7, N'Source_StreamSize_Encoded/String3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1619, 7, N'Source_StreamSize_Encoded/String4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1620, 7, N'Source_StreamSize_Encoded/String5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1621, 7, N'Source_StreamSize_Encoded_Proportion', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1622, 7, N'Language', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1623, 7, N'ServiceName', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1624, 7, N'ServiceProvider', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[MediaInfoParameter] ([MediaInfoParameterId], [MediaInfoTypeId], [Title], [p1], [p2], [p3], [p4], [p5], [Description], [p6], [p7]) VALUES (1625, 7, N'Format', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[MediaInfoParameter] OFF
GO

USE [HmeArhX]
GO
SET IDENTITY_INSERT [dbo].[TranslateTable] ON 

GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (1, N'ru   ', N'Language_ISO639', N'ru')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2, N'en   ', N'Language_ISO639', N'en')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (1693, N'ru   ', N'Author_Email', N'solokot@gmail.com')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (1694, N'ru   ', N'Author_Name', N'solokot')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (1695, N'ru   ', N'Author_OldNames', N'lost in history')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (1696, N'ru   ', N'Language_Name', N'Р СѓСЃСЃРєРёР№')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (1697, N'ru   ', N'Config_Text_ColumnSize', N'40')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (1698, N'ru   ', N'Config_Text_Separator', N':')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (1699, N'ru   ', N'Config_Text_NumberTag', N'#')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (1700, N'ru   ', N'Config_Text_FloatSeparator', N',')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (1701, N'ru   ', N'Config_Text_ThousandsSeparator', NULL)
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (1702, N'ru   ', N'audio stream1', N'Р°СѓРґРёРѕРїРѕС‚РѕРє')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (1703, N'ru   ', N'audio stream2', N'Р°СѓРґРёРѕРїРѕС‚РѕРєР°')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (1704, N'ru   ', N'audio stream3', N'Р°СѓРґРёРѕРїРѕС‚РѕРєРѕРІ')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (1705, N'ru   ', N'bit1', N'Р±РёС‚')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (1706, N'ru   ', N'bit2', N'Р±РёС‚')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (1707, N'ru   ', N'bit3', N'Р±РёС‚')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (1708, N'ru   ', N'bps', N'Р±РёС‚/СЃРµРє')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (1709, N'ru   ', N'Bps', N'Р±Р°Р№С‚/СЃРµРє')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (1710, N'ru   ', N'Byte1', N'Р±Р°Р№С‚')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (1711, N'ru   ', N'Byte2', N'Р±Р°Р№С‚')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (1712, N'ru   ', N'Byte3', N'Р±Р°Р№С‚')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (1713, N'ru   ', N'channel1', N'РєР°РЅР°Р»')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (1714, N'ru   ', N'channel2', N'РєР°РЅР°Р»Р°')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (1715, N'ru   ', N'channel3', N'РєР°РЅР°Р»РѕРІ')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (1716, N'ru   ', N'chapter1', N'СЂР°Р·РґРµР»')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (1717, N'ru   ', N'chapter2', N'СЂР°Р·РґРµР»Р°')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (1718, N'ru   ', N'chapter3', N'СЂР°Р·РґРµР»РѕРІ')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (1719, N'ru   ', N'chapters stream1', N'РїРѕС‚РѕРє СЂР°Р·РґРµР»РѕРІ')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (1720, N'ru   ', N'chapters stream2', N'РїРѕС‚РѕРєР° СЂР°Р·РґРµР»РѕРІ')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (1721, N'ru   ', N'chapters stream3', N'РїРѕС‚РѕРєРѕРІ СЂР°Р·РґРµР»РѕРІ')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (1722, N'ru   ', N'character1', N'РіРµСЂРѕР№')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (1723, N'ru   ', N'character2', N'РіРµСЂРѕСЏ')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (1724, N'ru   ', N'character3', N'РіРµСЂРѕРµРІ')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (1725, N'ru   ', N'day1', N'РґРµРЅСЊ')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (1726, N'ru   ', N'day2', N'РґРЅСЏ')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (1727, N'ru   ', N'day3', N'РґРЅРµР№')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (1728, N'ru   ', N'dB1', N'РґР‘')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (1729, N'ru   ', N'dB2', N'РґР‘')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (1730, N'ru   ', N'dB3', N'РґР‘')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (1731, N'ru   ', N'file1', N'С„Р°Р№Р»')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (1732, N'ru   ', N'file2', N'С„Р°Р№Р»Р°')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (1733, N'ru   ', N'file3', N'С„Р°Р№Р»РѕРІ')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (1734, N'ru   ', N'fps1', N'РєР°РґСЂ/СЃРµРє')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (1735, N'ru   ', N'fps2', N'РєР°РґСЂР°/СЃРµРє')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (1736, N'ru   ', N'fps3', N'РєР°РґСЂРѕРІ/СЃРµРє')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (1737, N'ru   ', N'frame1', N'РєР°РґСЂ')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (1738, N'ru   ', N'frame2', N'РєР°РґСЂР°')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (1739, N'ru   ', N'frame3', N'РєР°РґСЂРѕРІ')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (1740, N'ru   ', N'GB', N'Р“Р‘')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (1741, N'ru   ', N'Gb', N'Р“Р±')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (1742, N'ru   ', N'Gbps', N'Р“Р±РёС‚/СЃРµРє')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (1743, N'ru   ', N'GBps', N'Р“Р±Р°Р№С‚/СЃРµРє')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (1744, N'ru   ', N'GHz', N'Р“Р“С†')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (1745, N'ru   ', N'GiB', N'Р“Р±Р°Р№С‚')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (1746, N'ru   ', N'GibiByte1', N'Р“РёР±РёР±Р°Р№С‚')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (1747, N'ru   ', N'GibiByte2', N'Р“РёР±РёР±Р°Р№С‚')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (1748, N'ru   ', N'GibiByte3', N'Р“РёР±РёР±Р°Р№С‚')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (1749, N'ru   ', N'GiBps', N'Р“Р±Р°Р№С‚/СЃРµРє')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (1750, N'ru   ', N'GigaBit1', N'Р“РёРіР°Р±РёС‚')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (1751, N'ru   ', N'GigaBit2', N'Р“РёРіР°Р±РёС‚')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (1752, N'ru   ', N'GigaBit3', N'Р“РёРіР°Р±РёС‚')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (1753, N'ru   ', N'GigaByte1', N'Р“РёРіР°Р±Р°Р№С‚')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (1754, N'ru   ', N'GigaByte2', N'Р“РёРіР°Р±Р°Р№С‚')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (1755, N'ru   ', N'GigaByte3', N'Р“РёРіР°Р±Р°Р№С‚')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (1756, N'ru   ', N'hour1', N'С‡Р°СЃ')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (1757, N'ru   ', N'hour2', N'С‡Р°СЃР°')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (1758, N'ru   ', N'hour3', N'С‡Р°СЃРѕРІ')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (1759, N'ru   ', N'Hz', N'Р“С†')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (1760, N'ru   ', N'image stream1', N'РїРѕС‚РѕРє РёР·РѕР±СЂР°Р¶РµРЅРёР№')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (1761, N'ru   ', N'image stream2', N'РїРѕС‚РѕРєР° РёР·РѕР±СЂР°Р¶РµРЅРёР№')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (1762, N'ru   ', N'image stream3', N'РїРѕС‚РѕРєРѕРІ РёР·РѕР±СЂР°Р¶РµРЅРёР№')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (1763, N'ru   ', N'KB', N'РљР‘')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (1764, N'ru   ', N'Kb', N'РљР±')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (1765, N'ru   ', N'KBps', N'РљР±Р°Р№С‚/СЃРµРє')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (1766, N'ru   ', N'Kbps', N'РљР±РёС‚/СЃРµРє')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (1767, N'ru   ', N'KHz', N'РљР“С†')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (1768, N'ru   ', N'KiB', N'РљР±Р°Р№С‚')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (1769, N'ru   ', N'KibiBit1', N'РљРёР±РёР±РёС‚')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (1770, N'ru   ', N'KibiBit2', N'РљРёР±РёР±РёС‚')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (1771, N'ru   ', N'KibiBit3', N'РљРёР±РёР±РёС‚')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (1772, N'ru   ', N'KibiByte1', N'РљРёР±РёР±Р°Р№С‚')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (1773, N'ru   ', N'KibiByte2', N'РљРёР±РёР±Р°Р№С‚')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (1774, N'ru   ', N'KibiByte3', N'РљРёР±РёР±Р°Р№С‚')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (1775, N'ru   ', N'KiBps', N'РљР±Р°Р№С‚/СЃРµРє')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (1776, N'ru   ', N'KiloBit1', N'РљРёР»РѕР±РёС‚')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (1777, N'ru   ', N'KiloBit2', N'РљРёР»РѕР±РёС‚')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (1778, N'ru   ', N'KiloBit3', N'РљРёР»РѕР±РёС‚')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (1779, N'ru   ', N'KiloByte1', N'РљРёР»РѕР±Р°Р№С‚')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (1780, N'ru   ', N'KiloByte2', N'РљРёР»РѕР±Р°Р№С‚')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (1781, N'ru   ', N'KiloByte3', N'РљРёР»РѕР±Р°Р№С‚')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (1782, N'ru   ', N'MB', N'РњР‘')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (1783, N'ru   ', N'Mb', N'РњР±')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (1784, N'ru   ', N'Mbps', N'РњР±РёС‚/СЃРµРє')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (1785, N'ru   ', N'MBps', N'РњР±Р°Р№С‚/СЃРµРє')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (1786, N'ru   ', N'MebiBit1', N'РњРµР±РёР±РёС‚')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (1787, N'ru   ', N'MebiBit2', N'РњРµР±РёР±РёС‚')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (1788, N'ru   ', N'MebiBit3', N'РњРµР±РёР±РёС‚')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (1789, N'ru   ', N'MebiByte1', N'РњРµР±РёР±Р°Р№С‚')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (1790, N'ru   ', N'MebiByte2', N'РњРµР±РёР±Р°Р№С‚')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (1791, N'ru   ', N'MebiByte3', N'РњРµР±РёР±Р°Р№С‚')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (1792, N'ru   ', N'MegaBit1', N'РњРµРіР°Р±РёС‚')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (1793, N'ru   ', N'MegaBit2', N'РњРµРіР°Р±РёС‚')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (1794, N'ru   ', N'MegaBit3', N'РњРµРіР°Р±РёС‚')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (1795, N'ru   ', N'MegaByte1', N'РњРµРіР°Р±Р°Р№С‚')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (1796, N'ru   ', N'MegaByte2', N'РњРµРіР°Р±Р°Р№С‚')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (1797, N'ru   ', N'MegaByte3', N'РњРµРіР°Р±Р°Р№С‚')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (1798, N'ru   ', N'MHz', N'РњР“С†')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (1799, N'ru   ', N'MiB', N'РњР±Р°Р№С‚')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (1800, N'ru   ', N'Mib', N'РњРёР±')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (1801, N'ru   ', N'MiBps', N'РњР±Р°Р№С‚/СЃРµРє')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (1802, N'ru   ', N'millisecond1', N'РјРёР»Р»РёСЃРµРєСѓРЅРґР°')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (1803, N'ru   ', N'millisecond2', N'РјРёР»Р»РёСЃРµРєСѓРЅРґС‹')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (1804, N'ru   ', N'millisecond3', N'РјРёР»Р»РёСЃРµРєСѓРЅРґ')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (1805, N'ru   ', N'minute1', N'РјРёРЅСѓС‚Р°')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (1806, N'ru   ', N'minute2', N'РјРёРЅСѓС‚С‹')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (1807, N'ru   ', N'minute3', N'РјРёРЅСѓС‚')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (1808, N'ru   ', N'month1', N'РјРµСЃСЏС†')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (1809, N'ru   ', N'month2', N'РјРµСЃСЏС†Р°')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (1810, N'ru   ', N'month3', N'РјРµСЃСЏС†РѕРІ')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (1811, N'ru   ', N'pixel1', N'РїРёРєСЃРµР»СЊ')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (1812, N'ru   ', N'pixel2', N'РїРёРєСЃРµР»СЏ')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (1813, N'ru   ', N'pixel3', N'РїРёРєСЃРµР»РµР№')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (1814, N'ru   ', N'second1', N'СЃРµРєСѓРЅРґР°')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (1815, N'ru   ', N'second2', N'СЃРµРєСѓРЅРґС‹')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (1816, N'ru   ', N'second3', N'СЃРµРєСѓРЅРґ')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (1817, N'ru   ', N'text stream1', N'С‚РµРєСЃС‚РѕРІС‹Р№ РїРѕС‚РѕРє')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (1818, N'ru   ', N'text stream2', N'С‚РµРєСЃС‚РѕРІС‹С… РїРѕС‚РѕРєР°')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (1819, N'ru   ', N'text stream3', N'С‚РµРєСЃС‚РѕРІС‹С… РїРѕС‚РѕРєРѕРІ')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (1820, N'ru   ', N'video frames1', N'РІРёРґРµРѕРєР°РґСЂ')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (1821, N'ru   ', N'video frames2', N'РІРёРґРµРѕРєР°РґСЂР°')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (1822, N'ru   ', N'video frames3', N'РІРёРґРµРѕРєР°РґСЂРѕРІ')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (1823, N'ru   ', N'video stream1', N'РІРёРґРµРѕРїРѕС‚РѕРє')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (1824, N'ru   ', N'video stream2', N'РІРёРґРµРѕРїРѕС‚РѕРєР°')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (1825, N'ru   ', N'video stream3', N'РІРёРґРµРѕРїРѕС‚РѕРєРѕРІ')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (1826, N'ru   ', N'warppoint0', N'Р‘РµР· С‚РѕС‡РєРё РїРµСЂРµС…РѕРґР°')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (1827, N'ru   ', N'warppoint1', N'С‚РѕС‡РєР° РїРµСЂРµС…РѕРґР°')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (1828, N'ru   ', N'warppoint2', N'С‚РѕС‡РєРё РїРµСЂРµС…РѕРґР°')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (1829, N'ru   ', N'warppoint3', N'С‚РѕС‡РµРє РїРµСЂРµС…РѕРґР°')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (1830, N'ru   ', N'week1', N'РЅРµРґРµР»СЏ')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (1831, N'ru   ', N'week2', N'РЅРµРґРµР»Рё')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (1832, N'ru   ', N'week3', N'РЅРµРґРµР»СЊ')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (1833, N'ru   ', N'year1', N'РіРѕРґ')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (1834, N'ru   ', N'year2', N'РіРѕРґР°')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (1835, N'ru   ', N'year3', N'Р»РµС‚')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (1836, N'ru   ', N',', N',')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (1837, N'ru   ', N':', N':')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (1838, N'ru   ', N'3D', N'3D')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (1839, N'ru   ', N'3DType', N'РўРёРї 3D')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (1840, N'ru   ', N'About', N'Рћ РїСЂРѕРіСЂР°РјРјРµ')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (1841, N'ru   ', N'About_Hint', N'РљР°Рє СЃРІСЏР·Р°С‚СЊСЃСЏ СЃРѕ РјРЅРѕР№ Рё РЅР°Р№С‚Рё РїРѕСЃР»РµРґРЅСЋСЋ РІРµСЂСЃРёСЋ РїСЂРѕРіСЂР°РјРјС‹')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (1842, N'ru   ', N'Accompaniment', N'РЎРѕРїСЂРѕРІРѕР¶РґРµРЅРёРµ')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (1843, N'ru   ', N'ActiveFormatDescription', N'РћРїРёСЃР°РЅРёРµ Р°РєС‚РёРІРЅРѕРіРѕ С„РѕСЂРјР°С‚Р°')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (1844, N'ru   ', N'ActiveFormatDescription_MuxingMode', N'РћРїРёСЃР°РЅРёРµ Р°РєС‚РёРІРЅРѕРіРѕ С„РѕСЂРјР°С‚Р°, СЂРµР¶РёРј СЃРјРµС€РёРІР°РЅРёСЏ')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (1845, N'ru   ', N'Actor', N'РСЃРїРѕР»РЅРёС‚РµР»СЊ')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (1846, N'ru   ', N'Actor_Character', N'Р РѕР»СЊ')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (1847, N'ru   ', N'Added_Date', N'Р”Р°С‚Р° РґРѕР±Р°РІР»РµРЅРёРёСЏ')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (1848, N'ru   ', N'Address', N'РђРґСЂРµСЃ')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (1849, N'ru   ', N'Advanced', N'Р”РѕРїРѕР»РЅРёС‚РµР»СЊРЅРѕ')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (1850, N'ru   ', N'Advanced mode', N'Р Р°СЃС€РёСЂРµРЅРЅС‹Р№ СЂРµР¶РёРј')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (1851, N'ru   ', N'Album', N'РђР»СЊР±РѕРј')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (1852, N'ru   ', N'Album_ReplayGain_Gain', N'РќРѕСЂРјР°Р»РёР·Р°С‚РѕСЂ Р·РІСѓРєР° Р°Р»СЊР±РѕРјР°')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (1853, N'ru   ', N'Album_ReplayGain_Peak', N'РџРёРє РЅРѕСЂРјР°Р»РёР·Р°С‚РѕСЂР° Р·РІСѓРєР° Р°Р»СЊР±РѕРјР°')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (1854, N'ru   ', N'Alignment', N'Р’С‹СЂР°РІРЅРёРІР°РЅРёРµ')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (1855, N'ru   ', N'Alignment_Aligned', N'РЎРѕРµРґРёРЅРµРЅРёРµ РїРѕ РїСЂРѕРјРµР¶СѓС‚РєР°Рј')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (1856, N'ru   ', N'Alignment_Split', N'Р Р°Р·РґРµР»РµРЅРёРµ РїРѕ РїСЂРѕРјРµР¶СѓС‚РєР°Рј')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (1857, N'ru   ', N'All', N'Р’СЃРµ')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (1858, N'ru   ', N'AlternateGroup', NULL)
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (1859, N'ru   ', N'Archival_Location', N'РњРµСЃС‚Рѕ С…СЂР°РЅРµРЅРёСЏ')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (1860, N'ru   ', N'Arranger', N'РђСЂР°РЅР¶РёСЂРѕРІС‰РёРє')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (1861, N'ru   ', N'ArtDirector', N'РђСЂС‚-РґРёСЂРµРєС‚РѕСЂ')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (1862, N'ru   ', N'AspectRatio', N'РЎРѕРѕС‚РЅРѕС€РµРЅРёРµ')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (1863, N'ru   ', N'AssistantDirector', N'РџРѕРјРѕС‰РЅРёРє СЂРµР¶РёСЃСЃС‘СЂР°')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (1864, N'ru   ', N'at', N'РІ')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (1865, N'ru   ', N'At least one file', N'РќРµРѕР±С…РѕРґРёРјРѕ РѕС‚РєСЂС‹С‚СЊ РєР°Рє РјРёРЅРёРјСѓРј РѕРґРёРЅ С„Р°Р№Р»')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (1866, N'ru   ', N'Audio', N'РђСѓРґРёРѕ')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (1867, N'ru   ', N'Audio stream(s)', N'РђСѓРґРёРѕРїРѕС‚РѕРєРё')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (1868, N'ru   ', N'Audio_Codec_List', N'РђСѓРґРёРѕРєРѕРґРµРєРё')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (1869, N'ru   ', N'Audio_No', N'РќРµС‚ Р°СѓРґРёРѕ')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (1870, N'ru   ', N'Audio1', N'РџРµСЂРІС‹Р№ Р°СѓРґРёРѕРїРѕС‚РѕРє')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (1871, N'ru   ', N'Audio2', N'Р’С‚РѕСЂРѕР№ Р°СѓРґРёРѕРїРѕС‚РѕРє')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (1872, N'ru   ', N'AudioComments', N'Р“РѕР»РѕСЃРѕРІРѕР№ РєРѕРјРјРµРЅС‚Р°СЂРёР№')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (1873, N'ru   ', N'AudioCount', N'РљРѕР»РёС‡РµСЃС‚РІРѕ Р°СѓРґРёРѕРїРѕС‚РѕРєРѕРІ')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (1874, N'ru   ', N'AudioDescriptionPresent', N'РќР°Р»РёС‡РёРµ РіРѕР»РѕСЃРѕРІРѕРіРѕ РѕРїРёСЃР°РЅРёСЏ')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (1875, N'ru   ', N'AudioDescriptionType', N'РўРёРї РіРѕР»РѕСЃРѕРІРѕРіРѕ РѕРїРёСЃР°РЅРёСЏ')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (1876, N'ru   ', N'AudioLoudnessStandard', N'РЎС‚Р°РЅРґР°СЂС‚ РіСЂРѕРјРєРѕСЃС‚Рё Р°СѓРґРёРѕ')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (1877, N'ru   ', N'AudioTrackLayout', N'РњР°РєРµС‚ Р°СѓРґРёРѕРґРѕСЂРѕР¶РєРё')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (1878, N'ru   ', N'Author', N'РђРІС‚РѕСЂ')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (1879, N'ru   ', N'BarCode', N'РЁС‚СЂРёС…-РєРѕРґ')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (1880, N'ru   ', N'Basic', N'РљСЂР°С‚РєРѕ')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (1881, N'ru   ', N'Basic_Note', N'РџСЂРёРјРµС‡Р°РЅРёРµ: РґР»СЏ РґРѕРїРѕР»РЅРёС‚РµР»СЊРЅРѕР№ РёРЅС„РѕСЂРјР°С†РёРё РІС‹Р±РµСЂРёС‚Рµ РґСЂСѓРіСѓСЋ Р·Р°РєР»Р°РґРєСѓ (С‚Р°Р±Р»РёС†Р°, РґРµСЂРµРІРѕ,...)')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (1882, N'ru   ', N'BitDepth', N'Р‘РёС‚РѕРІР°СЏ РіР»СѓР±РёРЅР°')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (1883, N'ru   ', N'BitDepth_Detected', NULL)
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (1884, N'ru   ', N'BitDepth_Stored', N'РЎРѕС…СЂР°РЅС‘РЅРЅР°СЏ Р±РёС‚РѕРІР°СЏ РіР»СѓР±РёРЅР°')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (1885, N'ru   ', N'BitRate', N'Р‘РёС‚СЂРµР№С‚')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (1886, N'ru   ', N'BitRate_Encoded', N'Р—Р°РєРѕРґРёСЂРѕРІР°РЅРЅС‹Р№ Р±РёС‚СЂРµР№С‚')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (1887, N'ru   ', N'BitRate_Maximum', N'РњР°РєСЃРёРјР°Р»СЊРЅС‹Р№ Р±РёС‚СЂРµР№С‚')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (1888, N'ru   ', N'BitRate_Minimum', N'РњРёРЅРёРјР°Р»СЊРЅС‹Р№ Р±РёС‚СЂРµР№С‚')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (1889, N'ru   ', N'BitRate_Mode', N'Р’РёРґ Р±РёС‚СЂРµР№С‚Р°')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (1890, N'ru   ', N'BitRate_Mode_CBR', N'РџРѕСЃС‚РѕСЏРЅРЅС‹Р№')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (1891, N'ru   ', N'BitRate_Mode_VBR', N'РџРµСЂРµРјРµРЅРЅС‹Р№')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (1892, N'ru   ', N'BitRate_Nominal', N'РќРѕРјРёРЅР°Р»СЊРЅС‹Р№ Р±РёС‚СЂРµР№С‚')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (1893, N'ru   ', N'Bits-(Pixel*Frame)', N'Р‘РёС‚/(РџРёРєСЃРµР»Рё*РљР°РґСЂС‹)')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (1894, N'ru   ', N'BufferSize', N'Р Р°Р·РјРµСЂ Р±СѓС„РµСЂР°')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (1895, N'ru   ', N'Cancel', N'РћС‚РјРµРЅР°')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (1896, N'ru   ', N'Channel(s)', N'РљР°РЅР°Р»С‹')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (1897, N'ru   ', N'ChannelPositions', N'Р Р°СЃРїРѕР»РѕР¶РµРЅРёРµ РєР°РЅР°Р»РѕРІ')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (1898, N'ru   ', N'Chapter(s)', N'Р Р°Р·РґРµР»С‹')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (1899, N'ru   ', N'Chapters', N'Р Р°Р·РґРµР»С‹')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (1900, N'ru   ', N'Chapters stream(s)', N'РџРѕС‚РѕРєРё СЂР°Р·РґРµР»РѕРІ')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (1901, N'ru   ', N'Chapters_Codec_List', N'РљРѕРґРµРєРё СЂР°Р·РґРµР»РѕРІ')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (1902, N'ru   ', N'Chapters_No', N'РќРµС‚ СЂР°Р·РґРµР»РѕРІ')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (1903, N'ru   ', N'ChaptersCount', N'РљРѕР»РёС‡РµСЃС‚РІРѕ СЂР°Р·РґРµР»РѕРІ')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (1904, N'ru   ', N'CheckNewVersion', N'РџСЂРѕРІРµСЂРёС‚СЊ РЅР°Р»РёС‡РёРµ РЅРѕРІРѕР№ РІРµСЂСЃРёРё')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (1905, N'ru   ', N'Choose custom', N'Р’С‹Р±СЂР°С‚СЊ')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (1906, N'ru   ', N'Choose custom sheet', N'Р’С‹Р±СЂР°С‚СЊ С‚Р°Р±Р»РёС†Сѓ')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (1907, N'ru   ', N'Choose custom text', N'Р’С‹Р±СЂР°С‚СЊ С‚РµРєСЃС‚')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (1908, N'ru   ', N'Choose export format', N'Р’С‹Р±РµСЂРёС‚Рµ С„РѕСЂРјР°С‚ РІС‹РІРѕРґР°')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (1909, N'ru   ', N'Choose file(s)', N'Р’С‹Р±РµСЂРёС‚Рµ С„Р°Р№Р»С‹')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (1910, N'ru   ', N'Choose filename', N'Р’С‹Р±РµСЂРёС‚Рµ РёРјСЏ С„Р°Р№Р»Р°')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (1911, N'ru   ', N'Choose language', N'Р’С‹Р±РµСЂРёС‚Рµ СЏР·С‹Рє')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (1912, N'ru   ', N'Choregrapher', N'РҐРѕСЂРµРѕРіСЂР°С„')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (1913, N'ru   ', N'Chroma', N'Р¦РІРµС‚РЅРѕСЃС‚СЊ')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (1914, N'ru   ', N'ChromaSubsampling', N'РЎСѓР±РґРёСЃРєСЂРµС‚РёР·Р°С†РёСЏ РЅР°СЃС‹С‰РµРЅРЅРѕСЃС‚Рё')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (1915, N'ru   ', N'Close', N'Р—Р°РєСЂС‹С‚СЊ')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (1916, N'ru   ', N'Close all before open', N'Р—Р°РєСЂС‹РІР°С‚СЊ РІСЃС‘ РїРµСЂРµРґ РѕС‚РєСЂС‹С‚РёРµРј РЅРѕРІС‹С… С„Р°Р№Р»РѕРІ')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (1917, N'ru   ', N'ClosedCaptionsLanguage', N'РЇР·С‹Рє СЃСѓР±С‚РёС‚СЂРѕРІ')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (1918, N'ru   ', N'ClosedCaptionsPresent', N'РќР°Р»РёС‡РёРµ СЃСѓР±С‚РёС‚СЂРѕРІ')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (1919, N'ru   ', N'ClosedCaptionsType', N'РўРёРї СЃСѓР±С‚РёС‚СЂРѕРІ')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (1920, N'ru   ', N'Codec', N'РљРѕРґРµРє')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (1921, N'ru   ', N'Codec_Description', N'РћРїРёСЃР°РЅРёРµ РєРѕРґРµРєР°')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (1922, N'ru   ', N'Codec_Info', N'РџРѕРґСЂРѕР±РЅРѕ Рѕ РєРѕРґРµРєРµ')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (1923, N'ru   ', N'Codec_Profile', N'РџСЂРѕС„РёР»СЊ РєРѕРґРµРєР°')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (1924, N'ru   ', N'Codec_Settings', N'РќР°СЃС‚СЂРѕР№РєРё РєРѕРґРµРєР°')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (1925, N'ru   ', N'Codec_Settings_BVOP', N'РџР°СЂР°РјРµС‚СЂ BVOP РєРѕРґРµРєР°')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (1926, N'ru   ', N'Codec_Settings_CABAC', N'РџР°СЂР°РјРµС‚СЂ CABAC РєРѕРґРµРєР°')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (1927, N'ru   ', N'Codec_Settings_Endianness', N'РџР°СЂР°РјРµС‚СЂ Endianness РєРѕРґРµРєР°')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (1928, N'ru   ', N'Codec_Settings_Firm', N'РџР°СЂР°РјРµС‚СЂ Firm РєРѕРґРµРєР°')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (1929, N'ru   ', N'Codec_Settings_Floor', N'РџР°СЂР°РјРµС‚СЂ Floor РєРѕРґРµРєР°')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (1930, N'ru   ', N'Codec_Settings_GMC', N'РџР°СЂР°РјРµС‚СЂ GMC РєРѕРґРµРєР°')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (1931, N'ru   ', N'Codec_Settings_ITU', N'РџР°СЂР°РјРµС‚СЂ ITU РєРѕРґРµРєР°')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (1932, N'ru   ', N'Codec_Settings_Law', N'РџР°СЂР°РјРµС‚СЂ Law РєРѕРґРµРєР°')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (1933, N'ru   ', N'Codec_Settings_Matrix', N'РџР°СЂР°РјРµС‚СЂ РјР°С‚СЂРёС†С‹ РєРѕРґРµРєР°')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (1934, N'ru   ', N'Codec_Settings_PacketBitStream', N'РџР°СЂР°РјРµС‚СЂ РїР°РєРµС‚РЅРѕРіРѕ РїРѕС‚РѕРєР° РґР°РЅРЅС‹С… РєРѕРґРµРєР°')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (1935, N'ru   ', N'Codec_Settings_QPel', N'РџР°СЂР°РјРµС‚СЂ QPel РєРѕРґРµРєР°')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (1936, N'ru   ', N'Codec_Settings_Sign', N'РџР°СЂР°РјРµС‚СЂ Sign РєРѕРґРµРєР°')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (1937, N'ru   ', N'Codec_Url', N'РЎСЃС‹Р»РєР° РЅР° РєРѕРґРµРє')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (1938, N'ru   ', N'CodecID', N'РРґРµРЅС‚РёС„РёРєР°С‚РѕСЂ РєРѕРґРµРєР°')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (1939, N'ru   ', N'CodecID_Description', N'РћРїРёСЃР°РЅРёРµ РєРѕРґРµРєР°')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (1940, N'ru   ', N'CoDirector', N'РЎРѕРґРёСЂРµРєС‚РѕСЂ')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (1941, N'ru   ', N'Collection', N'РљРѕР»Р»РµРєС†РёСЏ')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (1942, N'ru   ', N'Colorimetry', N'РљРѕР»РѕСЂРёРјРµС‚СЂРёСЏ')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (1943, N'ru   ', N'ColorSpace', N'Р¦РІРµС‚РѕРІРѕРµ РїСЂРѕСЃС‚СЂР°РЅСЃС‚РІРѕ')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (1944, N'ru   ', N'colour_primaries', N'РћСЃРЅРѕРІРЅС‹Рµ С†РІРµС‚Р°')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (1945, N'ru   ', N'colour_range', N'Р¦РІРµС‚РѕРІРѕР№ РґРёР°РїР°Р·РѕРЅ')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (1946, N'ru   ', N'Comment', N'РџСЂРёРјРµС‡Р°РЅРёРµ')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (1947, N'ru   ', N'CommissionedBy', N'РџРѕСЂСѓС‡РёС‚РµР»СЊ')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (1948, N'ru   ', N'Compilation', N'РљРѕРјРїРёР»СЏС†РёСЏ')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (1949, N'ru   ', N'CompleteName', N'РџРѕР»РЅРѕРµ РёРјСЏ')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (1950, N'ru   ', N'CompletionDate', N'Р”Р°С‚Р° Р·Р°РІРµСЂС€РµРЅРёСЏ')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (1951, N'ru   ', N'Composer', N'РљРѕРјРїРѕР·РёС‚РѕСЂ')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (1952, N'ru   ', N'Compression_Mode', N'РњРµС‚РѕРґ СЃР¶Р°С‚РёСЏ')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (1953, N'ru   ', N'Compression_Mode_Lossless', N'Р‘РµР· РїРѕС‚РµСЂСЊ')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (1954, N'ru   ', N'Compression_Mode_Lossy', N'РЎ РїРѕС‚РµСЂСЏРјРё')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (1955, N'ru   ', N'Compression_Ratio', N'РЎС‚РµРїРµРЅСЊ СЃР¶Р°С‚РёСЏ')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (1956, N'ru   ', N'Conductor', N'Р”РёСЂРёР¶С‘СЂ')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (1957, N'ru   ', N'ContactEmail', N'РљРѕРЅС‚Р°РєС‚РЅС‹Р№ РїРѕС‡С‚РѕРІС‹Р№ Р°РґСЂРµСЃ')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (1958, N'ru   ', N'ContactTelephoneNumber', N'РљРѕРЅС‚Р°РєС‚РЅС‹Р№ С‚РµР»РµС„РѕРЅ')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (1959, N'ru   ', N'Container and general information', N'РћР±С‰Р°СЏ РёРЅС„РѕСЂРјР°С†РёСЏ')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (1960, N'ru   ', N'ContentType', N'РўРёРї СЃРѕРґРµСЂР¶РёРјРѕРіРѕ')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (1961, N'ru   ', N'CoProducer', N'РЎРѕРїСЂРѕРґСЋСЃРµСЂ')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (1962, N'ru   ', N'Copyright', N'РђРІС‚РѕСЂСЃРєРѕРµ РїСЂР°РІРѕ')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (1963, N'ru   ', N'CopyrightYear', N'Р”Р°С‚Р° Р°РІС‚РѕСЂСЃРєРѕРіРѕ РїСЂР°РІР°')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (1964, N'ru   ', N'CostumeDesigner', N'РҐСѓРґРѕР¶РЅРёРє РїРѕ РєРѕСЃС‚СЋРјР°Рј')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (1965, N'ru   ', N'Count', N'РљРѕР»РёС‡РµСЃС‚РІРѕ')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (1966, N'ru   ', N'Country', N'РЎС‚СЂР°РЅР°')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (1967, N'ru   ', N'Cover', N'РћР±Р»РѕР¶РєР°')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (1968, N'ru   ', N'Cover_Datas', N'Р”Р°РЅРЅС‹Рµ РѕР±Р»РѕР¶РєРё')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (1969, N'ru   ', N'Cover_Description', N'РћРїРёСЃР°РЅРёРµ РѕР±Р»РѕР¶РєРё')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (1970, N'ru   ', N'Cover_Mime', N'MIME-С‚РёРї РѕР±Р»РѕР¶РєРё')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (1971, N'ru   ', N'Cover_Type', N'РўРёРї РѕР±Р»РѕР¶РєРё')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (1972, N'ru   ', N'Cropped', N'Р Р°Р·РјРµСЂС‹ РїРѕРґСЂРµР·РєРё')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (1973, N'ru   ', N'Custom', N'Р’С‹Р±РѕСЂРѕС‡РЅРѕ')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (1974, N'ru   ', N'Customize', N'РќР°СЃС‚СЂРѕР№РєР°')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (1975, N'ru   ', N'Date', N'Р”Р°С‚Р°')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (1976, N'ru   ', N'Debug', N'РћС‚Р»Р°РґРєР°')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (1977, N'ru   ', N'Decimal point', N'Р”РµСЃСЏС‚РёС‡РЅР°СЏ С‚РѕС‡РєР°')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (1978, N'ru   ', N'Delay', N'Р—Р°РґРµСЂР¶РєР°')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (1979, N'ru   ', N'Delay_Source', N'Р—Р°РґРµСЂР¶РєР° РІ РѕСЂРёРіРёРЅР°Р»Рµ')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (1980, N'ru   ', N'Delay_Source_Container', N'РљРѕРЅС‚РµР№РЅРµСЂ')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (1981, N'ru   ', N'Delay_Source_Stream', N'''РЎС‹СЂРѕР№'' РїРѕС‚РѕРє')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (1982, N'ru   ', N'Delete', N'РЈРґР°Р»РёС‚СЊ')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (1983, N'ru   ', N'Description', N'РћРїРёСЃР°РЅРёРµ')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (1984, N'ru   ', N'Digitized_Date', N'Р”Р°С‚Р° РѕС†РёС„СЂРѕРІРєРё')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (1985, N'ru   ', N'Dimensions', N'Р Р°Р·РјРµСЂС‹')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (1986, N'ru   ', N'Director', N'Р РµР¶РёСЃСЃС‘СЂ')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (1987, N'ru   ', N'DirectorOfPhotography', N'РћРїРµСЂР°С‚РѕСЂ')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (1988, N'ru   ', N'Disabled', NULL)
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (1989, N'ru   ', N'DisplayAspectRatio', N'РЎРѕРѕС‚РЅРѕС€РµРЅРёРµ СЃС‚РѕСЂРѕРЅ')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (1990, N'ru   ', N'DisplayAspectRatio_CleanAperture', NULL)
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (1991, N'ru   ', N'DisplayAspectRatio_Original', N'РЎРѕРѕС‚РЅРѕС€РµРЅРёРµ СЃС‚РѕСЂРѕРЅ РІ РѕСЂРёРіРёРЅР°Р»Рµ')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (1992, N'ru   ', N'DistributedBy', N'Р Р°СЃРїСЂРѕСЃС‚СЂР°РЅРёС‚РµР»СЊ')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (1993, N'ru   ', N'Distributor', N'Р Р°СЃРїСЂРѕСЃС‚СЂР°РЅРёС‚РµР»СЊ')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (1994, N'ru   ', N'Donate', N'РЎРґРµР»Р°С‚СЊ РїРѕР¶РµСЂС‚РІРѕРІР°РЅРёРµ')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (1995, N'ru   ', N'DotsPerInch', N'РўРѕС‡РµРє РЅР° РґСЋР№Рј')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (1996, N'ru   ', N'Duration', N'РџСЂРѕРґРѕР»Р¶РёС‚РµР»СЊРЅРѕСЃС‚СЊ')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (1997, N'ru   ', N'Duration_End', N'Р’СЂРµРјСЏ РѕРєРѕРЅС‡Р°РЅРёСЏ')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (1998, N'ru   ', N'Duration_Start', N'Р’СЂРµРјСЏ РЅР°С‡Р°Р»Р°')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (1999, N'ru   ', N'Edit', N'РџСЂР°РІРёС‚СЊ')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2000, N'ru   ', N'EditedBy', N'РР·РјРµРЅРµРЅРѕ')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2001, N'ru   ', N'ElementCount', NULL)
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2002, N'ru   ', N'EMail', N'РџРѕС‡С‚Р°')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2003, N'ru   ', N'Encoded_Application', N'РџСЂРѕРіСЂР°РјРјР° РєРѕРґРёСЂРѕРІР°РЅРёСЏ')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2004, N'ru   ', N'Encoded_Date', N'Р”Р°С‚Р° РєРѕРґРёСЂРѕРІР°РЅРёСЏ')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2005, N'ru   ', N'Encoded_Library', N'Р‘РёР±Р»РёРѕС‚РµРєР° РєРѕРґРёСЂРѕРІР°РЅРёСЏ')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2006, N'ru   ', N'Encoded_Library_Settings', N'РќР°СЃС‚СЂРѕР№РєРё РїСЂРѕРіСЂР°РјРјС‹')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2007, N'ru   ', N'Encoded_Original', N'РСЃС‚РѕС‡РЅРёРє РѕСЂРёРіРёРЅР°Р»Р°')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2008, N'ru   ', N'EncodedBy', N'РљРѕРґРёСЂРѕРІР°РЅРёРµ РїСЂРѕРёР·РІС‘Р»')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2009, N'ru   ', N'EPG_Positions', N'РџРѕР·РёС†РёРё EPG (РІРЅСѓС‚СЂРµРЅРЅРёРµ)')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2010, N'ru   ', N'EpisodeTitleNumber', N'РќРѕРјРµСЂ Р·Р°РіРѕР»РѕРІРєР° СЌРїРёР·РѕРґР°')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2011, N'ru   ', N'Error_File', N'РћС€РёР±РєР° РІ С„Р°Р№Р»Рµ')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2012, N'ru   ', N'ExecutiveProducer', N'РСЃРїРѕР»РЅРёС‚РµР»СЊРЅС‹Р№ РїСЂРѕРґСЋСЃРµСЂ')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2013, N'ru   ', N'Exit', N'Р’С‹С…РѕРґ')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2014, N'ru   ', N'Exit_Hint', N'Р’С‹С…РѕРґ РёР· РїСЂРѕРіСЂР°РјРјС‹')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2015, N'ru   ', N'Export', N'Р­РєСЃРїРѕСЂС‚')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2016, N'ru   ', N'Export_Hint', N'Р­РєСЃРїРѕСЂС‚ РґР°РЅРЅС‹С… РІ СЂР°Р·Р»РёС‡РЅС‹С… С„РѕСЂРјР°С‚Р°С…')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2017, N'ru   ', N'Extensions', N'РСЃРїРѕР»СЊР·СѓРµС‚СЃСЏ РІ')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2018, N'ru   ', N'Family', N'РЎРµРјРµР№СЃС‚РІРѕ')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2019, N'ru   ', N'Fax', N'Р¤Р°РєСЃ')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2020, N'ru   ', N'File', N'Р¤Р°Р№Р»')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2021, N'ru   ', N'File size', N'Р Р°Р·РјРµСЂ С„Р°Р№Р»Р°')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2022, N'ru   ', N'File_Append', N'Р”РѕР±Р°РІРёС‚СЊ Рє С„Р°Р№Р»Сѓ')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2023, N'ru   ', N'File_Created_Date', N'Р”Р°С‚Р° С„Р°Р№Р»Р°')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2024, N'ru   ', N'File_Created_Date_Local', N'Р”Р°С‚Р° С„Р°Р№Р»Р° (РјРµСЃС‚РЅР°СЏ)')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2025, N'ru   ', N'File_Hint', N'РћРїРµСЂР°С†РёРё СЃ С„Р°Р№Р»Р°РјРё')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2026, N'ru   ', N'File_Modified_Date', N'Р”Р°С‚Р° РёР·РјРµРЅРµРЅРёСЏ С„Р°Р№Р»Р°')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2027, N'ru   ', N'File_Modified_Date_Local', N'Р”Р°С‚Р° РёР·РјРµРЅРµРЅРёСЏ С„Р°Р№Р»Р° (РјРµСЃС‚РЅР°СЏ)')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2028, N'ru   ', N'FileExtension', N'Р Р°СЃС€РёСЂРµРЅРёРµ')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2029, N'ru   ', N'FileName', N'РРјСЏ С„Р°Р№Р»Р°')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2030, N'ru   ', N'FileSize', N'Р Р°Р·РјРµСЂ С„Р°Р№Р»Р°')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2031, N'ru   ', N'Folder', N'РџР°РїРєР°')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2032, N'ru   ', N'Folder (R)', N'РџР°РїРєР° (R)')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2033, N'ru   ', N'Folder (R)_Hint', N'Р’С‹Р±РµСЂРёС‚Рµ РїР°РїРєСѓ РґР»СЏ РѕР±СЂР°Р±РѕС‚РєРё (СЃРѕ РІСЃРµРјРё РІР»РѕР¶РµРЅРЅС‹РјРё РїР°РїРєР°РјРё)')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2034, N'ru   ', N'Folder (Recursively)', N'РџР°РїРєР° (СЂРµРєСѓСЂСЃРёРІРЅРѕ)')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2035, N'ru   ', N'Folder_Hint', N'РћРїРµСЂР°С†РёРё СЃ РїР°РїРєР°РјРё')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2036, N'ru   ', N'FolderName', N'РРјСЏ РїР°РїРєРё')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2037, N'ru   ', N'Format', N'Р¤РѕСЂРјР°С‚')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2038, N'ru   ', N'Format_Commercial', N'РљРѕРјРјРµСЂС‡РµСЃРєРѕРµ РЅР°Р·РІР°РЅРёРµ')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2039, N'ru   ', N'Format_Commercial_IfAny', N'РљРѕРјРјРµСЂС‡РµСЃРєРѕРµ РЅР°Р·РІР°РЅРёРµ')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2040, N'ru   ', N'Format_Description', N'РћРїРёСЃР°РЅРёРµ С„РѕСЂРјР°С‚Р°')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2041, N'ru   ', N'Format_Info', N'РџРѕРґСЂРѕР±РЅРѕ Рѕ С„РѕСЂРјР°С‚Рµ')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2042, N'ru   ', N'Format_Profile', N'РџСЂРѕС„РёР»СЊ С„РѕСЂРјР°С‚Р°')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2043, N'ru   ', N'Format_Level', NULL)
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2044, N'ru   ', N'Format_Tier', NULL)
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2045, N'ru   ', N'Format_Settings', N'РќР°СЃС‚СЂРѕР№РєРё С„РѕСЂРјР°С‚Р°')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2046, N'ru   ', N'Format_Settings_BVOP', N'РџР°СЂР°РјРµС‚СЂ BVOP С„РѕСЂРјР°С‚Р°')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2047, N'ru   ', N'Format_Settings_CABAC', N'РџР°СЂР°РјРµС‚СЂ CABAC С„РѕСЂРјР°С‚Р°')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2048, N'ru   ', N'Format_Settings_Emphasis', N'РђРєС†РµРЅС‚')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2049, N'ru   ', N'Format_Settings_Endianness', N'РџР°СЂР°РјРµС‚СЂ Endianness С„РѕСЂРјР°С‚Р°')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2050, N'ru   ', N'Format_Settings_Firm', N'РџР°СЂР°РјРµС‚СЂ Firm С„РѕСЂРјР°С‚Р°')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2051, N'ru   ', N'Format_Settings_Floor', N'РџР°СЂР°РјРµС‚СЂ Floor С„РѕСЂРјР°С‚Р°')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2052, N'ru   ', N'Format_Settings_FrameMode', N'Р РµР¶РёРј РєР°РґСЂРѕРІ')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2053, N'ru   ', N'Format_Settings_GMC', N'РџР°СЂР°РјРµС‚СЂ GMC С„РѕСЂРјР°С‚Р°')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2054, N'ru   ', N'Format_Settings_GOP', N'РџР°СЂР°РјРµС‚СЂ GOP С„РѕСЂРјР°С‚Р°')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2055, N'ru   ', N'Format_Settings_ITU', N'РџР°СЂР°РјРµС‚СЂ ITU С„РѕСЂРјР°С‚Р°')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2056, N'ru   ', N'Format_Settings_Law', N'РџР°СЂР°РјРµС‚СЂ Law С„РѕСЂРјР°С‚Р°')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2057, N'ru   ', N'Format_Settings_Matrix', N'РџР°СЂР°РјРµС‚СЂ РјР°С‚СЂРёС†С‹ С„РѕСЂРјР°С‚Р°')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2058, N'ru   ', N'Format_Settings_Matrix_Custom', N'Р’С‹Р±РѕСЂРѕС‡РЅР°СЏ')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2059, N'ru   ', N'Format_Settings_Matrix_Default', N'РџРѕ СѓРјРѕР»С‡Р°РЅРёСЋ')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2060, N'ru   ', N'Format_Settings_Mode', N'Р РµР¶РёРј')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2061, N'ru   ', N'Format_Settings_ModeExtension', N'Р Р°СЃС€РёСЂРµРЅРёРµ СЂРµР¶РёРјР°')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2062, N'ru   ', N'Format_Settings_PacketBitStream', N'РџР°СЂР°РјРµС‚СЂ РїР°РєРµС‚РЅРѕРіРѕ РїРѕС‚РѕРєР° РґР°РЅРЅС‹С… С„РѕСЂРјР°С‚Р°')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2063, N'ru   ', N'Format_Settings_PictureStructure', N'РЎС‚СЂСѓРєС‚СѓСЂР° РёР·РѕР±СЂР°Р¶РµРЅРёСЏ')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2064, N'ru   ', N'Format_Settings_PS', N'РџР°СЂР°РјРµС‚СЂ PS С„РѕСЂРјР°С‚Р°')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2065, N'ru   ', N'Format_Settings_Pulldown', N'РџР°СЂР°РјРµС‚СЂ Pulldownd С„РѕСЂРјР°С‚Р°')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2066, N'ru   ', N'Format_Settings_QPel', N'РџР°СЂР°РјРµС‚СЂ QPel С„РѕСЂРјР°С‚Р°')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2067, N'ru   ', N'Format_Settings_RefFrames', N'РџР°СЂР°РјРµС‚СЂ ReFrames С„РѕСЂРјР°С‚Р°')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2068, N'ru   ', N'Format_Settings_SBR', N'РџР°СЂР°РјРµС‚СЂ SBR С„РѕСЂРјР°С‚Р°')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2069, N'ru   ', N'Format_Settings_Sign', N'РџР°СЂР°РјРµС‚СЂ Sign С„РѕСЂРјР°С‚Р°')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2070, N'ru   ', N'Format_Settings_Wrapping', N'Р РµР¶РёРј РїРµСЂРµРЅРѕСЃР°')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2071, N'ru   ', N'Format_Url', N'РЎСЃС‹Р»РєР° РЅР° С„РѕСЂРјР°С‚')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2072, N'ru   ', N'Format_Version', N'Р’РµСЂСЃРёСЏ С„РѕСЂРјР°С‚Р°')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2073, N'ru   ', N'FpaManufacturer', N'РџСЂРѕРёР·РІРѕРґРёС‚РµР»СЊ FPA')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2074, N'ru   ', N'FpaPass', N'РџР°СЂРѕР»СЊ FPA')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2075, N'ru   ', N'FpaVersion', N'Р’РµСЂСЃРёСЏ FPA')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2076, N'ru   ', N'FrameCount', N'РЎС‡С‘С‚С‡РёРє РєР°РґСЂРѕРІ')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2077, N'ru   ', N'FrameRate', N'Р§Р°СЃС‚РѕС‚Р° РєР°РґСЂРѕРІ')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2078, N'ru   ', N'FrameRate_Maximum', N'РњР°РєСЃРёРјР°Р»СЊРЅР°СЏ С‡Р°СЃС‚РѕС‚Р° РєР°РґСЂРѕРІ')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2079, N'ru   ', N'FrameRate_Minimum', N'РњРёРЅРёРјР°Р»СЊРЅР°СЏ С‡Р°СЃС‚РѕС‚Р° РєР°РґСЂРѕРІ')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2080, N'ru   ', N'FrameRate_Mode', N'Р РµР¶РёРј С‡Р°СЃС‚РѕС‚С‹ РєР°РґСЂРѕРІ')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2081, N'ru   ', N'FrameRate_Mode_CFR', N'РџРѕСЃС‚РѕСЏРЅРЅС‹Р№')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2082, N'ru   ', N'FrameRate_Mode_VFR', N'РџРµСЂРµРјРµРЅРЅС‹Р№')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2083, N'ru   ', N'FrameRate_Nominal', N'РќРѕРјРёРЅР°Р»СЊРЅР°СЏ С‡Р°СЃС‚РѕС‚Р° РєР°РґСЂРѕРІ')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2084, N'ru   ', N'FrameRate_Original', N'Р§Р°СЃС‚РѕС‚Р° РєР°РґСЂРѕРІ РІ РѕСЂРёРіРёРЅР°Р»Рµ')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2085, N'ru   ', N'General', N'РћР±С‰РµРµ')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2086, N'ru   ', N'Genre', N'Р–Р°РЅСЂ')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2087, N'ru   ', N'Genre_000', N'Blues')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2088, N'ru   ', N'Genre_001', N'Classic Rock')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2089, N'ru   ', N'Genre_002', N'Country')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2090, N'ru   ', N'Genre_003', N'Dance')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2091, N'ru   ', N'Genre_004', N'Disco')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2092, N'ru   ', N'Genre_005', N'Funk')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2093, N'ru   ', N'Genre_006', N'Grunge')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2094, N'ru   ', N'Genre_007', N'Hip-Hop')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2095, N'ru   ', N'Genre_008', N'Jazz')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2096, N'ru   ', N'Genre_009', N'Metal')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2097, N'ru   ', N'Genre_010', N'New Age')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2098, N'ru   ', N'Genre_011', N'Oldies')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2099, N'ru   ', N'Genre_012', N'Other')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2100, N'ru   ', N'Genre_013', N'Pop')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2101, N'ru   ', N'Genre_014', N'R&B')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2102, N'ru   ', N'Genre_015', N'Rap')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2103, N'ru   ', N'Genre_016', N'Reggae')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2104, N'ru   ', N'Genre_017', N'Rock')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2105, N'ru   ', N'Genre_018', N'Techno')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2106, N'ru   ', N'Genre_019', N'Industrial')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2107, N'ru   ', N'Genre_020', N'Alternative')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2108, N'ru   ', N'Genre_021', N'Ska')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2109, N'ru   ', N'Genre_022', N'Death Metal')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2110, N'ru   ', N'Genre_023', N'Pranks')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2111, N'ru   ', N'Genre_024', N'Soundtrack')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2112, N'ru   ', N'Genre_025', N'Euro-Techno')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2113, N'ru   ', N'Genre_026', N'Ambient')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2114, N'ru   ', N'Genre_027', N'Trip-Hop')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2115, N'ru   ', N'Genre_028', N'Vocal')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2116, N'ru   ', N'Genre_029', N'Jazz+Funk')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2117, N'ru   ', N'Genre_030', N'Fusion')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2118, N'ru   ', N'Genre_031', N'Trance')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2119, N'ru   ', N'Genre_032', N'Classical')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2120, N'ru   ', N'Genre_033', N'Instrumental')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2121, N'ru   ', N'Genre_034', N'Acid')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2122, N'ru   ', N'Genre_035', N'House')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2123, N'ru   ', N'Genre_036', N'Game')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2124, N'ru   ', N'Genre_037', N'Sound Clip')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2125, N'ru   ', N'Genre_038', N'Gospel')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2126, N'ru   ', N'Genre_039', N'Noise')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2127, N'ru   ', N'Genre_040', N'Alt. Rock')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2128, N'ru   ', N'Genre_041', N'Bass')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2129, N'ru   ', N'Genre_042', N'Soul')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2130, N'ru   ', N'Genre_043', N'Punk')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2131, N'ru   ', N'Genre_044', N'Space')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2132, N'ru   ', N'Genre_045', N'Meditative')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2133, N'ru   ', N'Genre_046', N'Instrumental Pop')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2134, N'ru   ', N'Genre_047', N'Instrumental Rock')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2135, N'ru   ', N'Genre_048', N'Ethnic')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2136, N'ru   ', N'Genre_049', N'Gothic')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2137, N'ru   ', N'Genre_050', N'Darkwave')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2138, N'ru   ', N'Genre_051', N'Techno-Industrial')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2139, N'ru   ', N'Genre_052', N'Electronic')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2140, N'ru   ', N'Genre_053', N'Pop-Folk')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2141, N'ru   ', N'Genre_054', N'Eurodance')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2142, N'ru   ', N'Genre_055', N'Dream')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2143, N'ru   ', N'Genre_056', N'Southern Rock')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2144, N'ru   ', N'Genre_057', N'Comedy')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2145, N'ru   ', N'Genre_058', N'Cult')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2146, N'ru   ', N'Genre_059', N'Gangsta Rap')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2147, N'ru   ', N'Genre_060', N'Top 40')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2148, N'ru   ', N'Genre_061', N'Christian Rap')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2149, N'ru   ', N'Genre_062', N'Pop/Funk')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2150, N'ru   ', N'Genre_063', N'Jungle')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2151, N'ru   ', N'Genre_064', N'Native American')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2152, N'ru   ', N'Genre_065', N'Cabaret')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2153, N'ru   ', N'Genre_066', N'New Wave')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2154, N'ru   ', N'Genre_067', N'Psychedelic')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2155, N'ru   ', N'Genre_068', N'Rave')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2156, N'ru   ', N'Genre_069', N'Showtunes')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2157, N'ru   ', N'Genre_070', N'Trailer')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2158, N'ru   ', N'Genre_071', N'Lo-Fi')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2159, N'ru   ', N'Genre_072', N'Tribal')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2160, N'ru   ', N'Genre_073', N'Acid Punk')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2161, N'ru   ', N'Genre_074', N'Acid Jazz')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2162, N'ru   ', N'Genre_075', N'Polka')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2163, N'ru   ', N'Genre_076', N'Retro')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2164, N'ru   ', N'Genre_077', N'Musical')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2165, N'ru   ', N'Genre_078', N'Rock & Roll')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2166, N'ru   ', N'Genre_079', N'Hard Rock')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2167, N'ru   ', N'Genre_080', N'Folk')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2168, N'ru   ', N'Genre_081', N'Folk-Rock')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2169, N'ru   ', N'Genre_082', N'National Folk')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2170, N'ru   ', N'Genre_083', N'Swing')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2171, N'ru   ', N'Genre_084', N'Fast-Fusion')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2172, N'ru   ', N'Genre_085', N'Bebop')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2173, N'ru   ', N'Genre_086', N'Latin')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2174, N'ru   ', N'Genre_087', N'Revival')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2175, N'ru   ', N'Genre_088', N'Celtic')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2176, N'ru   ', N'Genre_089', N'Bluegrass')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2177, N'ru   ', N'Genre_090', N'Avantgarde')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2178, N'ru   ', N'Genre_091', N'Gothic Rock')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2179, N'ru   ', N'Genre_092', N'Progressive Rock')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2180, N'ru   ', N'Genre_093', N'Psychedelic Rock')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2181, N'ru   ', N'Genre_094', N'Symphonic Rock')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2182, N'ru   ', N'Genre_095', N'Slow Rock')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2183, N'ru   ', N'Genre_096', N'Big Band')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2184, N'ru   ', N'Genre_097', N'Chorus')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2185, N'ru   ', N'Genre_098', N'Easy Listening')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2186, N'ru   ', N'Genre_099', N'Acoustic')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2187, N'ru   ', N'Genre_100', N'Humour')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2188, N'ru   ', N'Genre_101', N'Speech')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2189, N'ru   ', N'Genre_102', N'Chanson')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2190, N'ru   ', N'Genre_103', N'Opera')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2191, N'ru   ', N'Genre_104', N'Chamber Music')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2192, N'ru   ', N'Genre_105', N'Sonata')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2193, N'ru   ', N'Genre_106', N'Symphony')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2194, N'ru   ', N'Genre_107', N'Booty Bass')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2195, N'ru   ', N'Genre_108', N'Primus')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2196, N'ru   ', N'Genre_109', N'Porn Groove')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2197, N'ru   ', N'Genre_110', N'Satire')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2198, N'ru   ', N'Genre_111', N'Slow Jam')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2199, N'ru   ', N'Genre_112', N'Club')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2200, N'ru   ', N'Genre_113', N'Tango')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2201, N'ru   ', N'Genre_114', N'Samba')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2202, N'ru   ', N'Genre_115', N'Folklore')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2203, N'ru   ', N'Genre_116', N'Ballad')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2204, N'ru   ', N'Genre_117', N'Power Ballad')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2205, N'ru   ', N'Genre_118', N'Rhythmic Soul')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2206, N'ru   ', N'Genre_119', N'Freestyle')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2207, N'ru   ', N'Genre_120', N'Duet')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2208, N'ru   ', N'Genre_121', N'Punk Rock')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2209, N'ru   ', N'Genre_122', N'Drum Solo')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2210, N'ru   ', N'Genre_123', N'A Cappella')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2211, N'ru   ', N'Genre_124', N'Euro-House')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2212, N'ru   ', N'Genre_125', N'Dance Hall')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2213, N'ru   ', N'Genre_126', N'Goa')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2214, N'ru   ', N'Genre_127', N'Drum & Bass')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2215, N'ru   ', N'Genre_128', N'Club-House')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2216, N'ru   ', N'Genre_129', N'Hardcore')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2217, N'ru   ', N'Genre_130', N'Terror')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2218, N'ru   ', N'Genre_131', N'Indie')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2219, N'ru   ', N'Genre_132', N'Britpop')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2220, N'ru   ', N'Genre_133', N'Afro-Punk')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2221, N'ru   ', N'Genre_134', N'Polsk Punk')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2222, N'ru   ', N'Genre_135', N'Beat')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2223, N'ru   ', N'Genre_136', N'Christian Gangsta Rap')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2224, N'ru   ', N'Genre_137', N'Heavy Metal')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2225, N'ru   ', N'Genre_138', N'Black Metal')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2226, N'ru   ', N'Genre_139', N'Crossover')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2227, N'ru   ', N'Genre_140', N'Contemporary Christian')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2228, N'ru   ', N'Genre_141', N'Christian Rock')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2229, N'ru   ', N'Genre_142', N'Merengue')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2230, N'ru   ', N'Genre_143', N'Salsa')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2231, N'ru   ', N'Genre_144', N'Thrash Metal')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2232, N'ru   ', N'Genre_145', N'Anime')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2233, N'ru   ', N'Genre_146', N'JPop')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2234, N'ru   ', N'Genre_147', N'Synthpop')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2235, N'ru   ', N'Genre_148', N'Abstract')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2236, N'ru   ', N'Genre_149', N'Art Rock')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2237, N'ru   ', N'Genre_150', N'Baroque')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2238, N'ru   ', N'Genre_151', N'Bhangra')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2239, N'ru   ', N'Genre_152', N'Big Beat')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2240, N'ru   ', N'Genre_153', N'Breakbeat')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2241, N'ru   ', N'Genre_154', N'Chillout')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2242, N'ru   ', N'Genre_155', N'Downtempo')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2243, N'ru   ', N'Genre_156', N'Dub')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2244, N'ru   ', N'Genre_157', N'EBM')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2245, N'ru   ', N'Genre_158', N'Eclectic')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2246, N'ru   ', N'Genre_159', N'Electro')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2247, N'ru   ', N'Genre_160', N'Electroclash')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2248, N'ru   ', N'Genre_161', N'Emo')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2249, N'ru   ', N'Genre_162', N'Experimental')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2250, N'ru   ', N'Genre_163', N'Garage')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2251, N'ru   ', N'Genre_164', N'Global')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2252, N'ru   ', N'Genre_165', N'IDM')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2253, N'ru   ', N'Genre_166', N'Illbient')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2254, N'ru   ', N'Genre_167', N'Industro-Goth')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2255, N'ru   ', N'Genre_168', N'Jam Band')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2256, N'ru   ', N'Genre_169', N'Krautrock')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2257, N'ru   ', N'Genre_170', N'Leftfield')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2258, N'ru   ', N'Genre_171', N'Lounge')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2259, N'ru   ', N'Genre_172', N'Math Rock')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2260, N'ru   ', N'Genre_173', N'New Romantic')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2261, N'ru   ', N'Genre_174', N'Nu-Breakz')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2262, N'ru   ', N'Genre_175', N'Post-Punk')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2263, N'ru   ', N'Genre_176', N'Post-Rock')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2264, N'ru   ', N'Genre_177', N'Psytrance')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2265, N'ru   ', N'Genre_178', N'Shoegaze')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2266, N'ru   ', N'Genre_179', N'Space Rock')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2267, N'ru   ', N'Genre_180', N'Trop Rock')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2268, N'ru   ', N'Genre_181', N'World Music')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2269, N'ru   ', N'Genre_182', N'Neoclassical')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2270, N'ru   ', N'Genre_183', N'Audiobook')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2271, N'ru   ', N'Genre_184', N'Audio Theatre')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2272, N'ru   ', N'Genre_185', N'Neue Deutsche Welle')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2273, N'ru   ', N'Genre_186', N'Podcast')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2274, N'ru   ', N'Genre_187', N'Indie Rock')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2275, N'ru   ', N'Genre_188', N'G-Funk')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2276, N'ru   ', N'Genre_189', N'Dubstep')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2277, N'ru   ', N'Genre_190', N'Garage Rock')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2278, N'ru   ', N'Genre_191', N'Psybient')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2279, N'ru   ', N'Go to WebSite', N'РџРµСЂРµР№С‚Рё РЅР° СЃР°Р№С‚ РїСЂРѕРіСЂР°РјРјС‹')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2280, N'ru   ', N'Gop_OpenClosed', N'GOP, РѕС‚РєСЂС‹С‚Рѕ/Р·Р°РєСЂС‹С‚Рѕ')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2281, N'ru   ', N'Gop_OpenClosed_Open', N'РћС‚РєСЂС‹С‚Рѕ')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2282, N'ru   ', N'Gop_OpenClosed_Closed', N'Р—Р°РєСЂС‹С‚Рѕ')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2283, N'ru   ', N'Gop_OpenClosed_FirstFrame', N'GOP, РѕС‚РєСЂС‹С‚Рѕ/Р·Р°РєСЂС‹С‚Рѕ РЅР° РїРµСЂРІРѕРј РєР°РґСЂРµ')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2284, N'ru   ', N'Grouping', N'Р“СЂСѓРїРїРёСЂРѕРІР°РЅРёРµ')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2285, N'ru   ', N'h', N'С‡.')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2286, N'ru   ', N'Header file', N'РЎРѕР·РґР°С‚СЊ Р·Р°РіРѕР»РѕРІРѕРє')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2287, N'ru   ', N'Height', N'Р’С‹СЃРѕС‚Р°')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2288, N'ru   ', N'Height_CleanAperture', NULL)
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2289, N'ru   ', N'Height_Original', N'Р’С‹СЃРѕС‚Р° РѕСЂРёРіРёРЅР°Р»Р°')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2290, N'ru   ', N'Help', N'РџРѕРјРѕС‰СЊ')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2291, N'ru   ', N'Hint', N'РџРѕРґСЃРєР°Р·РєР°')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2292, N'ru   ', N'How many audio streams?', N'РЎРєРѕР»СЊРєРѕ Р°СѓРґРёРѕРїРѕС‚РѕРєРѕРІ?')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2293, N'ru   ', N'How many chapters streams?', N'РЎРєРѕР»СЊРєРѕ РїРѕС‚РѕРєРѕРІ СЂР°Р·РґРµР»РѕРІ?')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2294, N'ru   ', N'How many text streams?', N'РЎРєРѕР»СЊРєРѕ С‚РµРєСЃС‚РѕРІС‹С… РїРѕС‚РѕРєРѕРІ?')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2295, N'ru   ', N'How many video streams?', N'РЎРєРѕР»СЊРєРѕ РІРёРґРµРѕРїРѕС‚РѕРєРѕРІ?')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2296, N'ru   ', N'HTML', N'HTML')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2297, N'ru   ', N'ID', N'РРґРµРЅС‚РёС„РёРєР°С‚РѕСЂ')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2298, N'ru   ', N'IdentClockStart', N'РќР°С‡Р°Р»Рѕ РёРґРµРЅС‚РёС„РёРєР°С†РёРё')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2299, N'ru   ', N'Image', N'РР·РѕР±СЂР°Р¶РµРЅРёСЏ')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2300, N'ru   ', N'Image stream(s)', N'РџРѕС‚РѕРєРё РёР·РѕР±СЂР°Р¶РµРЅРёР№')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2301, N'ru   ', N'Image_Codec_List', N'РљРѕРґРµРєРё РёР·РѕР±СЂР°Р¶РµРЅРёР№')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2302, N'ru   ', N'ImageCount', N'РљРѕР»РёС‡РµСЃС‚РІРѕ РїРѕС‚РѕРєРѕРІ РёР·РѕР±СЂР°Р¶РµРЅРёР№')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2303, N'ru   ', N'Info', N'РРЅС„РѕСЂРјР°С†РёСЏ')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2304, N'ru   ', N'Instruments', N'РРЅСЃС‚СЂСѓРјРµРЅС‚С‹')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2305, N'ru   ', N'Interlaced_BFF', N'РќРёР¶РЅРµРµ РїРѕР»Рµ РїРµСЂРІРѕРµ')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2306, N'ru   ', N'Interlaced_Interlaced', N'Р§РµСЂРµСЃСЃС‚СЂРѕС‡РЅР°СЏ')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2307, N'ru   ', N'Interlaced_PPF', N'РџСЂРѕРіСЂРµСЃСЃРёРІРЅР°СЏ')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2308, N'ru   ', N'Interlaced_Progressive', N'РџСЂРѕРіСЂРµСЃСЃРёРІРЅР°СЏ')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2309, N'ru   ', N'Interlaced_TFF', N'Р’РµСЂС…РЅРµРµ РїРѕР»Рµ РїРµСЂРІРѕРµ')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2310, N'ru   ', N'Interlacement', N'РџРµСЂРµРїР»РµС‚РµРЅРёРµ')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2311, N'ru   ', N'Interleave_Duration', N'РџСЂРѕРґРѕР»Р¶РёС‚РµР»СЊРЅРѕСЃС‚СЊ РїСЂРѕРјРµР¶СѓС‚РєР°')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2312, N'ru   ', N'Interleave_Preload', N'Р’СЂРµРјСЏ РїСЂРµРґР·Р°РіСЂСѓР·РєРё РїСЂРѕРјРµР¶СѓС‚РєР°')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2313, N'ru   ', N'Interleave_VideoFrames', N'РџСЂРѕРґРѕР»Р¶РёС‚РµР»СЊРЅРѕСЃС‚СЊ РїСЂРѕРјРµР¶СѓС‚РєР°')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2314, N'ru   ', N'Interleaved', N'Р§РµСЂРµРґСѓСЋС‰Р°СЏСЃСЏ')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2315, N'ru   ', N'InternetMediaType', N'РРЅС‚РµСЂРЅРµС‚-С‚РёРї РЅРѕСЃРёС‚РµР»СЏ')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2316, N'ru   ', N'IRCA', N'IRCA')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2317, N'ru   ', N'ISBN', N'ISBN')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2318, N'ru   ', N'ISRC', N'ISRC')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2319, N'ru   ', N'Keywords', N'РљР»СЋС‡РµРІС‹Рµ СЃР»РѕРІР°')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2320, N'ru   ', N'Known codecs', N'РР·РІРµСЃС‚РЅС‹Рµ РєРѕРґРµРєРё')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2321, N'ru   ', N'Known formats', N'РР·РІРµСЃС‚РЅС‹Рµ С„РѕСЂРјР°С‚С‹')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2322, N'ru   ', N'Known parameters', N'РР·РІРµСЃС‚РЅС‹Рµ РїР°СЂР°РјРµС‚СЂС‹')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2323, N'ru   ', N'Label', N'РњРµС‚РєР°')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2324, N'ru   ', N'Language', N'РЇР·С‹Рє')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2325, N'ru   ', N'Language_aa', N'Afar')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2326, N'ru   ', N'Language_ab', N'Abkhazian')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2327, N'ru   ', N'Language_ae', N'Avestan')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2328, N'ru   ', N'Language_af', N'Afrikaans')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2329, N'ru   ', N'Language_ak', N'Akan')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2330, N'ru   ', N'Language_am', N'Amharic')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2331, N'ru   ', N'Language_an', N'Aragonese')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2332, N'ru   ', N'Language_ar', N'Arabic')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2333, N'ru   ', N'Language_as', N'Assamese')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2334, N'ru   ', N'Language_av', N'Avaric')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2335, N'ru   ', N'Language_ay', N'Aymara')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2336, N'ru   ', N'Language_az', N'Azerbaijani')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2337, N'ru   ', N'Language_ba', N'Bashkir')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2338, N'ru   ', N'Language_be', N'Belarusian')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2339, N'ru   ', N'Language_bg', N'Bulgarian')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2340, N'ru   ', N'Language_bh', N'Bihari')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2341, N'ru   ', N'Language_bi', N'Bislama')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2342, N'ru   ', N'Language_bm', N'Bambara')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2343, N'ru   ', N'Language_bn', N'Bengali')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2344, N'ru   ', N'Language_bo', N'Tibetan')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2345, N'ru   ', N'Language_br', N'Breton')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2346, N'ru   ', N'Language_bs', N'Bosnian')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2347, N'ru   ', N'Language_ca', N'Catalan')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2348, N'ru   ', N'Language_ce', N'Chechen')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2349, N'ru   ', N'Language_ch', N'Chamorro')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2350, N'ru   ', N'Language_co', N'Corsican')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2351, N'ru   ', N'Language_cr', N'Cree')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2352, N'ru   ', N'Language_cs', N'Czech')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2353, N'ru   ', N'Language_cu', N'Slave')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2354, N'ru   ', N'Language_cv', N'Chuvash')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2355, N'ru   ', N'Language_cy', N'Welsh')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2356, N'ru   ', N'Language_da', N'Danish')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2357, N'ru   ', N'Language_de', N'German')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2358, N'ru   ', N'Language_dv', N'Divehi')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2359, N'ru   ', N'Language_dz', N'Dzongkha')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2360, N'ru   ', N'Language_ee', N'Ewe')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2361, N'ru   ', N'Language_el', N'Greek')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2362, N'ru   ', N'Language_en', N'English')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2363, N'ru   ', N'Language_en-gb', N'English (Great Britain)')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2364, N'ru   ', N'Language_en-us', N'English (United States)')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2365, N'ru   ', N'Language_eo', N'Esperanto')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2366, N'ru   ', N'Language_es', N'Spanish')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2367, N'ru   ', N'Language_es-419', NULL)
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2368, N'ru   ', N'Language_et', N'Estonian')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2369, N'ru   ', N'Language_eu', N'Basque')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2370, N'ru   ', N'Language_fa', N'Persian')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2371, N'ru   ', N'Language_ff', N'Fulah')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2372, N'ru   ', N'Language_fi', N'Finnish')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2373, N'ru   ', N'Language_fj', N'Fijian')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2374, N'ru   ', N'Language_fo', N'Faroese')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2375, N'ru   ', N'Language_fr', N'French')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2376, N'ru   ', N'Language_fy', N'Frisian')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2377, N'ru   ', N'Language_ga', N'Irish')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2378, N'ru   ', N'Language_gd', N'Gaelic')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2379, N'ru   ', N'Language_gl', N'Galician')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2380, N'ru   ', N'Language_gn', N'Guarani')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2381, N'ru   ', N'Language_gu', N'Gujarati')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2382, N'ru   ', N'Language_gv', N'Manx')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2383, N'ru   ', N'Language_ha', N'Hausa')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2384, N'ru   ', N'Language_he', N'Hebrew')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2385, N'ru   ', N'Language_hi', N'Hindi')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2386, N'ru   ', N'Language_ho', N'Hiri Motu')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2387, N'ru   ', N'Language_hr', N'Croatian')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2388, N'ru   ', N'Language_ht', N'Haitian')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2389, N'ru   ', N'Language_hu', N'Hungarian')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2390, N'ru   ', N'Language_hy', N'Armenian')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2391, N'ru   ', N'Language_hz', N'Herero')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2392, N'ru   ', N'Language_ia', N'Auxiliary Language Association')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2393, N'ru   ', N'Language_id', N'Indonesian')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2394, N'ru   ', N'Language_ie', N'Interlingue')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2395, N'ru   ', N'Language_ig', N'Igbo')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2396, N'ru   ', N'Language_ii', N'Sichuan Yi')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2397, N'ru   ', N'Language_ik', N'Inupiaq')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2398, N'ru   ', N'Language_Info', N'РћР± СЏР·С‹РєРµ')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2399, N'ru   ', N'Language_io', N'Ido')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2400, N'ru   ', N'Language_is', N'Icelandic')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2401, N'ru   ', N'Language_it', N'Italian')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2402, N'ru   ', N'Language_iu', N'Inuktitut')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2403, N'ru   ', N'Language_ja', N'Japanese')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2404, N'ru   ', N'Language_jv', N'Javanese')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2405, N'ru   ', N'Language_ka', N'Georgian')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2406, N'ru   ', N'Language_kg', N'Kongo')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2407, N'ru   ', N'Language_ki', N'Kikuyu')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2408, N'ru   ', N'Language_kj', N'Kuanyama')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2409, N'ru   ', N'Language_kk', N'Kazakh')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2410, N'ru   ', N'Language_kl', N'Kalaallisut')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2411, N'ru   ', N'Language_km', N'Khmer')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2412, N'ru   ', N'Language_kn', N'Kannada')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2413, N'ru   ', N'Language_ko', N'Korean')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2414, N'ru   ', N'Language_kr', N'Kanuri')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2415, N'ru   ', N'Language_ks', N'Kashmiri')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2416, N'ru   ', N'Language_ku', N'Kurdish')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2417, N'ru   ', N'Language_kv', N'Komi')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2418, N'ru   ', N'Language_kw', N'Cornish')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2419, N'ru   ', N'Language_ky', N'Kirghiz')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2420, N'ru   ', N'Language_la', N'Latin')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2421, N'ru   ', N'Language_lb', N'Luxembourgish')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2422, N'ru   ', N'Language_lg', N'Ganda')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2423, N'ru   ', N'Language_li', N'Limburgish')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2424, N'ru   ', N'Language_ln', N'Lingala')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2425, N'ru   ', N'Language_lo', N'Lao')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2426, N'ru   ', N'Language_lt', N'Lithuanian')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2427, N'ru   ', N'Language_lu', N'Luba-Katanga')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2428, N'ru   ', N'Language_lv', N'Latvian')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2429, N'ru   ', N'Language_mg', N'Malagasy')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2430, N'ru   ', N'Language_mh', N'Marshallese')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2431, N'ru   ', N'Language_mi', N'Maori')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2432, N'ru   ', N'Language_mk', N'Macedonian')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2433, N'ru   ', N'Language_ml', N'Malayalam')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2434, N'ru   ', N'Language_mn', N'Mongolian')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2435, N'ru   ', N'Language_mo', N'Moldavian')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2436, N'ru   ', N'Language_More', N'РЇР·С‹Рє, РґРѕРїРѕР»РЅРёС‚РµР»СЊРЅРѕ')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2437, N'ru   ', N'Language_mr', N'Marathi')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2438, N'ru   ', N'Language_ms', N'Malay')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2439, N'ru   ', N'Language_mt', N'Maltese')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2440, N'ru   ', N'Language_mul', N'РќРµСЃРєРѕР»СЊРєРѕ СЏР·С‹РєРѕРІ')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2441, N'ru   ', N'Language_my', N'Burmese')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2442, N'ru   ', N'Language_na', N'Nauru')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2443, N'ru   ', N'Language_nb', N'Norwegian Bokmal')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2444, N'ru   ', N'Language_nd', N'Ndebele')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2445, N'ru   ', N'Language_ne', N'Nepali')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2446, N'ru   ', N'Language_ng', N'Ndonga')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2447, N'ru   ', N'Language_nl', N'Dutch')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2448, N'ru   ', N'Language_nn', N'Norwegian Nynorsk')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2449, N'ru   ', N'Language_no', N'Norwegian')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2450, N'ru   ', N'Language_nr', N'Ndebele')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2451, N'ru   ', N'Language_nv', N'Navaho')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2452, N'ru   ', N'Language_ny', N'Nyanja')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2453, N'ru   ', N'Language_oc', N'Occitan')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2454, N'ru   ', N'Language_oj', N'Ojibwa')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2455, N'ru   ', N'Language_om', N'Oromo')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2456, N'ru   ', N'Language_or', N'Oriya')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2457, N'ru   ', N'Language_os', N'Ossetic')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2458, N'ru   ', N'Language_pa', N'Panjabi')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2459, N'ru   ', N'Language_pi', N'Pali')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2460, N'ru   ', N'Language_pl', N'Polish')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2461, N'ru   ', N'Language_ps', N'Pushto')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2462, N'ru   ', N'Language_pt', N'Portuguese')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2463, N'ru   ', N'Language_pt-br', N'Portuguese (Brazil)')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2464, N'ru   ', N'Language_qu', N'Quechua')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2465, N'ru   ', N'Language_rm', N'Raeto-Romance')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2466, N'ru   ', N'Language_rn', N'Rundi')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2467, N'ru   ', N'Language_ro', N'Romanian')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2468, N'ru   ', N'Language_ru', N'Russian')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2469, N'ru   ', N'Language_rw', N'Kinyarwanda')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2470, N'ru   ', N'Language_sa', N'Sanskrit')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2471, N'ru   ', N'Language_sc', N'Sardinian')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2472, N'ru   ', N'Language_sd', N'Sindhi')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2473, N'ru   ', N'Language_se', N'Northern Sami')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2474, N'ru   ', N'Language_sg', N'Sango')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2475, N'ru   ', N'Language_si', N'Sinhala')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2476, N'ru   ', N'Language_sk', N'Slovak')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2477, N'ru   ', N'Language_sl', N'Slovenian')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2478, N'ru   ', N'Language_sm', N'Samoan')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2479, N'ru   ', N'Language_sn', N'Shona')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2480, N'ru   ', N'Language_so', N'Somali')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2481, N'ru   ', N'Language_sq', N'Albanian')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2482, N'ru   ', N'Language_sr', N'Serbian')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2483, N'ru   ', N'Language_ss', N'Swati')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2484, N'ru   ', N'Language_st', N'Sotho')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2485, N'ru   ', N'Language_su', N'Sundanese')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2486, N'ru   ', N'Language_sv', N'Swedish')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2487, N'ru   ', N'Language_sw', N'Swahili')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2488, N'ru   ', N'Language_ta', N'Tamil')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2489, N'ru   ', N'Language_te', N'Telugu')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2490, N'ru   ', N'Language_tg', N'Tajik')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2491, N'ru   ', N'Language_th', N'Thai')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2492, N'ru   ', N'Language_ti', N'Tigrinya')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2493, N'ru   ', N'Language_tk', N'Turkmen')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2494, N'ru   ', N'Language_tl', N'Tagalog')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2495, N'ru   ', N'Language_tn', N'Tswana')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2496, N'ru   ', N'Language_to', N'Tonga')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2497, N'ru   ', N'Language_tr', N'Turkish')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2498, N'ru   ', N'Language_ts', N'Tsonga')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2499, N'ru   ', N'Language_tt', N'Tatar')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2500, N'ru   ', N'Language_tw', N'Twi')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2501, N'ru   ', N'Language_ty', N'Tahitian')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2502, N'ru   ', N'Language_ug', N'Uighur')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2503, N'ru   ', N'Language_uk', N'Ukrainian')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2504, N'ru   ', N'Language_ur', N'Urdu')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2505, N'ru   ', N'Language_uz', N'Uzbek')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2506, N'ru   ', N'Language_ve', N'Venda')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2507, N'ru   ', N'Language_vi', N'Vietnamese')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2508, N'ru   ', N'Language_vo', N'Volapuk')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2509, N'ru   ', N'Language_wa', N'Walloon')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2510, N'ru   ', N'Language_wo', N'Wolof')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2511, N'ru   ', N'Language_xh', N'Xhosa')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2512, N'ru   ', N'Language_yi', N'Yiddish')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2513, N'ru   ', N'Language_yo', N'Yoruba')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2514, N'ru   ', N'Language_za', N'Zhuang')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2515, N'ru   ', N'Language_zh', N'Chinese')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2516, N'ru   ', N'Language_zh-cn', N'Chinese (China)')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2517, N'ru   ', N'Language_zh-tw', N'Chinese (Taiwan)')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2518, N'ru   ', N'Language_zu', N'Zulu')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2519, N'ru   ', N'LawRating', N'РћРіСЂР°РЅРёС‡РµРЅРёРµ РїРѕ РІРѕР·СЂР°СЃС‚Сѓ')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2520, N'ru   ', N'LCCN', N'LCCN')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2521, N'ru   ', N'Library', N'Р‘РёР±Р»РёРѕС‚РµРєР° СЃРјРµС€РёРІР°РЅРёСЏ')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2522, N'ru   ', N'Lightness', N'РЇРєСЂРѕСЃС‚СЊ')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2523, N'ru   ', N'LineUpStart', N'РќР°С‡Р°Р»Рѕ РїРѕСЃС‚СЂРѕРµРЅРёСЏ')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2524, N'ru   ', N'List', N'РЎРїРёСЃРѕРє')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2525, N'ru   ', N'Lyricist', N'РџРѕСЌС‚-РїРµСЃРµРЅРЅРёРє')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2526, N'ru   ', N'Lyrics', N'РўРµРєСЃС‚ РїРµСЃРµРЅ')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2527, N'ru   ', N'Mastered_Date', N'Р”Р°С‚Р° РјР°СЃС‚РµСЂРёРЅРіР°')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2528, N'ru   ', N'MasteredBy', N'РњР°СЃС‚РµСЂРёРЅРі РїСЂРѕРёР·РІС‘Р»')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2529, N'ru   ', N'MasteringDisplay_ColorPrimaries', NULL)
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2530, N'ru   ', N'MasteringDisplay_Luminance', NULL)
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2531, N'ru   ', N'Matrix_Channel(s)', N'РљР°РЅР°Р»(С‹) РєРѕРґРёСЂРѕРІР°РЅРёСЏ РјР°С‚СЂРёС†С‹')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2532, N'ru   ', N'Matrix_ChannelPositions', N'РџРѕР·РёС†РёРё РєР°РЅР°Р»РѕРІ РєРѕРґРёСЂРѕРІР°РЅРёСЏ РјР°С‚СЂРёС†С‹')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2533, N'ru   ', N'matrix_coefficients', N'РљРѕСЌС„С„РёС†РёРµРЅС‚С‹ РјР°С‚СЂРёС†С‹')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2534, N'ru   ', N'Matrix_Format', N'Р¤РѕСЂРјР°С‚ РєРѕРґРёСЂРѕРІР°РЅРёСЏ РјР°С‚СЂРёС†С‹')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2535, N'ru   ', N'MaxCLL', NULL)
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2536, N'ru   ', N'MaxFALL', NULL)
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2537, N'ru   ', N'MediaInfo_About', N'РћС‚РѕР±СЂР°Р¶Р°РµС‚ РґРµС‚Р°Р»СЊРЅСѓСЋ РёРЅС„РѕСЂРјР°С†РёСЋ\r\nРѕ РјСѓР»СЊС‚РёРјРµРґРёР°-С„Р°Р№Р»Р°С… Matroska, OGG (РІРєР»СЋС‡Р°СЏ OGM)\r\nMPEG1 (РІРєР»СЋС‡Р°СЏ VCD), MPEG2 (РІРєР»СЋС‡Р°СЏ DVD Рё SVCD), MPEG4 (РІРєР»СЋС‡Р°СЏ iTunes M4A)\r\nQuicktime\r\n')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2538, N'ru   ', N'Menu', N'РњРµРЅСЋ')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2539, N'ru   ', N'Menu stream(s)', N'РњРµРЅСЋ РїРѕС‚РѕРєРѕРІ')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2540, N'ru   ', N'Menu_Codec_List', N'РњРµРЅСЋ РєРѕРґРµРєРѕРІ')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2541, N'ru   ', N'Menu_Hint', N'Р”РѕРїРѕР»РЅРёС‚РµР»СЊРЅС‹Рµ РІРѕР·РјРѕР¶РЅРѕСЃС‚Рё')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2542, N'ru   ', N'Menu_No', N'РќРµС‚ РјРµРЅСЋ')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2543, N'ru   ', N'MenuCount', N'РљРѕР»РёС‡РµСЃС‚РІРѕ РїРѕС‚РѕРєРѕРІ РјРµРЅСЋ')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2544, N'ru   ', N'MenuID', N'РРґРµРЅС‚РёС„РёРєР°С‚РѕСЂ РјРµРЅСЋ')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2545, N'ru   ', N'mn', N'Рј.')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2546, N'ru   ', N'Mood', N'РќР°СЃС‚СЂРѕРµРЅРёРµ')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2547, N'ru   ', N'More', N'Р•С‰С‘')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2548, N'ru   ', N'Movie', N'РќР°Р·РІР°РЅРёРµ С„РёР»СЊРјР°')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2549, N'ru   ', N'ms', N'РјСЃ.')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2550, N'ru   ', N'MSDI', N'MSDI')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2551, N'ru   ', N'MusicBy', N'РљРѕРјРїРѕР·РёС‚РѕСЂ')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2552, N'ru   ', N'MuxingMode', N'Р РµР¶РёРј СЃРјРµС€РёРІР°РЅРёСЏ')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2553, N'ru   ', N'MuxingMode_MoreInfo', N'Р РµР¶РёРј СЃРјРµС€РёРІР°РЅРёСЏ, РґРѕРї. РёРЅС„РѕСЂРјР°С†РёСЏ')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2554, N'ru   ', N'MuxingMode_PackedBitstream', N'РЎР¶Р°С‚С‹Р№ Р±РёС‚РѕРІС‹Р№ РїРѕС‚РѕРє')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2555, N'ru   ', N'Name', N'РРјСЏ')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2556, N'ru   ', N'Nationality', N'РќР°С†РёРѕРЅР°Р»СЊРЅРѕСЃС‚СЊ')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2557, N'ru   ', N'NetworkName', N'РќР°Р·РІР°РЅРёРµ СЃРµС‚Рё')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2558, N'ru   ', N'New', N'РќРѕРІС‹Р№')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2559, N'ru   ', N'Newest version', N'РџСЂРѕРІРµСЂСЏС‚СЊ РЅР° РѕР±РЅРѕРІР»РµРЅРёРµ (С‚СЂРµР±СѓРµС‚СЃСЏ РїРѕРґРєР»СЋС‡РµРЅРёРµ Рє РёРЅС‚РµСЂРЅРµС‚Сѓ)')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2560, N'ru   ', N'NewVersion_Menu', N'Р”РѕСЃС‚СѓРїРЅР° РЅРѕРІР°СЏ РІРµСЂСЃРёСЏ')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2561, N'ru   ', N'NewVersion_Question_Content', N'Р”РѕСЃС‚СѓРїРЅР° РЅРѕРІР°СЏ РІРµСЂСЃРёСЏ %Version%, С…РѕС‚РёС‚Рµ СЃРєР°С‡Р°С‚СЊ РµС‘?')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2562, N'ru   ', N'NewVersion_Question_Title', N'Р’С‹РїСѓС‰РµРЅР° РЅРѕРІР°СЏ РІРµСЂСЃРёСЏ!')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2563, N'ru   ', N'No', N'РќРµС‚')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2564, N'ru   ', N'Not yet', N'Р•С‰С‘ РЅРµС‚')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2565, N'ru   ', N'NumColors', N'РљРѕР»РёС‡РµСЃС‚РІРѕ С†РІРµС‚РѕРІ')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2566, N'ru   ', N'OK', N'OK')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2567, N'ru   ', N'One output file per input file', N'РќРѕРІС‹Р№ С„Р°Р№Р» РґР»СЏ РєР°Р¶РґРѕРіРѕ РёСЃС…РѕРґРЅРѕРіРѕ')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2568, N'ru   ', N'Open', N'РћС‚РєСЂС‹С‚СЊ')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2569, N'ru   ', N'OpenCandy_01', N'Р—Р°РіСЂСѓР¶Р°РµС‚СЃСЏ ________')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2570, N'ru   ', N'OpenCandy_02', N'__% РІС‹РїРѕР»РЅРµРЅРѕ')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2571, N'ru   ', N'OpenCandy_03', N'Р’С‹С…РѕРґ РІ РёРЅС‚РµСЂРЅРµС‚ РЅРµРІРѕР·РјРѕР¶РµРЅ')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2572, N'ru   ', N'OpenCandy_04', N'________ СЃРєР°С‡Р°РЅРѕ')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2573, N'ru   ', N'OpenCandy_05', N'Р©С‘Р»РєРЅРёС‚Рµ РґР»СЏ СѓСЃС‚Р°РЅРѕРІРєРё ________')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2574, N'ru   ', N'OpenCandy_06', N'Р’С‹ РґРµР№СЃС‚РІРёС‚РµР»СЊРЅРѕ С…РѕС‚РёС‚Рµ РїСЂРµСЂРІР°С‚СЊ СѓСЃС‚Р°РЅРѕРІРєСѓ?\r\nР•СЃР»Рё РІС‹ С…РѕС‚РёС‚Рµ РѕС‚Р»РѕР¶РёС‚СЊ СѓСЃС‚Р°РЅРѕРІРєСѓ, РІС‹Р±РµСЂРёС‚Рµ ''РќРµС‚''.\r\nРџСЂРёРј.: Р’С‹ РјРѕР¶РµС‚Рµ РІС‹Р±СЂР°С‚СЊ Р’С‹Р№С‚Рё РёР· РјРµРЅСЋ, С‡С‚Рѕ')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2575, N'ru   ', N'OpenCandy_07', N'Р—Р°РіСЂСѓР·РєР° ________ Р±С‹Р»Р° РїСЂРёРѕСЃС‚Р°РЅРѕРІР»РµРЅР°.\r\nР©С‘Р»РєРЅРёС‚Рµ РїРѕ Р·РЅР°С‡РєСѓ РІ С‚СЂРµРµ РґР»СЏ РІРѕР·РѕР±РЅРѕРІР»РµРЅРёСЏ Р·Р°РіСЂСѓР·РєРё.')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2576, N'ru   ', N'OpenCandy_08', N'РћР±РЅР°СЂСѓР¶РµРЅР° РєСЂРёС‚РёС‡РµСЃРєР°СЏ РѕС€РёР±РєР°. РЈСЃС‚Р°РЅРѕРІРєР° _________ Р±СѓРґРµС‚ РїСЂРµСЂРІР°РЅР°.')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2577, N'ru   ', N'OpenCandy_09', N'РџСЂРёРѕСЃС‚Р°РЅРѕРІРёС‚СЊ Р·Р°РіСЂСѓР·РєСѓ')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2578, N'ru   ', N'OpenCandy_10', N'РћС‚РјРµРЅРёС‚СЊ СѓСЃС‚Р°РЅРѕРІРєСѓ')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2579, N'ru   ', N'OpenCandy_11', N'РџСЂРѕРґРѕР»Р¶РёС‚СЊ Р·Р°РіСЂСѓР·РєСѓ')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2580, N'ru   ', N'OpenCandy_12', N'Р’С‹Р№С‚Рё РёР· СѓСЃС‚Р°РЅРѕРІРєРё')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2581, N'ru   ', N'OpenCandy_13', N'___________ - СЂРµРєРѕРјРµРЅРґРѕРІР°РЅРѕ ____________')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2582, N'ru   ', N'OpenCandy_14', N'Р—Р°РіСЂСѓР¶Р°РµС‚СЃСЏ _________')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2583, N'ru   ', N'OpenCandy_15', N'___________, РїСЂРѕРіСЂР°РјРјР°, СЂРµРєРѕРјРµРЅРґРѕРІР°РЅРЅР°СЏ ___________, СЃРµР№С‡Р°СЃ Р·Р°РіСЂСѓР¶Р°РµС‚СЃСЏ РїРѕ Р’Р°С€РµРјСѓ Р·Р°РїСЂРѕСЃСѓ. РњС‹ РґР°РґРёРј Р·РЅР°С‚СЊ, РєРѕРіРґР° РѕРЅР° Р±СѓРґРµС‚ РіРѕС‚РѕРІР° РґР»СЏ СѓСЃС‚Р°РЅРѕРІРєРё.')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2584, N'ru   ', N'OpenCandy_16', N'___________ РіРѕС‚РѕРІР° РґР»СЏ СѓСЃС‚Р°РЅРѕРІРєРё')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2585, N'ru   ', N'OpenCandy_17', N'___________ РїРѕР»РЅРѕСЃС‚СЊСЋ Р·Р°РіСЂСѓР¶РµРЅР°. РќР°Р¶РјРёС‚Рµ ''РЈСЃС‚Р°РЅРѕРІРєР°'' РґР»СЏ РЅР°С‡Р°Р»Р° РїСЂРѕС†РµСЃСЃР°.')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2586, N'ru   ', N'OpenCandy_18', N'___________ РёР· ___________ Р·Р°РіСЂСѓР¶РµРЅРѕ')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2587, N'ru   ', N'OpenCandy_19', N'РџСЂРё СЃРѕРґРµР№СЃС‚РІРёРё OpenCandy')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2588, N'ru   ', N'OpenCandy_20', N'Р”РѕРїРѕР»РЅРёС‚РµР»СЊРЅР°СЏ РёРЅС„РѕСЂРјР°С†РёСЏ РЅР° OpenCandy.com')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2589, N'ru   ', N'OpenCandy_21', N'РЈСЃС‚Р°РЅРѕРІРєР°')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2590, N'ru   ', N'OpenCandy_22', N'РЈСЃС‚Р°РЅРѕРІРєР° ___________')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2591, N'ru   ', N'OpenCandy_23', N'Р­С‚Рѕ РїСЂРµСЂРІС‘С‚ СѓСЃС‚Р°РЅРѕРІРєСѓ ___________\r\nР’С‹ РґРµР№СЃС‚РІРёС‚РµР»СЊРЅРѕ С…РѕС‚РёС‚Рµ РІС‹Р№С‚Рё?')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2592, N'ru   ', N'OpenCandy_24', N'РџР°СѓР·Р°')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2593, N'ru   ', N'OpenCandy_25', N'Р—Р°РіСЂСѓР·РєР° Р±С‹Р»Р° РїСЂРёРѕСЃС‚Р°РЅРѕРІР»РµРЅР°. РќР°Р¶РјРёС‚Рµ ''РџСЂРѕРґРѕР»Р¶РёС‚СЊ'' РґР»СЏ РІРѕР·РѕР±РЅРѕРІР»РµРЅРёСЏ.')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2594, N'ru   ', N'OpenCandy_26', N'РџСЂРѕРґРѕР»Р¶РёС‚СЊ')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2595, N'ru   ', N'OpenCandy_27', N'РЈСЃС‚Р°РЅРѕРІРєР°')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2596, N'ru   ', N'OpenCandy_28', N'РџСЂРёРѕСЃС‚Р°РЅРѕРІРёС‚СЊ Р·Р°РіСЂСѓР·РєСѓ')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2597, N'ru   ', N'OpenCandy_29', N'РџСЂРѕРґРѕР»Р¶РёС‚СЊ Р·Р°РіСЂСѓР·РєСѓ')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2598, N'ru   ', N'OpenCandy_30', N'РћС‚РјРµРЅРёС‚СЊ СѓСЃС‚Р°РЅРѕРІРєСѓ')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2599, N'ru   ', N'OpenCandy_31', N'Р’С‹Р±РµСЂРёС‚Рµ РїР°СЂР°РјРµС‚СЂС‹ СѓСЃС‚Р°РЅРѕРІРєРё')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2600, N'ru   ', N'OpenCandy_32', N'РЈСЃС‚Р°РЅРѕРІРєР° ___________')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2601, N'ru   ', N'OpenCandy_33', N'РќРµ СѓСЃС‚Р°РЅР°РІР»РёРІР°С‚СЊ')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2602, N'ru   ', N'OpenCandy_34', N'Р’С‹Р±РµСЂРёС‚Рµ РїР°СЂР°РјРµС‚СЂС‹ СѓСЃС‚Р°РЅРѕРІРєРё')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2603, N'ru   ', N'OpenCandy_35', N'______ СЂРµРєРѕРјРµРЅРґСѓРµРјР°СЏ РїСЂРѕРіСЂР°РјРјР°')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2604, N'ru   ', N'OpenCandy_36', N'Р’Р°С€Р° С‚РµРєСѓС‰Р°СЏ СѓСЃС‚Р°РЅРѕРІРєР° РЅРµ Р±СѓРґРµС‚ РїСЂРµСЂС‹РІР°С‚СЊСЃСЏ')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2605, N'ru   ', N'OpenCaptionsLanguage', N'РЇР·С‹Рє С‚РёС‚СЂРѕРІ')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2606, N'ru   ', N'OpenCaptionsPresent', N'РќР°Р»РёС‡РёРµ С‚РёС‚СЂРѕРІ')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2607, N'ru   ', N'OpenCaptionsType', N'РўРёРї С‚РёС‚СЂРѕРІ')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2608, N'ru   ', N'Options', N'РџР°СЂР°РјРµС‚СЂС‹')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2609, N'ru   ', N'Options_Hint', N'РќР°СЃС‚СЂРѕР№РєРё РїСЂРѕРіСЂР°РјРјС‹')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2610, N'ru   ', N'Original', N'РћСЂРёРіРёРЅР°Р»')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2611, N'ru   ', N'OriginalNetworkName', N'РћСЂРёРіРёРЅР°Р»СЊРЅРѕРµ РЅР°Р·РІР°РЅРёРµ СЃРµС‚Рё')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2612, N'ru   ', N'OriginalSourceForm', N'Р¤РѕСЂРјР°С‚ РѕСЂРёРіРёРЅР°Р»Р°')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2613, N'ru   ', N'OriginalSourceMedium', N'РќРѕСЃРёС‚РµР»СЊ РѕСЂРёРіРёРЅР°Р»Р°')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2614, N'ru   ', N'OriginalSourceMedium_ID', NULL)
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2615, N'ru   ', N'Originator', N'РРЅРёС†РёР°С‚РѕСЂ')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2616, N'ru   ', N'Other', N'РџСЂРѕС‡РµРµ')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2617, N'ru   ', N'OtherIdentifier', N'Р”СЂСѓРіРѕР№ РёРґРµРЅС‚РёС„РёРєР°С‚РѕСЂ')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2618, N'ru   ', N'OtherIdentifierType', N'РўРёРї РґСЂСѓРіРѕРіРѕ РёРґРµРЅС‚РёС„РёРєР°С‚РѕСЂР°')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2619, N'ru   ', N'Output', N'Р’С‹РІРѕРґ')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2620, N'ru   ', N'Output format', N'Р¤РѕСЂРјР°С‚ РІС‹РІРѕРґР°')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2621, N'ru   ', N'OverallBitRate', N'РћР±С‰РёР№ РїРѕС‚РѕРє')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2622, N'ru   ', N'OverallBitRate_Maximum', N'РњР°РєСЃРёРјР°Р»СЊРЅС‹Р№ РѕР±С‰РёР№ Р±РёС‚СЂРµР№С‚')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2623, N'ru   ', N'OverallBitRate_Minimum', N'РњРёРЅРёРјР°Р»СЊРЅС‹Р№ РѕР±С‰РёР№ Р±РёС‚СЂРµР№С‚')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2624, N'ru   ', N'OverallBitRate_Mode', N'Р РµР¶РёРј РѕР±С‰РµРіРѕ Р±РёС‚СЂРµР№С‚Р°')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2625, N'ru   ', N'OverallBitRate_Nominal', N'РќРѕРјРёРЅР°Р»СЊРЅС‹Р№ РѕР±С‰РёР№ Р±РёС‚СЂРµР№С‚')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2626, N'ru   ', N'PackageName', NULL)
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2627, N'ru   ', N'Part', N'Р§Р°СЃС‚СЊ')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2628, N'ru   ', N'Part_Count', N'РљРѕР»РёС‡РµСЃС‚РІРѕ С‡Р°СЃС‚РµР№')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2629, N'ru   ', N'PartNumber', N'РќРѕРјРµСЂ С‡Р°СЃС‚Рё')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2630, N'ru   ', N'PartTotal', N'Р’СЃРµРіРѕ С‡Р°СЃС‚РµР№')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2631, N'ru   ', N'Performer', N'РСЃРїРѕР»РЅРёС‚РµР»СЊ')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2632, N'ru   ', N'Period', N'РџРµСЂРёРѕРґ')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2633, N'ru   ', N'PodcastCategory', NULL)
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2634, N'ru   ', N'Phone', N'РўРµР»РµС„РѕРЅ')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2635, N'ru   ', N'PictureRatio', N'РР·РѕР±СЂР°Р¶РµРЅРёРµ СЂР°РґРёРѕ')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2636, N'ru   ', N'PixelAspectRatio', N'РџСЂРѕРїРѕСЂС†РёРё РїРёРєСЃРµР»СЏ')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2637, N'ru   ', N'PixelAspectRatio_CleanAperture', NULL)
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2638, N'ru   ', N'PixelAspectRatio_Original', N'РџСЂРѕРїРѕСЂС†РёРё РїРёРєСЃРµР»СЏ РІ РѕСЂРёРіРёРЅР°Р»Рµ')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2639, N'ru   ', N'PlayCounter', N'РЎС‡С‘С‚С‡РёРє РІРѕСЃРїСЂРѕРёР·РІРµРґРµРЅРёСЏ')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2640, N'ru   ', N'Played_Count', N'Р’РѕСЃРїСЂРѕРёР·РІРµРґРµРЅРѕ СЂР°Р·')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2641, N'ru   ', N'Played_First_Date', N'РџРµСЂРІРѕРµ РІРѕСЃРїСЂРѕРёР·РІРµРґРµРЅРёРµ')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2642, N'ru   ', N'Played_Last_Date', N'РџРѕСЃР»РµРґРЅРµРµ РІРѕСЃРїСЂРѕРёР·РІРµРґРµРЅРёРµ')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2643, N'ru   ', N'PlayTime', N'Р”Р»РёС‚РµР»СЊРЅРѕСЃС‚СЊ')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2644, N'ru   ', N'Position', N'РџРѕР»РѕР¶РµРЅРёРµ')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2645, N'ru   ', N'Position_Total', N'Р’СЃРµРіРѕ')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2646, N'ru   ', N'Preferences', N'РќР°СЃС‚СЂРѕР№РєРё')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2647, N'ru   ', N'PrimaryAudioLanguage', N'РћСЃРЅРѕРІРЅРѕР№ СЏР·С‹Рє Р°СѓРґРёРѕ')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2648, N'ru   ', N'Producer', N'РџСЂРѕРґСЋСЃРµСЂ')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2649, N'ru   ', N'ProductionDesigner', N'РҐСѓРґРѕР¶РЅРёРє-РїРѕСЃС‚Р°РЅРѕРІС‰РёРє')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2650, N'ru   ', N'ProductionNumber', N'РќРѕРјРµСЂ РїРѕСЃС‚Р°РЅРѕРІРєРё')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2651, N'ru   ', N'ProductionStudio', N'РЎС‚СѓРґРёСЏ-РїСЂРѕРёР·РІРѕРґРёС‚РµР»СЊ')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2652, N'ru   ', N'ProductPlacement', N'Р Р°Р·РјРµС‰РµРЅРёРµ РїРѕСЃС‚Р°РЅРѕРІРєРё')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2653, N'ru   ', N'ProgrammeHasText', N'РўРµРєСЃС‚ РІ РїСЂРѕРіСЂР°РјРјРµ')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2654, N'ru   ', N'ProgrammeTextLanguage', N'РЇР·С‹Рє С‚РµРєСЃС‚Р° РІ РїСЂРѕРіСЂР°РјРјРµ')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2655, N'ru   ', N'ProgrammeTitle', N'Р—Р°РіРѕР»РѕРІРѕРє РїСЂРѕРіСЂР°РјРјС‹')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2656, N'ru   ', N'Publisher', N'РР·РґР°С‚РµР»СЊ')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2657, N'ru   ', N'Purchased_Date', N'Р”Р°С‚Р° РїРѕРєСѓРїРєРё')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2658, N'ru   ', N'Quote character', N'РЎРёРјРІРѕР» РєР°РІС‹С‡РµРє')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2659, N'ru   ', N'RadioStation', N'Р Р°РґРёРѕСЃС‚Р°РЅС†РёСЏ')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2660, N'ru   ', N'Rating', N'РћС†РµРЅРєР°')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2661, N'ru   ', N'Recorded_Date', N'Р”Р°С‚Р° Р·Р°РїРёСЃРё')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2662, N'ru   ', N'Recorded_Location', N'РњРµСЃС‚Рѕ Р·Р°РїРёСЃРё')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2663, N'ru   ', N'Released_Date', N'Р”Р°С‚Р° РІС‹РїСѓСЃРєР°')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2664, N'ru   ', N'RemixedBy', N'Р РµРјРёРєСЃ РІС‹РїРѕР»РЅРёР»')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2665, N'ru   ', N'ReplayGain_Gain', N'РќРѕСЂРјР°Р»РёР·Р°С‚РѕСЂ Р·РІСѓРєР°')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2666, N'ru   ', N'ReplayGain_Peak', N'РџРёРє РЅРѕСЂРјР°Р»РёР·Р°С‚РѕСЂ Р·РІСѓРєР°')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2667, N'ru   ', N'Resolution', N'Р Р°Р·СЂРµС€РµРЅРёРµ')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2668, N'ru   ', N's', N'СЃ.')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2669, N'ru   ', N'SamplesPerFrame', NULL)
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2670, N'ru   ', N'SamplingCount', N'РљРѕР»РёС‡РµСЃС‚РІРѕ РѕР±СЂР°Р·С†РѕРІ')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2671, N'ru   ', N'SamplingRate', N'Р§Р°СЃС‚РѕС‚Р°')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2672, N'ru   ', N'Save', N'РЎРѕС…СЂР°РЅРёС‚СЊ')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2673, N'ru   ', N'ScanOrder', N'РџРѕСЂСЏРґРѕРє СЂР°Р·РІС‘СЂС‚РєРё')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2674, N'ru   ', N'ScanOrder_Original', N'РџРѕСЂСЏРґРѕРє СЂР°Р·РІС‘СЂС‚РєРё РІ РѕСЂРёРіРёРЅР°Р»Рµ')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2675, N'ru   ', N'ScanOrder_Stored', N'РЎРѕС…СЂР°РЅС‘РЅРЅС‹Р№ РїРѕСЂСЏРґРѕРє СЂР°Р·РІС‘СЂС‚РєРё')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2676, N'ru   ', N'ScanOrder_StoredDisplayedInverted', N'РџРѕСЂСЏРґРѕРє СЂР°Р·РІС‘СЂС‚РєРё, СЃРѕС…СЂР°РЅС‘РЅРЅС‹Р№ РІ РѕР±СЂР°С‚РЅРѕРј РїРѕСЂСЏРґРєРµ')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2677, N'ru   ', N'ScanOrder_StoreMethod', N'РњРµС‚РѕРґ СЃРѕС…СЂР°РЅРµРЅРёСЏ РїРѕСЂСЏРґРєР° СЂР°Р·РІС‘СЂС‚РєРё')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2678, N'ru   ', N'ScanType', N'РўРёРї СЂР°Р·РІС‘СЂС‚РєРё')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2679, N'ru   ', N'ScanType_Original', N'РўРёРї СЂР°Р·РІС‘СЂС‚РєРё РІ РѕСЂРёРіРёРЅР°Р»Рµ')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2680, N'ru   ', N'ScanType_StoreMethod', N'РњРµС‚РѕРґ СЃРѕС…СЂР°РЅРµРЅРёСЏ С‚РёРїР° СЂР°Р·РІС‘СЂС‚РєРё')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2681, N'ru   ', N'ScreenplayBy', N'РЎС†РµРЅР°СЂРёСЃС‚')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2682, N'ru   ', N'Season', N'РЎРµР·РѕРЅ')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2683, N'ru   ', N'SecondaryAudioLanguage', N'Р’С‚РѕСЂРѕР№ СЏР·С‹Рє Р°СѓРґРёРѕ')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2684, N'ru   ', N'see below', N'СЃРј. РЅРёР¶Рµ')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2685, N'ru   ', N'Send HeaderFile', N'РћС‚РїСЂР°РІСЊС‚Рµ РјРЅРµ Р·Р°РіРѕР»РѕРІРѕРє СЌС‚РѕРіРѕ С„Р°Р№Р»Р° РЅР° http://sourceforge.net/projects/mediainfo/ (Р Р°Р·РґРµР» РѕС€РёР±РѕРє)')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2686, N'ru   ', N'Separator_Columns', N'Р Р°Р·РґРµР»РёС‚РµР»СЊ СЃС‚РѕР»Р±С†РѕРІ')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2687, N'ru   ', N'Separator_Lines', N'Р Р°Р·РґРµР»РёС‚РµР»СЊ СЃС‚СЂРѕРє')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2688, N'ru   ', N'SeriesTitle', N'Р—Р°РіРѕР»РѕРІРѕРє СЃРµСЂРёР№')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2689, N'ru   ', N'ServiceChannel', N'РќРѕРјРµСЂ РєР°РЅР°Р»Р° СЃРµСЂРІРёСЃР°')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2690, N'ru   ', N'ServiceKind', NULL)
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2691, N'ru   ', N'ServiceName', N'РќР°Р·РІР°РЅРёРµ СЃРµСЂРІРёСЃР°')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2692, N'ru   ', N'ServiceProvider', N'РџРѕСЃС‚Р°РІС‰РёРє СЃРµСЂРІРёСЃР°')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2693, N'ru   ', N'ServiceType', N'РўРёРї СЃРµСЂРІРёСЃР°')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2694, N'ru   ', N'Set', N'РЈСЃС‚Р°РЅРѕРІРєР°')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2695, N'ru   ', N'Set_Count', N'РљРѕР»РёС‡РµСЃС‚РІРѕ СѓСЃС‚Р°РЅРѕРІРѕРє')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2696, N'ru   ', N'Setup', N'РќР°СЃС‚СЂРѕР№РєР°')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2697, N'ru   ', N'Sharpness', N'Р РµР·РєРѕСЃС‚СЊ')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2698, N'ru   ', N'Sheet', N'РўР°Р±Р»РёС†Р°')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2699, N'ru   ', N'Sheet (Complete)', N'РўР°Р±Р»РёС†Р° (РїРѕР»РЅР°СЏ)')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2700, N'ru   ', N'Shell extension', N'Р Р°СЃС€РёСЂРµРЅРёРµ РџСЂРѕРІРѕРґРЅРёРєР° (РїСѓРЅРєС‚ РІ РјРµРЅСЋ РїРѕ РїСЂР°РІРѕР№ РєРЅРѕРїРєРµ)')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2701, N'ru   ', N'Shell extension, folder', N'Р Р°СЃС€РёСЂРµРЅРёРµ РџСЂРѕРІРѕРґРЅРёРєР° РґР»СЏ РїР°РїРѕРє')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2702, N'ru   ', N'Shell InfoTip', N'Р’СЃРїР»С‹РІР°СЋС‰Р°СЏ РїРѕРґСЃРєР°Р·РєР° РІ РџСЂРѕРІРѕРґРЅРёРєРµ')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2703, N'ru   ', N'ShimName', N'РќР°Р·РІР°РЅРёРµ РїСЂРѕРєР»Р°РґРєРё')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2704, N'ru   ', N'ShimVersion', N'Р’РµСЂСЃРёСЏ РїСЂРѕРєР»Р°РґРєРё')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2705, N'ru   ', N'Show menu', N'РџРѕРєР°Р·С‹РІР°С‚СЊ РјРµРЅСЋ')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2706, N'ru   ', N'Show toolbar', N'РџРѕРєР°Р·С‹РІР°С‚СЊ РїР°РЅРµР»СЊ')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2707, N'ru   ', N'SigningPresent', N'РќР°Р»РёС‡РёРµ РїРѕРґРїРёСЃРё')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2708, N'ru   ', N'SignLanguage', N'РЇР·С‹Рє РїРѕРґРїРёСЃРё')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2709, N'ru   ', N'Sort', N'РЎРѕСЂС‚РёСЂРѕРІР°С‚СЊ РїРѕ')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2710, N'ru   ', N'SoundEngineer', N'Р—РІСѓРєРѕСЂРµР¶РёСЃСЃС‘СЂ')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2711, N'ru   ', N'Source', N'РћСЂРёРіРёРЅР°Р»')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2712, N'ru   ', N'Source_Duration', N'РџСЂРѕРґРѕР»Р¶РёС‚РµР»СЊРЅРѕСЃС‚СЊ РѕСЂРёРіРёРЅР°Р»Р°')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2713, N'ru   ', N'Source_FrameCount', N'РљРѕР»РёС‡РµСЃС‚РІРѕ РєР°РґСЂРѕРІ РѕСЂРёРіРёРЅР°Р»Р°')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2714, N'ru   ', N'Source_SamplingCount', N'РљРѕР»РёС‡РµСЃС‚РІРѕ РїСЂРёРјРµСЂРѕРІ РѕСЂРёРіРёРЅР°Р»Р°')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2715, N'ru   ', N'Source_StreamSize', N'Р Р°Р·РјРµСЂ РїРѕС‚РѕРєР° РѕСЂРёРіРёРЅР°Р»Р°')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2716, N'ru   ', N'Source_StreamSize_Encoded', N'Р—Р°РєРѕРґРёСЂРѕРІР°РЅРЅС‹Р№ СЂР°Р·РјРµСЂ РїРѕС‚РѕРєР° РѕСЂРёРіРёРЅР°Р»Р°')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2717, N'ru   ', N'Standard', N'РЎС‚Р°РЅРґР°СЂС‚ РІРµС‰Р°РЅРёСЏ')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2718, N'ru   ', N'StoreMethod_InterleavedFields', N'Р§РµСЂРµРґСѓСЋС‰РёРµСЃСЏ РїРѕР»СЏ')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2719, N'ru   ', N'StoreMethod_SeparatedFields', N'Р Р°Р·РґРµР»СЊРЅС‹Рµ РїРѕР»СЏ')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2720, N'ru   ', N'StoreMethod_SeparatedFields_1', N'Р Р°Р·РґРµР»СЊРЅС‹Рµ РїРѕР»СЏ (1-РѕРµ РїРѕР»Рµ РІ Р±Р»РѕРєРµ)')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2721, N'ru   ', N'StoreMethod_SeparatedFields_2', N'Р Р°Р·РґРµР»СЊРЅС‹Рµ РїРѕР»СЏ (2-РѕРµ РїРѕР»Рµ РІ Р±Р»РѕРєРµ)')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2722, N'ru   ', N'Stream', N'РџРѕС‚РѕРє')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2723, N'ru   ', N'Stream_MoreInfo', N'Р”РѕРїРѕР»РЅРёС‚РµР»СЊРЅР°СЏ РёРЅС„РѕСЂРјР°С†РёСЏ Рѕ РїРѕС‚РѕРєРµ')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2724, N'ru   ', N'StreamCount', N'РљРѕР»РёС‡РµСЃС‚РІРѕ РїРѕС‚РѕРєРѕРІ С‚Р°РєРѕРіРѕ С‚РёРїР°')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2725, N'ru   ', N'StreamID', N'РРґРµРЅС‚РёС„РёРєР°С‚РѕСЂ РїРѕС‚РѕРєР°')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2726, N'ru   ', N'StreamKind', N'РўРёРї РїРѕС‚РѕРєР°')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2727, N'ru   ', N'StreamKindID', N'РРґРµРЅС‚РёС„РёРєР°С‚РѕСЂ С‚РёРїР° РїРѕС‚РѕРєР°')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2728, N'ru   ', N'StreamKindPos', N'РџРѕР·РёС†РёСЏ РёРґРµРЅС‚РёС„РёРєР°С‚РѕСЂР° С‚РёРїР° РїРѕС‚РѕРєР°')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2729, N'ru   ', N'StreamSize', N'Р Р°Р·РјРµСЂ РїРѕС‚РѕРєР°')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2730, N'ru   ', N'StreamSize_Demuxed', NULL)
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2731, N'ru   ', N'StreamSize_Encoded', N'Р—Р°РєРѕРґРёСЂРѕРІР°РЅРЅС‹Р№ СЂР°Р·РјРµСЂ РїРѕС‚РѕРєР°')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2732, N'ru   ', N'StreamSize_Proportion', N'РџСЂРѕРїРѕСЂС†РёРё РїРѕС‚РѕРєР°')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2733, N'ru   ', N'Subject', N'РўРµРјР°')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2734, N'ru   ', N'SubTrack', N'РџРѕРґРїРѕС‚РѕРє')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2735, N'ru   ', N'Summary', N'РЎРІРѕРґРєР°')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2736, N'ru   ', N'Supported formats', N'РџРѕРґРґРµСЂР¶РёРІР°РµРјС‹Рµ С„РѕСЂРјР°С‚С‹')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2737, N'ru   ', N'Supported?', N'РџРѕРґРґРµСЂР¶РёРІР°РµС‚СЃСЏ?')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2738, N'ru   ', N'Synopsis', N'РЎРІРѕРґРєР°')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2739, N'ru   ', N'SystemId', N'РРґРµРЅС‚РёС„РёРєР°С‚РѕСЂ')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2740, N'ru   ', N'Tagged_Application', N'РџРѕРјРµС‚РёРІС€Р°СЏ РїСЂРѕРіСЂР°РјРјР°')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2741, N'ru   ', N'Tagged_Date', N'Р”Р°С‚Р° РїРѕРјРµС‚РєРё')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2742, N'ru   ', N'Technician', N'РўРµС…РЅРёРє')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2743, N'ru   ', N'TermsOfUse', N'РЈСЃР»РѕРІРёСЏ РёСЃРїРѕР»СЊР·РѕРІР°РЅРёСЏ')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2744, N'ru   ', N'TertiaryAudioLanguage', N'РўСЂРµС‚РёР№ СЏР·С‹Рє Р°СѓРґРёРѕ')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2745, N'ru   ', N'Text', N'РўРµРєСЃС‚')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2746, N'ru   ', N'Text - Custom', N'РўРµРєСЃС‚ - РІС‹Р±РѕСЂРѕС‡РЅРѕ')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2747, N'ru   ', N'Text (HTML)', N'РўРµРєСЃС‚ (HTML)')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2748, N'ru   ', N'Text stream(s)', N'РўРµРєСЃС‚РѕРІС‹Рµ РїРѕС‚РѕРєРё')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2749, N'ru   ', N'Text streams', N'РўРµРєСЃС‚РѕРІС‹Рµ РїРѕС‚РѕРєРё')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2750, N'ru   ', N'Text_Codec_List', N'РўРµРєСЃС‚РѕРІС‹Рµ РєРѕРґРµРєРё')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2751, N'ru   ', N'Text_No', N'РќРµС‚ С‚РµРєСЃС‚Р°')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2752, N'ru   ', N'Text1', N'РџРµСЂРІС‹Р№ С‚РµРєСЃС‚РѕРІС‹Р№ РїРѕС‚РѕРє')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2753, N'ru   ', N'Text2', N'Р’С‚РѕСЂРѕР№ С‚РµРєСЃС‚РѕРІС‹Р№ РїРѕС‚РѕРє')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2754, N'ru   ', N'Text3', N'РўСЂРµС‚РёР№ С‚РµРєСЃС‚РѕРІС‹Р№ РїРѕС‚РѕРє')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2755, N'ru   ', N'TextCount', N'РљРѕР»РёС‡РµСЃС‚РІРѕ С‚РµРєСЃС‚РѕРІС‹С… РїРѕС‚РѕРєРѕРІ')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2756, N'ru   ', N'TextlessElementsExist', N'РќР°Р»РёС‡РёРµ Р±РµР·С‚РµРєСЃС‚РІРѕРІС‹С… СЌР»РµРјРµРЅС‚РѕРІ')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2757, N'ru   ', N'ThanksTo', N'Р‘Р»Р°РіРѕРґР°СЂРЅРѕСЃС‚Рё')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2758, N'ru   ', N'Thousands separator', N'Р Р°Р·РґРµР»РёС‚РµР»СЊ С‚С‹СЃСЏС‡')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2759, N'ru   ', N'TimeCode', N'Р’СЂРµРјРµРЅРЅРѕР№ РєРѕРґ')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2760, N'ru   ', N'TimeCode_FirstFrame', N'Р’СЂРµРјРµРЅРЅРѕР№ РєРѕРґ РїРµСЂРІРѕРіРѕ РєР°РґСЂР°')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2761, N'ru   ', N'TimeCode_Settings', N'РџР°СЂР°РјРµС‚СЂС‹ РІСЂРµРјРµРЅРЅРѕРіРѕ РєРѕРґР°')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2762, N'ru   ', N'TimeCode_Source', N'РћСЂРёРіРёРЅР°Р» РІСЂРµРјРµРЅРЅРѕРіРѕ РєРѕРґР°')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2763, N'ru   ', N'TimeCode_Striped', N'Р’СЂРµРјРµРЅРЅРѕР№ РєРѕРґ, С‡РµСЂРµРґСѓСЋС‰РёР№СЃСЏ')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2764, N'ru   ', N'TimeStamp', N'Р’СЂРµРјРµРЅРЅР°СЏ РјРµС‚РєР°')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2765, N'ru   ', N'TimeZone', N'Р§Р°СЃРѕРІРѕР№ РїРѕСЏСЃ')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2766, N'ru   ', N'Title', N'Р—Р°РіРѕР»РѕРІРѕРє')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2767, N'ru   ', N'Title_More', N'Р—Р°РіРѕР»РѕРІРѕРє, РґРѕРїРѕР»РЅРёС‚РµР»СЊРЅРѕ')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2768, N'ru   ', N'Total', N'Р’СЃРµРіРѕ')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2769, N'ru   ', N'TotalNumberOfParts', N'РћР±С‰РµРµ РєРѕР»РёС‡РµСЃС‚РІРѕ С‡Р°СЃС‚РµР№')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2770, N'ru   ', N'TotalProgrammeDuration', N'РћР±С‰Р°СЏ РїСЂРѕРґРѕР»Р¶РёС‚РµР»СЊРЅРѕСЃС‚СЊ РїСЂРѕРіСЂР°РјРјС‹')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2771, N'ru   ', N'Track', N'РўСЂРµРє')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2772, N'ru   ', N'Track_Count', N'РљРѕР»РёС‡РµСЃС‚РІРѕ С‚СЂРµРєРѕРІ')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2773, N'ru   ', N'transfer_characteristics', N'РҐР°СЂР°РєС‚РµСЂРёСЃС‚РёРєРё С‚СЂР°РЅСЃС„РµСЂР°')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2774, N'ru   ', N'Translator', N'РџРµСЂРµРІРѕРґС‡РёРє')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2775, N'ru   ', N'Tree', N'Р”РµСЂРµРІРѕ')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2776, N'ru   ', N'Tree & Text', N'Р”РµСЂРµРІРѕ Рё С‚РµРєСЃС‚')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2777, N'ru   ', N'Type', N'РўРёРї')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2778, N'ru   ', N'UniqueID', N'РЈРЅРёРєР°Р»СЊРЅС‹Р№ РёРґРµРЅС‚РёС„РёРєР°С‚РѕСЂ')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2779, N'ru   ', N'Unknown', N'РќРµРёР·РІРµСЃС‚РЅРѕ')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2780, N'ru   ', N'Url', N'РЎСЃС‹Р»РєР°')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2781, N'ru   ', N'Video', N'Р’РёРґРµРѕ')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2782, N'ru   ', N'Video stream(s)', N'Р’РёРґРµРѕРїРѕС‚РѕРєРё')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2783, N'ru   ', N'Video_Codec_List', N'Р’РёРґРµРѕРєРѕРґРµРєРё')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2784, N'ru   ', N'Video_Delay', N'Р—Р°РґРµСЂР¶РєР° РІРёРґРµРѕ')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2785, N'ru   ', N'Video_No', N'РќРµС‚ РІРёРґРµРѕ')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2786, N'ru   ', N'Video0_Delay', N'Р—Р°РґРµСЂР¶РєР° РІРёРґРµРѕ')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2787, N'ru   ', N'Video1', N'РџРµСЂРІС‹Р№ РІРёРґРµРѕРїРѕС‚РѕРє')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2788, N'ru   ', N'VideoComments', N'Р’РёРґРµРѕ РєРѕРјРјРµРЅС‚Р°СЂРёРё')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2789, N'ru   ', N'VideoCount', N'РљРѕР»РёС‡РµСЃС‚РІРѕ РІРёРґРµРѕРїРѕС‚РѕРєРѕРІ')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2790, N'ru   ', N'View', N'Р’РёРґ')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2791, N'ru   ', N'View_Hint', N'РР·РјРµРЅРёС‚Рµ РѕС‚РЅРѕС€РµРЅРёРµ Рє РїСЂРѕСЃРјРѕС‚СЂСѓ РёРЅС„РѕСЂРјР°С†РёРё')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2792, N'ru   ', N'Warning : more streams in the files', N'Р’РЅРёРјР°РЅРёРµ: РІ С„Р°Р№Р»Р°С… РµСЃС‚СЊ РµС‰С‘ РїРѕС‚РѕРєРё')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2793, N'ru   ', N'Web', N'РЎР°Р№С‚')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2794, N'ru   ', N'WebSite_Audio', N'РЎР°Р№С‚ Р°СѓРґРёРѕРєРѕРґРµРєР°')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2795, N'ru   ', N'WebSite_Audio_More', N'РџРµСЂРµР№С‚Рё РЅР° СЃР°Р№С‚ (%Url%) РґР»СЏ РїРѕРёСЃРєР° СЌС‚РѕРіРѕ Р°СѓРґРёРѕРєРѕРґРµРєР°')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2796, N'ru   ', N'WebSite_General', N'РџРµСЂРµР№С‚Рё РЅР° СЃР°Р№С‚ РїСЂРѕРёРіСЂС‹РІР°С‚РµР»СЏ РґР»СЏ СЌС‚РѕРіРѕ С„Р°Р№Р»Р°')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2797, N'ru   ', N'WebSite_General_More', N'РџРµСЂРµР№С‚Рё РЅР° СЃР°Р№С‚ РїСЂРѕРёРіСЂС‹РІР°С‚РµР»СЏ РґР»СЏ СЌС‚РѕРіРѕ С„Р°Р№Р»Р°')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2798, N'ru   ', N'WebSite_Text', N'РЎР°Р№С‚ С‚РµРєСЃС‚РѕРІРѕРіРѕ РєРѕРґРµРєР°')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2799, N'ru   ', N'WebSite_Text_More', N'РџРµСЂРµР№С‚Рё РЅР° СЃР°Р№С‚ (%Url%) РґР»СЏ РїРѕРёСЃРєР° СЌС‚РѕРіРѕ С‚РµРєСЃС‚РѕРІРѕРіРѕ РєРѕРґРµРєР°')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2800, N'ru   ', N'WebSite_Url', N'http://MediaArea.net/MediaInfo')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2801, N'ru   ', N'WebSite_Video', N'РЎР°Р№С‚ РІРёРґРµРѕРєРѕРґРµРєР°')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2802, N'ru   ', N'WebSite_Video_More', N'РџРµСЂРµР№С‚Рё РЅР° СЃР°Р№С‚ (%Url%) РґР»СЏ РїРѕРёСЃРєР° СЌС‚РѕРіРѕ РІРёРґРµРѕРєРѕРґРµРєР°')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2803, N'ru   ', N'Width', N'РЁРёСЂРёРЅР°')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2804, N'ru   ', N'Width_CleanAperture', NULL)
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2805, N'ru   ', N'Width_Original', N'РЁРёСЂРёРЅР° РѕСЂРёРіРёРЅР°Р»Р°')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2806, N'ru   ', N'WriteMe', N'РќР°РїРёСЃР°С‚СЊ Р°РІС‚РѕСЂСѓ')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2807, N'ru   ', N'WriteToTranslator', N'РќР°РїРёСЃР°С‚СЊ РїРµСЂРµРІРѕРґС‡РёРєСѓ')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2808, N'ru   ', N'Written_Date', N'Р”Р°С‚Р° Р·Р°РїРёСЃРё')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2809, N'ru   ', N'Written_Location', N'РњРµСЃС‚Рѕ Р·Р°РїРёСЃРё')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2810, N'ru   ', N'WrittenBy', N'Р—Р°РїРёСЃСЊ РїСЂРѕРёР·РІС‘Р»')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2811, N'ru   ', N'Yes', N'Р”Р°')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2812, N'ru   ', N'Your system', N'Р’Р°С€Р° СЃРёСЃС‚РµРјР°')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2813, N'ru   ', N'ZZ_Automatic_Percent', N'98')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2814, N'ru   ', N'ZZ_AutomaticLanguage_Percent', N'98')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2815, N'en   ', N'Author_Email', N'Info@MediaArea.net')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2816, N'en   ', N'Author_Name', N'Zen')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2817, N'en   ', N'Author_OldNames', N'Initial translator')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2818, N'en   ', N'Language_Name', N'English')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2819, N'en   ', N'Config_Text_ColumnSize', N'40')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2820, N'en   ', N'Config_Text_Separator', N':')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2821, N'en   ', N'Config_Text_NumberTag', N'#')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2822, N'en   ', N'Config_Text_FloatSeparator', N'.')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2823, N'en   ', N'Config_Text_ThousandsSeparator', N'')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2824, N'en   ', N'audio stream1', N'audio stream')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2825, N'en   ', N'audio stream2', N'audio streams')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2826, N'en   ', N'audio stream3', N'audio streams')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2827, N'en   ', N'bit1', N'bit')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2828, N'en   ', N'bit2', N'bits')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2829, N'en   ', N'bit3', N'bits')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2830, N'en   ', N'bps', N'b/s')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2831, N'en   ', N'Bps', N'B/s')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2832, N'en   ', N'Byte1', N'Byte')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2833, N'en   ', N'Byte2', N'Bytes')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2834, N'en   ', N'Byte3', N'Bytes')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2835, N'en   ', N'channel1', N'channel')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2836, N'en   ', N'channel2', N'channels')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2837, N'en   ', N'channel3', N'channels')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2838, N'en   ', N'chapter1', N'chapter')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2839, N'en   ', N'chapter2', N'chapters')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2840, N'en   ', N'chapter3', N'chapters')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2841, N'en   ', N'chapters stream1', N'chapters stream')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2842, N'en   ', N'chapters stream2', N'chapters streams')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2843, N'en   ', N'chapters stream3', N'chapters streams')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2844, N'en   ', N'character1', N'character')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2845, N'en   ', N'character2', N'characters')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2846, N'en   ', N'character3', N'characters')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2847, N'en   ', N'day1', N'day')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2848, N'en   ', N'day2', N'days')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2849, N'en   ', N'day3', N'days')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2850, N'en   ', N'dB1', N'dB')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2851, N'en   ', N'dB2', N'dB')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2852, N'en   ', N'dB3', N'dB')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2853, N'en   ', N'file1', N'file')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2854, N'en   ', N'file2', N'files')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2855, N'en   ', N'file3', N'files')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2856, N'en   ', N'fps1', N'FPS')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2857, N'en   ', N'fps2', N'FPS')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2858, N'en   ', N'fps3', N'FPS')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2859, N'en   ', N'frame1', N'frame')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2860, N'en   ', N'frame2', N'frames')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2861, N'en   ', N'frame3', N'frames')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2862, N'en   ', N'GB', N'GB')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2863, N'en   ', N'Gb', N'Gb')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2864, N'en   ', N'Gbps', N'Gb/s')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2865, N'en   ', N'GBps', N'GB/s')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2866, N'en   ', N'GHz', N'GHz')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2867, N'en   ', N'GiB', N'GiB')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2868, N'en   ', N'GibiByte1', N'GibiBytes')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2869, N'en   ', N'GibiByte2', N'GibiBytes')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2870, N'en   ', N'GibiByte3', N'GibiBytes')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2871, N'en   ', N'GiBps', N'GiB/s')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2872, N'en   ', N'GigaBit1', N'GigaBit')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2873, N'en   ', N'GigaBit2', N'GigaBits')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2874, N'en   ', N'GigaBit3', N'GigaBits')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2875, N'en   ', N'GigaByte1', N'GigaByte')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2876, N'en   ', N'GigaByte2', N'GigaBytes')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2877, N'en   ', N'GigaByte3', N'GigaBytes')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2878, N'en   ', N'hour1', N'hour')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2879, N'en   ', N'hour2', N'hours')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2880, N'en   ', N'hour3', N'hours')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2881, N'en   ', N'Hz', N'Hz')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2882, N'en   ', N'image stream1', N'image stream')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2883, N'en   ', N'image stream2', N'image streams')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2884, N'en   ', N'image stream3', N'image streams')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2885, N'en   ', N'KB', N'kB')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2886, N'en   ', N'Kb', N'kb')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2887, N'en   ', N'KBps', N'kB/s')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2888, N'en   ', N'Kbps', N'kb/s')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2889, N'en   ', N'KHz', N'kHz')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2890, N'en   ', N'KiB', N'KiB')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2891, N'en   ', N'KibiBit1', N'KibiBit')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2892, N'en   ', N'KibiBit2', N'KibiBits')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2893, N'en   ', N'KibiBit3', N'KibiBits')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2894, N'en   ', N'KibiByte1', N'KibiByte')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2895, N'en   ', N'KibiByte2', N'KibiBytes')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2896, N'en   ', N'KibiByte3', N'KibiBytes')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2897, N'en   ', N'KiBps', N'KiB/s')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2898, N'en   ', N'KiloBit1', N'KiloBit')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2899, N'en   ', N'KiloBit2', N'KiloBits')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2900, N'en   ', N'KiloBit3', N'KiloBits')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2901, N'en   ', N'KiloByte1', N'KiloByte')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2902, N'en   ', N'KiloByte2', N'KiloBytes')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2903, N'en   ', N'KiloByte3', N'KiloBytes')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2904, N'en   ', N'MB', N'MB')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2905, N'en   ', N'Mb', N'Mb')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2906, N'en   ', N'Mbps', N'Mb/s')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2907, N'en   ', N'MBps', N'MebiBytes')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2908, N'en   ', N'MebiBit1', N'MebiBit')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2909, N'en   ', N'MebiBit2', N'MebiBits')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2910, N'en   ', N'MebiBit3', N'MebiBits')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2911, N'en   ', N'MebiByte1', N'MebiByte')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2912, N'en   ', N'MebiByte2', N'MebiBytes')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2913, N'en   ', N'MebiByte3', N'MebiBytes')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2914, N'en   ', N'MegaBit1', N'MegaBit')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2915, N'en   ', N'MegaBit2', N'MegaBits')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2916, N'en   ', N'MegaBit3', N'MegaBits')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2917, N'en   ', N'MegaByte1', N'MegaByte')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2918, N'en   ', N'MegaByte2', N'MegaBytes')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2919, N'en   ', N'MegaByte3', N'MegaBytes')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2920, N'en   ', N'MHz', N'MHz')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2921, N'en   ', N'MiB', N'MiB')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2922, N'en   ', N'Mib', N'Mib')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2923, N'en   ', N'MiBps', N'MiB/s')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2924, N'en   ', N'millisecond1', N'millisecond')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2925, N'en   ', N'millisecond2', N'milliseconds')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2926, N'en   ', N'millisecond3', N'milliseconds')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2927, N'en   ', N'minute1', N'minute')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2928, N'en   ', N'minute2', N'minutes')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2929, N'en   ', N'minute3', N'minutes')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2930, N'en   ', N'month1', N'month')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2931, N'en   ', N'month2', N'months')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2932, N'en   ', N'month3', N'months')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2933, N'en   ', N'pixel1', N'pixel')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2934, N'en   ', N'pixel2', N'pixels')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2935, N'en   ', N'pixel3', N'pixels')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2936, N'en   ', N'second1', N'second')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2937, N'en   ', N'second2', N'seconds')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2938, N'en   ', N'second3', N'seconds')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2939, N'en   ', N'text stream1', N'text stream')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2940, N'en   ', N'text stream2', N'text streams')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2941, N'en   ', N'text stream3', N'text streams')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2942, N'en   ', N'video frames1', N'video frame')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2943, N'en   ', N'video frames2', N'video frames')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2944, N'en   ', N'video frames3', N'video frames')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2945, N'en   ', N'video stream1', N'video stream')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2946, N'en   ', N'video stream2', N'video streams')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2947, N'en   ', N'video stream3', N'video streams')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2948, N'en   ', N'warppoint0', N'No warppoints')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2949, N'en   ', N'warppoint1', N'warppoint')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2950, N'en   ', N'warppoint2', N'warppoints')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2951, N'en   ', N'warppoint3', N'warppoints')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2952, N'en   ', N'week1', N'week')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2953, N'en   ', N'week2', N'weeks')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2954, N'en   ', N'week3', N'weeks')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2955, N'en   ', N'year1', N'year')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2956, N'en   ', N'year2', N'years')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2957, N'en   ', N'year3', N'years')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2958, N'en   ', N',', N',')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2959, N'en   ', N':', N':')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2960, N'en   ', N'3D', N'3D')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2961, N'en   ', N'3DType', N'3D Type')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2962, N'en   ', N'About', N'About')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2963, N'en   ', N'About_Hint', N'How to contact me and find last version')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2964, N'en   ', N'Accompaniment', N'Accompaniment')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2965, N'en   ', N'ActiveFormatDescription', N'Active Format Description')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2966, N'en   ', N'ActiveFormatDescription_MuxingMode', N'Active Format Description, Muxing mode')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2967, N'en   ', N'Actor', N'Actor')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2968, N'en   ', N'Actor_Character', N'Character played')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2969, N'en   ', N'Added_Date', N'Added date')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2970, N'en   ', N'Address', N'Address')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2971, N'en   ', N'Advanced', N'Advanced')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2972, N'en   ', N'Advanced mode', N'Advanced mode')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2973, N'en   ', N'Album', N'Album')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2974, N'en   ', N'Album_ReplayGain_Gain', N'Album replay gain')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2975, N'en   ', N'Album_ReplayGain_Peak', N'Album replay gain peak')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2976, N'en   ', N'Alignment', N'Alignment')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2977, N'en   ', N'Alignment_Aligned', N'Aligned on interleaves')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2978, N'en   ', N'Alignment_Split', N'Split accross interleaves')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2979, N'en   ', N'All', N'All')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2980, N'en   ', N'AlternateGroup', N'Alternate group')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2981, N'en   ', N'Archival_Location', N'Archival location')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2982, N'en   ', N'Arranger', N'Arranger')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2983, N'en   ', N'ArtDirector', N'ArtDirector')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2984, N'en   ', N'AspectRatio', N'Aspect ratio')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2985, N'en   ', N'AssistantDirector', N'AssistantDirector')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2986, N'en   ', N'at', N'at')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2987, N'en   ', N'At least one file', N'(You must at least open one file)')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2988, N'en   ', N'Audio', N'Audio')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2989, N'en   ', N'Audio stream(s)', N'Audio streams')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2990, N'en   ', N'Audio_Codec_List', N'Audio codecs')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2991, N'en   ', N'Audio_No', N'No audio')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2992, N'en   ', N'Audio1', N'First audio stream')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2993, N'en   ', N'Audio2', N'Second audio stream')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2994, N'en   ', N'AudioComments', N'Audio Comments')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2995, N'en   ', N'AudioCount', N'Count of audio streams')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2996, N'en   ', N'AudioDescriptionPresent', N'Audio Description Present')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2997, N'en   ', N'AudioDescriptionType', N'Audio Description Type')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2998, N'en   ', N'AudioLoudnessStandard', N'Audio Loudness Standard')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (2999, N'en   ', N'AudioTrackLayout', N'Audio Track Layout')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3000, N'en   ', N'Author', N'Author')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3001, N'en   ', N'BarCode', N'BarCode')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3002, N'en   ', N'Basic', N'Basic')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3003, N'en   ', N'Basic_Note', N'Note : for more information about this file, you must select a different view (Sheet, Tree...)')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3004, N'en   ', N'BitDepth', N'Bit depth')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3005, N'en   ', N'BitDepth_Detected', N'Detected bit depth')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3006, N'en   ', N'BitDepth_Stored', N'Stored bit depth')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3007, N'en   ', N'BitRate', N'Bit rate')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3008, N'en   ', N'BitRate_Encoded', N'Encoded bit rate')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3009, N'en   ', N'BitRate_Maximum', N'Maximum bit rate')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3010, N'en   ', N'BitRate_Minimum', N'Minimum bit rate')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3011, N'en   ', N'BitRate_Mode', N'Bit rate mode')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3012, N'en   ', N'BitRate_Mode_CBR', N'Constant')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3013, N'en   ', N'BitRate_Mode_VBR', N'Variable')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3014, N'en   ', N'BitRate_Nominal', N'Nominal bit rate')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3015, N'en   ', N'Bits-(Pixel*Frame)', N'Bits/(Pixel*Frame)')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3016, N'en   ', N'BufferSize', N'Buffer size')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3017, N'en   ', N'Cancel', N'Cancel')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3018, N'en   ', N'Channel(s)', N'Channel(s)')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3019, N'en   ', N'ChannelPositions', N'Channel positions')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3020, N'en   ', N'Chapter(s)', N'Chapter(s)')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3021, N'en   ', N'Chapters', N'Chapters')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3022, N'en   ', N'Chapters stream(s)', N'Chapters stream(s)')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3023, N'en   ', N'Chapters_Codec_List', N'Chapters Codecs')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3024, N'en   ', N'Chapters_No', N'No chapters')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3025, N'en   ', N'ChaptersCount', N'Count of chapter streams')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3026, N'en   ', N'CheckNewVersion', N'Check for new version')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3027, N'en   ', N'Choose custom', N'Choose custom')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3028, N'en   ', N'Choose custom sheet', N'Choose your desired custom sheet')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3029, N'en   ', N'Choose custom text', N'Choose your desired custom text')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3030, N'en   ', N'Choose export format', N'Choose your desired export format')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3031, N'en   ', N'Choose file(s)', N'Choose the files to open')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3032, N'en   ', N'Choose filename', N'Choose your desired filename')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3033, N'en   ', N'Choose language', N'Choose your desired language')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3034, N'en   ', N'Choregrapher', N'Choregrapher')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3035, N'en   ', N'Chroma', N'Chroma')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3036, N'en   ', N'ChromaSubsampling', N'Chroma subsampling')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3037, N'en   ', N'Close', N'Close')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3038, N'en   ', N'Close all before open', N'Close all before open')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3039, N'en   ', N'ClosedCaptionsLanguage', N'Closed Captions Language')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3040, N'en   ', N'ClosedCaptionsPresent', N'Closed Captions Present')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3041, N'en   ', N'ClosedCaptionsType', N'Closed Captions Type')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3042, N'en   ', N'Codec', N'Codec')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3043, N'en   ', N'Codec_Description', N'Codec description')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3044, N'en   ', N'Codec_Info', N'Details for codec')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3045, N'en   ', N'Codec_Profile', N'Codec profile')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3046, N'en   ', N'Codec_Settings', N'Codec settings')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3047, N'en   ', N'Codec_Settings_BVOP', N'Codec settings, BVOP')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3048, N'en   ', N'Codec_Settings_CABAC', N'Codec settings, CABAC')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3049, N'en   ', N'Codec_Settings_Endianness', N'Codec settings, Endianness')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3050, N'en   ', N'Codec_Settings_Firm', N'Codec settings, Firm')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3051, N'en   ', N'Codec_Settings_Floor', N'Codec settings, Floor')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3052, N'en   ', N'Codec_Settings_GMC', N'Codec settings, GMC')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3053, N'en   ', N'Codec_Settings_ITU', N'Codec settings, ITU')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3054, N'en   ', N'Codec_Settings_Law', N'Codec settings, Law')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3055, N'en   ', N'Codec_Settings_Matrix', N'Codec settings, Matrix')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3056, N'en   ', N'Codec_Settings_PacketBitStream', N'Codec settings, Packet bitstream')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3057, N'en   ', N'Codec_Settings_QPel', N'Codec settings, QPel')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3058, N'en   ', N'Codec_Settings_Sign', N'Codec settings, Sign')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3059, N'en   ', N'Codec_Url', N'Weblink for codec')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3060, N'en   ', N'CodecID', N'Codec ID')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3061, N'en   ', N'CodecID_Description', N'Description of the codec')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3062, N'en   ', N'CoDirector', N'Codirector')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3063, N'en   ', N'Collection', N'Collection')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3064, N'en   ', N'Colorimetry', N'Colorimetry')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3065, N'en   ', N'ColorSpace', N'Color space')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3066, N'en   ', N'colour_primaries', N'Color primaries')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3067, N'en   ', N'colour_range', N'Color range')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3068, N'en   ', N'Comment', N'Comment')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3069, N'en   ', N'CommissionedBy', N'Commissioned by')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3070, N'en   ', N'Compilation', N'Compilation')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3071, N'en   ', N'CompleteName', N'Complete name')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3072, N'en   ', N'CompletionDate', N'Completion Date')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3073, N'en   ', N'Composer', N'Composer')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3074, N'en   ', N'Compression_Mode', N'Compression mode')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3075, N'en   ', N'Compression_Mode_Lossless', N'Lossless')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3076, N'en   ', N'Compression_Mode_Lossy', N'Lossy')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3077, N'en   ', N'Compression_Ratio', N'Compression ratio')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3078, N'en   ', N'Conductor', N'Conductor')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3079, N'en   ', N'ContactEmail', N'Contact Email')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3080, N'en   ', N'ContactTelephoneNumber', N'Contact Telephone Number')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3081, N'en   ', N'Container and general information', N'Container and general information')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3082, N'en   ', N'ContentType', N'ContentType')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3083, N'en   ', N'CoProducer', N'Coproducer')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3084, N'en   ', N'Copyright', N'Copyright')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3085, N'en   ', N'CopyrightYear', N'Copyright Year')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3086, N'en   ', N'CostumeDesigner', N'Costume designer')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3087, N'en   ', N'Count', N'Count')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3088, N'en   ', N'Country', N'Country')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3089, N'en   ', N'Cover', N'Cover')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3090, N'en   ', N'Cover_Datas', N'Cover datas')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3091, N'en   ', N'Cover_Description', N'Cover description')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3092, N'en   ', N'Cover_Mime', N'Cover MIME')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3093, N'en   ', N'Cover_Type', N'Cover type')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3094, N'en   ', N'Cropped', N'Crop dimensions')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3095, N'en   ', N'Custom', N'Custom')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3096, N'en   ', N'Customize', N'Customize')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3097, N'en   ', N'Date', N'Date')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3098, N'en   ', N'Debug', N'Debug')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3099, N'en   ', N'Decimal point', N'Decimal point')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3100, N'en   ', N'Delay', N'Delay')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3101, N'en   ', N'Delay_Source', N'Delay, origin')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3102, N'en   ', N'Delay_Source_Container', N'Container')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3103, N'en   ', N'Delay_Source_Stream', N'Raw stream')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3104, N'en   ', N'Delete', N'Delete')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3105, N'en   ', N'Description', N'Description')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3106, N'en   ', N'Digitized_Date', N'Digitized date')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3107, N'en   ', N'Dimensions', N'Dimensions')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3108, N'en   ', N'Director', N'Director')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3109, N'en   ', N'DirectorOfPhotography', N'Director of photography')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3110, N'en   ', N'Disabled', N'Disabled')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3111, N'en   ', N'DisplayAspectRatio', N'Display aspect ratio')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3112, N'en   ', N'DisplayAspectRatio_CleanAperture', N'Clean aperture display aspect ratio')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3113, N'en   ', N'DisplayAspectRatio_Original', N'Original display aspect ratio')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3114, N'en   ', N'DistributedBy', N'Distributed by')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3115, N'en   ', N'Distributor', N'Distributor')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3116, N'en   ', N'Donate', N'Donate')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3117, N'en   ', N'DotsPerInch', N'Dots per inch')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3118, N'en   ', N'Duration', N'Duration')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3119, N'en   ', N'Duration_End', N'End time')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3120, N'en   ', N'Duration_Start', N'Start time')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3121, N'en   ', N'Edit', N'Edit')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3122, N'en   ', N'EditedBy', N'Edited by')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3123, N'en   ', N'ElementCount', N'Count of elements')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3124, N'en   ', N'EMail', N'E-Mail')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3125, N'en   ', N'Encoded_Application', N'Writing application')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3126, N'en   ', N'Encoded_Date', N'Encoded date')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3127, N'en   ', N'Encoded_Library', N'Writing library')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3128, N'en   ', N'Encoded_Library_Settings', N'Encoding settings')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3129, N'en   ', N'Encoded_Original', N'Original support')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3130, N'en   ', N'EncodedBy', N'Encoded by')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3131, N'en   ', N'EPG_Positions', N'EPG positions (internal)')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3132, N'en   ', N'EpisodeTitleNumber', N'Episode Title Number')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3133, N'en   ', N'Error_File', N'Error while reading file')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3134, N'en   ', N'ExecutiveProducer', N'Executive producer')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3135, N'en   ', N'Exit', N'Exit')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3136, N'en   ', N'Exit_Hint', N'Quit the program')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3137, N'en   ', N'Export', N'Export')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3138, N'en   ', N'Export_Hint', N'Export in a customized format')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3139, N'en   ', N'Extensions', N'Extensions usually used')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3140, N'en   ', N'Family', N'Family')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3141, N'en   ', N'Fax', N'Fax')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3142, N'en   ', N'File', N'File')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3143, N'en   ', N'File size', N'File size')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3144, N'en   ', N'File_Append', N'Append to the existing file (Warning : be careful to have the same parameters)')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3145, N'en   ', N'File_Created_Date', N'File creation date')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3146, N'en   ', N'File_Created_Date_Local', N'File creation date (local)')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3147, N'en   ', N'File_Hint', N'Select a multimedia file to examine')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3148, N'en   ', N'File_Modified_Date', N'File last modification date')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3149, N'en   ', N'File_Modified_Date_Local', N'File last modification date (local)')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3150, N'en   ', N'FileExtension', N'File extension')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3151, N'en   ', N'FileName', N'File name')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3152, N'en   ', N'FileSize', N'File size')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3153, N'en   ', N'Folder', N'Folder')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3154, N'en   ', N'Folder (R)', N'Folder (R)')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3155, N'en   ', N'Folder (R)_Hint', N'Select a folder to examine (with all folders recursively)')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3156, N'en   ', N'Folder (Recursively)', N'Folder (Recursively)')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3157, N'en   ', N'Folder_Hint', N'Select a folder to examine')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3158, N'en   ', N'FolderName', N'Folder name')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3159, N'en   ', N'Format', N'Format')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3160, N'en   ', N'Format_Commercial', N'Commercial name')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3161, N'en   ', N'Format_Commercial_IfAny', N'Commercial name')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3162, N'en   ', N'Format_Description', N'Format description')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3163, N'en   ', N'Format_Info', N'Details for format')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3164, N'en   ', N'Format_Profile', N'Format profile')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3165, N'en   ', N'Format_Level', N'Format level')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3166, N'en   ', N'Format_Tier', N'Format tier')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3167, N'en   ', N'Format_Settings', N'Format settings')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3168, N'en   ', N'Format_Settings_BVOP', N'Format settings, BVOP')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3169, N'en   ', N'Format_Settings_CABAC', N'Format settings, CABAC')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3170, N'en   ', N'Format_Settings_Emphasis', N'Emphasis')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3171, N'en   ', N'Format_Settings_Endianness', N'Format settings, Endianness')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3172, N'en   ', N'Format_Settings_Firm', N'Format settings, Firm')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3173, N'en   ', N'Format_Settings_Floor', N'Format settings, Floor')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3174, N'en   ', N'Format_Settings_FrameMode', N'Frame mode')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3175, N'en   ', N'Format_Settings_GMC', N'Format settings, GMC')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3176, N'en   ', N'Format_Settings_GOP', N'Format settings, GOP')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3177, N'en   ', N'Format_Settings_ITU', N'Format settings, ITU')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3178, N'en   ', N'Format_Settings_Law', N'Format settings, Law')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3179, N'en   ', N'Format_Settings_Matrix', N'Format settings, Matrix')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3180, N'en   ', N'Format_Settings_Matrix_Custom', N'Custom')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3181, N'en   ', N'Format_Settings_Matrix_Default', N'Default')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3182, N'en   ', N'Format_Settings_Mode', N'Mode')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3183, N'en   ', N'Format_Settings_ModeExtension', N'Mode extension')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3184, N'en   ', N'Format_Settings_PacketBitStream', N'Format settings, Packet bitstream')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3185, N'en   ', N'Format_Settings_PictureStructure', N'Format settings, picture structure')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3186, N'en   ', N'Format_Settings_PS', N'Format settings, PS')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3187, N'en   ', N'Format_Settings_Pulldown', N'Format settings, Pulldown')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3188, N'en   ', N'Format_Settings_QPel', N'Format settings, QPel')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3189, N'en   ', N'Format_Settings_RefFrames', N'Format settings, ReFrames')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3190, N'en   ', N'Format_Settings_SBR', N'Format settings, SBR')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3191, N'en   ', N'Format_Settings_Sign', N'Format settings, Sign')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3192, N'en   ', N'Format_Settings_Wrapping', N'Format settings, wrapping mode')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3193, N'en   ', N'Format_Url', N'Weblink for format')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3194, N'en   ', N'Format_Version', N'Format version')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3195, N'en   ', N'FpaManufacturer', N'FPA Manufacturer')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3196, N'en   ', N'FpaPass', N'FPA Pass')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3197, N'en   ', N'FpaVersion', N'FPA Version')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3198, N'en   ', N'FrameCount', N'Frame count')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3199, N'en   ', N'FrameRate', N'Frame rate')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3200, N'en   ', N'FrameRate_Maximum', N'Maximum frame rate')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3201, N'en   ', N'FrameRate_Minimum', N'Minimum frame rate')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3202, N'en   ', N'FrameRate_Mode', N'Frame rate mode')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3203, N'en   ', N'FrameRate_Mode_CFR', N'Constant')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3204, N'en   ', N'FrameRate_Mode_VFR', N'Variable')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3205, N'en   ', N'FrameRate_Nominal', N'Nominal frame rate')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3206, N'en   ', N'FrameRate_Original', N'Original frame rate')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3207, N'en   ', N'General', N'General')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3208, N'en   ', N'Genre', N'Genre')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3209, N'en   ', N'Genre_000', N'Blues')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3210, N'en   ', N'Genre_001', N'Classic Rock')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3211, N'en   ', N'Genre_002', N'Country')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3212, N'en   ', N'Genre_003', N'Dance')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3213, N'en   ', N'Genre_004', N'Disco')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3214, N'en   ', N'Genre_005', N'Funk')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3215, N'en   ', N'Genre_006', N'Grunge')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3216, N'en   ', N'Genre_007', N'Hip-Hop')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3217, N'en   ', N'Genre_008', N'Jazz')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3218, N'en   ', N'Genre_009', N'Metal')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3219, N'en   ', N'Genre_010', N'New Age')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3220, N'en   ', N'Genre_011', N'Oldies')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3221, N'en   ', N'Genre_012', N'Other')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3222, N'en   ', N'Genre_013', N'Pop')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3223, N'en   ', N'Genre_014', N'R&B')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3224, N'en   ', N'Genre_015', N'Rap')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3225, N'en   ', N'Genre_016', N'Reggae')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3226, N'en   ', N'Genre_017', N'Rock')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3227, N'en   ', N'Genre_018', N'Techno')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3228, N'en   ', N'Genre_019', N'Industrial')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3229, N'en   ', N'Genre_020', N'Alternative')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3230, N'en   ', N'Genre_021', N'Ska')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3231, N'en   ', N'Genre_022', N'Death Metal')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3232, N'en   ', N'Genre_023', N'Pranks')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3233, N'en   ', N'Genre_024', N'Soundtrack')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3234, N'en   ', N'Genre_025', N'Euro-Techno')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3235, N'en   ', N'Genre_026', N'Ambient')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3236, N'en   ', N'Genre_027', N'Trip-Hop')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3237, N'en   ', N'Genre_028', N'Vocal')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3238, N'en   ', N'Genre_029', N'Jazz+Funk')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3239, N'en   ', N'Genre_030', N'Fusion')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3240, N'en   ', N'Genre_031', N'Trance')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3241, N'en   ', N'Genre_032', N'Classical')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3242, N'en   ', N'Genre_033', N'Instrumental')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3243, N'en   ', N'Genre_034', N'Acid')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3244, N'en   ', N'Genre_035', N'House')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3245, N'en   ', N'Genre_036', N'Game')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3246, N'en   ', N'Genre_037', N'Sound Clip')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3247, N'en   ', N'Genre_038', N'Gospel')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3248, N'en   ', N'Genre_039', N'Noise')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3249, N'en   ', N'Genre_040', N'Alt. Rock')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3250, N'en   ', N'Genre_041', N'Bass')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3251, N'en   ', N'Genre_042', N'Soul')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3252, N'en   ', N'Genre_043', N'Punk')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3253, N'en   ', N'Genre_044', N'Space')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3254, N'en   ', N'Genre_045', N'Meditative')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3255, N'en   ', N'Genre_046', N'Instrumental Pop')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3256, N'en   ', N'Genre_047', N'Instrumental Rock')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3257, N'en   ', N'Genre_048', N'Ethnic')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3258, N'en   ', N'Genre_049', N'Gothic')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3259, N'en   ', N'Genre_050', N'Darkwave')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3260, N'en   ', N'Genre_051', N'Techno-Industrial')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3261, N'en   ', N'Genre_052', N'Electronic')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3262, N'en   ', N'Genre_053', N'Pop-Folk')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3263, N'en   ', N'Genre_054', N'Eurodance')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3264, N'en   ', N'Genre_055', N'Dream')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3265, N'en   ', N'Genre_056', N'Southern Rock')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3266, N'en   ', N'Genre_057', N'Comedy')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3267, N'en   ', N'Genre_058', N'Cult')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3268, N'en   ', N'Genre_059', N'Gangsta Rap')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3269, N'en   ', N'Genre_060', N'Top 40')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3270, N'en   ', N'Genre_061', N'Christian Rap')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3271, N'en   ', N'Genre_062', N'Pop/Funk')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3272, N'en   ', N'Genre_063', N'Jungle')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3273, N'en   ', N'Genre_064', N'Native American')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3274, N'en   ', N'Genre_065', N'Cabaret')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3275, N'en   ', N'Genre_066', N'New Wave')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3276, N'en   ', N'Genre_067', N'Psychedelic')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3277, N'en   ', N'Genre_068', N'Rave')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3278, N'en   ', N'Genre_069', N'Showtunes')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3279, N'en   ', N'Genre_070', N'Trailer')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3280, N'en   ', N'Genre_071', N'Lo-Fi')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3281, N'en   ', N'Genre_072', N'Tribal')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3282, N'en   ', N'Genre_073', N'Acid Punk')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3283, N'en   ', N'Genre_074', N'Acid Jazz')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3284, N'en   ', N'Genre_075', N'Polka')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3285, N'en   ', N'Genre_076', N'Retro')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3286, N'en   ', N'Genre_077', N'Musical')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3287, N'en   ', N'Genre_078', N'Rock & Roll')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3288, N'en   ', N'Genre_079', N'Hard Rock')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3289, N'en   ', N'Genre_080', N'Folk')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3290, N'en   ', N'Genre_081', N'Folk-Rock')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3291, N'en   ', N'Genre_082', N'National Folk')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3292, N'en   ', N'Genre_083', N'Swing')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3293, N'en   ', N'Genre_084', N'Fast-Fusion')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3294, N'en   ', N'Genre_085', N'Bebop')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3295, N'en   ', N'Genre_086', N'Latin')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3296, N'en   ', N'Genre_087', N'Revival')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3297, N'en   ', N'Genre_088', N'Celtic')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3298, N'en   ', N'Genre_089', N'Bluegrass')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3299, N'en   ', N'Genre_090', N'Avantgarde')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3300, N'en   ', N'Genre_091', N'Gothic Rock')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3301, N'en   ', N'Genre_092', N'Progressive Rock')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3302, N'en   ', N'Genre_093', N'Psychedelic Rock')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3303, N'en   ', N'Genre_094', N'Symphonic Rock')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3304, N'en   ', N'Genre_095', N'Slow Rock')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3305, N'en   ', N'Genre_096', N'Big Band')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3306, N'en   ', N'Genre_097', N'Chorus')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3307, N'en   ', N'Genre_098', N'Easy Listening')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3308, N'en   ', N'Genre_099', N'Acoustic')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3309, N'en   ', N'Genre_100', N'Humour')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3310, N'en   ', N'Genre_101', N'Speech')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3311, N'en   ', N'Genre_102', N'Chanson')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3312, N'en   ', N'Genre_103', N'Opera')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3313, N'en   ', N'Genre_104', N'Chamber Music')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3314, N'en   ', N'Genre_105', N'Sonata')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3315, N'en   ', N'Genre_106', N'Symphony')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3316, N'en   ', N'Genre_107', N'Booty Bass')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3317, N'en   ', N'Genre_108', N'Primus')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3318, N'en   ', N'Genre_109', N'Porn Groove')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3319, N'en   ', N'Genre_110', N'Satire')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3320, N'en   ', N'Genre_111', N'Slow Jam')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3321, N'en   ', N'Genre_112', N'Club')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3322, N'en   ', N'Genre_113', N'Tango')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3323, N'en   ', N'Genre_114', N'Samba')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3324, N'en   ', N'Genre_115', N'Folklore')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3325, N'en   ', N'Genre_116', N'Ballad')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3326, N'en   ', N'Genre_117', N'Power Ballad')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3327, N'en   ', N'Genre_118', N'Rhythmic Soul')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3328, N'en   ', N'Genre_119', N'Freestyle')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3329, N'en   ', N'Genre_120', N'Duet')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3330, N'en   ', N'Genre_121', N'Punk Rock')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3331, N'en   ', N'Genre_122', N'Drum Solo')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3332, N'en   ', N'Genre_123', N'A Cappella')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3333, N'en   ', N'Genre_124', N'Euro-House')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3334, N'en   ', N'Genre_125', N'Dance Hall')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3335, N'en   ', N'Genre_126', N'Goa')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3336, N'en   ', N'Genre_127', N'Drum & Bass')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3337, N'en   ', N'Genre_128', N'Club-House')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3338, N'en   ', N'Genre_129', N'Hardcore')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3339, N'en   ', N'Genre_130', N'Terror')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3340, N'en   ', N'Genre_131', N'Indie')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3341, N'en   ', N'Genre_132', N'BritPop')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3342, N'en   ', N'Genre_133', N'Afro-Punk')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3343, N'en   ', N'Genre_134', N'Polsk Punk')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3344, N'en   ', N'Genre_135', N'Beat')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3345, N'en   ', N'Genre_136', N'Christian Gangsta Rap')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3346, N'en   ', N'Genre_137', N'Heavy Metal')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3347, N'en   ', N'Genre_138', N'Black Metal')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3348, N'en   ', N'Genre_139', N'Crossover')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3349, N'en   ', N'Genre_140', N'Contemporary Christian')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3350, N'en   ', N'Genre_141', N'Christian Rock')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3351, N'en   ', N'Genre_142', N'Merengue')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3352, N'en   ', N'Genre_143', N'Salsa')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3353, N'en   ', N'Genre_144', N'Thrash Metal')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3354, N'en   ', N'Genre_145', N'Anime')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3355, N'en   ', N'Genre_146', N'JPop')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3356, N'en   ', N'Genre_147', N'Synthpop')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3357, N'en   ', N'Genre_148', N'Abstract')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3358, N'en   ', N'Genre_149', N'Art Rock')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3359, N'en   ', N'Genre_150', N'Baroque')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3360, N'en   ', N'Genre_151', N'Bhangra')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3361, N'en   ', N'Genre_152', N'Big Beat')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3362, N'en   ', N'Genre_153', N'Breakbeat')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3363, N'en   ', N'Genre_154', N'Chillout')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3364, N'en   ', N'Genre_155', N'Downtempo')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3365, N'en   ', N'Genre_156', N'Dub')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3366, N'en   ', N'Genre_157', N'EBM')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3367, N'en   ', N'Genre_158', N'Eclectic')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3368, N'en   ', N'Genre_159', N'Electro')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3369, N'en   ', N'Genre_160', N'Electroclash')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3370, N'en   ', N'Genre_161', N'Emo')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3371, N'en   ', N'Genre_162', N'Experimental')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3372, N'en   ', N'Genre_163', N'Garage')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3373, N'en   ', N'Genre_164', N'Global')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3374, N'en   ', N'Genre_165', N'IDM')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3375, N'en   ', N'Genre_166', N'Illbient')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3376, N'en   ', N'Genre_167', N'Industro-Goth')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3377, N'en   ', N'Genre_168', N'Jam Band')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3378, N'en   ', N'Genre_169', N'Krautrock')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3379, N'en   ', N'Genre_170', N'Leftfield')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3380, N'en   ', N'Genre_171', N'Lounge')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3381, N'en   ', N'Genre_172', N'Math Rock')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3382, N'en   ', N'Genre_173', N'New Romantic')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3383, N'en   ', N'Genre_174', N'Nu-Breakz')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3384, N'en   ', N'Genre_175', N'Post-Punk')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3385, N'en   ', N'Genre_176', N'Post-Rock')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3386, N'en   ', N'Genre_177', N'Psytrance')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3387, N'en   ', N'Genre_178', N'Shoegaze')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3388, N'en   ', N'Genre_179', N'Space Rock')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3389, N'en   ', N'Genre_180', N'Trop Rock')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3390, N'en   ', N'Genre_181', N'World Music')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3391, N'en   ', N'Genre_182', N'Neoclassical')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3392, N'en   ', N'Genre_183', N'Audiobook')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3393, N'en   ', N'Genre_184', N'Audio Theatre')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3394, N'en   ', N'Genre_185', N'Neue Deutsche Welle')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3395, N'en   ', N'Genre_186', N'Podcast')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3396, N'en   ', N'Genre_187', N'Indie Rock')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3397, N'en   ', N'Genre_188', N'G-Funk')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3398, N'en   ', N'Genre_189', N'Dubstep')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3399, N'en   ', N'Genre_190', N'Garage Rock')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3400, N'en   ', N'Genre_191', N'Psybient')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3401, N'en   ', N'Go to WebSite', N'Go to website')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3402, N'en   ', N'Gop_OpenClosed', N'GOP, Open/Closed')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3403, N'en   ', N'Gop_OpenClosed_Open', N'Open')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3404, N'en   ', N'Gop_OpenClosed_Closed', N'Closed')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3405, N'en   ', N'Gop_OpenClosed_FirstFrame', N'GOP, Open/Closed of first frame')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3406, N'en   ', N'Grouping', N'Grouping')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3407, N'en   ', N'h', N'h')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3408, N'en   ', N'Header file', N'Create a header file')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3409, N'en   ', N'Height', N'Height')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3410, N'en   ', N'Height_CleanAperture', N'Clean aperture height')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3411, N'en   ', N'Height_Original', N'Original height')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3412, N'en   ', N'Help', N'Help')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3413, N'en   ', N'Hint', N'Hint')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3414, N'en   ', N'How many audio streams?', N'How many audio streams?')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3415, N'en   ', N'How many chapters streams?', N'How many chapters streams?')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3416, N'en   ', N'How many text streams?', N'How many text streams?')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3417, N'en   ', N'How many video streams?', N'How many video streams?')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3418, N'en   ', N'HTML', N'HTML')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3419, N'en   ', N'ID', N'ID')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3420, N'en   ', N'IdentClockStart', N'Ident Clock Start')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3421, N'en   ', N'Image', N'Image')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3422, N'en   ', N'Image stream(s)', N'Image streams')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3423, N'en   ', N'Image_Codec_List', N'Codecs Image')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3424, N'en   ', N'ImageCount', N'Count of image streams')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3425, N'en   ', N'Info', N'Info')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3426, N'en   ', N'Instruments', N'Instruments')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3427, N'en   ', N'Interlaced_BFF', N'Bottom Field First')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3428, N'en   ', N'Interlaced_Interlaced', N'Interlaced')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3429, N'en   ', N'Interlaced_PPF', N'Progressive')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3430, N'en   ', N'Interlaced_Progressive', N'Progressive')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3431, N'en   ', N'Interlaced_TFF', N'Top Field First')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3432, N'en   ', N'Interlacement', N'Interlacement')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3433, N'en   ', N'Interleave_Duration', N'Interleave, duration')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3434, N'en   ', N'Interleave_Preload', N'Interleave, preload duration')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3435, N'en   ', N'Interleave_VideoFrames', N'Interleave, duration')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3436, N'en   ', N'Interleaved', N'Interleaved')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3437, N'en   ', N'InternetMediaType', N'Internet media type')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3438, N'en   ', N'IRCA', N'IRCA')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3439, N'en   ', N'ISBN', N'ISBN')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3440, N'en   ', N'ISRC', N'ISRC')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3441, N'en   ', N'Keywords', N'Keywords')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3442, N'en   ', N'Known codecs', N'Known codecs')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3443, N'en   ', N'Known formats', N'Known formats')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3444, N'en   ', N'Known parameters', N'Known parameters')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3445, N'en   ', N'Label', N'Label')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3446, N'en   ', N'Language', N'Language')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3447, N'en   ', N'Language_aa', N'Afar')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3448, N'en   ', N'Language_ab', N'Abkhazian')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3449, N'en   ', N'Language_ae', N'Avestan')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3450, N'en   ', N'Language_af', N'Afrikaans')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3451, N'en   ', N'Language_ak', N'Akan')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3452, N'en   ', N'Language_am', N'Amharic')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3453, N'en   ', N'Language_an', N'Aragonese')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3454, N'en   ', N'Language_ar', N'Arabic')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3455, N'en   ', N'Language_as', N'Assamese')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3456, N'en   ', N'Language_av', N'Avaric')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3457, N'en   ', N'Language_ay', N'Aymara')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3458, N'en   ', N'Language_az', N'Azerbaijani')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3459, N'en   ', N'Language_ba', N'Bashkir')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3460, N'en   ', N'Language_be', N'Belarusian')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3461, N'en   ', N'Language_bg', N'Bulgarian')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3462, N'en   ', N'Language_bh', N'Bihari')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3463, N'en   ', N'Language_bi', N'Bislama')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3464, N'en   ', N'Language_bm', N'Bambara')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3465, N'en   ', N'Language_bn', N'Bengali')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3466, N'en   ', N'Language_bo', N'Tibetan')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3467, N'en   ', N'Language_br', N'Breton')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3468, N'en   ', N'Language_bs', N'Bosnian')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3469, N'en   ', N'Language_ca', N'Catalan')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3470, N'en   ', N'Language_ce', N'Chechen')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3471, N'en   ', N'Language_ch', N'Chamorro')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3472, N'en   ', N'Language_co', N'Corsican')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3473, N'en   ', N'Language_cr', N'Cree')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3474, N'en   ', N'Language_cs', N'Czech')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3475, N'en   ', N'Language_cu', N'Slave')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3476, N'en   ', N'Language_cv', N'Chuvash')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3477, N'en   ', N'Language_cy', N'Welsh')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3478, N'en   ', N'Language_da', N'Danish')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3479, N'en   ', N'Language_de', N'German')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3480, N'en   ', N'Language_dv', N'Divehi')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3481, N'en   ', N'Language_dz', N'Dzongkha')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3482, N'en   ', N'Language_ee', N'Ewe')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3483, N'en   ', N'Language_el', N'Greek')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3484, N'en   ', N'Language_en', N'English')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3485, N'en   ', N'Language_en-gb', N'English (Great Britain)')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3486, N'en   ', N'Language_en-us', N'English (United States)')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3487, N'en   ', N'Language_eo', N'Esperanto')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3488, N'en   ', N'Language_es', N'Spanish')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3489, N'en   ', N'Language_es-419', N'Spanish (Latin America)')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3490, N'en   ', N'Language_et', N'Estonian')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3491, N'en   ', N'Language_eu', N'Basque')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3492, N'en   ', N'Language_fa', N'Persian')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3493, N'en   ', N'Language_ff', N'Fulah')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3494, N'en   ', N'Language_fi', N'Finnish')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3495, N'en   ', N'Language_fj', N'Fijian')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3496, N'en   ', N'Language_fo', N'Faroese')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3497, N'en   ', N'Language_fr', N'French')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3498, N'en   ', N'Language_fy', N'Frisian')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3499, N'en   ', N'Language_ga', N'Irish')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3500, N'en   ', N'Language_gd', N'Gaelic')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3501, N'en   ', N'Language_gl', N'Galician')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3502, N'en   ', N'Language_gn', N'Guarani')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3503, N'en   ', N'Language_gu', N'Gujarati')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3504, N'en   ', N'Language_gv', N'Manx')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3505, N'en   ', N'Language_ha', N'Hausa')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3506, N'en   ', N'Language_he', N'Hebrew')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3507, N'en   ', N'Language_hi', N'Hindi')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3508, N'en   ', N'Language_ho', N'Hiri Motu')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3509, N'en   ', N'Language_hr', N'Croatian')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3510, N'en   ', N'Language_ht', N'Haitian')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3511, N'en   ', N'Language_hu', N'Hungarian')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3512, N'en   ', N'Language_hy', N'Armenian')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3513, N'en   ', N'Language_hz', N'Herero')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3514, N'en   ', N'Language_ia', N'Auxiliary Language Association')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3515, N'en   ', N'Language_id', N'Indonesian')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3516, N'en   ', N'Language_ie', N'Interlingue')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3517, N'en   ', N'Language_ig', N'Igbo')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3518, N'en   ', N'Language_ii', N'Sichuan Yi')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3519, N'en   ', N'Language_ik', N'Inupiaq')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3520, N'en   ', N'Language_Info', N'Language info')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3521, N'en   ', N'Language_io', N'Ido')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3522, N'en   ', N'Language_is', N'Icelandic')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3523, N'en   ', N'Language_it', N'Italian')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3524, N'en   ', N'Language_iu', N'Inuktitut')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3525, N'en   ', N'Language_ja', N'Japanese')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3526, N'en   ', N'Language_jv', N'Javanese')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3527, N'en   ', N'Language_ka', N'Georgian')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3528, N'en   ', N'Language_kg', N'Kongo')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3529, N'en   ', N'Language_ki', N'Kikuyu')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3530, N'en   ', N'Language_kj', N'Kuanyama')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3531, N'en   ', N'Language_kk', N'Kazakh')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3532, N'en   ', N'Language_kl', N'Kalaallisut')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3533, N'en   ', N'Language_km', N'Khmer')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3534, N'en   ', N'Language_kn', N'Kannada')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3535, N'en   ', N'Language_ko', N'Korean')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3536, N'en   ', N'Language_kr', N'Kanuri')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3537, N'en   ', N'Language_ks', N'Kashmiri')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3538, N'en   ', N'Language_ku', N'Kurdish')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3539, N'en   ', N'Language_kv', N'Komi')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3540, N'en   ', N'Language_kw', N'Cornish')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3541, N'en   ', N'Language_ky', N'Kirghiz')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3542, N'en   ', N'Language_la', N'Latin')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3543, N'en   ', N'Language_lb', N'Luxembourgish')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3544, N'en   ', N'Language_lg', N'Ganda')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3545, N'en   ', N'Language_li', N'Limburgish')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3546, N'en   ', N'Language_ln', N'Lingala')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3547, N'en   ', N'Language_lo', N'Lao')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3548, N'en   ', N'Language_lt', N'Lithuanian')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3549, N'en   ', N'Language_lu', N'Luba-Katanga')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3550, N'en   ', N'Language_lv', N'Latvian')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3551, N'en   ', N'Language_mg', N'Malagasy')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3552, N'en   ', N'Language_mh', N'Marshallese')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3553, N'en   ', N'Language_mi', N'Maori')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3554, N'en   ', N'Language_mk', N'Macedonian')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3555, N'en   ', N'Language_ml', N'Malayalam')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3556, N'en   ', N'Language_mn', N'Mongolian')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3557, N'en   ', N'Language_mo', N'Moldavian')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3558, N'en   ', N'Language_More', N'Language, more info')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3559, N'en   ', N'Language_mr', N'Marathi')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3560, N'en   ', N'Language_ms', N'Malay')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3561, N'en   ', N'Language_mt', N'Maltese')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3562, N'en   ', N'Language_mul', N'Multiple languages')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3563, N'en   ', N'Language_my', N'Burmese')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3564, N'en   ', N'Language_na', N'Nauru')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3565, N'en   ', N'Language_nb', N'Norwegian Bokmal')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3566, N'en   ', N'Language_nd', N'Ndebele')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3567, N'en   ', N'Language_ne', N'Nepali')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3568, N'en   ', N'Language_ng', N'Ndonga')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3569, N'en   ', N'Language_nl', N'Dutch')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3570, N'en   ', N'Language_nn', N'Norwegian Nynorsk')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3571, N'en   ', N'Language_no', N'Norwegian')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3572, N'en   ', N'Language_nr', N'Ndebele')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3573, N'en   ', N'Language_nv', N'Navaho')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3574, N'en   ', N'Language_ny', N'Nyanja')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3575, N'en   ', N'Language_oc', N'Occitan')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3576, N'en   ', N'Language_oj', N'Ojibwa')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3577, N'en   ', N'Language_om', N'Oromo')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3578, N'en   ', N'Language_or', N'Oriya')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3579, N'en   ', N'Language_os', N'Ossetic')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3580, N'en   ', N'Language_pa', N'Panjabi')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3581, N'en   ', N'Language_pi', N'Pali')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3582, N'en   ', N'Language_pl', N'Polish')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3583, N'en   ', N'Language_ps', N'Pushto')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3584, N'en   ', N'Language_pt', N'Portuguese')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3585, N'en   ', N'Language_pt-br', N'Portuguese (Brazil)')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3586, N'en   ', N'Language_qu', N'Quechua')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3587, N'en   ', N'Language_rm', N'Raeto-Romance')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3588, N'en   ', N'Language_rn', N'Rundi')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3589, N'en   ', N'Language_ro', N'Romanian')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3590, N'en   ', N'Language_ru', N'Russian')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3591, N'en   ', N'Language_rw', N'Kinyarwanda')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3592, N'en   ', N'Language_sa', N'Sanskrit')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3593, N'en   ', N'Language_sc', N'Sardinian')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3594, N'en   ', N'Language_sd', N'Sindhi')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3595, N'en   ', N'Language_se', N'Northern Sami')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3596, N'en   ', N'Language_sg', N'Sango')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3597, N'en   ', N'Language_si', N'Sinhala')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3598, N'en   ', N'Language_sk', N'Slovak')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3599, N'en   ', N'Language_sl', N'Slovenian')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3600, N'en   ', N'Language_sm', N'Samoan')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3601, N'en   ', N'Language_sn', N'Shona')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3602, N'en   ', N'Language_so', N'Somali')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3603, N'en   ', N'Language_sq', N'Albanian')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3604, N'en   ', N'Language_sr', N'Serbian')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3605, N'en   ', N'Language_ss', N'Swati')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3606, N'en   ', N'Language_st', N'Sotho')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3607, N'en   ', N'Language_su', N'Sundanese')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3608, N'en   ', N'Language_sv', N'Swedish')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3609, N'en   ', N'Language_sw', N'Swahili')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3610, N'en   ', N'Language_ta', N'Tamil')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3611, N'en   ', N'Language_te', N'Telugu')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3612, N'en   ', N'Language_tg', N'Tajik')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3613, N'en   ', N'Language_th', N'Thai')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3614, N'en   ', N'Language_ti', N'Tigrinya')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3615, N'en   ', N'Language_tk', N'Turkmen')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3616, N'en   ', N'Language_tl', N'Tagalog')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3617, N'en   ', N'Language_tn', N'Tswana')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3618, N'en   ', N'Language_to', N'Tonga')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3619, N'en   ', N'Language_tr', N'Turkish')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3620, N'en   ', N'Language_ts', N'Tsonga')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3621, N'en   ', N'Language_tt', N'Tatar')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3622, N'en   ', N'Language_tw', N'Twi')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3623, N'en   ', N'Language_ty', N'Tahitian')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3624, N'en   ', N'Language_ug', N'Uighur')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3625, N'en   ', N'Language_uk', N'Ukrainian')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3626, N'en   ', N'Language_ur', N'Urdu')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3627, N'en   ', N'Language_uz', N'Uzbek')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3628, N'en   ', N'Language_ve', N'Venda')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3629, N'en   ', N'Language_vi', N'Vietnamese')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3630, N'en   ', N'Language_vo', N'Volapuk')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3631, N'en   ', N'Language_wa', N'Walloon')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3632, N'en   ', N'Language_wo', N'Wolof')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3633, N'en   ', N'Language_xh', N'Xhosa')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3634, N'en   ', N'Language_yi', N'Yiddish')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3635, N'en   ', N'Language_yo', N'Yoruba')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3636, N'en   ', N'Language_za', N'Zhuang')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3637, N'en   ', N'Language_zh', N'Chinese')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3638, N'en   ', N'Language_zh-cn', N'Chinese (China)')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3639, N'en   ', N'Language_zh-tw', N'Chinese (Taiwan)')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3640, N'en   ', N'Language_zu', N'Zulu')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3641, N'en   ', N'LawRating', N'Law rating')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3642, N'en   ', N'LCCN', N'LCCN')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3643, N'en   ', N'Library', N'Muxing library')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3644, N'en   ', N'Lightness', N'Lightness')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3645, N'en   ', N'LineUpStart', N'Line Up Start')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3646, N'en   ', N'List', N'List')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3647, N'en   ', N'Lyricist', N'Lyricist')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3648, N'en   ', N'Lyrics', N'Lyrics')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3649, N'en   ', N'Mastered_Date', N'Mastered date')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3650, N'en   ', N'MasteredBy', N'Mastered by')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3651, N'en   ', N'MasteringDisplay_ColorPrimaries', N'Mastering display color primaries')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3652, N'en   ', N'MasteringDisplay_Luminance', N'Mastering display luminance')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3653, N'en   ', N'Matrix_Channel(s)', N'Matrix encoding, Channel(s)')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3654, N'en   ', N'Matrix_ChannelPositions', N'Matrix encoding, channel positions')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3655, N'en   ', N'matrix_coefficients', N'Matrix coefficients')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3656, N'en   ', N'Matrix_Format', N'Matrix encoding, format')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3657, N'en   ', N'MaxCLL', N'Maximum Content Light Level')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3658, N'en   ', N'MaxFALL', N'Maximum Frame-Average Light Level')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3659, N'en   ', N'MediaInfo_About', N'MediaInfo provides easy access to technical and tag information about video and audio files.\r\nExcept the Mac App Store graphical user interface, it is open-source software, which means that it is free of charge to the end user and developers have freedo')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3660, N'en   ', N'Menu', N'Menu')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3661, N'en   ', N'Menu stream(s)', N'Menu streams')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3662, N'en   ', N'Menu_Codec_List', N'Menu codecs')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3663, N'en   ', N'Menu_Hint', N'More possibilities')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3664, N'en   ', N'Menu_No', N'No menu')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3665, N'en   ', N'MenuCount', N'Count of menu streams')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3666, N'en   ', N'MenuID', N'Menu ID')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3667, N'en   ', N'mn', N'min')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3668, N'en   ', N'Mood', N'Mood')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3669, N'en   ', N'More', N'More')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3670, N'en   ', N'Movie', N'Movie name')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3671, N'en   ', N'ms', N'ms')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3672, N'en   ', N'MSDI', N'MSDI')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3673, N'en   ', N'MusicBy', N'Music by')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3674, N'en   ', N'MuxingMode', N'Muxing mode')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3675, N'en   ', N'MuxingMode_MoreInfo', N'Muxing mode, more info')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3676, N'en   ', N'MuxingMode_PackedBitstream', N'Packed bitstream')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3677, N'en   ', N'Name', N'Name')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3678, N'en   ', N'Nationality', N'Nationality')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3679, N'en   ', N'NetworkName', N'Network name')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3680, N'en   ', N'New', N'New')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3681, N'en   ', N'Newest version', N'Check for new versions (requires Internet connection)')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3682, N'en   ', N'NewVersion_Menu', N'A new version is available')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3683, N'en   ', N'NewVersion_Question_Content', N'A new version (v%Version%) is available, would you like to download it?')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3684, N'en   ', N'NewVersion_Question_Title', N'A new version was released!')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3685, N'en   ', N'No', N'No')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3686, N'en   ', N'Not yet', N'Not yet')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3687, N'en   ', N'NumColors', N'Number of colors')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3688, N'en   ', N'OK', N'OK')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3689, N'en   ', N'One output file per input file', N'One output file per input file')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3690, N'en   ', N'Open', N'Open')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3691, N'en   ', N'OpenCandy_01', N'Downloading ________')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3692, N'en   ', N'OpenCandy_02', N'__% Complete')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3693, N'en   ', N'OpenCandy_03', N'Internet connection interrupted')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3694, N'en   ', N'OpenCandy_04', N'________ download complete')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3695, N'en   ', N'OpenCandy_05', N'Click to install ________')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3696, N'en   ', N'OpenCandy_06', N'Are you sure you wish to cancel the install?\r\nIf you wish to postpone the install until later, select ''No''.\r\nNote: You may select Exit from the menu to defer installation until after the next time you reboot.')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3697, N'en   ', N'OpenCandy_07', N'Download of ________ has been paused.\r\nClick on the tray icon to resume downloading.')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3698, N'en   ', N'OpenCandy_08', N'A critical error has occurred. Installation of _________ will be aborted.')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3699, N'en   ', N'OpenCandy_09', N'Pause download')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3700, N'en   ', N'OpenCandy_10', N'Cancel install')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3701, N'en   ', N'OpenCandy_11', N'Resume download')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3702, N'en   ', N'OpenCandy_12', N'Exit Installer')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3703, N'en   ', N'OpenCandy_13', N'___________ - Recommended by ____________')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3704, N'en   ', N'OpenCandy_14', N'Downloading _________')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3705, N'en   ', N'OpenCandy_15', N'___________, the software recommended to you by ___________, is now downloading at your requestWe will let you know when it is ready to be installed.')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3706, N'en   ', N'OpenCandy_16', N'___________ is ready for installation')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3707, N'en   ', N'OpenCandy_17', N'___________ is now fully downloaded. Please click on ''Install'' to proceed.')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3708, N'en   ', N'OpenCandy_18', N'___________ of ___________ downloaded')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3709, N'en   ', N'OpenCandy_19', N'Powered by OpenCandy')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3710, N'en   ', N'OpenCandy_20', N'Learn more at OpenCandy.com')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3711, N'en   ', N'OpenCandy_21', N'Install')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3712, N'en   ', N'OpenCandy_22', N'Installation of ___________')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3713, N'en   ', N'OpenCandy_23', N'This will cancel the installation of ___________\r\nAre you sure you wish to exit?')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3714, N'en   ', N'OpenCandy_24', N'Pause')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3715, N'en   ', N'OpenCandy_25', N'Your download has been paused. Click ''Resume'' when you are ready to continue.')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3716, N'en   ', N'OpenCandy_26', N'Resume')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3717, N'en   ', N'OpenCandy_27', N'Install Now')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3718, N'en   ', N'OpenCandy_28', N'Pause Download')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3719, N'en   ', N'OpenCandy_29', N'Resume Download')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3720, N'en   ', N'OpenCandy_30', N'Cancel Install')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3721, N'en   ', N'OpenCandy_31', N'Please choose an installation option')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3722, N'en   ', N'OpenCandy_32', N'Install ___________')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3723, N'en   ', N'OpenCandy_33', N'Don''t Install')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3724, N'en   ', N'OpenCandy_34', N'Please select an install option')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3725, N'en   ', N'OpenCandy_35', N'______ recommends this software')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3726, N'en   ', N'OpenCandy_36', N'Your current installation will not be interrupted')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3727, N'en   ', N'OpenCaptionsLanguage', N'Open Captions Language')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3728, N'en   ', N'OpenCaptionsPresent', N'Open Captions Present')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3729, N'en   ', N'OpenCaptionsType', N'Open Captions Type')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3730, N'en   ', N'Options', N'Options')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3731, N'en   ', N'Options_Hint', N'Preferences')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3732, N'en   ', N'Original', N'Original')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3733, N'en   ', N'OriginalNetworkName', N'Original network name')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3734, N'en   ', N'OriginalSourceForm', N'Original source form')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3735, N'en   ', N'OriginalSourceMedium', N'Original source medium')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3736, N'en   ', N'OriginalSourceMedium_ID', N'ID in the original source medium')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3737, N'en   ', N'Originator', N'Originator')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3738, N'en   ', N'Other', N'Other')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3739, N'en   ', N'OtherIdentifier', N'Other Identifier')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3740, N'en   ', N'OtherIdentifierType', N'Other Identifier Type')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3741, N'en   ', N'Output', N'Output')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3742, N'en   ', N'Output format', N'Output format')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3743, N'en   ', N'OverallBitRate', N'Overall bit rate')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3744, N'en   ', N'OverallBitRate_Maximum', N'Maximum Overall bit rate')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3745, N'en   ', N'OverallBitRate_Minimum', N'Minimum Overall bit rate')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3746, N'en   ', N'OverallBitRate_Mode', N'Overall bit rate mode')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3747, N'en   ', N'OverallBitRate_Nominal', N'Nominal Overall bit rate')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3748, N'en   ', N'PackageName', N'Package name')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3749, N'en   ', N'Part', N'Part')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3750, N'en   ', N'Part_Count', N'Total count')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3751, N'en   ', N'PartNumber', N'Part Number')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3752, N'en   ', N'PartTotal', N'Part Total')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3753, N'en   ', N'Performer', N'Performer')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3754, N'en   ', N'Period', N'Period')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3755, N'en   ', N'PodcastCategory', N'Podcast category')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3756, N'en   ', N'Phone', N'Phone')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3757, N'en   ', N'PictureRatio', N'Picture Ratio')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3758, N'en   ', N'PixelAspectRatio', N'Pixel aspect ratio')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3759, N'en   ', N'PixelAspectRatio_CleanAperture', N'Clean aperture pixel aspect ratio')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3760, N'en   ', N'PixelAspectRatio_Original', N'Original pixel aspect ratio')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3761, N'en   ', N'PlayCounter', N'PlayCounter')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3762, N'en   ', N'Played_Count', N'Times played')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3763, N'en   ', N'Played_First_Date', N'First played')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3764, N'en   ', N'Played_Last_Date', N'Last played')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3765, N'en   ', N'PlayTime', N'PlayTime')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3766, N'en   ', N'Position', N'Position')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3767, N'en   ', N'Position_Total', N'Total')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3768, N'en   ', N'Preferences', N'Preferences')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3769, N'en   ', N'PrimaryAudioLanguage', N'Primary Audio Language')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3770, N'en   ', N'Producer', N'Producer')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3771, N'en   ', N'ProductionDesigner', N'Production designer')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3772, N'en   ', N'ProductionNumber', N'Production Number')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3773, N'en   ', N'ProductionStudio', N'Production studio')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3774, N'en   ', N'ProductPlacement', N'Product Placement')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3775, N'en   ', N'ProgrammeHasText', N'Programme Has Text')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3776, N'en   ', N'ProgrammeTextLanguage', N'Programme Text Language')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3777, N'en   ', N'ProgrammeTitle', N'Programme Title')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3778, N'en   ', N'Publisher', N'Publisher')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3779, N'en   ', N'Purchased_Date', N'purchased date')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3780, N'en   ', N'Quote character', N'Quote character')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3781, N'en   ', N'RadioStation', N'Radio station')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3782, N'en   ', N'Rating', N'Rating')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3783, N'en   ', N'Recorded_Date', N'Recorded date')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3784, N'en   ', N'Recorded_Location', N'Recorded location')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3785, N'en   ', N'Released_Date', N'Released date')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3786, N'en   ', N'RemixedBy', N'Remixed by')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3787, N'en   ', N'ReplayGain_Gain', N'Replay gain')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3788, N'en   ', N'ReplayGain_Peak', N'Replay gain peak')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3789, N'en   ', N'Resolution', N'Resolution')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3790, N'en   ', N's', N's')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3791, N'en   ', N'SamplesPerFrame', N'Samples per frame')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3792, N'en   ', N'SamplingCount', N'Samples count')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3793, N'en   ', N'SamplingRate', N'Sampling rate')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3794, N'en   ', N'Save', N'Save')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3795, N'en   ', N'ScanOrder', N'Scan order')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3796, N'en   ', N'ScanOrder_Original', N'Original scan order')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3797, N'en   ', N'ScanOrder_Stored', N'Stored scan order')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3798, N'en   ', N'ScanOrder_StoredDisplayedInverted', N'Scan order, stored/displayed order inverted')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3799, N'en   ', N'ScanOrder_StoreMethod', N'Scan order, store method')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3800, N'en   ', N'ScanType', N'Scan type')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3801, N'en   ', N'ScanType_Original', N'Original scan type')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3802, N'en   ', N'ScanType_StoreMethod', N'Scan type, store method')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3803, N'en   ', N'ScreenplayBy', N'Screenplay by')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3804, N'en   ', N'Season', N'Season')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3805, N'en   ', N'SecondaryAudioLanguage', N'Secondary Audio Language')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3806, N'en   ', N'see below', N'see below')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3807, N'en   ', N'Send HeaderFile', N'Please send me the Header file here : http://sourceforge.net/projects/mediainfo/ (Bug section)')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3808, N'en   ', N'Separator_Columns', N'columns separator')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3809, N'en   ', N'Separator_Lines', N'lines separator')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3810, N'en   ', N'SeriesTitle', N'Series Title')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3811, N'en   ', N'ServiceChannel', N'Service channel number')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3812, N'en   ', N'ServiceKind', N'Service kind')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3813, N'en   ', N'ServiceName', N'Service name')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3814, N'en   ', N'ServiceProvider', N'Service provider')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3815, N'en   ', N'ServiceType', N'Service type')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3816, N'en   ', N'Set', N'Set')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3817, N'en   ', N'Set_Count', N'Set count')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3818, N'en   ', N'Setup', N'Setup')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3819, N'en   ', N'Sharpness', N'Sharpness')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3820, N'en   ', N'Sheet', N'Sheet')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3821, N'en   ', N'Sheet (Complete)', N'Sheet (Complete)')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3822, N'en   ', N'Shell extension', N'Explorer extension (in Windows Explorer, right click on a file, there will be a MediaInfo option)')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3823, N'en   ', N'Shell extension, folder', N'For folders too')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3824, N'en   ', N'Shell InfoTip', N'Explorer Tooltip (in Windows Explorer, move the mouse over the file, info will be displayed)')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3825, N'en   ', N'ShimName', N'Shim Name')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3826, N'en   ', N'ShimVersion', N'Shim Version')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3827, N'en   ', N'Show menu', N'Show menu')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3828, N'en   ', N'Show toolbar', N'Show toolbar')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3829, N'en   ', N'SigningPresent', N'Signing Present')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3830, N'en   ', N'SignLanguage', N'Sign Language')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3831, N'en   ', N'Sort', N'Sorted by')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3832, N'en   ', N'SoundEngineer', N'Sound engineer')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3833, N'en   ', N'Source', N'Source')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3834, N'en   ', N'Source_Duration', N'Source duration')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3835, N'en   ', N'Source_FrameCount', N'Source frame count')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3836, N'en   ', N'Source_SamplingCount', N'Source sample count')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3837, N'en   ', N'Source_StreamSize', N'Source stream size')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3838, N'en   ', N'Source_StreamSize_Encoded', N'Source encoded stream size')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3839, N'en   ', N'Standard', N'Standard')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3840, N'en   ', N'StoreMethod_InterleavedFields', N'Interleaved fields')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3841, N'en   ', N'StoreMethod_SeparatedFields', N'Separated fields')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3842, N'en   ', N'StoreMethod_SeparatedFields_1', N'Separated fields (1 field per block)')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3843, N'en   ', N'StoreMethod_SeparatedFields_2', N'Separated fields (2 fields per block)')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3844, N'en   ', N'Stream', N'Stream')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3845, N'en   ', N'Stream_MoreInfo', N'More information about the stream')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3846, N'en   ', N'StreamCount', N'Count of stream of this kind')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3847, N'en   ', N'StreamID', N'Stream ID')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3848, N'en   ', N'StreamKind', N'Kind of stream')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3849, N'en   ', N'StreamKindID', N'Stream identifier')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3850, N'en   ', N'StreamKindPos', N'Stream identifier')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3851, N'en   ', N'StreamSize', N'Stream size')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3852, N'en   ', N'StreamSize_Demuxed', N'Stream size when demuxed')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3853, N'en   ', N'StreamSize_Encoded', N'Encoded stream size')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3854, N'en   ', N'StreamSize_Proportion', N'Proportion of this stream')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3855, N'en   ', N'Subject', N'Subject')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3856, N'en   ', N'SubTrack', N'SubTrack')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3857, N'en   ', N'Summary', N'Summary')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3858, N'en   ', N'Supported formats', N'Supported formats')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3859, N'en   ', N'Supported?', N'Supported?')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3860, N'en   ', N'Synopsis', N'Synopsis')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3861, N'en   ', N'SystemId', N'Id')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3862, N'en   ', N'Tagged_Application', N'Tagging application')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3863, N'en   ', N'Tagged_Date', N'Tagged date')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3864, N'en   ', N'Technician', N'Technician')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3865, N'en   ', N'TermsOfUse', N'Terms of use')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3866, N'en   ', N'TertiaryAudioLanguage', N'Tertiary Audio Language')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3867, N'en   ', N'Text', N'Text')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3868, N'en   ', N'Text - Custom', N'Text - Custom')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3869, N'en   ', N'Text (HTML)', N'Text (HTML)')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3870, N'en   ', N'Text stream(s)', N'Text streams')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3871, N'en   ', N'Text streams', N'Text streams')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3872, N'en   ', N'Text_Codec_List', N'Text codecs')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3873, N'en   ', N'Text_No', N'No text')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3874, N'en   ', N'Text1', N'First text stream')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3875, N'en   ', N'Text2', N'Second text stream')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3876, N'en   ', N'Text3', N'Third text stream')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3877, N'en   ', N'TextCount', N'Count of text streams')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3878, N'en   ', N'TextlessElementsExist', N'Textless Elements Exist')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3879, N'en   ', N'ThanksTo', N'Thanks to')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3880, N'en   ', N'Thousands separator', N'Thousands separator')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3881, N'en   ', N'TimeCode', N'Time code')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3882, N'en   ', N'TimeCode_FirstFrame', N'Time code of first frame')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3883, N'en   ', N'TimeCode_Settings', N'Time code settings')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3884, N'en   ', N'TimeCode_Source', N'Time code source')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3885, N'en   ', N'TimeCode_Striped', N'Time code, striped')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3886, N'en   ', N'TimeStamp', N'Time stamp')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3887, N'en   ', N'TimeZone', N'Timezone')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3888, N'en   ', N'Title', N'Title')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3889, N'en   ', N'Title_More', N'Title, more info')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3890, N'en   ', N'Total', N'Total')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3891, N'en   ', N'TotalNumberOfParts', N'Total Number Of Parts')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3892, N'en   ', N'TotalProgrammeDuration', N'Total Programme Duration')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3893, N'en   ', N'Track', N'Track name')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3894, N'en   ', N'Track_Count', N'Track count')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3895, N'en   ', N'transfer_characteristics', N'Transfer characteristics')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3896, N'en   ', N'Translator', N'Translator')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3897, N'en   ', N'Tree', N'Tree')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3898, N'en   ', N'Tree & Text', N'Tree & Text')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3899, N'en   ', N'Type', N'Type')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3900, N'en   ', N'UniqueID', N'Unique ID')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3901, N'en   ', N'Unknown', N'Unknown')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3902, N'en   ', N'Url', N'Url')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3903, N'en   ', N'Video', N'Video')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3904, N'en   ', N'Video stream(s)', N'Video stream(s)')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3905, N'en   ', N'Video_Codec_List', N'Codecs Video')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3906, N'en   ', N'Video_Delay', N'Delay relative to video')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3907, N'en   ', N'Video_No', N'No video')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3908, N'en   ', N'Video0_Delay', N'Video0 delay')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3909, N'en   ', N'Video1', N'First video stream')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3910, N'en   ', N'VideoComments', N'Video Comments')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3911, N'en   ', N'VideoCount', N'Count of video streams')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3912, N'en   ', N'View', N'View')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3913, N'en   ', N'View_Hint', N'Change the means of viewing information')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3914, N'en   ', N'Warning : more streams in the files', N'Warning : there are more streams in the files')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3915, N'en   ', N'Web', N'Web')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3916, N'en   ', N'WebSite_Audio', N'Go to the web site of this audio codec')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3917, N'en   ', N'WebSite_Audio_More', N'Go to the web site (%Url%) to find this audio codec')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3918, N'en   ', N'WebSite_General', N'Go to the web site of a player for this file')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3919, N'en   ', N'WebSite_General_More', N'Go to the web site of a player for this file')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3920, N'en   ', N'WebSite_Text', N'Go to the web site of this text codec')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3921, N'en   ', N'WebSite_Text_More', N'Go to the web site (%Url%) to find this text codec')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3922, N'en   ', N'WebSite_Url', N'http://MediaArea.net/MediaInfo')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3923, N'en   ', N'WebSite_Video', N'Go to the web site of this video codec')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3924, N'en   ', N'WebSite_Video_More', N'Go to the web site (%Url%) to find this video codec')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3925, N'en   ', N'Width', N'Width')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3926, N'en   ', N'Width_CleanAperture', N'Clean aperture width')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3927, N'en   ', N'Width_Original', N'Original width')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3928, N'en   ', N'WriteMe', N'Write mail to author')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3929, N'en   ', N'WriteToTranslator', N'Write to translator')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3930, N'en   ', N'Written_Date', N'Written date')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3931, N'en   ', N'Written_Location', N'Written location')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3932, N'en   ', N'WrittenBy', N'Written by')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3933, N'en   ', N'Yes', N'Yes')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3934, N'en   ', N'Your system', N'Your system')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3935, N'en   ', N'ZZ_Automatic_Percent', N'100')
GO
INSERT [dbo].[TranslateTable] ([Id], [LanguageCode], [Title], [Translate]) VALUES (3936, N'en   ', N'ZZ_AutomaticLanguage_Percent', N'100')
GO
SET IDENTITY_INSERT [dbo].[TranslateTable] OFF
GO

*/