function tests = ScatterPlotTest

tests = functiontests(localfunctions);

end

function oneTest(testCase)
   lhS = const_lh;
   
   xV = rand(100,1);
   yV = xV - xV .^ 2 + rand(100,1);

   spS = figuresLH.ScatterPlot([], 'visible', false);
   spS.plot(xV, yV);
   spS.format;
   spS.save(fullfile(lhS.dirS.testFileDir,  'ScatterPlotTest'), true);
   % spS.close;
end