package PBLabs.Engine.Debug.Log4PBE
{
   public class TraceAppender extends LogAppender
   {
      public override function AddLogMessage(level:String, loggerName:String, errorNumber:int, message:String, arguments:Array):void
      {
         var numberString:String = "";
         if (errorNumber >= 0)
            numberString = " - " + errorNumber;
         
         trace(level + ": " + loggerName + numberString + " - " + _Replace(message, arguments));
      }
   }
}