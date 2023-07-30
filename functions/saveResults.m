function saveResults(systemName, numAreas, lineLoss_kW, substationPower_kW, timeToSolveOPFs_s, timePeriodNum, numIterations, programRunTime)
    delta_t = 0.25;
    filenameSavedResults = strcat("processedData/", systemName, "/numAreas_", num2str(numAreas), "/output.txt");
    if timePeriodNum == 1
        fid = fopen(filenameSavedResults, 'w');
    else
        fid = fopen(filenameSavedResults, 'a');
    end

    fprintf(fid, "Time Period = %d or Time = %.2f hours.\n", timePeriodNum, timePeriodNum*delta_t);
    fprintf(fid, "Line Loss = %.2fkW\n", lineLoss_kW);        
    fprintf(fid, "Substation Power = %.2fkW\n", substationPower_kW); 
    fprintf(fid, "Time to Solve = %.3fs\n", timeToSolveOPFs_s);    
    fprintf(fid, "Number of Iterations = %d\n", numIterations);
    fprintf(fid, "Program Run Time: %.2f\n", programRunTime);
    fclose(fid);
end