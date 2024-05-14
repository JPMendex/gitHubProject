/**
 * @author          Daniel Correia
 * @description     Class to build errors 
 * 
 * Modification Log
 * ------------------------------------------------------------------------------------
 * Developer           Date            Description
 * ------------------------------------------------------------------------------------
 * Daniel Correia      2022/04/05      Original Version
 **/
public class EH_ErrorAndMonitoringLog {

	private string errorCode;
	private string category;
	private string origin;
	private string priority;
	private string requestBody;
	private string responseBody;
	private string owner;
	private string actorId;
	private string recordId;
	private DateTime occurenceDate;
	private EH_ExceptionWrapper exceptionWrapper;
	private string errorMessage;
	private string resolutionTips;
	private string additionalComments;
	private string einstein1;
	private string einstein2;
	
	/**
		*  Methods name:    EH_ErrorAndMonitoringLog
		*  @description:    Method to construct error's fields.
	**/
	private EH_ErrorAndMonitoringLog(
		string errorCode,
		string category,
		string origin,
		string priority,
		string requestBody,
		string responseBody,
		string owner,
		string actorId,
		EH_ExceptionWrapper exceptionWrapper,
		string errorMessage,
		string recordId,
		DateTime occurenceDate,
		string resolutionTips,
		string additionalComments,
		string einstein1,
		string einstein2

	) {
		this.errorCode = errorCode;
		this.category = category;
		this.origin = origin;
		this.priority = priority;
		this.requestBody = requestBody;
		this.responseBody = responseBody;
		this.owner = owner;
		this.actorId = actorId;
		this.exceptionWrapper = exceptionWrapper;
		this.errorMessage = errorMessage;
		this.recordId = recordId;
		this.occurenceDate = occurenceDate;
		this.resolutionTips=resolutionTips;
		this.additionalComments=additionalComments;
		this.einstein1=einstein1;
		this.einstein2=einstein2;
	}

	/**
		*  Method name:     getErrorCode
		*  @description:    Method to return error code.
	**/
	public string getErrorCode() {
		return this.errorCode;
	}

	/**
		*  Method name:     getCategory
		*  @description:    Method to return category
	**/
	public string getCategory() {
		return this.category;
	}

	/**
		*  Method name:     getOrigin
		*  @description:    Method to return origin.
	**/
	public string getOrigin() {
		return this.origin;
	}

	/**
		*  Method name:     getPriority
		*  @description:    Method to return priority.
	**/
	public string getPriority() {
		return this.priority;
	}

	/**
		*  Method name:     getRequestBody
		*  @description:    Method to return request body.
	**/
	public string getRequestBody() {
		return this.requestBody;
	}

	/**
		*  Method name:     getRequestBody
		*  @description:    Method to return request body.
	**/
	public string getResponseBody() {
		return this.responseBody;
	}

	/**
		*  Method name:     getOWner
		*  @description:    Method to return error owner.
	**/
	public string getOwner() {
		return this.owner;
	}

	/**
		*  Method name:     getActorId
		*  @description:    Method to return actorId
	**/
	public string getActorId() {
		return this.actorId;
	}

	/**
		*  Method name:     EH_ExceptionWrapper
		*  @description:    Method to return exceptionWrapper
	**/
	public EH_ExceptionWrapper getExceptionWrapper() {
		return this.exceptionWrapper;
	}

	/**
		*  Method name:     getErrorMessage
		*  @description:    Method to return errorMessage
	**/
	public string getErrorMessage() {
		return this.errorMessage;
	}

	/**
		*  Method name:     getRecordId
		*  @description:    Method to return recordId.
	**/
	public string getRecordId() {
		return this.recordId;
	}

	/**
		*  Method name:     occurenceDate
		*  @description:    Method to return occurenceDate.
	**/
	public DateTime getOccurenceDate() {
		return this.occurenceDate;
	}

	/**
		*  Method name:     getAddicional1
		*  @description:    Method to return additional fields.
	**/
	public string getResolutionTips() {
		return this.resolutionTips;
	}
	
	/**
		*  Method name:     getAddicional2
		*  @description:    Method to return additional fields.
	**/
	public string getAdditionalComments() {
		return this.additionalComments;
	}

	/**
		*  Method name:     getAddicional3
		*  @description:    Method to return additional fields.
	**/
	public string getEinstein1() {
		return this.einstein1;
	}

	/**

		*  Method name:     getAddicional4
		*  @description:    Method to return additional fields.
	**/
	public string getEinstein2() {
		return this.einstein2;
	}

