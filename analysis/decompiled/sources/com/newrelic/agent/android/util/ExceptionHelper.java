package com.newrelic.agent.android.util;

import a0.b;
import com.newrelic.agent.android.harvest.AgentHealth;
import com.newrelic.agent.android.harvest.AgentHealthException;
import com.newrelic.agent.android.harvest.type.HarvestErrorCodes;
import com.newrelic.agent.android.logging.AgentLog;
import com.newrelic.agent.android.logging.AgentLogManager;
import java.io.EOFException;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.net.ConnectException;
import java.net.MalformedURLException;
import java.net.SocketTimeoutException;
import java.net.UnknownHostException;
import javax.net.ssl.SSLException;

/* JADX INFO: loaded from: classes.dex */
public class ExceptionHelper implements HarvestErrorCodes {
    private static final AgentLog log = AgentLogManager.getAgentLog();

    public static int exceptionToErrorCode(Exception exc) {
        AgentLog agentLog = log;
        StringBuilder sbC = b.c("ExceptionHelper: exception ");
        sbC.append(exc.getClass().getName());
        sbC.append(" to error code.");
        agentLog.debug(sbC.toString());
        if (exc instanceof UnknownHostException) {
            return HarvestErrorCodes.NSURLErrorDNSLookupFailed;
        }
        if (exc instanceof SocketTimeoutException) {
            return HarvestErrorCodes.NSURLErrorTimedOut;
        }
        if (exc instanceof ConnectException) {
            return HarvestErrorCodes.NSURLErrorCannotConnectToHost;
        }
        if (exc instanceof MalformedURLException) {
            return HarvestErrorCodes.NSURLErrorBadURL;
        }
        if (exc instanceof SSLException) {
            return HarvestErrorCodes.NSURLErrorSecureConnectionFailed;
        }
        if (exc instanceof FileNotFoundException) {
            return HarvestErrorCodes.NRURLErrorFileDoesNotExist;
        }
        if (exc instanceof EOFException) {
            return HarvestErrorCodes.NSURLErrorRequestBodyStreamExhausted;
        }
        if (exc instanceof IOException) {
            recordSupportabilityMetric(exc, "IOException");
        } else if (exc instanceof RuntimeException) {
            recordSupportabilityMetric(exc, "RuntimeException");
        }
        return -1;
    }

    public static void recordSupportabilityMetric(Exception exc, String str) {
        AgentHealthException agentHealthException = new AgentHealthException(exc);
        StackTraceElement stackTraceElement = agentHealthException.getStackTrace()[0];
        log.error(String.format("ExceptionHelper: %s:%s(%s:%s) %s[%s] %s", agentHealthException.getSourceClass(), agentHealthException.getSourceMethod(), stackTraceElement.getFileName(), Integer.valueOf(stackTraceElement.getLineNumber()), str, agentHealthException.getExceptionClass(), agentHealthException.getMessage()));
        AgentHealth.noticeException(agentHealthException, str);
    }
}
