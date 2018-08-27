-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: feature-code2
-- ------------------------------------------------------
-- Server version	5.5.45

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Temporary view structure for view `forecast_eop`
--

DROP TABLE IF EXISTS `forecast_eop`;
/*!50001 DROP VIEW IF EXISTS `forecast_eop`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `forecast_eop` AS SELECT 
 1 AS `year`,
 1 AS `quarter`,
 1 AS `mthnbr`,
 1 AS `brand`,
 1 AS `channel`,
 1 AS `country`,
 1 AS `season`,
 1 AS `fc`,
 1 AS `EOPInv`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `active_fclist`
--

DROP TABLE IF EXISTS `active_fclist`;
/*!50001 DROP VIEW IF EXISTS `active_fclist`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `active_fclist` AS SELECT 
 1 AS `Fiscal Year`,
 1 AS `Brand`,
 1 AS `DVCode`,
 1 AS `FCDesc`,
 1 AS `LY FC`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `new_view`
--

DROP TABLE IF EXISTS `new_view`;
/*!50001 DROP VIEW IF EXISTS `new_view`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `new_view` AS SELECT 
 1 AS `year`,
 1 AS `week`,
 1 AS `brand`,
 1 AS `country`,
 1 AS `channel`,
 1 AS `plan`,
 1 AS `salesUnits`,
 1 AS `air`,
 1 AS `aur`,
 1 AS `auc`,
 1 AS `recUnits`,
 1 AS `recCost`,
 1 AS `recRtl`,
 1 AS `recAIR`,
 1 AS `recAUR`,
 1 AS `phUnits`,
 1 AS `phCost`,
 1 AS `phRtl`,
 1 AS `sohAdjust`,
 1 AS `storeInv`,
 1 AS `dcInv`,
 1 AS `bopUnits`,
 1 AS `transIn`,
 1 AS `transOut`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `fiscal_eop`
--

DROP TABLE IF EXISTS `fiscal_eop`;
/*!50001 DROP VIEW IF EXISTS `fiscal_eop`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `fiscal_eop` AS SELECT 
 1 AS `quarter`,
 1 AS `fiscal_MoNbr`,
 1 AS `eopWk`,
 1 AS `eomWk`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `brand_forecast`
--

DROP TABLE IF EXISTS `brand_forecast`;
/*!50001 DROP VIEW IF EXISTS `brand_forecast`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `brand_forecast` AS SELECT 
 1 AS `year`,
 1 AS `week`,
 1 AS `brand`,
 1 AS `country`,
 1 AS `channel`,
 1 AS `plan`,
 1 AS `salesUnits`,
 1 AS `air`,
 1 AS `aur`,
 1 AS `auc`,
 1 AS `recUnits`,
 1 AS `recCost`,
 1 AS `recRtl`,
 1 AS `recAIR`,
 1 AS `recAUR`,
 1 AS `phUnits`,
 1 AS `phCost`,
 1 AS `phRtl`,
 1 AS `sohAdjust`,
 1 AS `storeInv`,
 1 AS `dcInv`,
 1 AS `bopUnits`,
 1 AS `transIn`,
 1 AS `transOut`,
 1 AS `ooUnits`,
 1 AS `ooCost`,
 1 AS `ooRtl`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `history_eop`
--

DROP TABLE IF EXISTS `history_eop`;
/*!50001 DROP VIEW IF EXISTS `history_eop`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `history_eop` AS SELECT 
 1 AS `year`,
 1 AS `quarter`,
 1 AS `mthnbr`,
 1 AS `brand`,
 1 AS `channel`,
 1 AS `country`,
 1 AS `season`,
 1 AS `fc`,
 1 AS `EOPInv`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `brand_history`
--

DROP TABLE IF EXISTS `brand_history`;
/*!50001 DROP VIEW IF EXISTS `brand_history`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `brand_history` AS SELECT 
 1 AS `year`,
 1 AS `week`,
 1 AS `brand`,
 1 AS `country`,
 1 AS `channel`,
 1 AS `salesUnits`,
 1 AS `air`,
 1 AS `aur`,
 1 AS `auc`,
 1 AS `recUnits`,
 1 AS `recCost`,
 1 AS `recRtl`,
 1 AS `recAIR`,
 1 AS `recAUC`,
 1 AS `sohAdjust`,
 1 AS `storeInv`,
 1 AS `dcInv`,
 1 AS `transIn`,
 1 AS `transOut`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `fiscal_short`
--

DROP TABLE IF EXISTS `fiscal_short`;
/*!50001 DROP VIEW IF EXISTS `fiscal_short`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `fiscal_short` AS SELECT 
 1 AS `calendar_year`,
 1 AS `id`,
 1 AS `week_label`,
 1 AS `start_date`,
 1 AS `fiscal_MoNbr`,
 1 AS `quarter`,
 1 AS `week_of_month`,
 1 AS `fiscal_year`,
 1 AS `fiscal_week`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `forecast_eop`
--

/*!50001 DROP VIEW IF EXISTS `forecast_eop`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `forecast_eop` AS select `f`.`year` AS `year`,`e`.`quarter` AS `quarter`,`e`.`fiscal_MoNbr` AS `mthnbr`,`f`.`brand` AS `brand`,`f`.`channel` AS `channel`,`f`.`country` AS `country`,`f`.`season` AS `season`,`f`.`fc` AS `fc`,`f`.`bopUnits` AS `EOPInv` from (`tblforecast` `f` join `fiscal_eop` `e` on((`f`.`week` = `e`.`eopWk`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `active_fclist`
--

/*!50001 DROP VIEW IF EXISTS `active_fclist`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `active_fclist` AS select 2018 AS `Fiscal Year`,`f`.`Brand` AS `Brand`,`f`.`DVCode` AS `DVCode`,`f`.`FCDesc` AS `FCDesc`,`f`.`LY FC` AS `LY FC` from `tblfclist` `f` where (((`f`.`Fiscal Year` >= 2018) or (`f`.`Fiscal Year` = 9999)) and (`f`.`Brand` <> 'unassigned') and (`f`.`DVCode` is not null) and isnull(`f`.`FC Group`)) order by `f`.`Brand`,`f`.`DVCode`,`f`.`FCDesc` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `new_view`
--

/*!50001 DROP VIEW IF EXISTS `new_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `new_view` AS select `f`.`year` AS `year`,`f`.`week` AS `week`,`f`.`brand` AS `brand`,`f`.`country` AS `country`,`f`.`channel` AS `channel`,`f`.`plan` AS `plan`,sum(`f`.`salesUnits`) AS `salesUnits`,if((sum(`f`.`salesUnits`) <> 0),(sum((`f`.`air` * `f`.`salesUnits`)) / sum(`f`.`salesUnits`)),0) AS `air`,if((sum(`f`.`salesUnits`) <> 0),(sum((`f`.`aur` * `f`.`salesUnits`)) / sum(`f`.`salesUnits`)),0) AS `aur`,if((sum(`f`.`salesUnits`) <> 0),(sum((`f`.`aur` * `f`.`salesUnits`)) / sum(`f`.`salesUnits`)),0) AS `auc`,sum(`f`.`recUnits`) AS `recUnits`,sum(`f`.`recCost`) AS `recCost`,sum(`f`.`recRtl`) AS `recRtl`,if((sum(`f`.`recUnits`) <> 0),(sum((`f`.`recAIR` * `f`.`recUnits`)) / sum(`f`.`recUnits`)),0) AS `recAIR`,if((sum(`f`.`recUnits`) <> 0),(sum((`f`.`recAUC` * `f`.`recUnits`)) / sum(`f`.`recUnits`)),0) AS `recAUR`,sum(`f`.`phUnits`) AS `phUnits`,sum(`f`.`phCost`) AS `phCost`,sum(`f`.`phRtl`) AS `phRtl`,sum(`f`.`sohAdjust`) AS `sohAdjust`,sum(`f`.`storeInv`) AS `storeInv`,sum(`f`.`dcInv`) AS `dcInv`,sum(`f`.`bopUnits`) AS `bopUnits`,sum(`f`.`transIn`) AS `transIn`,sum(`f`.`transOut`) AS `transOut` from `tblforecast` `f` where ((`f`.`brand` = 'Crazy 8') and (`f`.`channel` = 'Retail') and (`f`.`plan` = 'MBR') and (`f`.`country` = 'USA')) group by `f`.`year`,`f`.`week`,`f`.`brand`,`f`.`country`,`f`.`channel`,`f`.`plan` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `fiscal_eop`
--

/*!50001 DROP VIEW IF EXISTS `fiscal_eop`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `fiscal_eop` AS select `fiscal_calendar`.`quarter` AS `quarter`,`fiscal_calendar`.`fiscal_MoNbr` AS `fiscal_MoNbr`,max(`fiscal_calendar`.`fiscal_week`) AS `eopWk`,max(`fiscal_calendar`.`week_of_month`) AS `eomWk` from `fiscal_calendar` where (`fiscal_calendar`.`fiscal_year` = 2018) group by `fiscal_calendar`.`quarter`,`fiscal_calendar`.`fiscal_MoNbr` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `brand_forecast`
--

/*!50001 DROP VIEW IF EXISTS `brand_forecast`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `brand_forecast` AS select `f`.`year` AS `year`,`f`.`week` AS `week`,`f`.`brand` AS `brand`,`f`.`country` AS `country`,`f`.`channel` AS `channel`,`f`.`plan` AS `plan`,sum(`f`.`salesUnits`) AS `salesUnits`,if((sum(`f`.`salesUnits`) <> 0),(sum((`f`.`air` * `f`.`salesUnits`)) / sum(`f`.`salesUnits`)),0) AS `air`,if((sum(`f`.`salesUnits`) <> 0),(sum((`f`.`aur` * `f`.`salesUnits`)) / sum(`f`.`salesUnits`)),0) AS `aur`,if((sum(`f`.`salesUnits`) <> 0),(sum((`f`.`aur` * `f`.`salesUnits`)) / sum(`f`.`salesUnits`)),0) AS `auc`,sum(`f`.`recUnits`) AS `recUnits`,sum(`f`.`recCost`) AS `recCost`,sum(`f`.`recRtl`) AS `recRtl`,if((sum(`f`.`recUnits`) <> 0),(sum((`f`.`recAIR` * `f`.`recUnits`)) / sum(`f`.`recUnits`)),0) AS `recAIR`,if((sum(`f`.`recUnits`) <> 0),(sum((`f`.`recAUC` * `f`.`recUnits`)) / sum(`f`.`recUnits`)),0) AS `recAUR`,sum(`f`.`phUnits`) AS `phUnits`,sum(`f`.`phCost`) AS `phCost`,sum(`f`.`phRtl`) AS `phRtl`,sum(`f`.`sohAdjust`) AS `sohAdjust`,sum(`f`.`storeInv`) AS `storeInv`,sum(`f`.`dcInv`) AS `dcInv`,sum(`f`.`bopUnits`) AS `bopUnits`,sum(`f`.`transIn`) AS `transIn`,sum(`f`.`transOut`) AS `transOut`,sum(`oo`.`Units`) AS `ooUnits`,sum(`oo`.`Cost`) AS `ooCost`,sum(`oo`.`Retail`) AS `ooRtl` from (`tblforecast` `f` left join `tblonorder` `oo` on(((`f`.`year` = `oo`.`Year`) and (`f`.`week` = `oo`.`Week`) and (`f`.`brand` = `oo`.`Brand`) and (`f`.`country` = `oo`.`Country`) and (`f`.`channel` = `oo`.`Channel`) and (`f`.`fc` = `oo`.`FC`)))) group by `f`.`year`,`f`.`week`,`f`.`brand`,`f`.`country`,`f`.`channel`,`f`.`plan` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `history_eop`
--

/*!50001 DROP VIEW IF EXISTS `history_eop`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `history_eop` AS select `f`.`year` AS `year`,`e`.`quarter` AS `quarter`,`e`.`fiscal_MoNbr` AS `mthnbr`,`f`.`brand` AS `brand`,`f`.`channel` AS `channel`,`f`.`country` AS `country`,`f`.`season` AS `season`,`f`.`fc` AS `fc`,(if(isnull(`f`.`storeInv`),0,`f`.`storeInv`) + if(isnull(`f`.`dcInv`),0,`f`.`dcInv`)) AS `EOPInv` from (`tblhistory` `f` join `fiscal_eop` `e` on((`f`.`week` = `e`.`eopWk`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `brand_history`
--

/*!50001 DROP VIEW IF EXISTS `brand_history`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `brand_history` AS select `f`.`year` AS `year`,`f`.`week` AS `week`,`f`.`brand` AS `brand`,`f`.`country` AS `country`,`f`.`channel` AS `channel`,sum(`f`.`salesUnits`) AS `salesUnits`,if((sum(`f`.`salesUnits`) <> 0),(sum((`f`.`air` * `f`.`salesUnits`)) / sum(`f`.`salesUnits`)),0) AS `air`,if((sum(`f`.`salesUnits`) <> 0),(sum((`f`.`aur` * `f`.`salesUnits`)) / sum(`f`.`salesUnits`)),0) AS `aur`,if((sum(`f`.`salesUnits`) <> 0),(sum((`f`.`auc` * `f`.`salesUnits`)) / sum(`f`.`salesUnits`)),0) AS `auc`,sum(`f`.`recUnits`) AS `recUnits`,sum(`f`.`recCost`) AS `recCost`,sum(`f`.`recRtl`) AS `recRtl`,if((sum(`f`.`recUnits`) <> 0),(sum((`f`.`recAIR` * `f`.`recUnits`)) / sum(`f`.`recUnits`)),0) AS `recAIR`,if((sum(`f`.`recUnits`) <> 0),(sum((`f`.`recAUC` * `f`.`recUnits`)) / sum(`f`.`recUnits`)),0) AS `recAUC`,sum(`f`.`sohAdjust`) AS `sohAdjust`,sum(`f`.`storeInv`) AS `storeInv`,sum(`f`.`dcInv`) AS `dcInv`,sum(`f`.`transIn`) AS `transIn`,sum(`f`.`transOut`) AS `transOut` from `tblhistory` `f` group by `f`.`year`,`f`.`week`,`f`.`brand`,`f`.`country`,`f`.`channel` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `fiscal_short`
--

/*!50001 DROP VIEW IF EXISTS `fiscal_short`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `fiscal_short` AS select year(str_to_date(`c`.`start_date`,'%m/%d/%Y')) AS `calendar_year`,`c`.`id` AS `id`,`c`.`week_label` AS `week_label`,`c`.`start_date` AS `start_date`,`c`.`fiscal_MoNbr` AS `fiscal_MoNbr`,`c`.`quarter` AS `quarter`,`c`.`week_of_month` AS `week_of_month`,`c`.`fiscal_year` AS `fiscal_year`,`c`.`fiscal_week` AS `fiscal_week` from `fiscal_calendar` `c` order by str_to_date(`c`.`start_date`,'%m/%d/%Y') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Dumping routines for database 'feature-code2'
--
/*!50003 DROP PROCEDURE IF EXISTS `ResetForecastFlag` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ResetForecastFlag`()
BEGIN
Update tblforecast set reforecast=null;
Update tblforecast set reforecast=true where year=2018 and week=21;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-08-27  7:36:58
