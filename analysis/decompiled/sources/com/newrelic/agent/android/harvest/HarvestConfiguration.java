package com.newrelic.agent.android.harvest;

import a0.b;
import a1.d;
import com.newrelic.agent.android.activity.config.ActivityTraceConfiguration;
import com.newrelic.com.google.gson.annotations.SerializedName;
import java.util.Arrays;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes.dex */
public class HarvestConfiguration {
    private static final String DEFAULT_ACCOUNT_ID = "";
    private static final int DEFAULT_ACTIVITY_TRACE_LENGTH = 65534;
    private static final int DEFAULT_ACTIVITY_TRACE_MAX_REPORT_ATTEMPTS = 1;
    private static final float DEFAULT_ACTIVITY_TRACE_MIN_UTILIZATION = 0.3f;
    private static final String DEFAULT_APP_ID = "";
    private static final int DEFAULT_ERROR_LIMIT = 50;
    private static final int DEFAULT_MAX_TRANSACTION_AGE = 600;
    private static final int DEFAULT_MAX_TRANSACTION_COUNT = 1000;
    private static final String DEFAULT_PRIORITY_ENCODING_KEY = "d67afc830dab717fd163bfcb0b8b88423e9a1a3b";
    private static final int DEFAULT_REPORT_PERIOD = 60;
    private static final int DEFAULT_RESPONSE_BODY_LIMIT = 2048;
    private static final int DEFAULT_STACK_TRACE_LIMIT = 100;
    private static HarvestConfiguration defaultHarvestConfiguration;

    @SerializedName("account_id")
    private String account_id;

    @SerializedName("activity_trace_max_report_attempts")
    private int activity_trace_max_report_attempts;

    @SerializedName("activity_trace_max_size")
    private int activity_trace_max_size;

    @SerializedName("activity_trace_min_utilization")
    private double activity_trace_min_utilization;

    @SerializedName("application_id")
    private String application_id;

    @SerializedName("at_capture")
    private ActivityTraceConfiguration at_capture;

    @SerializedName("collect_network_errors")
    private boolean collect_network_errors;

    @SerializedName("cross_process_id")
    private String cross_process_id;

    @SerializedName("data_report_period")
    private int data_report_period;

    @SerializedName("data_token")
    private int[] data_token;

    @SerializedName("error_limit")
    private int error_limit;

    @SerializedName("priority_encoding_key")
    private String priority_encoding_key;

    @SerializedName("report_max_transaction_age")
    private int report_max_transaction_age;

    @SerializedName("report_max_transaction_count")
    private int report_max_transaction_count;

    @SerializedName("response_body_limit")
    private int response_body_limit;

    @SerializedName("server_timestamp")
    private long server_timestamp;

    @SerializedName("stack_trace_limit")
    private int stack_trace_limit;

    public HarvestConfiguration() {
        setDefaultValues();
    }

    public static HarvestConfiguration getDefaultHarvestConfiguration() {
        HarvestConfiguration harvestConfiguration = defaultHarvestConfiguration;
        if (harvestConfiguration != null) {
            return harvestConfiguration;
        }
        HarvestConfiguration harvestConfiguration2 = new HarvestConfiguration();
        defaultHarvestConfiguration = harvestConfiguration2;
        return harvestConfiguration2;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        HarvestConfiguration harvestConfiguration = (HarvestConfiguration) obj;
        if (this.collect_network_errors != harvestConfiguration.collect_network_errors || this.data_report_period != harvestConfiguration.data_report_period || this.error_limit != harvestConfiguration.error_limit || this.report_max_transaction_age != harvestConfiguration.report_max_transaction_age || this.report_max_transaction_count != harvestConfiguration.report_max_transaction_count || this.response_body_limit != harvestConfiguration.response_body_limit || this.stack_trace_limit != harvestConfiguration.stack_trace_limit || this.activity_trace_max_size != harvestConfiguration.activity_trace_max_size || this.activity_trace_max_report_attempts != harvestConfiguration.activity_trace_max_report_attempts) {
            return false;
        }
        String str = this.cross_process_id;
        if (str == null && harvestConfiguration.cross_process_id != null) {
            return false;
        }
        if (str != null && harvestConfiguration.cross_process_id == null) {
            return false;
        }
        if ((str != null && !str.equals(harvestConfiguration.cross_process_id)) || !this.priority_encoding_key.equals(harvestConfiguration.priority_encoding_key)) {
            return false;
        }
        String str2 = this.account_id;
        if (str2 == null && harvestConfiguration.account_id != null) {
            return false;
        }
        if (str2 != null && harvestConfiguration.account_id == null) {
            return false;
        }
        if (str2 != null && !str2.equals(harvestConfiguration.account_id)) {
            return false;
        }
        String str3 = this.application_id;
        if (str3 == null && harvestConfiguration.application_id != null) {
            return false;
        }
        if (str3 != null && harvestConfiguration.application_id == null) {
            return false;
        }
        if ((str3 == null || str3.equals(harvestConfiguration.application_id)) && ((int) this.activity_trace_min_utilization) * 100 == ((int) harvestConfiguration.activity_trace_min_utilization) * 100) {
            return Arrays.equals(this.data_token, harvestConfiguration.data_token);
        }
        return false;
    }

