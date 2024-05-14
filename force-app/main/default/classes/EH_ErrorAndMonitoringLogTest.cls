/**
 * @author          Daniel Correia
 * @description    	Class to test ErrorAndMonitoringLog
 * 
 * Modification Log
 * ------------------------------------------------------------------------------------
 * Developer           Date            Description
 * ------------------------------------------------------------------------------------
 * Daniel Correia      2022/04/05      Original Version
 **/
@isTest
public class EH_ErrorAndMonitoringLogTest {
	/**
		*  Class name:     EH_ErrorAndMonitoringLogTest
		*  @description:   Class to test ErrorAndMonitoring 
	**/
	public class applicationException extends Exception {}
	/**
		*  Method name:     build_Test
		*  @description:    Method to test build.
	**/
	@isTest
	static void build_Test() {
		Test.startTest();
			EH_ErrorAndMonitoringLog error = new EH_ErrorAndMonitoringLog.ErrorDetailsBuilder()
				.setErrorCode('100')
				.setCategory('Apex_Class')
				.setOrigin('unitTest')
				.setPriority('HIGH')
				.setRequestBody('RequestBody')
				.setResponseBody('ResponseBody')
				.setOwner('Application Management')
				.setActorId(UserInfo.getUserId())
				.setExceptionWrapper(EH_ExceptionWrapper.exceptionWrapperFactory(new applicationException('add exception')))
				.setRecordId('2323')
				.setErrorMessage('add exception')
				.setResolutionTips('ResolutionTips')
				.setAdditionalComments('AdditionalComments')
				.setEinstein1('Einstein1')
				.setEinstein2('Einstein2')
				.build();

		Test.stopTest();
		System.assertEquals('100', error.getErrorCode(), 'Error Code is not equal');
		System.assertEquals(string.valueOf('Apex_Class'), error.getCategory(), 'Category is not equal');
		System.assertEquals('unitTest', error.getOrigin(), 'Origin is not equal');
		System.assertEquals('HIGH', error.getPriority(), 'Priority is not equal');
		System.assertEquals('RequestBody', error.getRequestBody(), 'Request Body is not equal');
		System.assertEquals('ResponseBody', error.getResponseBody(), 'Response Body is not equal');
		System.assertEquals('Application Management', error.getOwner(), 'Owner is not equal');
		System.assertEquals(UserInfo.getUserId(), error.getActorId(), 'ActorId is not equal');
		System.assertEquals('add exception', error.getExceptionWrapper().message, 'Exception is not equal');
		System.assertEquals('add exception', error.getErrorMessage(), 'Error Message is not equal');
        System.assertEquals('ResolutionTips', error.getResolutionTips(), 'ResolutionTips is not equal');
		System.assertEquals('AdditionalComments', error.getAdditionalComments(), 'AdditionalComments is not equal');
        System.assertEquals('Einstein1', error.getEinstein1(), 'Einstein1 Message is not equal');
		System.assertEquals('Einstein2', error.getEinstein2(), 'Einstein2 Message is not equal');
		System.assertEquals('2323', error.getRecordId(), 'RecordId is not equal');
	}
}