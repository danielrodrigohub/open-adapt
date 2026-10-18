package com.newrelic.agent.android.util;

import a0.b;
import com.newrelic.agent.android.harvest.type.HarvestErrorCodes;
import com.newrelic.agent.android.logging.AgentLog;
import com.newrelic.agent.android.logging.AgentLogManager;
import java.net.ConnectException;
import java.net.MalformedURLException;
import java.net.SocketTimeoutException;
import java.net.UnknownHostException;
import javax.net.ssl.SSLException;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.HttpResponseException;
import org.apache.http.conn.ConnectTimeoutException;

/* JADX INFO: loaded from: classes.dex */
public enum NetworkFailure {
    Unknown(-1),
    BadURL(HarvestErrorCodes.NSURLErrorBadURL),
    TimedOut(HarvestErrorCodes.NSURLErrorTimedOut),
    CannotConnectToHost(HarvestErrorCodes.NSURLErrorCannotConnectToHost),
    DNSLookupFailed(HarvestErrorCodes.NSURLErrorDNSLookupFailed),
    BadServerResponse(HarvestErrorCodes.NSURLErrorBadServerResponse),
    SecureConnectionFailed(HarvestErrorCodes.NSURLErrorSecureConnectionFailed);

    private static final AgentLog log = AgentLogManager.getAgentLog();
    private int errorCode;

    NetworkFailure(int i10) {
        this.errorCode = i10;
    }

    public static int exceptionToErrorCode(Exception exc) {
        return exceptionToNetworkFailure(exc).getErrorCode();
    }

    public static NetworkFailure exceptionToNetworkFailure(Exception exc) {
        AgentLog agentLog = log;
        StringBuilder sbC = b.c("NetworkFailure.exceptionToNetworkFailure: Attempting to convert network exception ");
        sbC.append(exc.getClass().getName());
        sbC.append(" to error code.");
        agentLog.error(sbC.toString());
        NetworkFailure networkFailure = Unknown;
        try {
            if (exc instanceof ConnectTimeoutException) {
                networkFailure = TimedOut;
            } else if ((exc instanceof HttpResponseException) || (exc instanceof ClientProtocolException)) {
                networkFailure = BadServerResponse;
            }
            if (!(exc instanceof SocketTimeoutException)) {
                if (!(exc instanceof UnknownHostException)) {
                    if (!(exc instanceof ConnectException)) {
                        if (!(exc instanceof MalformedURLException)) {
                            if (!(exc instanceof SSLException)) {
                                return networkFailure;
                            }
                            return SecureConnectionFailed;
                        }
                        return BadURL;
                    }
                    return CannotConnectToHost;
                }
                return DNSLookupFailed;
            }
        } catch (NoClassDefFoundError unused) {
            if (!(exc instanceof SocketTimeoutException)) {
                if (!(exc instanceof UnknownHostException)) {
                    if (!(exc instanceof ConnectException)) {
                        if (!(exc instanceof MalformedURLException)) {
                            if (!(exc instanceof SSLException)) {
                                return networkFailure;
                            }
                        }
                        return BadURL;
                    }
                    return CannotConnectToHost;
                }
                return DNSLookupFailed;
            }
            return TimedOut;
        } catch (Throwable th) {
            if (!(exc instanceof SocketTimeoutException) && !(exc instanceof UnknownHostException) && !(exc instanceof ConnectException) && !(exc instanceof MalformedURLException)) {
                boolean z10 = exc instanceof SSLException;
            }
            throw th;
        }
        return TimedOut;
    }

    public static NetworkFailure fromErrorCode(int i10) {
        log.debug("fromErrorCode invoked with errorCode: " + i10);
        for (NetworkFailure networkFailure : values()) {
            if (networkFailure.getErrorCode() == i10) {
                log.debug("fromErrorCode found matching failure: " + networkFailure);
                return networkFailure;
            }
        }
        return Unknown;
    }

    public int getErrorCode() {
        return this.errorCode;
    }
}