    public String getAccount_id() {
        String str = this.account_id;
        return str == null ? "" : str;
    }

    public int getActivity_trace_max_report_attempts() {
        return this.activity_trace_max_report_attempts;
    }

    public int getActivity_trace_max_size() {
        return this.activity_trace_max_size;
    }

    public double getActivity_trace_min_utilization() {
        return this.activity_trace_min_utilization;
    }

    public String getApplication_id() {
        String str = this.application_id;
        return str == null ? "" : str;
    }

    public ActivityTraceConfiguration getAt_capture() {
        return this.at_capture;
    }

    public String getCross_process_id() {
        return this.cross_process_id;
    }

    public DataToken getDataToken() {
        if (this.data_token == null) {
            return null;
        }
        int[] iArr = this.data_token;
        return new DataToken(iArr[0], iArr[1]);
    }

    public int getData_report_period() {
        return this.data_report_period;
    }

    public int[] getData_token() {
        return this.data_token;
    }

    public int getError_limit() {
        return this.error_limit;
    }

    public String getPriority_encoding_key() {
        return this.priority_encoding_key;
    }

    public long getReportMaxTransactionAgeMilliseconds() {
        return TimeUnit.MILLISECONDS.convert(this.report_max_transaction_age, TimeUnit.SECONDS);
    }

    public int getReport_max_transaction_age() {
        return this.report_max_transaction_age;
    }

    public int getReport_max_transaction_count() {
        return this.report_max_transaction_count;
    }

    public int getResponse_body_limit() {
        return this.response_body_limit;
    }

    public long getServer_timestamp() {
        return this.server_timestamp;
    }

    public int getStack_trace_limit() {
        return this.stack_trace_limit;
    }

