public class InActiveOppsTasksCreationBatchSchedule implements Schedulable{
        public void execute(SchedulableContext sc){
            InActiveOppsTasksCreationBatch ab = new InActiveOppsTasksCreationBatch();
            database.executeBatch(ab,10);
        }
    }
