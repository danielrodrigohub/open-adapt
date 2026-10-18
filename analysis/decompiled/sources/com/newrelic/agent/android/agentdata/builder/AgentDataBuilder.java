package com.newrelic.agent.android.agentdata.builder;

import com.newrelic.agent.android.agentdata.HexAttribute;
import com.newrelic.com.google.flatbuffers.FlatBufferBuilder;
import com.newrelic.com.google.gson.GsonBuilder;
import com.newrelic.mobile.fbs.ApplicationInfo;
import com.newrelic.mobile.fbs.BoolSessionAttribute;
import com.newrelic.mobile.fbs.DoubleSessionAttribute;
import com.newrelic.mobile.fbs.HexAgentData;
import com.newrelic.mobile.fbs.HexAgentDataBundle;
import com.newrelic.mobile.fbs.LongSessionAttribute;
import com.newrelic.mobile.fbs.StringSessionAttribute;
import com.newrelic.mobile.fbs.hex.Frame;
import com.newrelic.mobile.fbs.hex.HandledException;
import com.newrelic.mobile.fbs.hex.Thread;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public class AgentDataBuilder {
    public static Map<String, Object> attributesMapFromAgentData(HexAgentData hexAgentData) {
        HashMap map = new HashMap();
        for (int i10 = 0; i10 < hexAgentData.stringAttributesLength(); i10++) {
            StringSessionAttribute stringSessionAttributeStringAttributes = hexAgentData.stringAttributes(i10);
            map.put(stringSessionAttributeStringAttributes.name(), stringSessionAttributeStringAttributes.value());
        }
        for (int i11 = 0; i11 < hexAgentData.longAttributesLength(); i11++) {
            LongSessionAttribute longSessionAttributeLongAttributes = hexAgentData.longAttributes(i11);
            map.put(longSessionAttributeLongAttributes.name(), Long.valueOf(longSessionAttributeLongAttributes.value()));
        }
        for (int i12 = 0; i12 < hexAgentData.doubleAttributesLength(); i12++) {
            DoubleSessionAttribute doubleSessionAttributeDoubleAttributes = hexAgentData.doubleAttributes(i12);
            map.put(doubleSessionAttributeDoubleAttributes.name(), Double.valueOf(doubleSessionAttributeDoubleAttributes.value()));
        }
        for (int i13 = 0; i13 < hexAgentData.boolAttributesLength(); i13++) {
            BoolSessionAttribute boolSessionAttributeBoolAttributes = hexAgentData.boolAttributes(i13);
            map.put(boolSessionAttributeBoolAttributes.name(), Boolean.valueOf(boolSessionAttributeBoolAttributes.value()));
        }
        for (int i14 = 0; i14 < hexAgentData.handledExceptionsLength(); i14++) {
            HandledException handledExceptionHandledExceptions = hexAgentData.handledExceptions(i14);
            map.put(HexAttribute.HEX_ATTR_TIMESTAMP_MS, Long.valueOf(handledExceptionHandledExceptions.timestampMs()));
            map.put(HexAttribute.HEX_ATTR_APP_UUID_HI, Long.valueOf(handledExceptionHandledExceptions.appUuidHigh()));
            map.put(HexAttribute.HEX_ATTR_APP_UUID_LO, Long.valueOf(handledExceptionHandledExceptions.appUuidLow()));
            map.put("name", handledExceptionHandledExceptions.name());
            map.put(HexAttribute.HEX_ATTR_CAUSE, handledExceptionHandledExceptions.cause());
            map.put("message", handledExceptionHandledExceptions.message());
            for (int i15 = 0; i15 < handledExceptionHandledExceptions.threadsLength(); i15++) {
                Thread threadCurrentThread = Thread.currentThread();
                LinkedHashMap linkedHashMap = new LinkedHashMap();
                for (int i16 = 0; i16 < handledExceptionHandledExceptions.threads(i15).framesLength(); i16++) {
                    LinkedHashMap linkedHashMap2 = new LinkedHashMap();
                    linkedHashMap2.put("fileName", handledExceptionHandledExceptions.threads(i15).frames(i16).fileName());
                    linkedHashMap2.put("lineNumber", Long.valueOf(handledExceptionHandledExceptions.threads(i15).frames(i16).lineNumber()));
                    linkedHashMap2.put(HexAttribute.HEX_ATTR_CLASS_NAME, handledExceptionHandledExceptions.threads(i15).frames(i16).className());
                    linkedHashMap2.put(HexAttribute.HEX_ATTR_METHOD_NAME, handledExceptionHandledExceptions.threads(i15).frames(i16).methodName());
                    linkedHashMap.put("frame " + i16, linkedHashMap2);
                }
                linkedHashMap.put("crashed", Boolean.FALSE);
                linkedHashMap.put("state", threadCurrentThread.getState().toString());
                linkedHashMap.put("threadNumber", Long.valueOf(threadCurrentThread.getId()));
                linkedHashMap.put("threadId", threadCurrentThread.getName());
                linkedHashMap.put("priority", Integer.valueOf(threadCurrentThread.getPriority()));
                map.put("thread " + i15, linkedHashMap);
            }
        }
        return map;
    }

    public static void computeIfAbsent(String str, Map<String, Integer> map, FlatBufferBuilder flatBufferBuilder) {
        if (str == null || map.containsValue(str)) {
            return;
        }
        map.put(str, Integer.valueOf(flatBufferBuilder.createString(str)));
    }

    public static FlatBufferBuilder startAndFinishAgentData(Map<String, Object> map, Set<Map<String, Object>> set) {
        String str;
        String str2;
        String str3;
        long jLongValue;
        long jLongValue2;
        HashMap map2 = new HashMap();
        FlatBufferBuilder flatBufferBuilder = new FlatBufferBuilder();
        for (Map.Entry<String, Object> entry : map.entrySet()) {
            String key = entry.getKey();
            Object value = entry.getValue();
            computeIfAbsent(key, map2, flatBufferBuilder);
            if (value instanceof String) {
                computeIfAbsent((String) value, map2, flatBufferBuilder);
            }
        }
        List<Map> list = null;
        Iterator<Map<String, Object>> it = set.iterator();
        while (true) {
            boolean zHasNext = it.hasNext();
            str = HexAttribute.HEX_ATTR_CAUSE;
            str2 = "message";
            str3 = "name";
            if (!zHasNext) {
                break;
            }
            Map<String, Object> next = it.next();
            computeIfAbsent((String) next.get("name"), map2, flatBufferBuilder);
            computeIfAbsent((String) next.get("message"), map2, flatBufferBuilder);
            computeIfAbsent((String) next.get(HexAttribute.HEX_ATTR_CAUSE), map2, flatBufferBuilder);
            list = (List) next.get("thread");
        }
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        if (list != null) {
            for (Map map3 : list) {
                HashMap map4 = new HashMap();
                map4.put("fileName", Integer.valueOf(flatBufferBuilder.createString("")));
                for (Map.Entry entry2 : map3.entrySet()) {
                    String str4 = (String) entry2.getKey();
                    Object value2 = entry2.getValue();
                    if (value2 instanceof String) {
                        map4.put(str4, Integer.valueOf(flatBufferBuilder.createString((String) value2)));
                    }
                }
                Frame.startFrame(flatBufferBuilder);
                if (map4.get(HexAttribute.HEX_ATTR_CLASS_NAME) != null) {
                    Frame.addClassName(flatBufferBuilder, ((Integer) map4.get(HexAttribute.HEX_ATTR_CLASS_NAME)).intValue());
                }
                if (map4.get(HexAttribute.HEX_ATTR_METHOD_NAME) != null) {
                    Frame.addMethodName(flatBufferBuilder, ((Integer) map4.get(HexAttribute.HEX_ATTR_METHOD_NAME)).intValue());
                }
                if (map4.get("fileName") != null) {
                    Frame.addFileName(flatBufferBuilder, ((Integer) map4.get("fileName")).intValue());
                }
                if (map3.get("lineNumber") != null) {
                    Frame.addLineNumber(flatBufferBuilder, ((Integer) map3.get("lineNumber")).intValue());
                }
                arrayList.add(Integer.valueOf(Frame.endFrame(flatBufferBuilder)));
            }
        }
        arrayList2.add(Integer.valueOf(Thread.createThread(flatBufferBuilder, Thread.createFramesVector(flatBufferBuilder, toArray(arrayList)))));
        int iCreateThreadsVector = HandledException.createThreadsVector(flatBufferBuilder, toArray(arrayList2));
        HashSet hashSet = new HashSet();
        HashSet hashSet2 = new HashSet();
        HashSet hashSet3 = new HashSet();
        HashSet hashSet4 = new HashSet();
        for (Map.Entry<String, Object> entry3 : map.entrySet()) {
            int iIntValue = ((Integer) map2.get(entry3.getKey())).intValue();
            Object value3 = entry3.getValue();
            if (value3 instanceof String) {
                hashSet.add(Integer.valueOf(StringSessionAttribute.createStringSessionAttribute(flatBufferBuilder, iIntValue, ((Integer) map2.get(value3)).intValue())));
            } else if ((value3 instanceof Double) || (value3 instanceof Float)) {
                hashSet2.add(Integer.valueOf(DoubleSessionAttribute.createDoubleSessionAttribute(flatBufferBuilder, iIntValue, ((Number) value3).doubleValue())));
            } else if (value3 instanceof Number) {
                hashSet3.add(Integer.valueOf(LongSessionAttribute.createLongSessionAttribute(flatBufferBuilder, iIntValue, ((Number) value3).longValue())));
            } else if (value3 instanceof Boolean) {
                hashSet4.add(Integer.valueOf(BoolSessionAttribute.createBoolSessionAttribute(flatBufferBuilder, iIntValue, ((Boolean) value3).booleanValue())));
            }
        }
        int iCreateStringAttributesVector = !hashSet.isEmpty() ? HexAgentData.createStringAttributesVector(flatBufferBuilder, toArray(hashSet)) : -1;
        int iCreateDoubleAttributesVector = !hashSet2.isEmpty() ? HexAgentData.createDoubleAttributesVector(flatBufferBuilder, toArray(hashSet2)) : -1;
        int iCreateLongAttributesVector = !hashSet3.isEmpty() ? HexAgentData.createLongAttributesVector(flatBufferBuilder, toArray(hashSet3)) : -1;
        int iCreateBoolAttributesVector = !hashSet4.isEmpty() ? HexAgentData.createBoolAttributesVector(flatBufferBuilder, toArray(hashSet4)) : -1;
        HashSet hashSet5 = new HashSet();
        if (!set.isEmpty()) {
            Iterator<Map<String, Object>> it2 = set.iterator();
            while (it2.hasNext()) {
                Map<String, Object> next2 = it2.next();
                int iStringIndexMapOffset = stringIndexMapOffset(map2, next2.get(str3));
                int iStringIndexMapOffset2 = stringIndexMapOffset(map2, next2.get(str2));
                int iStringIndexMapOffset3 = stringIndexMapOffset(map2, next2.get(str));
                HashMap map5 = map2;
                String str5 = str;
                String str6 = str2;
                long jLongValue3 = ((Long) (next2.containsKey(HexAttribute.HEX_ATTR_TIMESTAMP_MS) ? next2.get(HexAttribute.HEX_ATTR_TIMESTAMP_MS) : Long.valueOf(System.currentTimeMillis()))).longValue();
                try {
                    jLongValue = ((Long) next2.get(HexAttribute.HEX_ATTR_APP_UUID_HI)).longValue();
                    jLongValue2 = ((Long) next2.get(HexAttribute.HEX_ATTR_APP_UUID_LO)).longValue();
                } catch (ClassCastException unused) {
                    jLongValue = 0;
                    jLongValue2 = 0;
                }
                HandledException.startHandledException(flatBufferBuilder);
                HandledException.addAppUuidHigh(flatBufferBuilder, jLongValue);
                HandledException.addAppUuidLow(flatBufferBuilder, jLongValue2);
                if (-1 != jLongValue3) {
                    HandledException.addTimestampMs(flatBufferBuilder, jLongValue3);
                }
                if (-1 != iStringIndexMapOffset) {
                    HandledException.addName(flatBufferBuilder, iStringIndexMapOffset);
                }
                if (-1 != iStringIndexMapOffset2) {
                    HandledException.addMessage(flatBufferBuilder, iStringIndexMapOffset2);
                }
                if (-1 != iStringIndexMapOffset3) {
                    HandledException.addCause(flatBufferBuilder, iStringIndexMapOffset3);
                }
                HandledException.addThreads(flatBufferBuilder, iCreateThreadsVector);
                hashSet5.add(Integer.valueOf(HandledException.endHandledException(flatBufferBuilder)));
                it2 = it2;
                str3 = str3;
                map2 = map5;
                str2 = str6;
                str = str5;
                iCreateLongAttributesVector = iCreateLongAttributesVector;
            }
        }
        int i10 = iCreateLongAttributesVector;
        int iCreateHandledExceptionsVector = !hashSet5.isEmpty() ? HexAgentData.createHandledExceptionsVector(flatBufferBuilder, toArray(hashSet5)) : -1;
        ApplicationInfo.startApplicationInfo(flatBufferBuilder);
        ApplicationInfo.addPlatform(flatBufferBuilder, 0);
        int iEndApplicationInfo = ApplicationInfo.endApplicationInfo(flatBufferBuilder);
        HexAgentData.startHexAgentData(flatBufferBuilder);
        if (iCreateStringAttributesVector != -1) {
            HexAgentData.addStringAttributes(flatBufferBuilder, iCreateStringAttributesVector);
        }
        if (iCreateDoubleAttributesVector != -1) {
            HexAgentData.addDoubleAttributes(flatBufferBuilder, iCreateDoubleAttributesVector);
        }
        if (i10 != -1) {
            HexAgentData.addLongAttributes(flatBufferBuilder, i10);
        }
        if (iCreateBoolAttributesVector != -1) {
            HexAgentData.addBoolAttributes(flatBufferBuilder, iCreateBoolAttributesVector);
        }
        if (iCreateHandledExceptionsVector != -1) {
            HexAgentData.addHandledExceptions(flatBufferBuilder, iCreateHandledExceptionsVector);
        }
        HexAgentData.addApplicationInfo(flatBufferBuilder, iEndApplicationInfo);
        HashSet hashSet6 = new HashSet();
        hashSet6.add(Integer.valueOf(HexAgentData.endHexAgentData(flatBufferBuilder)));
        int iCreateHexAgentDataVector = HexAgentDataBundle.createHexAgentDataVector(flatBufferBuilder, toArray(hashSet6));
        HexAgentDataBundle.startHexAgentDataBundle(flatBufferBuilder);
        HexAgentDataBundle.addHexAgentData(flatBufferBuilder, iCreateHexAgentDataVector);
        flatBufferBuilder.finish(HexAgentDataBundle.endHexAgentDataBundle(flatBufferBuilder));
        return flatBufferBuilder;
    }

    private static int stringIndexMapOffset(Map<String, Integer> map, Object obj) {
        Integer num;
        Integer num2 = -1;
        if (obj != null && (num = map.get(obj)) != null) {
            num2 = num;
        }
        return num2.intValue();
    }

    private static int[] toArray(Collection<Integer> collection) {
        int[] iArr = new int[collection.size()];
        Iterator<Integer> it = collection.iterator();
        int i10 = 0;
        while (it.hasNext()) {
            iArr[i10] = it.next().intValue();
            i10++;
        }
        return iArr;
    }

    public static String toJsonString(HexAgentDataBundle hexAgentDataBundle, int i10) {
        return new GsonBuilder().enableComplexMapKeySerialization().serializeNulls().setPrettyPrinting().create().toJson(attributesMapFromAgentData(hexAgentDataBundle.hexAgentData(i10)));
    }
}