    public int hashCode() {
        int i10 = (this.collect_network_errors ? 1 : 0) * 31;
        String str = this.cross_process_id;
        int iHashCode = (((i10 + (str != null ? str.hashCode() : 0)) * 31) + this.data_report_period) * 31;
        int[] iArr = this.data_token;
        int iHashCode2 = ((((((((((((((iHashCode + (iArr != null ? Arrays.hashCode(iArr) : 0)) * 31) + this.error_limit) * 31) + this.report_max_transaction_age) * 31) + this.report_max_transaction_count) * 31) + this.response_body_limit) * 31) + this.stack_trace_limit) * 31) + this.activity_trace_max_size) * 31) + this.activity_trace_max_report_attempts;
        long jDoubleToLongBits = Double.doubleToLongBits(this.activity_trace_min_utilization);
        int i11 = ((iHashCode2 * 31) + ((int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32)))) * 31;
        ActivityTraceConfiguration activityTraceConfiguration = this.at_capture;
        int iHashCode3 = (i11 + (activityTraceConfiguration != null ? activityTraceConfiguration.hashCode() : 0)) * 31;
        String str2 = this.account_id;
        int iHashCode4 = (iHashCode3 + (str2 != null ? str2.hashCode() : 0)) * 31;
        String str3 = this.application_id;
        int iHashCode5 = (iHashCode4 + (str3 != null ? str3.hashCode() : 0)) * 31;
        String str4 = this.priority_encoding_key;
        return iHashCode5 + (str4 != null ? str4.hashCode() : 0);
    }

    public boolean isCollect_network_errors() {
        return this.collect_network_errors;
    }

    public void reconfigure(HarvestConfiguration harvestConfiguration) {
        setCollect_network_errors(harvestConfiguration.isCollect_network_errors());
        if (harvestConfiguration.getCross_process_id() != null) {
            setCross_process_id(harvestConfiguration.getCross_process_id());
        }
        setData_report_period(harvestConfiguration.getData_report_period());
        if (harvestConfiguration.getDataToken().isValid()) {
            setData_token(harvestConfiguration.getData_token());
        }
        setError_limit(harvestConfiguration.getError_limit());
        setReport_max_transaction_age(harvestConfiguration.getReport_max_transaction_age());
        setReport_max_transaction_count(harvestConfiguration.getReport_max_transaction_count());
        setResponse_body_limit(harvestConfiguration.getResponse_body_limit());
        setServer_timestamp(harvestConfiguration.getServer_timestamp());
        setStack_trace_limit(harvestConfiguration.getStack_trace_limit());
        setActivity_trace_min_utilization(harvestConfiguration.getActivity_trace_min_utilization());
        setActivity_trace_max_report_attempts(harvestConfiguration.getActivity_trace_max_report_attempts());
        if (harvestConfiguration.getAt_capture() != null) {
            setAt_capture(harvestConfiguration.getAt_capture());
        }
        setPriority_encoding_key(harvestConfiguration.getPriority_encoding_key());
        setAccount_id(harvestConfiguration.getAccount_id());
        setApplication_id(harvestConfiguration.getApplication_id());
    }

    public void setAccount_id(String str) {
        this.account_id = str;
    }

    public void setActivity_trace_max_report_attempts(int i10) {
        this.activity_trace_max_report_attempts = i10;
    }

    public void setActivity_trace_max_size(int i10) {
        this.activity_trace_max_size = i10;
    }

    public void setActivity_trace_min_utilization(double d10) {
        this.activity_trace_min_utilization = d10;
    }

    public void setApplication_id(String str) {
        this.application_id = str;
    }

    public void setAt_capture(ActivityTraceConfiguration activityTraceConfiguration) {
        this.at_capture = activityTraceConfiguration;
    }

    public void setCollect_network_errors(boolean z10) {
        this.collect_network_errors = z10;
    }

    public void setCross_process_id(String str) {
        this.cross_process_id = str;
    }

    public void setData_report_period(int i10) {
        this.data_report_period = i10;
    }

    public void setData_token(int[] iArr) {
        this.data_token = iArr;
    }

    public void setDefaultValues() {
        setData_token(new int[2]);
        setCollect_network_errors(true);
        setCross_process_id(null);
        setData_report_period(60);
        setError_limit(50);
        setResponse_body_limit(DEFAULT_RESPONSE_BODY_LIMIT);
        setStack_trace_limit(100);
        setReport_max_transaction_age(600);
        setReport_max_transaction_count(DEFAULT_MAX_TRANSACTION_COUNT);
        setActivity_trace_max_size(DEFAULT_ACTIVITY_TRACE_LENGTH);
        setActivity_trace_max_report_attempts(1);
        setActivity_trace_min_utilization(0.30000001192092896d);
        setAt_capture(ActivityTraceConfiguration.defaultActivityTraceConfiguration());
        setPriority_encoding_key(DEFAULT_PRIORITY_ENCODING_KEY);
        setAccount_id("");
        setApplication_id("");
    }

    public void setError_limit(int i10) {
        this.error_limit = i10;
    }

    public void setPriority_encoding_key(String str) {
        this.priority_encoding_key = str;
    }

    public void setReport_max_transaction_age(int i10) {
        this.report_max_transaction_age = i10;
    }

    public void setReport_max_transaction_count(int i10) {
        this.report_max_transaction_count = i10;
    }

    public void setResponse_body_limit(int i10) {
        this.response_body_limit = i10;
    }

    public void setServer_timestamp(long j10) {
        this.server_timestamp = j10;
    }

    public void setStack_trace_limit(int i10) {
        this.stack_trace_limit = i10;
    }

    public String toString() {
        StringBuilder sbC = b.c("HarvestConfiguration{collect_network_errors=");
        sbC.append(this.collect_network_errors);
        sbC.append(", cross_process_id='");
        d.f(sbC, this.cross_process_id, '\'', ", data_report_period=");
        sbC.append(this.data_report_period);
        sbC.append(", data_token=");
        sbC.append(Arrays.toString(this.data_token));
        sbC.append(", error_limit=");
        sbC.append(this.error_limit);
        sbC.append(", report_max_transaction_age=");
        sbC.append(this.report_max_transaction_age);
        sbC.append(", report_max_transaction_count=");
        sbC.append(this.report_max_transaction_count);
        sbC.append(", response_body_limit=");
        sbC.append(this.response_body_limit);
        sbC.append(", server_timestamp=");
        sbC.append(this.server_timestamp);
        sbC.append(", stack_trace_limit=");
        sbC.append(this.stack_trace_limit);
        sbC.append(", activity_trace_max_size=");
        sbC.append(this.activity_trace_max_size);
        sbC.append(", activity_trace_max_report_attempts=");
        sbC.append(this.activity_trace_max_report_attempts);
        sbC.append(", activity_trace_min_utilization=");
        sbC.append(this.activity_trace_min_utilization);
        sbC.append(", at_capture=");
        sbC.append(this.at_capture);
        sbC.append(", priority_encoding_key=");
        sbC.append(this.priority_encoding_key);
        sbC.append(", account_id=");
        sbC.append(this.account_id);
        sbC.append(", application_id=");
        return a0.d.d(sbC, this.application_id, '}');
    }
}