	/**
		*  Class name:     ErrorDetailsBuilder
		*  @description:     Class to build detail error 
	**/
	public class ErrorDetailsBuilder {
		private string errorCode;
		private string category;
		private string origin;
		private string priority;
		private string requestBody;
		private string responseBody;
		private string status;
		private string owner;
		private string actorId;
		private EH_ExceptionWrapper exceptionWrapper;
		private string errorMessage;
		private string recordId;
		private DateTime occurenceDate;
		private string resolutionTips;
		private string additionalComments;
		private string einstein1;
		private string einstein2;

		/**	
			*  Method name:     setErrorCode
			*  @description:    Method to set errorCode.
		**/
		public ErrorDetailsBuilder setErrorCode(string errorCode) {
			this.errorCode = errorCode;
			return this;
		}
		
		/**
			*  Method name:     setCategory
			*  @description:    Method to set error category.
		**/	
		public ErrorDetailsBuilder setCategory(String category) {
			this.category = string.valueOf(category);
			return this;
		}

		/**
			*  Method name:     setOrigin
			*  @description:    Method to set the origin of error.
		**/	
		public ErrorDetailsBuilder setOrigin(String origin) {
			this.origin = origin;
			return this;
		}

		/**
			*  Method name:     setPriority
			*  @description:    Method to set the priority of error.
		**/		
		public ErrorDetailsBuilder setPriority(String priority) {
			this.priority = priority;
			return this;
		}

		/**
			*  Method name:     setRequestBody
			*  @description:    Method to set request body
		**/	
		public ErrorDetailsBuilder setRequestBody(String requestBody) {
			this.requestBody = requestBody.left(32768);
			return this;
		}

		/**
			*  Method name:     setResponseBody
			*  @description:    Method to set response body
		**/
		public ErrorDetailsBuilder setResponseBody(String responseBody) {
			this.responseBody = responseBody.left(32768);
			return this;
		}
		
		/**
			*  Method name:     setOwnder
			*  @description:    Method to set error owner.
		**/
		public ErrorDetailsBuilder setOwner(String owner) {
			this.owner = owner;
			return this;
		}

		/**
			*  Method name:     setActorId
			*  @description:    Method to set actor id.
		**/
		public ErrorDetailsBuilder setActorId(string actorId) {
			this.actorId = actorId;
			return this;
		}

		/**
			*  Method name:     setExceptionWrapper
			*  @description:    Method to set exceptionWrapper.
		**/
		public ErrorDetailsBuilder setExceptionWrapper(EH_ExceptionWrapper exceptionWrapper) {
			this.exceptionWrapper = exceptionWrapper;
			return this;
		}

		/**
			*  Method name:     setErrorMessage
			*  @description:    Method to set Message Error.
		**/
		public ErrorDetailsBuilder setErrorMessage(string errorMessage) {
			this.errorMessage = errorMessage.left(32768);
			return this;
		}

		/**
			*  Method name:     setRecordId
			*  @description:    Method to set setRecordId.
		**/
		public ErrorDetailsBuilder setRecordId(string recordId) {
			this.recordId = recordId;
			return this;
		}

		/**
      		*  Method name:     occurenceDate
      		*  @description:    Method to set occurenceDate.
    	**/
    	public ErrorDetailsBuilder setOccurenceDate(DateTime occurenceDate) {
			this.occurenceDate = DateTime.now();
			System.debug('Date submitted' + this.occurenceDate);
			return this;
	  	}

		/**
			*  Method name:     setResolutionTips
			*  @description:    Method to set an additional field.
		**/
		public ErrorDetailsBuilder setResolutionTips(String resolutionTips) {
			this.resolutionTips = resolutionTips.left(32768);
			return this;
		}

		/**
			*  Method name:     setAdditionalComments
			*  @description:    Method to set an additional field.
		**/
		public ErrorDetailsBuilder setAdditionalComments(String additionalComments) {
			this.additionalComments = additionalComments.left(32768);
			return this;
		}
		
		/**
			*  Method name:     setEinstein1
			*  @description:    Method to set an additional field.
		**/
		public ErrorDetailsBuilder setEinstein1(String einstein1) {
			this.Einstein1 = einstein1.left(32768);
			return this;
		}

		/**
			*  Method name:     setEinstein2
			*  @description:    Method to set an additional field.
		**/
		public ErrorDetailsBuilder setEinstein2(String einstein2) {
			this.einstein2 = einstein2.left(32768);
			return this;
		}

		/**
			*  Method name:     EH_ErrorAndMonitoringLog
			*  @description:    Method to build the error and monitoring log
		**/
		public EH_ErrorAndMonitoringLog build() {
			return new EH_ErrorAndMonitoringLog(
				this.errorCode,
				this.category,
				this.origin,
				this.priority,
				this.requestBody,
				this.responseBody,
				this.owner,
				this.actorId,
				this.exceptionWrapper,
				this.errorMessage,
				this.recordId,
				this.occurenceDate,
				this.resolutionTips,
				this.additionalComments,
				this.einstein1,
				this.einstein2
			);
		}
	}
}